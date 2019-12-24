/*******************************************************************************
 * Copyright © 2016 NFine.Framework 版权所有
 * Author: DaleCloud
 * Description: DaleCloud快速开发平台
 * Website：
*********************************************************************************/
using DaleCloud.Code;
using DaleCloud.Entity.SystemSecurity;
using DaleCloud.Domain.IRepository.SystemSecurity;
using DaleCloud.Repository.SystemSecurity;
using System;
using System.Collections.Generic;
using System.Linq;

namespace DaleCloud.Application.SystemSecurity
{
    public class DbBackupApp
    {
        private IDbBackupRepository service = new DbBackupRepository();

        public List<DbBackupEntity> GetList(string queryJson)
        {
            var expression = ExtLinq.True<DbBackupEntity>();
            var queryParam = queryJson.ToJObject();
            if (!queryParam["condition"].IsEmpty() && !queryParam["keyword"].IsEmpty())
            {
                string condition = queryParam["condition"].ToString();
                string keyword = queryParam["keyword"].ToString();
                switch (condition)
                {
                    case "DbName":  
                        expression = expression.And(t => t.F_DbName.Contains(keyword));
                        break;
                    case "FileName":
                        expression = expression.And(t => t.F_FileName.Contains(keyword));
                        break;
                }
            }
            return service.IQueryable(expression).OrderByDescending(t => t.F_BackupTime).ToList();
        }
        public DbBackupEntity GetForm(string keyValue)
        {
            return service.FindEntity(keyValue);
        }
        public void DeleteForm(string keyValue)
        {
            service.DeleteForm(keyValue);
        }
        public void SubmitForm(DbBackupEntity dbBackupEntity)
        {
            dbBackupEntity.F_Id = Utils.GuId();
            dbBackupEntity.F_EnabledMark = true;
            dbBackupEntity.F_BackupTime = DateTime.Now;
            service.ExecuteDbBackup(dbBackupEntity);
        }
    }
}
