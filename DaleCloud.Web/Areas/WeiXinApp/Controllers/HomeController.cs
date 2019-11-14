using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DaleCloud.Code;
using DaleCloud.WeixinMP.Model;

namespace DaleCloud.Web.Areas.WeixinApp.Controllers
{
    public class HomeController : ControllerBaseWeixin
    {

        [HttpGet]
        public virtual ActionResult Index(string openid, string nickname, string headimgurl)
        {
            if (string.IsNullOrEmpty(openid))
            {
                string thisUrl = HttpHelper.GetWebSite() + Request.RawUrl;
                return Redirect(GetOAuthCallbackUrl(thisUrl,true));
            }
            ViewData["IsBind"] = "false";
            WxUserInfo wxuser = GetWxUserInfo();
            if (wxuser != null)
            {
                ViewData["openid"] = wxuser.OpenId;
                ViewData["nickname"] = wxuser.NickName;
                ViewData["sex"] = wxuser.Sex == 0 ? "女" : "男";
                ViewData["mobile"] = wxuser.Mobile;
                ViewData["username"] = "";
                ViewData["company"] = "未绑定";
                ViewData["customerId"] = "undefined";
                ViewData["headimgurl"] = wxuser.Headimgurl;
            }
            else
            {
                ViewData["openid"] = openid;
                ViewData["nickname"] = "undefined";
                ViewData["mobile"] = "undefined";
                ViewData["sex"] = "男";
                ViewData["username"] = "undefined";
                ViewData["customerId"] = "undefined";
                ViewData["company"] = "您尚未关注公众号";
                ViewData["headimgurl"] = "~/Content/images/samples/scarlet-159.png";
            }
            return View();
        }


        [HttpGet]
        public virtual ActionResult Register(string openid,string nickname,string headimgurl)
        {
            if (string.IsNullOrEmpty(openid))
            {
                string thisUrl = HttpHelper.GetWebSite() + "/" + Request.RawUrl;
                return Redirect(GetOAuthCallbackUrl(thisUrl, true));
            }
            WxUserInfo wx = GetWxUserInfo();
            if (wx != null)
            {
                return View(wx);
            }
            return Content("尚未获得授权，请返回重试");
        }

        [HttpGet]
        public virtual ActionResult Center()
        {
            return View();
        }
        
        [HttpPost]
        public ActionResult SubmitRegister(string openid,string nickname,string linkman,string mobile,string headimgurl, string company,string serialno)
        {
            
            return Success("操作成功。");
        }
    }
}