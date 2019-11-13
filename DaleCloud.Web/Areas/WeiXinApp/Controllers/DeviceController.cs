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
    public class DeviceController : ControllerBaseWeixin
    {

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
        public virtual ActionResult ServiceList(string openid, string customerId)
        {
            if (string.IsNullOrEmpty(openid))
            {
                string thisUrl = HttpHelper.GetWebSite() + Request.RawUrl;
                return Redirect(GetOAuthCallbackUrl(thisUrl));
            }
            return View();
        }

    }
}