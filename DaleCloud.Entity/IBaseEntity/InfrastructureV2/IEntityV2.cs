/*******************************************************************************
 * Copyright © 2016 DaleCloud.Framework 版权所有
 * Author: DaleCloud
 * Description: DaleCloud快速开发平台
 * Website：
*********************************************************************************/
using DaleCloud.Code;
using System;

namespace DaleCloud.Entity
{
    public class IEntityV2<TEntity>
    {
        public void Create()
        {
            var entity = this as ICreationAuditedV2;
            entity.uuId = Utils.GuId();
            var LoginInfo = OperatorProvider.Provider.GetCurrent();
            if (LoginInfo != null)
            {
                entity.CreatorId = LoginInfo.UserId;
            }
            entity.CreateTime = DateTime.Now;
        }
        
        public void Modify(string keyValue)
        {
            var entity = this as IModificationAuditedV2;
            entity.uuId = keyValue;
            var LoginInfo = OperatorProvider.Provider.GetCurrent();
            if (LoginInfo != null)
            {
                entity.ModifierId = LoginInfo.UserId;
            }
            entity.ModifyTime = DateTime.Now;
        }
        //public void Remove()
        //{
        //    var entity = this as IDeleteAuditedV2;
        //    var LoginInfo = OperatorProvider.Provider.GetCurrent();
        //    if (LoginInfo != null)
        //    {
        //        entity.F_DeleteUserId = LoginInfo.UserId;
        //    }
        //    entity.T_DeleteTime = DateTime.Now;
        //    entity.T_DeleteMark = true;
        //}
    }
}
