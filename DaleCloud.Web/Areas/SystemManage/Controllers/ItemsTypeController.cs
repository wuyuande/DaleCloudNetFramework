/*******************************************************************************
 * Copyright © 2016 NFine.Framework 版权所有
 * Author: NFine
 * Description: DaleCloud快速开发平台
 * Website：
*********************************************************************************/
using DaleCloud.Application.SystemManage;
using DaleCloud.Code;
using DaleCloud.Entity.SystemManage;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;

namespace DaleCloud.Web.Areas.SystemManage.Controllers
{
    public class ItemsTypeController : ControllerBase
    {
        private ItemsApp itemsApp = new ItemsApp();

        [HttpGet]
        [HandlerAjaxOnly]
        public ActionResult GetTreeSelectJson()
        {
            var data = itemsApp.GetList();
            var treeList = new List<TreeSelectModel>();
            foreach (ItemsEntity item in data)
            {
                TreeSelectModel treeModel = new TreeSelectModel();
                treeModel.id = item.F_Id;
                treeModel.text = item.F_FullName;
                treeModel.parentId = item.F_ParentId;
                treeList.Add(treeModel);
            }
            return Content(treeList.TreeSelectJson());
        }
        //[HttpGet]
        //[HandlerAjaxOnly]
        public ActionResult GetTreeJson()
        {
            var data = itemsApp.GetList();
            var treeList = new List<TreeModel>();
            foreach (ItemsEntity item in data)
            {
                TreeModel tree = new TreeModel();
                bool hasChildren = data.Count(t => t.F_ParentId == item.F_Id) == 0 ? false : true;
                tree.id = item.F_Id;
                tree.text = item.F_FullName;
                tree.value = item.F_EnCode;
                tree.parentId = item.F_ParentId;
                tree.complete = true;
                treeList.Add(tree);
            }
            return Content(treeList.TreeJson());
        }
        [HttpGet]
        [HandlerAjaxOnly]
        public ActionResult GetTreeGridJson(string keyword)
        {
            var data = itemsApp.GetList();
            var treeList = new List<TreeGridModel2>();
            foreach (ItemsEntity item in data)
            {
                TreeGridModel2 treeModel = new TreeGridModel2();
                treeModel.id = item.F_Id;
                treeModel.text = item.F_FullName;
                treeModel.parentId = item.F_ParentId;
                treeModel.self = item;
                treeList.Add(treeModel);
            }
            if (!string.IsNullOrEmpty(keyword))
            {
                treeList = treeList.TreeWhere(t => t.text.Contains(keyword), "id", "parentId");
            }
            return Content(treeList.TreeGridJson());
        }
        [HttpGet]
        [HandlerAjaxOnly]
        public ActionResult GetFormJson(string keyValue)
        {
            var data = itemsApp.GetForm(keyValue);
            return Content(data.ToJson());
        }
        [HttpPost]
        [HandlerAjaxOnly]
        [ValidateAntiForgeryToken]
        public ActionResult SubmitForm(ItemsEntity itemsEntity, string keyValue)
        {
            itemsApp.SubmitForm(itemsEntity, keyValue);
            return Success("操作成功。");
        }
        [HttpPost]
        [HandlerAjaxOnly]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteForm(string keyValue)
        {
            itemsApp.DeleteForm(keyValue);
            return Success("删除成功。");
        }
    }
}
