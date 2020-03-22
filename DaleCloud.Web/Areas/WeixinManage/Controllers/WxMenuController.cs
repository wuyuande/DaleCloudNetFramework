/*******************************************************************************
 * Copyright © 2016 NFine.Framework 版权所有
 * Author: DaleCloud
 * Description: DaleCloud快速开发平台
 * Website：
*********************************************************************************/

using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System;
using System.Reflection;
using System.Web.Mvc;
using Senparc.CO2NET.Extensions;
using Senparc.Weixin.MP.Entities;
using Senparc.Weixin.Exceptions;
using Senparc.Weixin.MP.CommonAPIs;
using Senparc.Weixin.MP.Entities.Menu;
using Senparc.Weixin.MP.Containers;
using DaleCloud.Code;
using DaleCloud.Application.WeixinManage;
using DaleCloud.Entity.WeixinManage;
using DaleCloud.WeixinMP;

namespace DaleCloud.Web.Areas.WeixinManage.Controllers
{
    public class WxMenuController : ControllerBase
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
        public ActionResult SubmitForm(WxMenu entity, string keyValue)
        {
            try
            {
                MenuManage mMrg = new MenuManage();
                WxBaseConfigEntity weixin = app.GetDefaultConfig();
                AccessTokenResult token = AccessTokenContainer.GetAccessTokenResult(weixin.AppId);
                if (token.errcode != Senparc.Weixin.ReturnCode.请求成功)
                {
                    return Error(token.errmsg);
                }

                //重新整理按钮信息
                ButtonGroup bg = new ButtonGroup();
                IList<BaseButton> topList = new List<BaseButton>();
                IList<SingleButton> subList = new List<SingleButton>();
                #region 菜单设置
                for (int i = 0; i < 3; i++)
                {
                    string txtName = (string)ForeachClass.GetValue<WxMenu>(entity, "Top" + (i + 1));
                    string txtKey = (string)ForeachClass.GetValue<WxMenu>(entity, "Top" + (i + 1) + "Key");
                    string txtUrl = (string)ForeachClass.GetValue<WxMenu>(entity, "Top" + (i + 1) + "Url");
                    if (string.IsNullOrEmpty(txtName))
                    {
                        // 如果名称为空，则忽略该菜单，以及下面的子菜单
                        continue;
                    }
                    subList = new List<SingleButton>();
                    string txtSubName ;
                    string txtSubKey ;
                    string txtSubUrl;
                    for (int j = 0; j < 5; j++)
                    {
                        #region 子菜单的设置
                        txtSubName = (string)ForeachClass.GetValue<WxMenu>(entity, "Menu" + (i + 1) + (j + 1)); 
                        txtSubKey = (string)ForeachClass.GetValue<WxMenu>(entity, "Menu" + (i + 1) + (j + 1)+ "Key"); 
                        txtSubUrl = (string)ForeachClass.GetValue<WxMenu>(entity, "Menu" + (i + 1) + (j + 1)+ "Url");
                        if (string.IsNullOrEmpty(txtSubName))
                        {
                            continue;
                        }

                        if (!string.IsNullOrEmpty(txtSubUrl))
                        {
                            SingleViewButton sub = new SingleViewButton();
                            sub.name = txtSubName.Trim();
                            sub.url = Utils.UrlDecode(txtSubUrl.Trim());
                            subList.Add(sub);

                        }
                        else if (!string.IsNullOrEmpty(txtSubKey))
                        {
                            SingleClickButton sub = new SingleClickButton();
                            sub.name = txtSubName.Trim();
                            sub.key = txtSubKey.Trim();
                            subList.Add(sub);
                        }
                        else
                        {
                            //报错 :子菜单必须有key和name
                            return Error("二级菜单的名称和key或者url必填！");
                            ;
                        }
                        #endregion

                    } //子菜单循环结束


                    if (subList != null && subList.Count > 0)
                    {
                        //有子菜单, 该一级菜单是SubButton
                        if (subList.Count < 1)
                        {
                            return Error("子菜单个数为2~5个！");
                        }
                        SubButton topButton = new SubButton(Utils.CutString(txtName.Trim(), 16));
                        topButton.sub_button.AddRange(subList);
                        topList.Add(topButton);
                    }
                    else
                    {
                        // 无子菜单
                        if (string.IsNullOrEmpty(txtKey) && string.IsNullOrEmpty(txtUrl))
                        {
                            return Error("若无子菜单，必须填写key或者url值！");
                        }

                        if (!string.IsNullOrEmpty(txtUrl))
                        {  //view 页面跳转
                            SingleViewButton topSingleButton = new SingleViewButton();
                            topSingleButton.name = txtName.Trim();
                            topSingleButton.url = Utils.UrlDecode(txtUrl.Trim()); 
                            topList.Add(topSingleButton);
                        }
                        else if (!string.IsNullOrEmpty(txtKey))
                        {
                            SingleClickButton topSingleButton = new SingleClickButton();
                            topSingleButton.name = txtName.Trim();
                            topSingleButton.key = txtKey.Trim();
                            topList.Add(topSingleButton);
                        }
                    }
                }
                #endregion

                bg.button.AddRange(topList);

                var result = mMrg.CreateMenu(token.access_token, bg);
                return Success("菜单提交成功！");
            }
            catch (Exception ex)
            {
                return Error("报错：" + ex.Message);
            }
        }

        public class ForeachClass
        {
            /// <summary>
            /// C#反射遍历对象属性
            /// </summary>
            /// <typeparam name="T">对象类型</typeparam>
            /// <param name="model">对象</param>
            public static void ForeachClassProperties<T>(T model)
            {
                Type t = model.GetType();
                PropertyInfo[] PropertyList = t.GetProperties();
                foreach (PropertyInfo item in PropertyList)
                {
                    string name = item.Name;
                    object value = item.GetValue(model, null);
                }
            }

            public static object GetValue<T>(T model,string PropertyName)
            {
                Type t = model.GetType();
                PropertyInfo[] PropertyList = t.GetProperties();
                foreach (PropertyInfo item in PropertyList)
                {
                    string name = item.Name;
                    if (PropertyName == name)
                    {
                        object value = item.GetValue(model, null);
                        return value;
                    }
                }
                return null;
            }
           
        }

        

        #region 获取最新的菜单=================================
        [HttpGet]
        [HandlerAjaxOnly]
        public ActionResult GetMenu()
        {
            try
            {
                MenuManage mMrg = new MenuManage();
                WxBaseConfigEntity weixin = app.GetDefaultConfig();
                AccessTokenResult token= AccessTokenContainer.GetAccessTokenResult(weixin.AppId);
                if (token.errcode!=Senparc.Weixin.ReturnCode.请求成功)
                {
                    return Error(token.errmsg);
                }
                GetMenuResult result = mMrg.GetMenu(token.access_token);
                if (result == null)
                {
                    return Error("未获得到菜单，请参考【使用规则】，自行排查问题！");
                }
               
                var topButtonList = result.menu.button;
                int topNum = topButtonList.Count;
                //List<string> menu = new List<string>();
                Dictionary<string, string> menu = new Dictionary<string, string>();
                for (int i = 0; i < topNum; i++)
                {
                    var topButton = topButtonList[i];
                    if (topButton != null)
                    {
                        menu.Add("Top" + (i + 1), topButton.name);
                        if (topButton.GetType() != typeof(SubButton))
                        {//下面无子菜单
                            if (topButton.GetType() == typeof(SingleViewButton))
                            {  //view 页面跳转
                                menu.Add("Top" + (i + 1) + "Key", ((SingleViewButton)topButton).url); 
                            }
                            else
                            {
                                menu.Add("Top" + (i + 1) + "Url", ((SingleClickButton)topButton).key);
                            }
                        }
                        else
                        {   //下面有子菜单
                            IList<SingleButton> subButtonList = ((SubButton)topButton).sub_button;
                            if (subButtonList != null && subButtonList.Count > 0)
                            {
                                for (int j = 0; j < subButtonList.Count; j++)
                                {
                                    if (subButtonList[j].GetType() == typeof(SingleViewButton))
                                    {
                                        SingleViewButton sub = (SingleViewButton)subButtonList[j];
                                        menu.Add("Menu" + (i + 1) + (j + 1), sub.name);
                                        menu.Add("Menu" + (i + 1) + (j + 1)+ "Url", sub.url);
                                    }
                                    else
                                    {
                                        SingleClickButton sub = (SingleClickButton)subButtonList[j];
                                        menu.Add("Menu" + (i + 1) + (j + 1), sub.name);
                                        menu.Add("Menu" + (i + 1) + (j + 1) + "Key", sub.key);
                                    }
                                }
                            }

                        }
                    }
                }
                return Success("菜单获取成功",menu);
            }
            catch (Exception ex)
            {
                return Error(ex.Message);
            }
        }

        #endregion


        [HttpPost]
        [HandlerAjaxOnly]
        [HandlerAuthorize]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteMenu()
        {
            try
            {
                WxBaseConfigEntity weixin = app.GetDefaultConfig();
                AccessTokenResult token = AccessTokenContainer.GetAccessTokenResult(weixin.AppId);
                if (token.errcode != Senparc.Weixin.ReturnCode.请求成功)
                {
                    return Error(token.errmsg);
                }
                var result = Senparc.Weixin.MP.CommonAPIs.CommonApi.DeleteMenu(token.access_token);
                //重新获得最新的菜单
                return  Success("成功");
            }
            catch (Exception ex)
            {
                return Error("执行过程出现错误：" + ex.Message);
            }
        }

        [HttpPost]
        [HandlerAjaxOnly]
        [HandlerAuthorize]
        public ActionResult RefreshAccessToken()
        {
            try
            {
                WxBaseConfigEntity weixin = app.GetDefaultConfig();
                AccessTokenResult token = AccessTokenContainer.GetAccessTokenResult(weixin.AppId,true);
                if (token.errcode != Senparc.Weixin.ReturnCode.请求成功)
                {
                    return Error(token.errmsg);
                }
                return Success("Access_Token更新成功。");
            }
            catch (Exception ex)
            {
                return Error("执行过程出现错误：" + ex.Message);
            }
        }


        public ActionResult GetToken(string appId, string appSecret)
        {
            try
            {
                //if (!AccessTokenContainer.CheckRegistered(appId))
                //{
                //    AccessTokenContainer.Register(appId, appSecret);
                //}
                //var result = CommonAPIs.CommonApi.GetToken(appId, appSecret);
                var result = AccessTokenContainer.GetAccessTokenResult(appId);

                //也可以直接一步到位：
                //var result = AccessTokenContainer.TryGetAccessToken(appId, appSecret);
                return Json(result, JsonRequestBehavior.AllowGet);
            }
            catch (ErrorJsonResultException ex)
            {
                return Json(new { error = "API 调用发生错误：{0}".FormatWith(ex.JsonResult.ToJson()) }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { error = "执行过程发生错误：{0}".FormatWith(ex.Message) }, JsonRequestBehavior.AllowGet);
            }
        }
    }
}
