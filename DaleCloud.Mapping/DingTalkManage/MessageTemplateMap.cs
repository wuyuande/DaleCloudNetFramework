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
	//DingTalk_MessageTemplate
    public class MessageTemplateMap : EntityTypeConfiguration<MessageTemplateEntity>
	{
		public MessageTemplateMap()
        {
            this.ToTable("DingTalk_MessageTemplate");
            this.HasKey(t => t.T_Id);
        }
   
	}
}

