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
   /// 系统站点配置
   /// </summary>
    public partial class SysWebSiteApp
    {
        private static object lockHelper = new object();
        /// <summary>
        ///  读取配置文件
        /// </summary>
        public SysWebSite loadConfig()
        {
            SysWebSite model = CacheHelper.Get<SysWebSite>(SysKeys.CACHE_SYS_CONFIG);
            if (model == null)
            {
                string path = Utils.GetXmlMapPath(SysKeys.FILE_SYS_XML_CONFING);
                CacheHelper.Insert(SysKeys.CACHE_SYS_CONFIG, loadConfig(path),
                    Utils.GetXmlMapPath(SysKeys.FILE_SYS_XML_CONFING));
                model = CacheHelper.Get<SysWebSite>(SysKeys.CACHE_SYS_CONFIG);
            }
            return model;
        }

        /// <summary>
        ///  保存配置文件
        /// </summary>
        public SysWebSite saveConifg(SysWebSite model)
        {
            return saveConifg(model, Utils.GetXmlMapPath(SysKeys.FILE_SYS_XML_CONFING));
        }

       

        /// <summary>
        ///  读取站点配置文件
        /// </summary>
        private SysWebSite loadConfig(string configFilePath)
        {
            return (SysWebSite)SerializationHelper.Load(typeof(SysWebSite), configFilePath);
        }

        /// <summary>
        /// 写入站点配置文件
        /// </summary>
        private SysWebSite saveConifg(SysWebSite model, string configFilePath)
        {
            lock (lockHelper)
            {
                SerializationHelper.Save(model, configFilePath);
            }
            return model;
        }
    }
}
