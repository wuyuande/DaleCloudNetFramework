using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;
using DaleCloud.Application.CommonService;

namespace DaleCloud.Web.Areas.Api.Controllers
{
    public class ExcelManageController : ControllerBasev2
    {
        // GET: Api/ExcelManage
        public ActionResult Import(string table)
        {
            if (table == "customer")
            {
                ViewData["templateUrl"] = "/Configs/Templates/template_customer.xls";
                ViewData["tableName"] = table;
            }
            if (table == "device")
            {
                ViewData["templateUrl"] = "/Configs/Templates/template_device.xls";
                ViewData["tableName"] = table;
            }
            return View();
        }

        public ActionResult SubmitImport(HttpPostedFileBase filebase,string table)
        {
            HttpPostedFileBase file = Request.Files["file"];
            string FileName;
            string fullPath;
            if (file == null || file.ContentLength <= 0)
            {
                ViewBag.error = "文件不能为空";
                return View("Import");
            }
            else
            {
                string filename = Path.GetFileName(file.FileName);
                int filesize = file.ContentLength;//获取上传文件的大小单位为字节byte
                string fileEx = System.IO.Path.GetExtension(filename);//获取上传文件的扩展名
                string NoFileName = System.IO.Path.GetFileNameWithoutExtension(filename);//获取无扩展名的文件名
                int Maxsize = 4000 * 1024;//定义上传文件的最大空间大小为4M
                string FileType = ".xls,.xlsx";//定义上传文件的类型字符串

                FileName = NoFileName + DateTime.Now.ToString("yyyyMMddhhmmss") + fileEx;
                if (!FileType.Contains(fileEx))
                {
                    ViewBag.error = "文件类型不对，只能导入xls和xlsx格式的文件";
                    return View("Import");
                }
                if (filesize >= Maxsize)
                {
                    ViewBag.error = "上传文件超过4M，不能上传";
                    return View("Import");
                }
                try
                {
                   //具体导入到数据库的方法
                }
                catch(Exception ex)
                {
                    ViewData["tableName"] = table;
                    ViewBag.error = ex.Message;
                    return View("Import");
                }
            }

            ViewData["tableName"] = table;
            ViewBag.error = "导入成功";
            System.Threading.Thread.Sleep(2000);
            return View("Import");
        }


       
    }
}