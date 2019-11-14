/*******************************************************************************
 * Copyright © 2016 DaleCloud 版权所有
 * Author: DaleCloud
 * Description: DaleCloud开发平台
 * Website：
*********************************************************************************/
using DaleCloud.Entity.WeixinManage;
using System.Data.Entity.ModelConfiguration;

namespace DaleCloud.Mapping.WeixinManage
{
    public class WxAppConfigMap : EntityTypeConfiguration<WxBaseConfigEntity>
    {
        public WxAppConfigMap()
        {
            this.ToTable("WeiXin_WxAppConfig");
            this.HasKey(t => t.uuId);
        }
    }
}
