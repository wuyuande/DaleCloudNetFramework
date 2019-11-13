/*******************************************************************************
 * Copyright © 2016 DaleCloud.Framework 版权所有
 * Author: DaleCloud
 * Description: DaleCloud快速开发平台
 * Website：
*********************************************************************************/
using System;

namespace DaleCloud.Entity
{
    public interface ICreationAuditedV2
    {
        string T_Id { get; set; }
        string T_CreatorUserId { get; set; }
        DateTime? T_CreateTime { get; set; }
    }
}