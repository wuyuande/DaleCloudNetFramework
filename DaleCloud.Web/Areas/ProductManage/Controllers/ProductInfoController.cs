using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DaleCloud.Code;
using DaleCloud.DingTalk;
using DaleCloud.Application.DingTalk;
using DaleCloud.Application.ProductManage;
using DaleCloud.Entity.ProductManage;

namespace DaleCloud.Web.Areas.ProductManage.Controllers
{
    public class ProductInfoController : ControllerBase
    {
        //
        // GET: /DingTalkPcManage/Knowledge/
        private ProductInfoApp app = new ProductInfoApp();

        [HttpGet]
        [HandlerAjaxOnly]
        public ActionResult GetTreeSelectJson()
        {
            var data = app.GetList();
            var treeList = new List<TreeSelectModel>();
            foreach (BaseProductInfoEntity item in data)
            {
                TreeSelectModel treeModel = new TreeSelectModel();
                treeModel.id = item.T_Id;
                treeModel.text = item.T_FullName;
                treeModel.data = item;
                treeList.Add(treeModel);
            }
            return Content(treeList.TreeSelectJson());
        }
        

        
        //[HttpGet]
        //[HandlerAjaxOnly]
        public ActionResult GetGridJson(string keyword)
        {
            var data = app.GetList(keyword);
            return Content(data.ToJson());
        }

        [HttpGet]
        [HandlerAjaxOnly]
        public ActionResult GetFormJson(string keyValue)
        {
            var data = app.GetForm(keyValue);
            return Content(data.ToJson());
        }
        [HttpPost]
        [HandlerAjaxOnly]
        [ValidateAntiForgeryToken]
        public ActionResult SubmitForm(BaseProductInfoEntity uEntity, string keyValue)
        {
            app.SubmitForm(uEntity, keyValue);
            return Success("操作成功。");
        }
        [HttpPost]
        [HandlerAjaxOnly]
        [HandlerAuthorize]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteForm(string keyValue)
        {
            app.DeleteForm(keyValue);
            return Success("删除成功。");
        }


    }
}
