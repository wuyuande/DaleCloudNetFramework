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
	 	//WeixinMP_TemplateMessage
	 
	public class TemplateMessageEntity : IEntityV2<TemplateMessageEntity>  
	{
   		     
		/// <summary>
		/// ID
        /// </summary>		
        public string T_Id{ get; set; }        
		/// <summary>
		/// 模板代码
        /// </summary>		
        public string T_Code{ get; set; }        
		/// <summary>
		/// 官方模板ID
        /// </summary>		
        public string T_TemplateId{ get; set; }        
		/// <summary>
		/// 官方模板标题
        /// </summary>		
        public string T_Title{ get; set; }        
		/// <summary>
		/// 模板所属行业的一级行业
        /// </summary>		
        public int T_Primary_Industry{ get; set; }        
		/// <summary>
		/// 模板所属行业的二级行业
        /// </summary>		
        public int T_Deputy_Industry{ get; set; }        
		/// <summary>
		/// T_Data_First
        /// </summary>		
        public string T_Data_First{ get; set; }        
		/// <summary>
		/// T_Data_Remark
        /// </summary>		
        public string T_Data_Remark{ get; set; }        
		/// <summary>
		/// T_Data_Keyword1
        /// </summary>		
        public string T_Data_Keyword1{ get; set; }        
		/// <summary>
		/// T_Data_Keyword2
        /// </summary>		
        public string T_Data_Keyword2{ get; set; }        
		/// <summary>
		/// T_Data_Keyword3
        /// </summary>		
        public string T_Data_Keyword3{ get; set; }        
		/// <summary>
		/// T_Data_Keyword4
        /// </summary>		
        public string T_Data_Keyword4{ get; set; }        
		/// <summary>
		/// T_Data_Keyword5
        /// </summary>		
        public string T_Data_Keyword5{ get; set; }        
		/// <summary>
		/// 模板跳转链接
        /// </summary>		
        public string T_LinkUrl{ get; set; }        
		/// <summary>
		/// T_MiniProgram
        /// </summary>		
        public int T_MiniProgram{ get; set; }        
		/// <summary>
		/// 小程序appid
        /// </summary>		
        public string T_Appid{ get; set; }        
		/// <summary>
		/// 所需跳转到小程序的具体页面路径，支持带参数
        /// </summary>		
        public string T_Pagepath{ get; set; }        
		/// <summary>
		/// 首部颜色
        /// </summary>		
        public string T_FirstColor{ get; set; }        
		/// <summary>
		/// 备注部分颜色
        /// </summary>		
        public string T_RemarkColor{ get; set; }        
		/// <summary>
		/// 模板内容
        /// </summary>		
        public string T_Content{ get; set; }        
		/// <summary>
		/// 状态
        /// </summary>		
        public bool T_Status{ get; set; }        
		/// <summary>
		/// 创建时间
        /// </summary>		
        public DateTime T_CreateTime{ get; set; }        
		   
	}
}

