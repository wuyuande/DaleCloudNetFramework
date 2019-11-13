using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DaleCloud.Code;
using DaleCloud.WeixinMP.Model;
using DaleCloud.Application.CustomerManage;
using DaleCloud.Entity.CustomerManage;
using DaleCloud.Application.ServiceManage;
using DaleCloud.Entity.ServiceManage;
using DaleCloud.Entity.ProductManage;
using DaleCloud.Application.ProductManage;
using DaleCloud.Application.CommonService;

namespace DaleCloud.Web.Areas.WeixinApp.Controllers
{
    public class WorkOrderController : ControllerBaseWeixin
    {
        private ServiceWorkOrderApp app = new ServiceWorkOrderApp();


        [HttpGet]
        public virtual ActionResult Index(string openid, string customerId)
        {
            if (string.IsNullOrEmpty(openid))
            {
                string thisUrl = HttpHelper.GetWebSite() + Request.RawUrl;
                return Redirect(GetOAuthCallbackUrl(thisUrl, false));
            }
            return View();
        }


        [HttpGet]
        public virtual ActionResult Detail(string openid, string customerId)
        {
            if (string.IsNullOrEmpty(openid))
            {
                string thisUrl = HttpHelper.GetWebSite() + Request.RawUrl;
                return Redirect(GetOAuthCallbackUrl(thisUrl,false));
            }
            
            return View();
        }

        [HttpGet]
        public virtual ActionResult Form(string openid, string customerId)
        {
            if (string.IsNullOrEmpty(openid))
            {
                string thisUrl = HttpHelper.GetWebSite() + Request.RawUrl;
                return Redirect(GetOAuthCallbackUrl(thisUrl, false));
            }
            return View();
        }

        [HttpGet]
        public virtual ActionResult ServiceList(string openid, string customerId)
        {
            if (string.IsNullOrEmpty(openid))
            {
                string thisUrl = HttpHelper.GetWebSite() + Request.RawUrl;
                return Redirect(GetOAuthCallbackUrl(thisUrl, false));
            }
            return View();
        }

        [HttpPost]
        //[HandlerAjaxOnly]
        //[ValidateAntiForgeryToken]
        public ActionResult SubmitForm(ServiceWorkOrderEntity uEntity, string keyValue)
        {
            if (string.IsNullOrEmpty(uEntity.T_CustomerId)){
                return Error("客户资料不存在，请重新正确登陆。");
            }
            uEntity.T_CustomerName = CommonApp.GetCustomerName(uEntity.T_CustomerId);
            uEntity.T_Title = uEntity.T_Description.Length>50 ? uEntity.T_Description.Substring(0, 50): uEntity.T_Description;
            ProductDeviceEntity device = (new ProductDeviceApp().GetDevice(uEntity.T_SerialNo));

            if (device == null)
            {
                return Error("没有选择产品设备或者设备信息不存在。");
            }
            uEntity.T_ProductName = device.T_ProductName;
            uEntity.T_ModelCode = device.T_ModelCode;
            uEntity.T_OrderLevel = "重要"; ;
            uEntity.T_Category = "客户提交";
            uEntity.T_From = "客户微信";
            app.SubmitForm(uEntity, keyValue);
            return Success("操作成功。");
        }
    }
}