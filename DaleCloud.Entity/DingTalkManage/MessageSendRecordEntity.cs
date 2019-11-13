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

namespace DaleCloud.Entity.DingTalkManage 
{
	 	//DingTalk_MessageSendRecord
	 
	public class MessageSendRecordEntity : IEntityV2<MessageSendRecordEntity>  
	{
   		     
		/// <summary>
		/// T_Id
        /// </summary>		
        public string T_Id{ get; set; }        
		/// <summary>
		/// T_Code
        /// </summary>		
        public string T_Code{ get; set; }        
		/// <summary>
		/// T_RecType
        /// </summary>		
        public string T_RecType{ get; set; }        
		/// <summary>
		/// T_UseridList
        /// </summary>		
        public string T_UseridList{ get; set; }        
		/// <summary>
		/// T_DeptList
        /// </summary>		
        public string T_DeptList{ get; set; }
        /// <summary>
        /// 消息类型
        /// </summary>
        public string T_MsgType { get; set; }
        /// <summary>
        /// T_Title
        /// </summary>		
        public string T_Title{ get; set; }        
		/// <summary>
		/// T_Content
        /// </summary>		
        public string T_Content{ get; set; }    
        /// <summary>
        /// 链接地址
        /// </summary>
        public string T_Url { get; set; }
        /// <summary>
        /// T_SendType
        /// </summary>		
        public string T_SendType{ get; set; }        
		/// <summary>
		/// T_SendDate
        /// </summary>		
        public DateTime? T_SendDate{ get; set; }        
		/// <summary>
		/// T_State
        /// </summary>		
        public int T_State{ get; set; }        
		   
	}
}

