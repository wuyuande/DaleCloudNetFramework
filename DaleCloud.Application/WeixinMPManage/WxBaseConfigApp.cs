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
    public class WxBaseConfigApp
    {
       
        /// <summary>
        /// 读取配置
        /// </summary>
        /// <returns></returns>
        public WxBaseConfigEntity GetForm()
        {
            Code.SysConfig.WeixinConfig entity = new Code.SysConfig.WeixinConfigApp().LoadConfig();
            if (entity != null)
            {
                WxBaseConfigEntity model = new WxBaseConfigEntity();
                model.WxName = entity.WxName;
                model.WxId = entity.WxId;
                model.WxCode = entity.WxCode;
                model.HeadPic = entity.HeadPic;
                model.Token = entity.Token;
                model.ApiUrl = entity.ApiUrl;
                model.AppId = entity.AppId;
                model.AgentId = entity.AgentId;
                model.AppKey = entity.AppKey;
                model.AppSecret = entity.AppSecret;
                model.Encoding = entity.Encoding;
                model.WxType = entity.WxType;
                model.CloseKW = entity.CloseKW;
                model.TimeStamp = entity.TimeStamp;
                model.PersonSynDate = entity.PersonSynDate;
                model.OpenidCount = entity.OpenidCount;

                return model;
            }
            else
            {
                return null;
            }
        }
       
        /// <summary>
        /// 保存配置
        /// </summary>
        /// <param name="mEntity"></param>
        public void SubmitForm(WxBaseConfigEntity mEntity)
        {
            try
            {
                Code.SysConfig.WeixinConfig model = new Code.SysConfig.WeixinConfigApp().LoadConfig();
                model.WxName = mEntity.WxName;
                model.WxId = mEntity.WxId;
                model.WxCode = mEntity.WxCode;
                model.HeadPic = mEntity.HeadPic;
                model.Token = mEntity.Token;
                model.ApiUrl = mEntity.ApiUrl;
                model.AppId = mEntity.AppId;
                model.AgentId = mEntity.AgentId;
                model.AppKey = mEntity.AppKey;
                model.AppSecret = mEntity.AppSecret;
                model.Encoding = mEntity.Encoding;
                model.WxType = mEntity.WxType;
                model.CloseKW = mEntity.CloseKW;
                model.TimeStamp = mEntity.TimeStamp;
                model.PersonSynDate = mEntity.PersonSynDate;
                model.OpenidCount = mEntity.OpenidCount;
                new Code.SysConfig.WeixinConfigApp().SaveConifg(model);
            }
            catch(Exception ex)
            {
                throw new Exception("保存出错：" + ex.Message);
            }
        }

      
       
        public WxBaseConfigEntity GetDefaultConfig()
        {
            return GetForm();
        }

        

        public bool wxCloseKW(string apiid)
        {
            WxBaseConfigEntity model = new WxBaseConfigEntity();
            model = GetForm();
            if (model != null)
            {
                return model.CloseKW;
            }
            return true;
        }

        public string GetWeiXinToken(string apiid)
        {
            WxBaseConfigEntity model = new WxBaseConfigEntity();
            model = GetForm();
            if (model != null)
            {
                return model.Token ;
            }
            return string.Empty;
        }

        
    }
}
