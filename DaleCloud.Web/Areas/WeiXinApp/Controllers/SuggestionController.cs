using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DaleCloud.Code;
using DaleCloud.WeixinMP.Model;
using DaleCloud.Application.CustomerManage;
using DaleCloud.Entity.CustomerManage;

namespace DaleCloud.Web.Areas.WeixinApp.Controllers
{
    public class SuggestionController : ControllerBaseWeixin
    {
        CrmSuggestionApp app = new CrmSuggestionApp();

        [HttpGet]
        public virtual ActionResult Index(string openid, string customerId)
        {
            if (string.IsNullOrEmpty(openid))
            {
                string thisUrl = HttpHelper.GetWebSite() + Request.RawUrl;
                return Redirect(GetOAuthCallbackUrl(thisUrl));
            }
            return View();
        }


        [HttpGet]
        public virtual ActionResult Form(string openid, string customerId)
        {
            if (string.IsNullOrEmpty(openid))
            {
                string thisUrl = HttpHelper.GetWebSite() + Request.RawUrl;
                return Redirect(GetOAuthCallbackUrl(thisUrl));
            }
            return View();
        }


        [HttpGet]
        public virtual ActionResult Details(string openid, string customerId)
        {
            if (string.IsNullOrEmpty(openid))
            {
                string thisUrl = HttpHelper.GetWebSite() + Request.RawUrl;
                return Redirect(GetOAuthCallbackUrl(thisUrl));
            }
            return View();
        }

        [HttpGet]
        public ActionResult GetListJson(string keyValue)
        {
            var data = app.GetList(keyValue);
            if (data != null)
            {
                return Success("成功", data);
            }
            else
            {
                return Error("暂无数据");
            }
        }

        [HttpGet]
        public ActionResult GetDetailJson(string keyValue)
        {
            var model = app.GetForm(keyValue);
            if (model != null)
            {
                return Success("成功", model);
            }
            else
            {
                return Error("暂无数据");
            }
        }

        [HttpPost]

        public ActionResult SubmitForm(CrmSuggestEntity uEntity, string keyValue)
        {
            app.SubmitForm(uEntity, keyValue);
            return Success("操作成功。");
        }
    }
}