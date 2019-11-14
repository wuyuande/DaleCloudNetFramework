/*******************************************************************************
 * Copyright © 2016 DaleCloud.Framework 版权所有
 * Author: DaleCloud
 * Description: DaleCloud快速开发平台
 * Website：
*********************************************************************************/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Mvc;
using DaleCloud.Code;
using DaleCloud.Application.SystemManage;
using DaleCloud.Entity.SystemManage;
using DaleCloud.Application.DingTalk;
using DaleCloud.Entity.DingTalk;
using DaleCloud.DingTalk;
using DaleCloud.Entity.SystemSecurity;
using DaleCloud.Application.SystemSecurity;
using DaleCloud.Application;


namespace DaleCloud.Web.Controllers
{
   
    public class DingTalkController : Controller
    {
        private DingTalkApp ding = new DingTalkApp();

        [HttpGet]
        public ActionResult Index()
        {

            return View();
        }
        [HttpGet]
        public ActionResult Default()
        {
            return View();
        }
        [HttpGet]
        public ActionResult Center()
        {
            return View();
        }
        [HttpGet]
        public ActionResult About()
        {
            return View();
        }
        [HttpGet]
        public ActionResult Mobile()
        {
            return View();
        }


        /// <summary>
        /// 获取企业Corp信息
        /// </summary>
        /// <param name="url"></param>
        /// <returns></returns>
        [HttpGet]
        //[HandlerAjaxOnly]
        public ActionResult GetDingTalkCorpConfigJson(string url)
        {
            DingTalkCorpConfig config = ding.GetAccessToken();
            if (config != null)
            {
                config.TimeStamp = DingTalkHelper.GetTimeStamp();
                config.NonceStr = DingTalkHelper.GuidTo16String();
                string jsapi_ticket = DingTalkHelper.GetJsApiTicket(config.AccessToken);
                config.url = url;
                config.jsapi_ticket = jsapi_ticket;
                config.Signature = DingTalkHelper.GetAccessSignature(config.NonceStr, config.TimeStamp.ToString(), jsapi_ticket, url);

            }
            return Content(config.ToJson());

        }

        [HttpGet]
        //[HandlerAjaxOnly]
        public ActionResult GetDingTalkAppConfigJson()
        {
            string url = Request.Url.PathAndQuery;
            DingTalkAppConfig config = ding.GetAppConfig("1");
            if (config != null)
            {
                config.TimeStamp = DingTalkHelper.GetTimeStamp();
                config.NonceStr = "metec";
                string jsapi_ticket = DingTalkHelper.GetJsApiTicket(config.AccessToken);
                config.Signature = DingTalkHelper.GetAccessSignature(config.NonceStr, config.TimeStamp.ToString(), jsapi_ticket, url);
            }
            return Content(config.ToJson());
        }

        private object GetDingTalkCorpConfig(string url)
        {
            DingTalkCorpConfig config = ding.GetAccessToken();
            if (config != null)
            {
                config.TimeStamp = DingTalkHelper.GetTimeStamp();
                config.NonceStr = DingTalkHelper.GuidTo16String();
                string jsapi_ticket = DingTalkHelper.GetJsApiTicket(config.AccessToken);
                config.url = url;
                config.jsapi_ticket = jsapi_ticket;
                config.Signature = DingTalkHelper.GetAccessSignature(config.NonceStr, config.TimeStamp.ToString(), jsapi_ticket, url);

            }
            return config;

        }

        /// <summary>
        /// 根据code获取钉钉用户信息
        /// </summary>
        /// <param name="code"></param>
        /// <returns></returns>
        [HttpGet]
        //[HandlerAjaxOnly]
        public ActionResult CheckUserLogin(UserDetailInfo user)
        {
            try
            {
                if (user != null)
                {
                    CheckLogin(user);
                    return Success("成功", user.ToJson());
                }
                return Error("失败");
            }
            catch
            {
                return Error("失败");
            }

        }

        /// <summary>
        /// 根据code获取钉钉用户信息
        /// </summary>
        /// <param name="code"></param>
        /// <returns></returns>
        [HttpGet]
        //[HandlerAjaxOnly]
        public ActionResult DingTalkUserLogin(string code)
        {
            try
            {
                DingTalkCorpConfig config = ding.GetAccessToken();
                UserDetailInfo user = new UserDetailInfo();
                if (config != null)
                {
                    user = DingTalkUserApi.GetUserDetailByAuthCode(config.AccessToken, code);
                    if (user != null)
                    {
                        DingTalkUserEntity info = CheckLogin(user);
                        if (info == null)
                        {
                            return Success("成功", user.ToJson());
                        }
                        else
                        {
                            return Success("成功", info.ToJson());
                        }
                    }
                }
                return Error("失败");
            }
            catch
            {
                return Error("失败");
            }

        }

        /// <summary>
        /// 检查登陆
        /// </summary>
        /// <param name="userid"></param>
        /// <returns></returns>
        public DingTalkUserEntity CheckLogin(UserDetailInfo user)
        {
            try
            {
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
                var current = OperatorProvider.Provider.GetCurrent();
                if (current != null && current.DdUserId == user.UserId)
                {
                    entity.SysUserId = current.UserId;
                    return entity;
                }
                LogEntity logEntity = new LogEntity();
                logEntity.F_ModuleName = "系统登录";
                logEntity.F_Type = DbLogType.Login.ToString();
                UserEntity userEntity = new UserApp().CheckLoginByDingTalk(user.UserId);
                if (userEntity != null)
                {
                    entity.SysUserId = userEntity.F_Id;
                    entity.RoleId = userEntity.F_RoleId;
                    entity.OrganizeId = userEntity.F_OrganizeId;
                    entity.Department = userEntity.F_DepartmentId;
                    OperatorModel operatorModel = new OperatorModel();
                    operatorModel.UserId = userEntity.F_Id;
                    operatorModel.UserCode = userEntity.F_Account;
                    operatorModel.UserName = userEntity.F_RealName;
                    operatorModel.CompanyId = userEntity.F_OrganizeId;
                    operatorModel.DepartmentId = userEntity.F_DepartmentId;
                    operatorModel.RoleId = userEntity.F_RoleId;
                    operatorModel.DdUserId = userEntity.F_DingTalkUserId;
                    operatorModel.Avatar = userEntity.F_DingTalkAvatar;
                    operatorModel.WxOpenId = userEntity.F_WxOpenId;
                    operatorModel.LoginIPAddress = Net.Ip;
                    operatorModel.LoginIPAddressName = Net.GetLocation(operatorModel.LoginIPAddress);
                    operatorModel.LoginTime = DateTime.Now;
                    operatorModel.LoginToken = DESEncrypt.Encrypt(Guid.NewGuid().ToString());
                    if (userEntity.F_Account == "admin")
                    {
                        operatorModel.IsSystem = true;
                    }
                    else
                    {
                        operatorModel.IsSystem = false;
                    }
                    operatorModel.IsAdmin = userEntity.F_IsAdmin.Value;
                    operatorModel.IsBoss = userEntity.F_IsBoss.Value;
                    operatorModel.IsLeaderInDepts = userEntity.F_IsLeaderInDepts.Value;
                    operatorModel.IsSenior = userEntity.F_IsSenior.Value;

                    OperatorProvider.Provider.AddCurrent(operatorModel);
                    logEntity.F_Account = userEntity.F_Account;
                    logEntity.F_NickName = userEntity.F_RealName;
                    logEntity.F_Result = true;
                    logEntity.F_Description = "登录成功";
                    new LogApp().WriteDbLog(logEntity);
                }
                return entity;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        #region 用于输出
        protected virtual ActionResult Success(string message)
        {
            return Content(new AjaxResult { state = ResultType.success.ToString(), message = message }.ToJson());
        }
        protected virtual ActionResult Success(string message, object data)
        {
            return Content(new AjaxResult { state = ResultType.success.ToString(), message = message, data = data }.ToJson());
        }
        protected virtual ActionResult Error(string message)
        {
            return Content(new AjaxResult { state = ResultType.error.ToString(), message = message }.ToJson());
        }
        #endregion
    }

}
