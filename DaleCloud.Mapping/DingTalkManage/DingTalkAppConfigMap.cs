/*******************************************************************************
 * Copyright © 2016 DaleCloud 版权所有
 * Author: DaleCloud
 * Description: DaleCloud
 * Website：
*********************************************************************************/
using DaleCloud.Entity.DingTalk;
using System.Data.Entity.ModelConfiguration;

namespace DaleCloud.Mapping.DingTalk
{
    public class DingTalkAppConfigMap : EntityTypeConfiguration<DingTalkAppConfigEntity>
    {
        public DingTalkAppConfigMap()
        {
            this.ToTable("DingTalk_AppConfig");
            this.HasKey(t => t.AppCode);
        }
    }
}
