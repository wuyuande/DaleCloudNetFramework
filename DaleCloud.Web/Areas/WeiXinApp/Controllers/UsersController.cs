using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DaleCloud.Code;
using DaleCloud.WeixinMP.Model;
namespace DaleCloud.Web.Areas.WeixinApp.Controllers
{
    public class UsersController : ControllerBaseWeixin
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
        public virtual ActionResult CustomerDetail(string openid, string customerId)
        {
            if (string.IsNullOrEmpty(openid))
            {
                string thisUrl = HttpHelper.GetWebSite() + Request.RawUrl;
                return Redirect(GetOAuthCallbackUrl(thisUrl));
            }
            return View();
        }
        public virtual ActionResult UserInfo(string openid, string customerId)
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