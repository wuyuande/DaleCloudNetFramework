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
    //RequestRuleMap
    public class RequestRuleMap : EntityTypeConfiguration<RequestRuleEntity>
	{
   		     
		public RequestRuleMap()
        {
            this.ToTable("Weixin_RequestRule");
            this.HasKey(t => t.uuId);
        }
   
	}
}

