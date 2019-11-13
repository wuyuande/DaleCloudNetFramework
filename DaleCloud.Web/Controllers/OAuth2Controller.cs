using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Senparc.Weixin;
using Senparc.CO2NET.Extensions;
using Senparc.Weixin.Exceptions;
using Senparc.Weixin.HttpUtility;
using Senparc.Weixin.MP;
using Senparc.Weixin.MP.AdvancedAPIs;
using Senparc.Weixin.MP.AdvancedAPIs.OAuth;
using Senparc.Weixin.MP.CommonAPIs;
using Senparc.Weixin.Open.CommonAPIs;
using Senparc.Weixin.Open.ComponentAPIs;
using Senparc.Weixin.Open.Containers;
using DaleCloud.Code;

namespace DaleCloud.Web.Controllers
{
    /// <summary>
    /// 微信公众号web获取授权
    /// </summary>
    public class OAuth2Controller : ControllerBaseWeixin
    {
        //下面换成账号对应的信息，也可以放入web.config等地方方便配置和更换
        //private string appId = Config.SenparcWeixinSetting.WeixinAppId;
        //private string appSecret = Config.SenparcWeixinSetting.WeixinAppSecret;
        private string appId = "wx21027f00d4234abc";
        private string appSecret = "e90f525e8d396fc68f0bdf4cafcc56b2";

        /// <summary>
        /// 
        /// </summary>
        /// <param name="returnUrl">用户尝试进入的需要登录的页面</param>
        /// <returns></returns>
        public ActionResult Index(string returnUrl)
        {
            var state = "JeffreySu-" + SystemTime.Now.Millisecond;//随机数，用于识别请求可靠性
            Session["State"] = state;//储存随机数到Session

            ViewData["returnUrl"] = returnUrl;

            //此页面引导用户点击授权
            ViewData["UrlUserInfo"] =
                OAuthApi.GetAuthorizeUrl(appId,
                HttpHelper.GetWebSite()+ "/oauth2/UserInfoCallback?returnUrl=" + returnUrl.UrlEncode(),
                state, OAuthScope.snsapi_userinfo);
            ViewData["UrlBase"] =
                OAuthApi.GetAuthorizeUrl(appId,
                HttpHelper.GetWebSite() + "/oauth2/BaseCallback?returnUrl=" + returnUrl.UrlEncode(),
                state, OAuthScope.snsapi_base);
            return View();
        }

       
        /// <summary>
        /// OAuthScope.snsapi_userinfo方式回调
        /// </summary>
        /// <param name="code"></param>
        /// <param name="state"></param>
        /// <param name="returnUrl">用户最初尝试进入的页面</param>
        /// <returns></returns>
        public ActionResult UserInfoCallback(string code, string state, string returnUrl)
        {
            if (string.IsNullOrEmpty(code))
            {
                return Content("您拒绝了授权！");
            }

            if (state != Session["State"] as string)
            {
                //这里的state其实是会暴露给客户端的，验证能力很弱，这里只是演示一下，
                //建议用完之后就清空，将其一次性使用
                //实际上可以存任何想传递的数据，比如用户ID，并且需要结合例如下面的Session["OAuthAccessToken"]进行验证
                return Content("验证失败！请从正规途径进入！");
            }

            OAuthAccessTokenResult result = null;

            //通过，用code换取access_token
            try
            {
                result = OAuthApi.GetAccessToken(appId, appSecret, code);
            }
            catch (Exception ex)
            {
                return Content(ex.Message);
            }
            if (result.errcode != ReturnCode.请求成功)
            {
                return Content("错误：" + result.errmsg);
            }
            SetOAuthAccessToken(result);
            //因为第一步选择的是OAuthScope.snsapi_userinfo，这里可以进一步获取用户详细信息
            try
            {
                OAuthUserInfo userInfo = OAuthApi.GetUserInfo(result.access_token, result.openid);
                SetWxUserInfo(userInfo);
                SetWxUserOpenId(result.openid);
                returnUrl = WebHelper.HtmlDecode(returnUrl);
                if (!string.IsNullOrEmpty(returnUrl))
                {
                    if (returnUrl.IndexOf("?") > 0)
                    {
                        returnUrl = returnUrl + "&openid=" + result.openid;
                    }else
                    {
                        returnUrl = returnUrl + "?openid=" + result.openid;
                    }
                    return Redirect(returnUrl);
                }
                return View(userInfo);
            }
            catch (ErrorJsonResultException ex)
            {
                return Content(ex.Message);
            }
        }

        /// <summary>
        /// OAuthScope.snsapi_base方式回调
        /// </summary>
        /// <param name="code"></param>
        /// <param name="state"></param>
        /// <param name="returnUrl">用户最初尝试进入的页面</param>
        /// <returns></returns>
        public ActionResult BaseCallback(string code, string state, string returnUrl)
        {
            if (string.IsNullOrEmpty(code))
            {
                return Content("您拒绝了授权！");
            }

            if (state != Session["State"] as string)
            {
                //这里的state其实是会暴露给客户端的，验证能力很弱，这里只是演示一下，
                //建议用完之后就清空，将其一次性使用
                //实际上可以存任何想传递的数据，比如用户ID，并且需要结合例如下面的Session["OAuthAccessToken"]进行验证
                return Content("验证失败！请从正规途径进入！");
            }

            //通过，用code换取access_token
            var result = OAuthApi.GetAccessToken(appId, appSecret, code);
            if (result.errcode != ReturnCode.请求成功)
            {
                return Content("错误：" + result.errmsg);
            }
            SetOAuthAccessToken(result);
            //因为这里还不确定用户是否关注本微信，所以只能试探性地获取一下
            OAuthUserInfo userInfo = null;
            returnUrl = WebHelper.HtmlDecode(returnUrl);
            try
            {
                //已关注，可以得到详细信息
                userInfo = OAuthApi.GetUserInfo(result.access_token, result.openid);
                SetWxUserInfo(userInfo);
                if (returnUrl.IndexOf("?") > 0)
                {
                    returnUrl = returnUrl + "&openid=" + result.openid;
                }
                else
                {
                    returnUrl = returnUrl + "?openid=" + result.openid;
                }
                //ViewData["ByBase"] = true;
                //return View("UserInfoCallback", userInfo);
                //return Content("用户已授权，返回地址：" + returnUrl);
                return Redirect(returnUrl);
            }
            catch (ErrorJsonResultException ex)
            {
                //未关注，只能授权，无法得到详细信息
                //这里的 ex.JsonResult 可能为："{\"errcode\":40003,\"errmsg\":\"invalid openid\"}"
                SetWxUserOpenId(result.openid);
                if (returnUrl.IndexOf("?") > 0)
                {
                    returnUrl = returnUrl + "&openid=" + result.openid;
                }
                else
                {
                    returnUrl = returnUrl + "?openid=" + result.openid;
                }
                //return Redirect(WebHelper.HtmlDecode(returnUrl));
                //return Content("用户已授权，返回地址：" + WebHelper.HtmlDecode(returnUrl));
                return Content("用户已授权，授权Token：" + result);
            }
        }

        /// <summary>
        /// 测试ReturnUrl
        /// </summary>
        /// <returns></returns>
        public ActionResult TestReturnUrl()
        {
            string msg = "OAuthAccessTokenStartTime：" + Session["OAuthAccessTokenStartTime"];
            //注意：OAuthAccessTokenStartTime这里只是为了方便识别和演示，
            //OAuthAccessToken千万千万不能传输到客户端！

            msg += "<br /><br />" +
                   "此页面为returnUrl功能测试页面，可以进行刷新（或后退），不会得到code不可用的错误。<br />测试不带returnUrl效果，请" +
                   string.Format("<a href=\"{0}\">点击这里</a>。", Url.Action("Index"));

            return Content(msg);
        }


        #region 授权信息

        public ActionResult GetAuthorizerInfoResult(string authorizerId)
        {
            var getAuthorizerInfoResult = AuthorizerContainer.GetAuthorizerInfoResult(appId, authorizerId);
            return Json(getAuthorizerInfoResult, JsonRequestBehavior.AllowGet);
        }

        public ActionResult RefreshAuthorizerAccessToken(string authorizerId)
        {
            var componentAccessToken = ComponentContainer.GetComponentAccessToken(appId);
            var authorizationInfo = AuthorizerContainer.GetAuthorizationInfo(appId, authorizerId);
            if (authorizationInfo == null)
            {
                return Content("授权信息读取失败！");
            }

            var refreshToken = authorizationInfo.authorizer_refresh_token;
            var result = AuthorizerContainer.RefreshAuthorizerToken(componentAccessToken, appId, authorizerId,
                refreshToken);
            return Json(result, JsonRequestBehavior.AllowGet);
        }

        #endregion

    }
}