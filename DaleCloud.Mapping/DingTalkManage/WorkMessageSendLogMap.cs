/*******************************************************************************
 * Copyright © 2018 DaleCloud 版权所有
 * Author: DaleCloud
 * Description: DaleCloud
 * Website：
*********************************************************************************/

using DaleCloud.Entity.DingTalkManage;
using System.Data.Entity.ModelConfiguration;

namespace DaleCloud.Mapping.DingTalkManage 
{
	public class WorkMessageSendLogMap : EntityTypeConfiguration<WorkMessageSendLogEntity>
	{
		public WorkMessageSendLogMap()
        {
            this.ToTable("DingTalk_WorkMessage_SendLog");
            this.HasKey(t => t.uuId);
        }
   
	}
}

