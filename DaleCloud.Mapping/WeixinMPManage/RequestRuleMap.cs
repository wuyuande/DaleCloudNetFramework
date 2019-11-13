/*******************************************************************************
 * Copyright © 2018 DaleCloud 版权所有
 * Author: DaleCloud
 * Description: DaleCloud
 * Website：
*********************************************************************************/

using DaleCloud.Entity.WeixinManage;
using System.Data.Entity.ModelConfiguration;

namespace DaleCloud.Mapping.WeixinManage 
{
	 	//WeixinMP_RequestRule
		public class RequestRuleMap : EntityTypeConfiguration<RequestRuleEntity>
	{
   		     
		public RequestRuleMap()
        {
            this.ToTable("Weixin_RequestRule");
            this.HasKey(t => t.T_Id);
        }
   
	}
}

