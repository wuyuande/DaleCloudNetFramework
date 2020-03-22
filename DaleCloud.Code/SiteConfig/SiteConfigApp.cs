using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Xml.Serialization;

namespace DaleCloud.Code.SysConfig
{
   /// <summary>
   /// 系统站点配置读写操作
   /// </summary>
    public partial class SiteConfigApp
    {
        private static object lockHelper = new object();
        /// <summary>
        ///  读取配置文件（MVC模式下已弃用）
        /// </summary>
        //public SiteConfig LoadConfig()
        //{
        //    SiteConfig model = CacheHelper.Get<SiteConfig>(SysKeys.CACHE_SYS_CONFIG);
        //    if (model == null)
        //    {
        //        string path = Utils.GetXmlMapPath(SysKeys.FILE_SYS_XML_CONFING);
        //        CacheHelper.Insert(SysKeys.CACHE_SYS_CONFIG, LoadConfig(path),
        //            Utils.GetXmlMapPath(SysKeys.FILE_SYS_XML_CONFING));
        //        model = CacheHelper.Get<SiteConfig>(SysKeys.CACHE_SYS_CONFIG);
        //    }
        //    return model;
        //}

        /// <summary>
        ///  读取配置文件
        /// </summary>
        public SiteConfig LoadConfig()
        {
            SiteConfig model = CacheFactory.Cache().GetCache<SiteConfig>(SysKeys.CACHE_SYS_CONFIG);
            if (model == null)
            {
                string path = Utils.GetXmlMapPath(SysKeys.FILE_SYS_XML_CONFING);
                model = LoadConfig(path);
                CacheFactory.Cache().WriteCache(model, SysKeys.CACHE_SYS_CONFIG);
                model = CacheFactory.Cache().GetCache<SiteConfig>(SysKeys.CACHE_SYS_CONFIG);
            }
            return model;
        }

        /// <summary>
        ///  保存配置文件
        /// </summary>
        public SiteConfig SaveConifg(SiteConfig model)
        {
            return SaveConifg(model, Utils.GetXmlMapPath(SysKeys.FILE_SYS_XML_CONFING));
        }
        
        /// <summary>
        ///  读取站点配置文件
        /// </summary>
        private SiteConfig LoadConfig(string configFilePath)
        {
            return (SiteConfig)SerializationHelper.Load(typeof(SiteConfig), configFilePath);
        }

        /// <summary>
        /// 写入站点配置文件
        /// </summary>
        private SiteConfig SaveConifg(SiteConfig model, string configFilePath)
        {
            lock (lockHelper)
            {
                SerializationHelper.Save(model, configFilePath);
            }
            return model;
        }
    }
}
