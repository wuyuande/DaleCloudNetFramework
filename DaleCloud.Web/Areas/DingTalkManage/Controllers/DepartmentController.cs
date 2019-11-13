/*******************************************************************************
 * Copyright © 2016 NFine.Framework 版权所有
 * Author: DaleCloud
 * Description: DaleCloud快速开发平台
 * Website：
*********************************************************************************/
using DaleCloud.Application.DingTalk;
using DaleCloud.Code;
using DaleCloud.Entity.DingTalk;
using System.Collections.Generic;
using System.Linq;
using System;
using System.Web.Mvc;
using DaleCloud.DingTalk;

namespace DaleCloud.Web.Areas.DingTalkManage.Controllers
{
    public class DepartmentController : ControllerBasev2
    {
        private DepartmentApp app = new DepartmentApp();
        private DingTalkApp ding = new DingTalkApp();
        [HttpGet]
        [HandlerAjaxOnly]
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
        public ActionResult SubmitForm(DepartmentEntity infoEntity, string keyValue)
        {
            app.SubmitForm(infoEntity,keyValue);
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

        public ActionResult UpdateDingTalkDepartment()
        {
            try
            {
                DingTalkCorpConfig config = ding.GetAccessToken();
                if (config.AccessToken != null)
                {
                    List<DepartmentInfo> deparlist = DingTalk.DingTalkDepartApi.GetDepartmentList(config.AccessToken,"1");
                    if (deparlist != null && deparlist.Count > 0)
                    {
                        foreach (DepartmentInfo model in deparlist)
                        {
                            app.DeleteForm(model.Id.ToString());
                            DepartmentEntity entity = new DepartmentEntity();
                            DepartmentInfo department= DingTalkDepartApi.GetDepartmentInfo(config.AccessToken, model.Id);
                            if (department!=null)
                            {
                                entity.Id = department.Id.ToString();
                                entity.Name = department.Name;
                                entity.Parentid = department.Parentid.ToString();
                                entity.AutoAddUser = department.AutoAddUser;
                                entity.DeptHiding = department.DeptHiding;
                                entity.OrgDeptOwner = department.OrgDeptOwner;
                                entity.CreateDeptGroup = department.CreateDeptGroup;
                            }
                            else
                            {
                                entity.Id = model.Id.ToString();
                                entity.Name = model.Name;
                                entity.Parentid = model.Parentid.ToString();
                                entity.AutoAddUser = model.AutoAddUser;
                                entity.DeptHiding = model.DeptHiding;
                                entity.OrgDeptOwner = model.OrgDeptOwner;
                                entity.CreateDeptGroup = model.CreateDeptGroup;
                            }
                            entity.UpdateTime = DateTime.Now;
                            app.SubmitForm(entity, null);
                        }
                    }
                    else
                    {
                        return Error("更新失败。");
                    }
                }
            }
            catch (Exception ex)
            {
                return Error("更新失败：" + ex.Message);
            }
            return Success("更新成功");
        }

    }
}
