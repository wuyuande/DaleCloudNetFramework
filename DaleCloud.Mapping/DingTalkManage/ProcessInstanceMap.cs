/*******************************************************************************
 * Copyright © 2018 DaleCloud 版权所有
 * Author: DaleCloud
 * Description: DaleCloud
 * Website：
*********************************************************************************/

using DaleCloud.Entity.DingTalk;
using System.Data.Entity.ModelConfiguration;

namespace DaleCloud.Mapping.DingTalk
{
    //DingTalk_ProcessInstanceList
    public class ProcessInstanceMap : EntityTypeConfiguration<ProcessInstanceEntity>
    {
        public ProcessInstanceMap()
        {
            this.ToTable("DingTalk_ProcessInstanceList");
            this.HasKey(t => t.uuId);
        }

    }
}

