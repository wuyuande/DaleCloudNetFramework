/*******************************************************************************
 * Copyright © 2016 NFine.Framework 版权所有
 * Author: DaleCloud
 * Description: DaleCloud快速开发平台
 * Website：
*********************************************************************************/

namespace DaleCloud.Code
{
    public class ComboSelectModel
    {
        public string id { get; set; }
        public string text { get; set; }
        public string value { get; set; }
        public string parentid { get; set; }
        public object children { get; set; }
    }
}
