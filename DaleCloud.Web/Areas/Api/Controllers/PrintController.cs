using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DaleCloud.Web.Areas.Api.Controllers
{
    public class PrintController : Controller
    {
        // GET: Api/Print
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult PrintDataGrid()
        {
            return View();
        }
    }
}