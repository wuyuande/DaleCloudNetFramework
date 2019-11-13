/*******************************************************************************
 * Copyright © 2016 NFine.Framework 版权所有
 * Author: DaleCloud
 * Description: DaleCloud快速开发平台
 * Website：
*********************************************************************************/
using System.Collections.Generic;
using System.Text;

namespace DaleCloud.Code
{
    public static class ComboSelect
    {
        public static string ComboSelectJson(this List<ComboSelectModel> data)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append(ComboSelectJson(data, "0"));
            return sb.ToString();
        }

        private static string ComboSelectJson(List<ComboSelectModel> data, string parentId)
        {
            StringBuilder sb = new StringBuilder();
            var ChildNodeList = data.FindAll(t => t.parentid == parentId);
            StringBuilder strJson = new StringBuilder();
            strJson.Append("[");
            if (ChildNodeList.Count > 0)
            {
                foreach (ComboSelectModel entity in ChildNodeList)
                {
                    strJson.Append("{");
                    strJson.Append("\"id\":\"" + entity.id + "\",");
                    strJson.Append("\"text\":\"" + entity.text.Replace("&nbsp;", "") + "\",");
                    strJson.Append("\"value\":\"" + entity.value.Replace("&nbsp;", "") + "\",");
                    strJson.Append("\"children\":" + ComboSelectJson(data, entity.id) + "");
                    strJson.Append("},");
                }
                strJson = strJson.Remove(strJson.Length - 1, 1);
            }
            strJson.Append("]");
            return strJson.ToString().Replace("}{", "},{");
        }
    }
}