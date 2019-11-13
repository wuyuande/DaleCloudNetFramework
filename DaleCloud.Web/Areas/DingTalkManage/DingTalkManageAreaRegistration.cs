using System.Web.Mvc;

namespace DaleCloud.Web.Areas.DingTalkManage
{
    public class DingTalkManageAreaRegistration : AreaRegistration
    {
        public override string AreaName
        {
            get
            {
                return "DingTalkManage";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context)
        {
            context.MapRoute(
                this.AreaName + "_Default",
                this.AreaName + "/{controller}/{action}/{id}",
                new { area = this.AreaName, controller = "Home", action = "Index", id = UrlParameter.Optional },
                new string[] { "DaleCloud.Web.Areas." + this.AreaName + ".Controllers" }
            );
        }
    }
}
