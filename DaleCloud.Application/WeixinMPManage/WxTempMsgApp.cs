/*******************************************************************************
 * Copyright © 2016 DaleCloud 版权所有
 * Author: DaleCloud
 * Description: DaleCloud开发平台
 * Website：
*********************************************************************************/

using System;
using System.Collections.Generic;
using System.Linq;
using Senparc.Weixin.MP.Entities;
using Senparc.Weixin.MP.CommonAPIs;
using Senparc.Weixin.MP.Entities.Menu;
using DaleCloud.Code;
using DaleCloud.Application.WeixinManage;
using DaleCloud.Entity.WeixinManage;
using DaleCloud.Repository.WeixinManage;

namespace DaleCloud.Application.WeixinManage
{
    public class WxTempMsgApp
    {
        private WeixinMP_TemplateMessageRepository service = new WeixinMP_TemplateMessageRepository();

        public List<TemplateMessageEntity> GetList()
        {
            return service.IQueryable().ToList();
        }

        public List<TemplateMessageEntity> GetList(string keyword = "")
        {
            var expression = ExtLinq.True<TemplateMessageEntity>();
            if (!string.IsNullOrEmpty(keyword))
            {
                expression = expression.And(t => t.T_Code.Contains(keyword));
                expression = expression.Or(t => t.T_Title.Contains(keyword));
                expression = expression.Or(t => t.T_TemplateId.Contains(keyword));
            }
            return service.IQueryable(expression).OrderBy(t => t.T_CreateTime).ToList();
        }

        public TemplateMessageEntity GetForm(string keyValue)
        {
            return service.FindEntity(keyValue);
        }

        public void SubmitForm(TemplateMessageEntity mEntity, string keyValue)
        {
            if (!string.IsNullOrEmpty(keyValue))
            {
                service.Update(mEntity);
            }
            else
            {
                mEntity.Create();
                service.Insert(mEntity);
            }
        }

        public void DeleteForm(string keyValue)
        {
            service.Delete(t => t.T_Id == keyValue);

        }

        public TemplateMessageEntity GetModel(string keyValue)
        {
            return service.FindEntity(keyValue);
        }

    }
}
