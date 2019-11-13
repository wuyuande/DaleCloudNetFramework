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
using DaleCloud.DingTalk;
using DaleCloud.DingTalk.Entities;
using DaleCloud.Application.DingTalk;
using DaleCloud.Entity.DingTalk;
using DaleCloud.Application.SystemManage;
using DaleCloud.Entity.SystemManage;


namespace DaleCloud.Web.Areas.DingTalkManage.Controllers
{
    public class UsersController : ControllerBasev2
    {
        private DingTalkUsersApp app = new DingTalkUsersApp();
        private DingTalkApp ding = new DingTalkApp();
        [HttpGet]
        [HandlerAjaxOnly]
        public ActionResult GetGridJson(string keyword)
        {
            var data = app.GetList(keyword);
            return Content(data.ToJson());
        }

        [HttpGet]
        [HandlerAjaxOnly]
        public ActionResult GetDepartGridJson(string keyword)
        {
            var data = app.GetList(keyword);
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
        public ActionResult SubmitForm(DingTalkUserEntity userEntity, string keyValue)
        {
            app.SubmitForm(userEntity, keyValue);
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
        
        public ActionResult UpdateDingTalkUser()
        {
            try
            {
                DingTalkCorpConfig config = ding.GetAccessToken();
                DateTime updatetime = DateTime.Now;
                if (config.AccessToken != null)
                {
                    List<DepartmentInfo> deparlist = DingTalk.DingTalkDepartApi.GetDepartmentList(config.AccessToken, "1");
                    if (deparlist != null && deparlist.Count > 0)
                    {
                        foreach (DepartmentInfo model in deparlist)
                        {
                            List<string> userlist = DingTalk.DingTalkUserApi.GetDepartmentUserId(config.AccessToken, model.Id.ToString());
                            if (userlist != null && userlist.Count > 0)
                            {
                                foreach (string userid in userlist)
                                {
                                    UserDetailInfo user= DingTalk.DingTalkUserApi.GetUserDetail(config.AccessToken, userid);
                                    if (user!=null)
                                    {
                                        app.DeleteForm(user.UserId);
                                        DingTalkUserEntity entity = new DingTalkUserEntity();
                                        entity.UserId = user.UserId;
                                        entity.Active = user.Active;
                                        entity.Avatar = user.Avatar;
                                        entity.Email = user.Email;
                                        entity.HiredDate = user.HiredDate;
                                        entity.IsAdmin = user.IsAdmin;
                                        entity.IsBoss = user.IsBoss;
                                        entity.IsHide = user.IsHide;
                                        entity.IsLeader = user.IsLeader;
                                        entity.IsSenior = user.IsSenior;
                                        entity.JobNumber = user.JobNumber;
                                        entity.Mobile = user.Mobile;
                                        entity.UserName = user.UserName;
                                        entity.OrderInDepts = user.OrderInDepts;
                                        entity.Position = user.Position;
                                        entity.UpdateTime = updatetime;
                                        app.SubmitForm(entity, null);
                                    }
                                }
                            }
                            //else
                            //{
                            //    return Error("更新失败。获取用户失败");
                            //}
                        }
                        app.DeleteForm(updatetime);
                    }
                    else
                    {
                        return Error("更新失败。获取部门失败");
                    }
                }
            }
            catch(Exception ex)
            {
                return Error("更新失败："+ ex.Message);
            }
            return Success("更新成功");
        }
        
        public ActionResult CreateSysUser()
        {
            List<UserEntity> sysusers = new List<UserEntity>();
            UserApp userApp = new UserApp();
            var data = app.GetList("");
            foreach (DingTalkUserEntity dduser in data)
            {
                UserEntity user= sysusers.Find(t => t.F_DingTalkUserId == dduser.UserId && dduser.UserName == t.F_DingTalkUserName);
                if (user == null)
                {
                    UserEntity model = new UserEntity();
                    model.F_Account = ZhPinyinHelper.ChConvertPinyin(dduser.UserName);
                    model.F_RealName = dduser.UserName;
                    model.F_NickName = dduser.UserName;
                    model.F_DepartmentId = "80E10CD5-7591-40B8-A005-BCDE1B961E76";
                    model.F_DutyId = "23ED024E-0AAA-4C8D-9216-D1AB93348D26";
                    model.F_OrganizeId = "5AB270C0-5D33-4203-A54F-4552699FDA3C";
                    model.F_RoleId = "2691AB91-3010-465F-8D92-60A97425A45E";
                    model.F_Gender = true;
                    model.F_EnabledMark = true;
                    model.F_IsAdmin = false;
                    model.F_DingTalkUserId = dduser.UserId;
                    model.F_DingTalkUserName = dduser.UserName;
                    model.F_DingTalkAvatar = dduser.Avatar;
                    model.F_MobilePhone = dduser.Mobile;
                    UserLogOnEntity userLogOnEntity = new UserLogOnEntity();
                    userLogOnEntity.F_UserPassword = "123456";
                    userApp.SubmitForm(model, userLogOnEntity,null);
                }
                
            }
            DingTalkUserEntity entity = new DingTalkUserEntity();
            sysusers=userApp.GetList("");
            return Success("发送成功。");
            

        }
        
    }
}
