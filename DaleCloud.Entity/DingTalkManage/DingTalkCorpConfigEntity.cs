/*******************************************************************************
 * Copyright © 2018 DaleCloud.Framework 版权所有
 * Author: DaleCloud
 * Description: DaleCloud
 * Website：
*********************************************************************************/

using System; 
using System.Text;
using System.Collections.Generic; 
using System.Data;

namespace DaleCloud.Entity.DingTalk
{
    //DingTalkCorpConfig
    public class DingTalkCorpConfigEntity 
    {
        /// <summary>
        /// 主键
        /// </summary>		
        public string uuId { get; set; }
        /// <summary>
        /// CorpId
        /// </summary>	
        public string CorpId{ get; set; }        
		/// <summary>
		/// CorpSecret
        /// </summary>	
        public string CorpSecret{ get; set; }        
		/// <summary>
		/// AppName
        /// </summary>	
        public string AppName{ get; set; }        
		/// <summary>
		/// HeadPic
        /// </summary>	
        public string HeadPic{ get; set; }        
		/// <summary>
		/// ApiUrl
        /// </summary>	
        public string ApiUrl{ get; set; }        
		/// <summary>
		/// AgentId
        /// </summary>
        public string AgentId{ get; set; }
        /// <summary>
        /// AppId
        /// </summary>
        public string AppId { get; set; }
        /// <summary>
        /// AppKey
        /// </summary>	
        public string AppKey{ get; set; }        
		/// <summary>
		/// AppSecret
        /// </summary>	
        public string AppSecret{ get; set; }        
		/// <summary>
		/// Access_Token
        /// </summary>	
        public string Access_Token{ get; set; }
        /// <summary>
        /// AppType
        /// </summary>	
        public int AppType { get; set; }        
		/// <summary>
		/// Encoding
        /// </summary>		
        public string Encoding{ get; set; }        
		/// <summary>
		/// Remark
        /// </summary>	
        public string Remark{ get; set; }

    }
}


