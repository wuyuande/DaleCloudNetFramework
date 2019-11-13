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
	public class WorkMessageSendLogEntity : IEntityV2<WorkMessageSendLogEntity>, ICreationAuditedV2,IModificationAuditedV2  
	{
   		     
		/// <summary>
		/// T_Id
        /// </summary>		
        public string T_Id{ get; set; }        
		/// <summary>
		/// T_AccessToken
        /// </summary>		
        public string T_AccessToken{ get; set; }        
		/// <summary>
		/// T_AgentId
        /// </summary>		
        public string T_AgentId{ get; set; }        
		/// <summary>
		/// T_TaskId
        /// </summary>		
        public string T_TaskId{ get; set; }        
		/// <summary>
		/// T_Title
        /// </summary>		
        public string T_Title{ get; set; }        
		/// <summary>
		/// T_Message
        /// </summary>		
        public string T_Message{ get; set; }        
		/// <summary>
		/// T_Url
        /// </summary>		
        public string T_Url{ get; set; }        
		/// <summary>
		/// T_UserId
        /// </summary>		
        public string T_UserId{ get; set; }        
		/// <summary>
		/// T_Remark
        /// </summary>		
        public string T_Remark{ get; set; }        
		/// <summary>
		/// 创建人用户ID
        /// </summary>		
        public string T_CreatorUserId{ get; set; }        
		/// <summary>
		/// 创建时间
        /// </summary>		
        public DateTime? T_CreateTime{ get; set; }        
		/// <summary>
		/// 更新人用户Id
        /// </summary>		
        public string T_ModifyUserId{ get; set; }        
		/// <summary>
		/// 更新时间
        /// </summary>		
        public DateTime? T_ModifyTime{ get; set; }        
		   
	}
}

