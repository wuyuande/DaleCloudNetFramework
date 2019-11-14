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
    //WRequestBaseDataMap
    public class WRequestBaseDataMap : EntityTypeConfiguration<RequestBaseDataEntity>
	{
   		     
		public WRequestBaseDataMap()
        {
            this.ToTable("Weixin_RequestBaseData");
            this.HasKey(t => t.uuId);
        }
   
	}
}

