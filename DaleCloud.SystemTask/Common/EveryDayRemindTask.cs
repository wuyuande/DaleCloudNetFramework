using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DaleCloud.Code;
using DaleCloud.DingTalk;
using DaleCloud.DingTalk.Entities;
using DaleCloud.Entity.DingTalk;
using DaleCloud.Application.DingTalk;
using DaleCloud.Application.CommonService;
using FluentScheduler;

namespace DaleCloud.SystemTask
{
    public class EveryDayRemindTask : IJob
    {
        public EveryDayRemindTask()
        {
            //System.Threading.Thread tasktimer = new System.Threading.Thread(new System.Threading.ThreadStart(SendRemindMsg));
            //tasktimer.Start();
        }
        /// <summary>
        /// 开启执行任务
        /// </summary>
        void IJob.Execute()
        {
            RemindDemo();
        }

        /// <summary>
        /// 客户收款提醒
        /// </summary>
        public void RemindDemo()
        {
            DingTalkApp ding = new DingTalkApp();
            DingTalkCorpConfig config = ding.GetAccessToken();
            DateTime nowtime = DateTime.Now;
           
            DayOfWeek dayofweek = DateTime.Now.DayOfWeek;
            try
            {
                List<string> users = new List<string>();
                users.Add("manager6639");
               
                string linktitle = "立即查看";
                string linkurl = Configs.GetValue("WebSiteUrl") + "/ProductManage/Customer/Details?keyValue=111";
                if (users.Count > 0)
                {
                    string title = "客户收款提醒";
                    string msg = string.Format("# 张三的收款截止日期还有7天，请营销经理关注   \n  收款止日：2019-10-10  \n  # 销售经理：李维民");
                    SendWorkMessageResult result = WorkMessageApi.SendMessagebyActionCard(
                         config.AccessToken, 211500037030, EnumClass.RecvType.UseridList, users, title, msg, linktitle, linkurl);
                    if (!result.IsSuccess)
                    {
                        Log log = LogFactory.GetLogger("ErrorLog");
                        log.Info(result.Errmsg);
                    }
                }
            }
            catch (Exception ex)
            {
                return ;
            }
        }

       

    }
   
   
}
