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

namespace DaleCloud.Entity.WeixinManage 
{
	 	//WeixinMP_RequestRule
	 
	public class RequestRuleEntity : IEntityV2<RequestRuleEntity>  
	{
   		     
		/// <summary>
		/// T_Id
        /// </summary>		
        public string T_Id{ get; set; }        
		/// <summary>
		/// T_UId
        /// </summary>		
        public string T_UId{ get; set; }        
		/// <summary>
		/// T_RuleName
        /// </summary>		
        public string T_RuleName{ get; set; }        
		/// <summary>
		/// T_ReqKeywords
        /// </summary>		
        public string T_ReqKeywords{ get; set; }        
		/// <summary>
		/// T_ReqestType
        /// </summary>		
        public string T_ReqestType{ get; set; }        
		/// <summary>
		/// 回复类型（文本1，图文2，语音3，视频4,第三方接口5）
        /// </summary>		
        public int T_ResponseType{ get; set; }        
		/// <summary>
		/// 是默认回复
        /// </summary>		
        public bool T_IsDefault{ get; set; }        
		/// <summary>
		/// 功能模版名称
        /// </summary>		
        public string T_ModelFunctionName{ get; set; }        
		/// <summary>
		/// 功能模块Id
        /// </summary>		
        public int T_ModelFunctionId{ get; set; }        
		/// <summary>
		/// 排序号
        /// </summary>		
        public int T_Seq{ get; set; }        
		/// <summary>
		/// 创建时间
        /// </summary>		
        public DateTime T_CreateDate{ get; set; }        
		/// <summary>
		/// 第三方接口的url
        /// </summary>		
        public string T_AgentUrl{ get; set; }        
		/// <summary>
		/// 第三方token值
        /// </summary>		
        public string T_AgentToken{ get; set; }        
		/// <summary>
		/// 是模糊查询
        /// </summary>		
        public bool T_IsLikeSearch{ get; set; }        
		/// <summary>
		/// 扩展int
        /// </summary>		
        public int T_ExtInt{ get; set; }        
		/// <summary>
		/// 扩展int
        /// </summary>		
        public int T_ExtInt2{ get; set; }        
		/// <summary>
		/// 扩展str
        /// </summary>		
        public string T_ExtStr{ get; set; }        
		/// <summary>
		/// 扩展str2
        /// </summary>		
        public string T_ExtStr2{ get; set; }        
		/// <summary>
		/// 扩展str3
        /// </summary>		
        public string T_ExtStr3{ get; set; }        
		/// <summary>
		/// 扩展str4
        /// </summary>		
        public string T_ExtStr4{ get; set; }        
		/// <summary>
		/// M
        /// </summary>		
        public string M{ get; set; }        
		   
	}
}

