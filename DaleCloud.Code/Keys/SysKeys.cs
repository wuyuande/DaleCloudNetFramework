using System;
using System.Collections.Generic;
using System.Text;

namespace DaleCloud.Code
{
    public class SysKeys
    {
        //系统版本
        /// <summary>
        /// 版本号全称
        /// </summary>
        public const string ASSEMBLY_VERSION = "1.0.0";
        /// <summary>
        /// 版本年号
        /// </summary>
        public const string ASSEMBLY_YEAR = "2014";
        //File======================================================
        /// <summary>
        /// 插件配制文件名
        /// </summary>
        public const string FILE_PLUGIN_XML_CONFING = "plugin.config";
        /// <summary>
        /// 站点配置文件名
        /// </summary>
        public const string FILE_SYS_XML_CONFING = "Configpath";
        /// <summary>
        /// URL配置文件名
        /// </summary>
        public const string FILE_URL_XML_CONFING = "Urlspath";
       

        //Cache======================================================
        /// <summary>
        /// 站点配置
        /// </summary>
        public const string CACHE_SYS_CONFIG = "dt_cache_sys_config";
        /// HttpModule映射类
        /// </summary>
        public const string CACHE_SITE_HTTP_MODULE = "dalecloud_cache_http_module";
        /// <summary>
        /// 绑定域名
        /// </summary>
        public const string CACHE_SITE_HTTP_DOMAIN = "dalecloud_cache_http_domain";
        /// URL重写映射表
        /// </summary>
        public const string CACHE_SITE_URLS = "dalecloud_cache_site_urls";
        /// <summary>
        /// URL重写LIST列表
        /// </summary>
        public const string CACHE_SITE_URLS_LIST = "dalecloud_cache_site_urls_list";
        /// <summary>
        /// 升级通知
        /// </summary>
        public const string CACHE_OFFICIAL_UPGRADE = "dalecloud_official_upgrade";
        /// <summary>
        /// 官方消息
        /// </summary>
        public const string CACHE_OFFICIAL_NOTICE = "dalecloud_official_notice";

        //Session=====================================================
        /// <summary>
        /// 网页验证码
        /// </summary>
        public const string SESSION_CODE = "dalecloud_session_code";
        /// <summary>
        /// 短信验证码
        /// </summary>
        public const string SESSION_SMS_CODE = "dalecloud_session_sms_code";
        /// <summary>
        /// 后台管理员
        /// </summary>
        public const string SESSION_ADMIN_INFO = "dalecloud_session_admin_info";

        //Cookies=====================================================

        public const string COOKIE_CODE = "dalecloud_cookie_code";
        /// <summary>
        /// 防重复顶踩KEY
        /// </summary>
        public const string COOKIE_DIGG_KEY = "dalecloud_cookie_digg_key";
        /// <summary>
        /// 防重复评论KEY
        /// </summary>
        public const string COOKIE_COMMENT_KEY = "dalecloud_cookie_comment_key";
        /// <summary>
        /// 返回上一页
        /// </summary>
        public const string COOKIE_URL_REFERRER = "dalecloud_cookie_url_referrer";

        /// <summary>
        /// 用户微信T_OpenId
        /// </summary>
        public const string SESSION_WXUSER_INFO = "dalecloud_session_wxuserinfo";
        /// <summary>
        /// 用户微信T_OpenId
        /// </summary>
        public const string SESSION_OPENID = "dalecloud_session_openid";
        /// <summary>
        /// 记住微信用户信息
        /// </summary>
        public const string COOKIE_WXUSER_INFO = "dalecloud_cookie_wxuserinfo";
        /// <summary>
        /// 用户微信T_OpenId
        /// </summary>
        public const string COOKIE_OPENID = "dalecloud_cookie_openid";

    }
}
