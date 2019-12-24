/*******************************************************************************
 * Copyright © 2016 NFine.Framework 版权所有
 * Author: DaleCloud
 * Description: DaleCloud快速开发平台
 * Website：
*********************************************************************************/
using DaleCloud.Code;
using DaleCloud.Entity.SystemManage;
using DaleCloud.Domain.IRepository.SystemManage;
using DaleCloud.Repository.SystemManage;
using System.Collections.Generic;
using System.Linq;

namespace DaleCloud.Application.SystemManage
{
    public class RoleApp
    {
        private IRoleRepository service = new RoleRepository();
        private ModuleApp moduleApp = new ModuleApp();
        private ModuleButtonApp moduleButtonApp = new ModuleButtonApp();

        public List<RoleEntity> GetList( string keyword = "")
        {
            var expression = ExtLinq.True<RoleEntity>();
            if (!string.IsNullOrEmpty(keyword))
            {
                expression = expression.And(t => t.F_FullName.Contains(keyword));
                expression = expression.Or(t => t.F_EnCode.Contains(keyword));
            }
            expression = expression.And(t => t.F_Category == 1);
            return service.IQueryable(expression).OrderBy(t => t.F_SortCode).ToList();
        }
        public List<RoleEntity> GetList(Pagination pagination, string keyword = "")
        {
            var expression = ExtLinq.True<RoleEntity>();
            if (!string.IsNullOrEmpty(keyword))
            {
                expression = expression.And(t => t.F_FullName.Contains(keyword));
                expression = expression.Or(t => t.F_EnCode.Contains(keyword));
            }
            expression = expression.And(t => t.F_Category == 1);
            return service.FindList(expression, pagination);
        }
        public RoleEntity GetForm(string keyValue)
        {
            return service.FindEntity(keyValue);
        }
        /// <summary>
        /// 根据代码获取角色信息
        /// </summary>
        /// <param name="encode"></param>
        /// <returns></returns>
        public RoleEntity GetModel(string encode)
        {
            return service.FindEntity(t => t.F_EnCode == encode);
        }

        public void DeleteForm(string keyValue)
        {
            service.DeleteForm(keyValue);
        }
        public void SubmitForm(RoleEntity roleEntity, string[] permissionIds, string keyValue)
        {
            if (!string.IsNullOrEmpty(keyValue))
            {
                roleEntity.F_Id = keyValue;
            }
            else
            {
                roleEntity.F_Id = Utils.GuId();
            }
            var moduledata = moduleApp.GetList();
            var buttondata = moduleButtonApp.GetList();
            List<RoleAuthorizeEntity> roleAuthorizeEntitys = new List<RoleAuthorizeEntity>();
            foreach (var itemId in permissionIds)
            {
                RoleAuthorizeEntity roleAuthorizeEntity = new RoleAuthorizeEntity();
                roleAuthorizeEntity.F_Id = Utils.GuId();
                roleAuthorizeEntity.F_ObjectType = 1;
                roleAuthorizeEntity.F_ObjectId = roleEntity.F_Id;
                roleAuthorizeEntity.F_ItemId = itemId;
                if (moduledata.Find(t => t.F_Id == itemId) != null)
                {
                    roleAuthorizeEntity.F_ItemType = 1;
                }
                if (buttondata.Find(t => t.F_Id == itemId) != null)
                {
                    roleAuthorizeEntity.F_ItemType = 2;
                }
                roleAuthorizeEntitys.Add(roleAuthorizeEntity);
            }
            service.SubmitForm(roleEntity, roleAuthorizeEntitys, keyValue);
        }
    }
}
