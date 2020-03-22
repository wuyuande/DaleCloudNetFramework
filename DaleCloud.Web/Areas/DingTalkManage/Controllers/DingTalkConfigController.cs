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
using DaleCloud.DingTalk;
using DaleCloud.Application.DingTalk;
using DaleCloud.Entity.DingTalk;
namespace DaleCloud.Web.Areas.DingTalkManage.Controllers
{
    public class DingTalkConfigController : ControllerBase
    {
        private DingTalkApp app = new DingTalkApp();
        
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
        public ActionResult SubmitForm(DingTalkCorpConfigEntity mEntity)
        {
            app.SubmitForm(mEntity);
            return Success("操作成功。");
        }


    }
}
