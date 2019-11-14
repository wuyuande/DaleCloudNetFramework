/*******************************************************************************
 * Copyright © 2016 DaleCloud.Framework 版权所有
 * Author: DaleCloud
 * Description: DaleCloud快速开发平台
 * Website：
*********************************************************************************/
using System;

namespace DaleCloud.Entity
{
    public interface IModificationAuditedV2
    {
        string uuId { get; set; }
        string ModifierId { get; set; }
        DateTime? ModifyTime { get; set; }
    }
}