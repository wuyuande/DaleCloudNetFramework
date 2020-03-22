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
    public class WxCodeController : ControllerBase
    {
        private WxBaseConfigApp app = new WxBaseConfigApp();
       
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
        public ActionResult SubmitForm(WxBaseConfigEntity userEntity)
        {
            app.SubmitForm(userEntity);
            return Success("操作成功。");
        }
       
        
    }
}
