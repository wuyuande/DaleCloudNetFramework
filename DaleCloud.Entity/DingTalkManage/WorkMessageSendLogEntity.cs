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
        /// 主键
        /// </summary>		
        public string uuId { get; set; }
        /// <summary>
        /// AccessToken
        /// </summary>		
        public string AccessToken{ get; set; }        
		/// <summary>
		/// AgentId
        /// </summary>		
        public string AgentId{ get; set; }        
		/// <summary>
		/// TaskId
        /// </summary>		
        public string TaskId{ get; set; }        
		/// <summary>
		/// Title
        /// </summary>		
        public string Title{ get; set; }        
		/// <summary>
		/// Message
        /// </summary>		
        public string Message{ get; set; }        
		/// <summary>
		/// Url
        /// </summary>		
        public string Url{ get; set; }        
		/// <summary>
		/// UserId
        /// </summary>		
        public string UserId{ get; set; }        
		/// <summary>
		/// Remark
        /// </summary>		
        public string Remark{ get; set; }
        /// <summary>
        ///创建人
        /// </summary>		
        public string Creator { get; set; }
        /// <summary>
		/// 创建人ID
        /// </summary>		
        public string CreatorId { get; set; }
        /// <summary>
		/// 创建时间
        /// </summary>		
        public DateTime? CreateTime { get; set; }
        /// <summary>
        /// 修改人
        /// </summary>		
        public string Modifier { get; set; }
        /// <summary>
        /// 修改人ID
        /// </summary>		
        public string ModifierId { get; set; }
        /// <summary>
        /// 修改时间
        /// </summary>		
        public DateTime? ModifyTime { get; set; }
        /// <summary>
        /// 删除人ID
        /// </summary>		
        public string DeleterId { get; set; }
        /// <summary>
        /// 删除时间
        /// </summary>		
        public DateTime? DeleteTime { get; set; }

    }
}

