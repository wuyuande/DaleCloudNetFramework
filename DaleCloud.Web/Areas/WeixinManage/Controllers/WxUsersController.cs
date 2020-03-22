/*******************************************************************************
 * Copyright © 2016 NFine.Framework 版权所有
 * Author: DaleCloud
 * Description: DaleCloud快速开发平台
 * Website：
*********************************************************************************/

using System.Collections.Generic;
using System.Linq;
using System;
using System.Web.Mvc;
using DaleCloud.Code;
using DaleCloud.Application.WeixinManage;
using DaleCloud.Entity.WeixinManage;
using DaleCloud.WeixinMP;
using Senparc.CO2NET.Extensions;
using Senparc.Weixin.MP.Entities;
using Senparc.Weixin.MP.Containers;
using Senparc.Weixin.MP.AdvancedAPIs;
using Senparc.Weixin.MP.AdvancedAPIs.Groups;
using Senparc.Weixin.MP.AdvancedAPIs.User;

namespace DaleCloud.Web.Areas.WeixinManage.Controllers
{
    public class WxUsersController : ControllerBase
    {
        private WxBaseConfigApp config = new WxBaseConfigApp();
        private WxUsersApp app = new WxUsersApp();


        [HttpGet]
        [HandlerAjaxOnly]
        public ActionResult GetGridJson(string keyword)
        {
            var data = app.GetList();
            return Content(data.ToJson());
        }
        [HttpGet]
        [HandlerAjaxOnly]
        public ActionResult GetFormJson(string keyValue)
        {
            var data = app.GetForm(keyValue);
            return Content(data.ToJson());
        }
        [HttpPost]
        [HandlerAjaxOnly]
        [ValidateAntiForgeryToken]
        public ActionResult SubmitForm(UsersEntity entity, string keyValue)
        {
            app.SubmitForm(entity, keyValue);
            return Success("操作成功。");
        }
        [HttpPost]
        [HandlerAjaxOnly]
        [HandlerAuthorize]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteForm(string keyValue)
        {
            app.DeleteForm(keyValue);
            return Success("删除成功。");
        }

        public ActionResult GetWeixinUser()
        {
            try
            {
                WxBaseConfigEntity weixin = config.GetDefaultConfig();
                AccessTokenResult token = AccessTokenContainer.GetAccessTokenResult(weixin.AppId,true);
                if (token.errcode != Senparc.Weixin.ReturnCode.请求成功)
                {
                    return Error("更新失败，获取token失败：" + token.errmsg);
                }
                //更新时间，作为一个标记
                DateTime updateTime = DateTime.Now;
                try
                {
                    string ret = SysPersonFun(0, weixin.uuId, token.access_token, "", updateTime);
                    //查找此次为同步到的，则为已经跑路的
                    IList<UsersEntity> userlist = app.GetList2(updateTime);
                    if (userlist != null && userlist.Count > 0)
                    {
                        for (int i = 0; i < userlist.Count; i++)
                        {
                            userlist[i].Status = 2;
                            app.SubmitForm(userlist[i], userlist[i].OpenId);
                        }
                    }
                    return Success("更新成功");

                }
                catch (Exception ex)
                {
                    return Error("更新失败：" + ex.Message);
                }
            }
            catch (Exception ex)
            {
                return Error("更新失败：" + ex.Message);
            }
        }

        /// <summary>
        /// 验证accesstoken
        /// </summary>
        /// <returns></returns>
        public bool ValidAccessToken()
        {
            WxBaseConfigEntity weixin = config.GetDefaultConfig();
            AccessTokenResult token = AccessTokenContainer.GetAccessTokenResult(weixin.AppId);
            if (token.errcode != Senparc.Weixin.ReturnCode.请求成功)
            {
                return false;
            }
            else
            {
                return true;
            }

        }

        /// <summary>
        /// 同步处理，递归算法
        /// </summary>
        /// <param name="totCount"></param>
        /// <param name="wid"></param>
        /// <param name="accessToken"></param>
        /// <param name="nexOpenid"></param>
        /// <param name="updateTime"></param>
        public string SysPersonFun(int totCount, string wxid, string accessToken, string nexOpenid, DateTime updateTime)
        {
            string ret = "";
            OpenIdResultJson gJson = UserApi.Get(accessToken, nexOpenid);
            List<string> openidStr = gJson.data.openid;//此次拉取的openid字符串

            totCount += InsertUserInfo(wxid, accessToken, openidStr, updateTime);
            if (gJson.next_openid != "" && gJson.count == 1000)
            {
                SysPersonFun(totCount, wxid, accessToken, gJson.next_openid, updateTime);
            }
            else
            {
                int sjTtCount = gJson.total;
                if (sjTtCount == totCount)
                {
                    //将此次同步的日期更新到设置表里
                    WxBaseConfigEntity weixin = config.GetDefaultConfig();
                    weixin.PersonSynDate = updateTime;
                    weixin.OpenidCount = totCount;
                    config.SubmitForm(weixin);
                    ret = "粉丝同步成功！";
                }
                else
                {
                    ret = "粉丝同步失败！";
                }
            }
            return ret;
        }

        /// <summary>
        /// 同步一个用户信息，如果库里存在，则修改，不存在，则新增
        /// </summary>
        /// <param name="userDetail"></param>
        private int InsertUserInfo(string wxid, string accessToken, List<string> openidStr, DateTime updateTime)
        {
            int totCount = 0;
            //   将数据插入到数据库里
            UsersEntity uEntity = new UsersEntity();
            try
            {
                UserInfoJson userDetail = new UserInfoJson();
                for (int i = 0; i < openidStr.Count; i++)
                {
                    userDetail = UserApi.Info(accessToken, openidStr[i]);
                    uEntity = app.GetForm(openidStr[i]);
                    bool isAdd = true;
                    if (uEntity == null)
                    {
                        isAdd = true;
                        uEntity = new UsersEntity();
                    }
                    else
                    {
                        isAdd = false;
                    }
                    uEntity.OpenId = openidStr[i];
                    uEntity.Nickname = userDetail.nickname;
                    uEntity.Sex = userDetail.sex.ToString();
                    uEntity.City = userDetail.city;
                    uEntity.Country = userDetail.country;
                    uEntity.Province = userDetail.province;
                    uEntity.Language = userDetail.language;
                    uEntity.HeadImgUrl = userDetail.headimgurl;
                    uEntity.SubscribeTime = userDetail.subscribe_time.ToString();
                    uEntity.WeixinId = wxid;
                    uEntity.UpdateDate = updateTime;
                    uEntity.Status = 1;

                    //查询分组号
                    GetGroupIdResult gid = GroupsApi.GetId(accessToken, openidStr[i]);
                    uEntity.GroupId = gid.groupid;

                    if (isAdd)
                    {
                        //新增
                        uEntity.CreateDate = DateTime.Now;
                        app.SubmitForm(uEntity,string.Empty);
                        totCount++;
                    }
                    else
                    {
                        //修改
                        app.SubmitForm(uEntity, uEntity.OpenId);
                        totCount++;
                    }
                }
                return totCount;
            }
            catch (Exception ex)
            {
                throw new Exception("用户信息同步失败！" + ex.Message);

            }

        }
    }
}
