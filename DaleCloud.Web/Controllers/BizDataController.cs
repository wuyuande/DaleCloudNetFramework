/*******************************************************************************
 * Copyright © 2016 NFine.Framework 版权所有
 * Author: DaleCloud
 * Description: DaleCloud快速开发平台
 * Website：
*********************************************************************************/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Mvc;
using DaleCloud.Code;
using DaleCloud.Application.SystemManage;
using DaleCloud.Entity.SystemManage;
using DaleCloud.Entity.BaseDataManage;
using DaleCloud.Application.DingTalk;
using DaleCloud.Entity.DingTalk;
using DaleCloud.Application.CommonService;
using DaleCloud.DingTalk;
using DaleCloud.Entity.SystemSecurity;
using DaleCloud.Application.SystemSecurity;


namespace DaleCloud.Web.Controllers
{
    //[HandlerLogin]
    
    public class BizDataController : ControllerBasev2
    {
        private DingTalkApp ding = new DingTalkApp();

        //[HttpGet]
        //[HandlerAjaxOnly]
        public ActionResult GetClientsDataJson()
        {
            var data = new
            {
                dataItems = this.GetDataItemList(),
                dingTalkUsers=this.GetdingTalkUsersList(),
                userItems = this.GetUserItemsList(),
                user = ""
            };
            return Content(data.ToJson());
        }
        
        private object GetDingTalkCorpConfig(string url)
        {
            DingTalkCorpConfig config = ding.GetAccessToken();
            if (config != null)
            {
                config.TimeStamp = DingTalkHelper.GetTimeStamp();
                config.NonceStr = DingTalkHelper.GuidTo16String();
                string jsapi_ticket = DingTalkHelper.GetJsApiTicket(config.AccessToken);
                config.url = url;
                config.jsapi_ticket = jsapi_ticket;
                config.Signature = DingTalkHelper.GetAccessSignature(config.NonceStr, config.TimeStamp.ToString(), jsapi_ticket, url);

            }
            return config;

        }

        //[HttpGet]
        //[HandlerAjaxOnly]
        public ActionResult GetDataItems(string enCode)
        {
            var itemId = new ItemsApp().GetModelId(enCode);
            var itemdata = new ItemsDetailApp().GetList(itemId);
            var treeList = new List<ComboSelectModel>();
            foreach (var item in new ItemsApp().GetList())
            {
                if (item.F_EnCode.Equals(enCode))
                {
                    var dataItemList = itemdata.FindAll(t => t.F_ItemId.Equals(item.F_Id));
                    foreach (ItemsDetailEntity itemList in dataItemList)
                    {
                        ComboSelectModel comboModel = new ComboSelectModel();
                        comboModel.id = itemList.F_ItemCode;
                        comboModel.text = itemList.F_ItemName;
                        comboModel.value = itemList.F_ItemName;
                        comboModel.parentid = itemList.F_ParentId == null ? "0" : itemList.F_ParentId;
                        treeList.Add(comboModel);
                    }
                    return Content(treeList.ComboSelectJson());
                }
            }
            return Content("");
        }

        //[HttpGet]
        //[HttpPost]
        //[HandlerAjaxOnly]
        public ActionResult GetSysUserJson(string keyValue)
        {
            RoleEntity role = (new RoleApp()).GetModel(keyValue);
            UserApp userApp = new UserApp();
            var data = userApp.GetList("");
            if (role != null)
            {
                data = data.FindAll(p => p.F_RoleId == role.F_Id && p.F_EnabledMark==true);
            }
            else
            {
                data = userApp.GetUserList("");
            }
            for(int i = 0; i < data.Count; i++)
            {
                data[i].F_DepartmentId = CommonApp.GetDepartName(data[i].F_DepartmentId);
            }
            return Content(data.ToJson());
        }

        //[HttpGet]
        //[HandlerAjaxOnly]
        public ActionResult GeRolesJson(string keyValue)
        {
            var treeList = new List<TreeSelectModel>();
            foreach (var item in new RoleApp().GetList())
            {
                TreeSelectModel treeModel = new TreeSelectModel();
                treeModel.id = item.F_Id;
                treeModel.text = item.F_FullName;
                treeModel.parentId =  "0" ;
                treeList.Add(treeModel);
            }
            return Content(treeList.TreeSelectJson());
        }


        private object GetDataItemList()
        {
            var itemdata = new ItemsDetailApp().GetList();
            Dictionary<string, object> dictionaryItem = new Dictionary<string, object>();
            foreach (var item in new ItemsApp().GetList())
            {
                var dataItemList = itemdata.FindAll(t => t.F_ItemId.Equals(item.F_Id));
                Dictionary<string, string> dictionaryItemList = new Dictionary<string, string>();
                foreach (var itemList in dataItemList)
                {
                    dictionaryItemList.Add(itemList.F_ItemCode, itemList.F_ItemName);
                }
                dictionaryItem.Add(item.F_EnCode, dictionaryItemList);
            }
            return dictionaryItem;
        }
        private object GetOrganizeList()
        {
            OrganizeApp organizeApp = new OrganizeApp();
            var data = organizeApp.GetList();
            Dictionary<string, object> dictionary = new Dictionary<string, object>();
            foreach (OrganizeEntity item in data)
            {
                var fieldItem = new
                {
                    encode = item.F_EnCode,
                    fullname = item.F_FullName
                };
                dictionary.Add(item.F_Id, fieldItem);
            }
            return dictionary;
        }
        private object GetRoleList()
        {
            RoleApp roleApp = new RoleApp();
            var data = roleApp.GetList();
            Dictionary<string, object> dictionary = new Dictionary<string, object>();
            foreach (RoleEntity item in data)
            {
                var fieldItem = new
                {
                    encode = item.F_EnCode,
                    fullname = item.F_FullName
                };
                dictionary.Add(item.F_Id, fieldItem);
            }
            return dictionary;
        }
        private object GetDutyList()
        {
            DutyApp dutyApp = new DutyApp();
            var data = dutyApp.GetList();
            Dictionary<string, object> dictionary = new Dictionary<string, object>();
            foreach (RoleEntity item in data)
            {
                var fieldItem = new
                {
                    encode = item.F_EnCode,
                    fullname = item.F_FullName
                };
                dictionary.Add(item.F_Id, fieldItem);
            }
            return dictionary;
        }
        private object GetdingTalkUsersList()
        {
            DingTalkUsersApp dutyApp = new DingTalkUsersApp();
            var data = dutyApp.GetList();
            Dictionary<string, object> dictionary = new Dictionary<string, object>();
            foreach (DingTalkUserEntity item in data)
            {
                var fieldItem = new
                {
                    encode = item.UserId,
                    fullname = item.UserName
                };
                dictionary.Add(item.UserId, fieldItem);
            }
            return dictionary;
        }

        private object GetUserItemsList()
        {
            var data = (new UserApp()).GetList("");
            Dictionary<string, object> dictionary = new Dictionary<string, object>();
            foreach (UserEntity item in data)
            {
                var fieldItem = new
                {
                    encode = item.F_DingTalkUserId,
                    fullname = item.F_RealName
                };
                dictionary.Add(item.F_Id, fieldItem);
            }
            return dictionary;
        }


        #region 此处可以放其他的业务数据


        #endregion

    }
}
