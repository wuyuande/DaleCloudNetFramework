/*******************************************************************************
 * Copyright © 2018 DaleCloud 版权所有
 * Author: DaleCloud
 * Description: DaleCloud
 * Website：
*********************************************************************************/

using DaleCloud.Entity.BaseDataManage;
using System.Data.Entity.ModelConfiguration;

namespace DaleCloud.Mapping.BaseDataManage
{
	 //Store_Knowledge_Attach
	public class BaseAttachMap : EntityTypeConfiguration<BaseAttachEntity>
	{
   		     
		public BaseAttachMap()
        {
            this.ToTable("Base_ArticleAttach");
            this.HasKey(t => t.T_Id);
        }
   
	}
}

