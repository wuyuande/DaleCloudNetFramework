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
	 	//WeixinMP_RequestRuleContent
	 
	public class RequestRuleContentEntity : IEntityV2<RequestRuleContentEntity>
	{
   		     
		/// <summary>
		/// 编号
        /// </summary>		
        public string T_Id{ get; set; }        
		/// <summary>
		/// 用户表主键Id
        /// </summary>		
        public string T_UId { get; set; }        
		/// <summary>
		/// 规则主键Id
        /// </summary>		
        public string T_RId { get; set; }        
		/// <summary>
		/// 内容
        /// </summary>		
        public string T_RContent{ get; set; }        
		/// <summary>
		/// 内容2
        /// </summary>		
        public string T_RContent2{ get; set; }        
		/// <summary>
		/// 详情链接地址
        /// </summary>		
        public string T_DetailUrl{ get; set; }        
		/// <summary>
		/// 图片地址
        /// </summary>		
        public string T_PicUrl{ get; set; }        
		/// <summary>
		/// 语音或视频地址
        /// </summary>		
        public string T_MediaUrl{ get; set; }        
		/// <summary>
		/// 高清语音或者视频地址
        /// </summary>		
        public string T_MeidaHDUrl{ get; set; }        
		/// <summary>
		/// 备注
        /// </summary>		
        public string T_Remark{ get; set; }        
		/// <summary>
		/// 排序号
        /// </summary>		
        public int T_Seq{ get; set; }        
		/// <summary>
		/// 创建时间
        /// </summary>		
        public DateTime T_CreateDate{ get; set; }        
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
        public string T_Extstr3{ get; set; }        
		   
	}
}

