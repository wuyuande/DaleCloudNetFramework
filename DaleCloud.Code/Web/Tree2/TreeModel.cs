/*******************************************************************************
 * Copyright © 2016 NFine.Framework 版权所有
 * Author: DaleCloud
 * Description: DaleCloud快速开发平台
 * Website：
*********************************************************************************/
namespace DaleCloud.Code
{
    public class TreeModel
    {
        public string parentId { get; set; }
        public string id { get; set; }
        public string text { get; set; }
        public string value { get; set; }
        public bool state { get; set; }
        public bool complete { get; set; }
        public string img { get; set; }
        public string title { get; set; }
    }
}
