/*******************************************************************************
 * Copyright © 2016 DaleCloud.Framework 版权所有
 * Author: DaleCloud
 * Description: DaleCloud快速开发平台
 * Website：
*********************************************************************************/
using System;

namespace DaleCloud.Entity.WeixinManage
{
    public class WxPropertyInfoEntity : IEntityV2<WxPropertyInfoEntity>, ICreationAuditedV2, IModificationAuditedV2
    {
        public string T_Id { get; set; }
        /// <summary>
        /// 微信原始ID
        /// </summary>
        public string T_WxId { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int T_TypeId { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string T_TypeName { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string T_IName { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string T_IContent { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int T_ExpiresIn { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int T_Count { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public int T_CategoryId { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string T_CategoryName { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public string T_Remark { get; set; }
        /// <summary>
        /// 
        /// </summary>
        public bool T_Status { get; set; }
        /// <summary>
        /// 创建人ID
        /// </summary>		
        public string T_CreatorUserId { get; set; }
        /// <summary>
        /// 操作时间
        /// </summary>		
        public DateTime? T_CreateTime { get; set; }
        /// <summary>
        /// 更新人ID
        /// </summary>		
        public string T_ModifyUserId { get; set; }
        /// <summary>
        /// 更新时间
        /// </summary>		
        public DateTime? T_ModifyTime { get; set; }

    }
}
