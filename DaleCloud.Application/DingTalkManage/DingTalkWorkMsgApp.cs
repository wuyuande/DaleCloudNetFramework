using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DaleCloud.Code;
using DaleCloud.Entity.DingTalk;
using DaleCloud.Repository.DingTalk;
using DaleCloud.Entity.DingTalkManage;
using DaleCloud.Repository.DingTalkManage;

namespace DaleCloud.Application.DingTalk
{
    public class DingTalkWorkMsgApp
    {
        private MessageSendRecordRepository service = new MessageSendRecordRepository();
        private WorkMessageSendLogRepository logs = new WorkMessageSendLogRepository();
        /// <summary>
        /// 
        /// </summary>
        /// <param name="keyword"></param>
        /// <returns></returns>
        public List<MessageSendRecordEntity> GetList(string keyword = "")
        {
            var expression = ExtLinq.True<MessageSendRecordEntity>();
            if (!string.IsNullOrEmpty(keyword))
            {
                expression = expression.And(t => t.T_Code.Contains(keyword));
                expression = expression.Or(t => t.T_Title.Contains(keyword));
            }
            return service.IQueryable(expression).OrderBy(t => t.T_SendDate).ToList();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="keyValue"></param>
        /// <returns></returns>
        public MessageSendRecordEntity GetForm(string keyValue)
        {
            return service.FindEntity(keyValue);
        }

        public MessageSendRecordEntity GetModelByCode(string keyValue)
        {
            var expression = ExtLinq.True<MessageSendRecordEntity>();
            if (!string.IsNullOrEmpty(keyValue))
            {
                expression = expression.And(t => t.T_Code.Contains(keyValue));
            }
            return service.IQueryable(expression).OrderBy(t => t.T_State).Single();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="keyValue"></param>
        public void DeleteForm(string keyValue)
        {
            service.Delete(t => t.T_Id == keyValue);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="roleEntity"></param>
        /// <param name="keyValue"></param>
        public void SubmitForm(MessageSendRecordEntity roleEntity, string keyValue)
        {
            if (!string.IsNullOrEmpty(keyValue))
            {
                service.Update(roleEntity);
            }
            else
            {
                service.Insert(roleEntity);
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="roleEntity"></param>
        /// <param name="keyValue"></param>
        public void AddWorkMsgLog(string appId, long agentId, string title, string userId, string msg)
        {
            WorkMessageSendLogEntity entiy = new WorkMessageSendLogEntity();
            entiy.Create();
            entiy.T_AccessToken = appId;
            entiy.T_AgentId = agentId.ToString();
            entiy.T_Title = title;
            entiy.T_UserId = userId;
            entiy.T_Remark = msg;
            logs.Insert(entiy);
        }
    }
}
