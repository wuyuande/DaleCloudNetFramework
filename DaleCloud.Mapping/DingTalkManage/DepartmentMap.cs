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
	 	//DingTalk_Department
		public class DepartmentMap : EntityTypeConfiguration<DepartmentEntity>
	{
   		     
		public DepartmentMap()
        {
            this.ToTable("DingTalk_Department");
            this.HasKey(t => t.Id);
        }
   
	}
}

