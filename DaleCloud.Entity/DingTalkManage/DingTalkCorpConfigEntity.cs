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
		/// T_Id
        /// </summary>	
        public int T_Id{ get; set; }        
		/// <summary>
		/// T_CorpId
        /// </summary>	
        public string T_CorpId{ get; set; }        
		/// <summary>
		/// T_CorpSecret
        /// </summary>	
        public string T_CorpSecret{ get; set; }        
		/// <summary>
		/// T_AppName
        /// </summary>		
	
        public string T_AppName{ get; set; }        
		/// <summary>
		/// T_HeadPic
        /// </summary>	
        public string T_HeadPic{ get; set; }        
		/// <summary>
		/// T_ApiUrl
        /// </summary>	
        public string T_ApiUrl{ get; set; }        
		/// <summary>
		/// T_AgentId
        /// </summary>
        public string T_AgentId{ get; set; }
        /// <summary>
        /// AppId
        /// </summary>
        public string T_AppId { get; set; }
        /// <summary>
        /// T_AppKey
        /// </summary>	
        public string T_AppKey{ get; set; }        
		/// <summary>
		/// T_AppSecret
        /// </summary>	
        public string T_AppSecret{ get; set; }        
		/// <summary>
		/// T_Access_Token
        /// </summary>	
        public string T_Access_Token{ get; set; }        
		/// <summary>
		/// T_CreateTime
        /// </summary>	
        public DateTime T_CreateTime{ get; set; }        
		/// <summary>
		/// T_Status
        /// </summary>	
        public int T_Status{ get; set; }        
		/// <summary>
		/// T_Encoding
        /// </summary>		
        public string T_Encoding{ get; set; }        
		/// <summary>
		/// T_Remark
        /// </summary>	
        public string T_Remark{ get; set; }        
		   
	}
}


