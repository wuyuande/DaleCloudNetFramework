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
    public class DingTalkCorpConfigMap : EntityTypeConfiguration<DingTalkCorpConfigEntity>
    {
        public DingTalkCorpConfigMap()
        {
            this.ToTable("DingTalk_CorpConfig");
            this.HasKey(t => t.uuId);
        }
    }
}
