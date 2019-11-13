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
using DaleCloud.Application.DingTalk;
using DaleCloud.Entity.DingTalk;
namespace DaleCloud.Web.Areas.DingTalkManage.Controllers
{
    public class DingTalkConfigController : ControllerBase
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

       

        public ActionResult GetDingTalkUser()
        {
            try
            {
                DingTalkCorpConfig config = ding.GetAccessToken();
                DingTalk.DingTalkDepartApi.GetDepartmentId(DingTalkHelper.CorpConfig.AccessToken);
                
                if (config.AccessToken != null)
                {
                    List<UserDetailInfo> userlist = DingTalk.DingTalkUserApi.GetUserInfoByPage(config.AccessToken,60286524);
                    if (userlist != null && userlist.Count > 0)
                    {
                        foreach (UserDetailInfo user in userlist)
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
                            app.SubmitForm(entity, null);
                        }
                    }
                    else
                    {
                        return Error("更新失败。");
                    }
                }
            }
            catch(Exception ex)
            {
                return Error("更新失败："+ ex.Message);
            }
            return Success("更新成功");
        }

        
    }
}
