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
    //TemplateMessageMap
    public class TemplateMessageMap : EntityTypeConfiguration<TemplateMessageEntity>
	{
		public TemplateMessageMap()
        {
            this.ToTable("Weixin_TemplateMessage");
            this.HasKey(t => t.uuId);
        }
   
	}
}

