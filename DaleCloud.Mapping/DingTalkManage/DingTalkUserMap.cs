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
	//DingTalk_UserInfo
	public class DingTalkUserMap : EntityTypeConfiguration<DingTalkUserEntity>
	{   
		public DingTalkUserMap()
        {
            this.ToTable("DingTalk_User");
            this.HasKey(t => t.UserId);
        }
	}
}

