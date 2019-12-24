using DaleCloud.Code;
using System.Web.Mvc;

namespace DaleCloud.Web
{
    [HandlerLogin]
    public abstract class ControllerBase : Controller
    {
        public Log FileLog
        {
            get { return LogFactory.GetLogger(this.GetType().ToString()); }
        }
        [HttpGet]
        [HandlerAuthorize]
        public virtual ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        [HandlerAuthorize]
        public virtual ActionResult Form()
        {
            return View();
        }
        [HttpGet]
        [HandlerAuthorize]
        public virtual ActionResult Details()
        {
            return View();
        }
        protected virtual ActionResult Success(string message)
        {
            return Content(new AjaxResult { state = ResultType.success.ToString(), message = message }.ToJson());
        }
        protected virtual ActionResult Success(string message, object data)
        {
            return Content(new AjaxResult { state = ResultType.success.ToString(), message = message, data = data }.ToJson());
        }
        protected virtual ActionResult SuccessByEasyUI(bool state, string message)
        {
            return Content(new AjaxResultByEasyUI { success = state, message = message }.ToJson());
        }
        protected virtual ActionResult ResultDataGrid(int total, object data)
        {
            return Content(new AjaxResultDataGrid { total = total, rows = data }.ToJson());
        }

        protected virtual ActionResult Error(string message)
        {
            return Content(new AjaxResult { state = ResultType.error.ToString(), message = message }.ToJson());
        }
    }
}
