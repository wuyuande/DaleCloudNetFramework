using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Xml.Serialization;

namespace DaleCloud.Code.SysConfig
{
   
    public partial class SysConfigApp
    {
        private static object lockHelper = new object();
        /// <summary>
        ///  读取配置文件
        /// </summary>
        public sysconfig loadConfig()
        {
            sysconfig model = CacheHelper.Get<sysconfig>(SysKeys.CACHE_SYS_CONFIG);
            if (model == null)
            {
                string path = Utils.GetXmlMapPath(SysKeys.FILE_SYS_XML_CONFING);
                CacheHelper.Insert(SysKeys.CACHE_SYS_CONFIG, loadConfig(path),
                    Utils.GetXmlMapPath(SysKeys.FILE_SYS_XML_CONFING));
                model = CacheHelper.Get<sysconfig>(SysKeys.CACHE_SYS_CONFIG);
            }
            return model;
        }

        /// <summary>
        ///  保存配置文件
        /// </summary>
        public sysconfig saveConifg(sysconfig model)
        {
            return saveConifg(model, Utils.GetXmlMapPath(SysKeys.FILE_SYS_XML_CONFING));
        }

       

        /// <summary>
        ///  读取站点配置文件
        /// </summary>
        private sysconfig loadConfig(string configFilePath)
        {
            return (sysconfig)SerializationHelper.Load(typeof(sysconfig), configFilePath);
        }

        /// <summary>
        /// 写入站点配置文件
        /// </summary>
        private sysconfig saveConifg(sysconfig model, string configFilePath)
        {
            lock (lockHelper)
            {
                SerializationHelper.Save(model, configFilePath);
            }
            return model;
        }
    }
}
