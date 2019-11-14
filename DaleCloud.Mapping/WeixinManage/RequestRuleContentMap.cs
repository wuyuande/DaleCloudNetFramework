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
    //RequestRuleContentMap
    public class RequestRuleContentMap : EntityTypeConfiguration<RequestRuleContentEntity>
	{
   		     
		public RequestRuleContentMap()
        {
            this.ToTable("Weixin_RequestRuleContent");
            this.HasKey(t => t.uuId);
        }
   
	}
}

