using System;
using System.Web.Mvc;
using DaleCloud.Code;
using Senparc.CO2NET.Extensions;
using DaleCloud.WeixinMP;
using DaleCloud.WeixinMP.Model;
using Senparc.Weixin.MP;
using Senparc.Weixin.MP.AdvancedAPIs;
using Senparc.Weixin.MP.AdvancedAPIs.OAuth;

namespace DaleCloud.Web
{
    //[HandlerLogin]
    public abstract class ControllerBaseWeixin : Controller
    {
        private string appId = "wx21027f00d4234abc";
        private string appSecret = "e90f525e8d396fc68f0bdf4cafcc56b2";
        private string wxuserKey = "dalecloud_2019";

        //public Log FileLog
        //{
        //    get { return LogFactory.GetLogger(this.GetType().ToString()); }
        //}

        //[HttpGet]
        //public virtual ActionResult Form()
        //{
        //    return View();
        //}
        //[HttpGet]
        //public virtual ActionResult Details()
        //{
        //    return View();
        //}

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

        /// <summary>
        /// 生产授权跳转链接地址
        /// </summary>
        /// <param name="returnurl"></param>
        /// <param name="scope_UserInfo">scope类型是否为UserInfo</param>
        /// <returns></returns>
        public string GetOAuthCallbackUrl(string returnurl, bool scope_UserInfo = false)
        {
            var state = "JeffreySu-" + SystemTime.Now.Millisecond;//随机数，用于识别请求可靠性
            Session["State"] = state;//储存随机数到Session
            string Url =
               OAuthApi.GetAuthorizeUrl(appId,
               HttpHelper.GetWebSite() + "/oauth2/UserInfoCallback?returnUrl=" + returnurl.UrlEncode(),
               state, OAuthScope.snsapi_userinfo);
            if (scope_UserInfo == false)
            {
                Url = OAuthApi.GetAuthorizeUrl(appId,
                HttpHelper.GetWebSite() + "/oauth2/BaseCallback?returnUrl=" + returnurl.UrlEncode(),
                state, OAuthScope.snsapi_base);
            }
            return Url;
        }

        /// <summary>
        /// 获取本地Cooker信息
        /// </summary>
        /// <returns></returns>
        public WxUserInfo GetWxUserInfo()
        {
            if (Session[SysKeys.SESSION_WXUSER_INFO] != null)
            {
                WxUserInfo model = Session[SysKeys.SESSION_WXUSER_INFO] as WxUserInfo;
                return model;
            }
            else
            {
                WxUserInfo model= DESEncrypt.Decrypt(WebHelper.GetCookie(wxuserKey).ToString()).ToObject<WxUserInfo>();
                return model;
            }
        }

        /// <summary>
        /// 保存微信用户信息
        /// </summary>
        /// <param name="wxUserInfo"></param>
        public void SetWxUserInfo(WxUserInfo wxUserInfo)
        {
            Session[SysKeys.SESSION_WXUSER_INFO] = wxUserInfo;
            Session.Timeout = 45;
            //写入Cookies
            WebHelper.WriteCookie(wxuserKey, DESEncrypt.Encrypt(wxUserInfo.ToJson()), 60);
        }

        /// <summary>
        /// 保存微信用户信息
        /// </summary>
        /// <param name="wxUserInfo"></param>
        public void SetWxUserInfo(OAuthUserInfo userInfo)
        {
            WxUserInfo wxUserInfo = new WxUserInfo();
            wxUserInfo.UserId = "";
            wxUserInfo.OpenId = userInfo.openid;
            wxUserInfo.NickName = userInfo.nickname;
            wxUserInfo.Sex = userInfo.sex;
            wxUserInfo.Headimgurl = userInfo.headimgurl;
            wxUserInfo.Province = userInfo.province;
            wxUserInfo.City = userInfo.city;
            wxUserInfo.Country = userInfo.country;
            wxUserInfo.Unionid = userInfo.unionid;
            Session[SysKeys.SESSION_WXUSER_INFO] = wxUserInfo;
            Session.Timeout = 45;
            //写入Cookies
            WebHelper.WriteCookie(wxuserKey, DESEncrypt.Encrypt(wxUserInfo.ToJson()), 60);
        }

        /// <summary>
        ///  获取保存在session和cookie中的openid
        /// </summary>
        /// <returns></returns>
        public string GetWxUserOpenId()
        {
            if (Session[SysKeys.SESSION_OPENID] != null)
            {
                string openid = Session[SysKeys.SESSION_OPENID] as string;
                if (!string.IsNullOrEmpty(openid))
                {
                    return openid;
                }
                return null;
            }
            else
            {
                string openid = Utils.GetCookie(SysKeys.COOKIE_OPENID);
                if (!string.IsNullOrEmpty(openid))
                {
                    return openid;
                }
                return null;
            }
        }

        /// <summary>
        ///  将openid保存到session和cookie
        /// </summary>
        /// <param name="openid"></param>
        public void SetWxUserOpenId(string openid)
        {
            Session[SysKeys.SESSION_OPENID] = openid;
            Session.Timeout = 45;
            //写入Cookies
            Utils.WriteCookie(SysKeys.COOKIE_OPENID, openid);
        }

        /// <summary>
        /// 获取OAuthAccessTokenResult Session值
        /// </summary>
        /// <returns></returns>
        public OAuthAccessTokenResult GetOAuthAccessToken()
        {
            if (Session != null && Session["OAuthAccessToken"] != null)
            {
                //Session["OAuthAccessTokenStartTime"];
                return Session["OAuthAccessToken"] as OAuthAccessTokenResult;
            }
            return null;
        }

        /// <summary>
        /// 保存OAuthAccessTokenResult Session值
        /// </summary>
        /// <param name="result"></param>
        public void SetOAuthAccessToken(OAuthAccessTokenResult result)
        {
            //下面2个数据也可以自己封装成一个类，储存在数据库中（建议结合缓存）
            //如果可以确保安全，可以将access_token存入用户的cookie中，每一个人的access_token是不一样的

            Session["OAuthAccessTokenStartTime"] = SystemTime.Now;
            Session["OAuthAccessToken"] = result;
            Session.Timeout = 45;
        }

        /// <summary>
        /// 清空OAuthAccessToken Session
        /// </summary>
        public void RemoveOAuthAccessTokenSession()
        {
            Session["OAuthAccessTokenStartTime"] = SystemTime.Now;
            Session["OAuthAccessToken"] = null;
        }

    }
}
