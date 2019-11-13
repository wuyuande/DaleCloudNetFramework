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
    public static class TreeGrid2
    {
        public static string TreeGridJson(this List<TreeGridModel2> data)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append(TreeGridJson(data, "0"));
            return sb.ToString();
        }
        private static string TreeGridJson(List<TreeGridModel2> data,  string parentId)
        {
            StringBuilder sb = new StringBuilder();
            var ChildNodeList = data.FindAll(t => t.parentId == parentId);
            sb.Append("[");
            if (ChildNodeList.Count > 0) {
                foreach (TreeGridModel2 entity in ChildNodeList)
                {
                    string strJson = entity.self.ToJson()+",";
                    strJson = strJson.Insert(1, "\"children\":" + TreeGridJson(data, entity.id) + ",");
                    strJson = strJson.Insert(1, "\"parent\":\"" + parentId + "\",");
                    sb.Append(strJson);
                }
                sb = sb.Remove(sb.Length - 1, 1);
            }

            sb.Append("]");
            return sb.ToString().Replace("}{", "},{");

        }
    }
}
