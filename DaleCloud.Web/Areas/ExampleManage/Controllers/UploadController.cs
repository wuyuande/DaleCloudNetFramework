/*******************************************************************************
 * Copyright © 2016 DaleCloud.Framework 版权所有
 * Author: DaleCloud
 * Description: DaleCloud快速开发平台
 * Website：
*********************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DaleCloud.Code;
using DaleCloud.Application.CommonService;

namespace DaleCloud.Web.Areas.ExampleManage.Controllers
{
    public class UploadController : ControllerBase
    {
        /// <summary>
        /// 上传照片
        /// </summary>
        /// <param name="id">用户的ID</param>
        /// <returns></returns>
        public ActionResult UpdatePhoto(string uid)
        {
            try
            {
                var files = Request.Files;
                if (files != null && files.Count > 0)
                {
                    var fileData = FileHelper.ConvertStreamToByteBuffer(files[0].InputStream);
                    var fileName = files[0].FileName;
                    string remsg = new UpLoad().FileSaveAs(fileData, fileName, false, false);
                    return Success(remsg);
                }else
                {
                    return Error("没有文件");
                }
            }
            catch (Exception ex)
            {
                return Error(ex.Message);
            }
            
        }

    }
}
