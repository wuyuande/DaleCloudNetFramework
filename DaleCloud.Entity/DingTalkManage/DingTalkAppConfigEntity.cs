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
    public class DingTalkAppConfigEntity
    {

        /// <summary>
        /// T_AppCode
        /// </summary>	
        public int T_AppCode { get; set; }
        /// <summary>
        /// T_AppName
        /// </summary>	
        public string T_AppName { get; set; }
        /// <summary>
        /// T_AgentId
        /// </summary>	
        public string T_AgentId { get; set; }
        /// <summary>
        /// T_AppId
        /// </summary>		
        public string T_AppId { get; set; }
        /// <summary>
        /// T_AppKey
        /// </summary>	
        public string T_AppKey { get; set; }
        /// <summary>
        /// T_AppSecret
        /// </summary>	
        public string T_AppSecret { get; set; }
        /// <summary>
        /// T_Access_Token
        /// </summary>
        public string T_Access_Token { get; set; }    
		   
	}
}


