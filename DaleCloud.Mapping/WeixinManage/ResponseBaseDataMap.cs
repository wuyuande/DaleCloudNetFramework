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
    //ResponseBaseDataMap
    public class ResponseBaseDataMap : EntityTypeConfiguration<ResponseBaseDataEntity>
	{
   		     
		public ResponseBaseDataMap()
        {
            this.ToTable("Weixin_ResponseBaseData");
            this.HasKey(t => t.T_Id);
        }
   
	}
}

