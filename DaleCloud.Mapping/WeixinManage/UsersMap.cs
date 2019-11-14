/*******************************************************************************
 * Copyright © 2018 DaleCloud 版权所有
 * Author: DaleCloud
 * Description: DaleCloud
 * 
 * Website：
*********************************************************************************/

using DaleCloud.Entity.WeixinManage;
using System.Data.Entity.ModelConfiguration;

namespace DaleCloud.Mapping.WeixinManage 
{
	//微信用户基本表
	public class UsersMap : EntityTypeConfiguration<UsersEntity>
	{
		public UsersMap()
        {
            this.ToTable("Weixin_Users");
            this.HasKey(t => t.OpenId);
        }
   
	}
}

