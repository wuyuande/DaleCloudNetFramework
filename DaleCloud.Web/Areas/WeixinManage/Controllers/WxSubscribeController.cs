/*******************************************************************************
 * Copyright © 2016 NFine.Framework 版权所有
 * Author: DaleCloud
 * Description: DaleCloud快速开发平台
 * Website：
*********************************************************************************/

using System.Collections.Generic;
using System.Linq;
using System;
using System.Web.Mvc;
using DaleCloud.Code;
using DaleCloud.Application.WeixinManage;
using DaleCloud.Entity.WeixinManage;
namespace DaleCloud.Web.Areas.WeixinManage.Controllers
{
    public class WxSubscribeController : ControllerBase
    {
        private WxBaseConfigApp app = new WxBaseConfigApp();


        [HttpGet]
        [HandlerAjaxOnly]
        public ActionResult GetTreeJson()
        {
            var treeList = new List<TreeViewModel>();
            TreeViewModel tree = new TreeViewModel();
            tree.id = "subscribe";
            tree.text = "被关注回复";
            tree.value = "subscribe";
            tree.parentId = "";
            tree.isexpand = true;
            tree.complete = true;
            tree.hasChildren = false;
            treeList.Add(tree);
            tree = new TreeViewModel();
            tree.id = "default";
            tree.text = "收到消息回复";
            tree.value = "default";
            tree.parentId = "";
            tree.isexpand = true;
            tree.complete = true;
            tree.hasChildren = false;
            treeList.Add(tree);
            tree = new TreeViewModel();
            tree.id = "keyword";
            tree.text = "关键词回复";
            tree.value = "keyword";
            tree.parentId = "";
            tree.isexpand = true;
            tree.complete = true;
            tree.hasChildren = false;
            treeList.Add(tree);
            return Content(treeList.TreeViewJson());
        }

        
        [HttpGet]
        [HandlerAjaxOnly]
        public ActionResult GetFormJson(string keyValue)
        {
            var data = app.GetForm();
            return Content(data.ToJson());
        }
        [HttpPost]
        [HandlerAjaxOnly]
        [ValidateAntiForgeryToken]
        public ActionResult SubmitForm(WxBaseConfigEntity userEntity )
        {
            app.SubmitForm(userEntity);
            return Success("操作成功。");
        }
       
        
        
    }
}
