/*******************************************************************************
 * Copyright © 2016 DaleCloud 版权所有
 * Author: DaleCloud
 * Description: DaleCloud开发平台
 * Website：
*********************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using DaleCloud.Code;
using DaleCloud.Entity.WeixinManage;
using DaleCloud.Repository.WeixinManage;

namespace DaleCloud.Application.WeixinManage
{
    public class WxPropertyInfoApp
    {
        private WxPropertyInfoRepository service = new WxPropertyInfoRepository();

        public List<WxPropertyInfoEntity> GetList()
        {
            return service.IQueryable().ToList();
        }
        public List<WxPropertyInfoEntity> GetList(string apiid, string iName)
        {
            var expression = ExtLinq.True<WxPropertyInfoEntity>();
            if (!string.IsNullOrEmpty(apiid))
            {
                expression = expression.And(t => t.T_WxId.Equals(apiid));
            }
            if (!string.IsNullOrEmpty(iName))
            {
                expression = expression.And(t => t.T_IName.Equals(iName));
            }
            return service.IQueryable(expression).OrderBy(t => t.T_WxId).ToList();
        }
        public WxPropertyInfoEntity GetForm(string keyValue)
        {
            return service.FindEntity(keyValue);
        }

        public void AddAccessToken(string apiid, string access_token)
        {
            try
            {
                WxPropertyInfoEntity wxProperty = new WxPropertyInfoEntity();
                wxProperty.T_IName = "access_token";
                wxProperty.T_TypeId = 1;
                wxProperty.T_TypeName = "base";
                wxProperty.T_IContent = access_token;
                wxProperty.T_ExpiresIn = 1200;
                wxProperty.T_Count = 1;
                wxProperty.T_WxId = apiid;
                wxProperty.T_Status = true;
                wxProperty.Create();
                service.Insert(wxProperty);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public bool Exists(string keyValue)
        {
            WxPropertyInfoEntity entity = service.FindEntity(t => t.T_WxId == keyValue);
            if (entity != null)
            {
                return true;
            }
            return false;
        }


        public void SubmitForm(WxPropertyInfoEntity mEntity, string keyValue)
        {
            if (string.IsNullOrEmpty(keyValue)==false)
            {
                service.Update(mEntity);
            }
            else
            {
                mEntity.Create();
                service.Insert(mEntity);
            }
        }

        public WxPropertyInfoEntity GetModel(int keyValue)
        {
            return service.FindEntity(keyValue);
        }
    }
}
