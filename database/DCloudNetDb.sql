if exists (select * from sysobjects where id = OBJECT_ID('[Article]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Article]

CREATE TABLE [Article] (
[F_Id] [varchar]  (50) NOT NULL,
[F_CategoryId] [varchar]  (50) NULL,
[F_Title] [varchar]  (100) NULL,
[F_Zhaiyao] [varchar]  (255) NULL,
[F_SortCode] [int]  NULL,
[F_Source] [varchar]  (50) NULL,
[F_Author] [varchar]  (50) NULL,
[F_SubTitle] [varchar]  (100) NULL,
[F_IsRed] [bit]  NULL,
[F_IsHot] [bit]  NULL,
[F_IsTop] [bit]  NULL,
[F_IsSlide] [bit]  NULL,
[F_IsMsg] [bit]  NULL,
[F_Content] [ntext]  NULL,
[F_ImgUrl] [varchar]  (255) NULL,
[F_LinkUrl] [varchar]  (255) NULL,
[F_Click] [int]  NULL,
[F_Status] [bit]  NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL)

ALTER TABLE [Article] WITH NOCHECK ADD  CONSTRAINT [PK_Article] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
if exists (select * from sysobjects where id = OBJECT_ID('[Article_Category]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Article_Category]

CREATE TABLE [Article_Category] (
[F_Id] [varchar]  (50) NOT NULL,
[F_Title] [varchar]  (50) NULL,
[F_ParentId] [varchar]  (50) NULL,
[F_Layer] [int]  NULL,
[F_SortCode] [int]  NULL,
[F_IsHead] [bit]  NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL)

ALTER TABLE [Article_Category] WITH NOCHECK ADD  CONSTRAINT [PK_Article_Category] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
if exists (select * from sysobjects where id = OBJECT_ID('[Base_Tags]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Base_Tags]

CREATE TABLE [Base_Tags] (
[T_TagId] [varchar]  (50) NOT NULL,
[T_Tag] [varchar]  (50) NULL)

ALTER TABLE [Base_Tags] WITH NOCHECK ADD  CONSTRAINT [PK_Base_Tags] PRIMARY KEY  NONCLUSTERED ( [T_TagId] )
if exists (select * from sysobjects where id = OBJECT_ID('[DingTalk_AppConfig]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [DingTalk_AppConfig]

CREATE TABLE [DingTalk_AppConfig] (
[AppCode] [varchar]  (50) NOT NULL,
[AppName] [varchar]  (50) NULL,
[AgentId] [varchar]  (50) NULL,
[AppId] [varchar]  (50) NULL,
[AppKey] [varchar]  (50) NULL,
[AppSecret] [varchar]  (50) NULL,
[Access_Token] [varchar]  (50) NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [DingTalk_AppConfig] WITH NOCHECK ADD  CONSTRAINT [PK_DingTalk_AppConfig] PRIMARY KEY  NONCLUSTERED ( [AppCode] )
if exists (select * from sysobjects where id = OBJECT_ID('[DingTalk_CorpConfig]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [DingTalk_CorpConfig]

CREATE TABLE [DingTalk_CorpConfig] (
[uuId] [int]  NOT NULL,
[CorpId] [varchar]  (100) NULL,
[CorpSecret] [varchar]  (100) NULL,
[AppName] [varchar]  (100) NULL,
[HeadPic] [varchar]  (100) NULL,
[ApiUrl] [varchar]  (100) NULL,
[AppId] [varchar]  (100) NULL,
[AgentId] [varchar]  (100) NOT NULL,
[AppKey] [varchar]  (100) NULL,
[AppSecret] [varchar]  (100) NULL,
[Access_Token] [varchar]  (100) NULL,
[Status] [int]  NULL,
[Encoding] [varchar]  (100) NULL,
[Remark] [varchar]  (100) NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [DingTalk_CorpConfig] WITH NOCHECK ADD  CONSTRAINT [PK_DingTalk_CorpConfig] PRIMARY KEY  NONCLUSTERED ( [uuId] )
if exists (select * from sysobjects where id = OBJECT_ID('[DingTalk_Department]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [DingTalk_Department]

CREATE TABLE [DingTalk_Department] (
[Id] [varchar]  (50) NOT NULL,
[Name] [varchar]  (50) NULL,
[Order] [varchar]  (50) NULL,
[ParentId] [varchar]  (50) NULL,
[CreateDeptGroup] [bit]  NULL,
[AutoAddUser] [bit]  NULL,
[DeptHiding] [bit]  NULL,
[DeptPermits] [nvarchar]  (500) NULL,
[UserPermits] [nvarchar]  (500) NULL,
[OuterDept] [bit]  NULL,
[OuterPermitDepts] [nvarchar]  (500) NULL,
[OuterPermitUsers] [nvarchar]  (500) NULL,
[OrgDeptOwner] [varchar]  (50) NULL,
[DeptManagerUseridList] [nvarchar]  (500) NULL,
[SourceIdentifier] [varchar]  (50) NULL,
[GroupContainSubDept] [bit]  NULL,
[UpdateTime] [datetime]  NULL)

ALTER TABLE [DingTalk_Department] WITH NOCHECK ADD  CONSTRAINT [PK_DingTalk_Department] PRIMARY KEY  NONCLUSTERED ( [Id] )
if exists (select * from sysobjects where id = OBJECT_ID('[DingTalk_ProcessInstanceList]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [DingTalk_ProcessInstanceList]

CREATE TABLE [DingTalk_ProcessInstanceList] (
[uuId] [varchar]  (50) NOT NULL,
[ProcessCode] [varchar]  (50) NULL,
[Title] [varchar]  (50) NULL,
[Approvers] [nvarchar]  (255) NULL,
[CreateTime2] [datetime]  NULL,
[FinishTime] [datetime]  NULL,
[OriginatorUserId] [nvarchar]  (255) NULL,
[OriginatorDeptId] [nvarchar]  (255) NULL,
[Status] [varchar]  (50) NULL,
[CcUserids] [nvarchar]  (255) NULL,
[CcPosition] [varchar]  (50) NULL,
[Result] [varchar]  (50) NULL,
[BusinessId] [nvarchar]  (255) NULL,
[OriginatorDeptName] [nvarchar]  (255) NULL,
[BizAction] [nvarchar]  (255) NULL,
[Tasks] [nvarchar]  (500) NULL,
[FormComponentValues] [ntext]  NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [DingTalk_ProcessInstanceList] WITH NOCHECK ADD  CONSTRAINT [PK_DingTalk_ProcessInstanceList] PRIMARY KEY  NONCLUSTERED ( [uuId] )
if exists (select * from sysobjects where id = OBJECT_ID('[DingTalk_User]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [DingTalk_User]

CREATE TABLE [DingTalk_User] (
[UserId] [varchar]  (50) NOT NULL,
[OpenId] [varchar]  (50) NULL,
[UserName] [varchar]  (50) NULL,
[Active] [bit]  NULL,
[IsAdmin] [bit]  NULL,
[IsBoss] [bit]  NULL,
[Unionid] [varchar]  (100) NULL,
[IsLeaderInDepts] [bit]  NULL,
[IsLeader] [bit]  NULL,
[IsHide] [bit]  NULL,
[Department] [varchar]  (50) NULL,
[Position] [varchar]  (50) NULL,
[Avatar] [varchar]  (100) NULL,
[HiredDate] [varchar]  (50) NULL,
[JobNumber] [varchar]  (50) NULL,
[IsSenior] [bit]  NULL,
[Email] [varchar]  (50) NULL,
[Mobile] [varchar]  (50) NULL,
[OrganizeId] [varchar]  (50) NULL,
[RoleId] [varchar]  (50) NULL,
[SysUserId] [varchar]  (50) NULL,
[UpdateTime] [datetime]  NULL)

ALTER TABLE [DingTalk_User] WITH NOCHECK ADD  CONSTRAINT [PK_DingTalk_User] PRIMARY KEY  NONCLUSTERED ( [UserId] )
if exists (select * from sysobjects where id = OBJECT_ID('[Message_ShortMsg]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Message_ShortMsg]

CREATE TABLE [Message_ShortMsg] (
[uuid] [varchar]  (50) NOT NULL,
[aliCode] [varchar]  (50) NULL,
[aliMessage] [varchar]  (50) NULL,
[aliSendStatus] [int]  NULL,
[aliContent] [varchar]  (255) NULL,
[aliSendDate] [datetime]  NULL,
[aliReceiveDate] [datetime]  NULL,
[phoneNumber] [varchar]  (20) NULL,
[signName] [varchar]  (50) NULL,
[templateCode] [varchar]  (50) NULL,
[templateParam] [varchar]  (255) NULL,
[creator] [varchar]  (50) NULL,
[creatorId] [varchar]  (50) NULL,
[createTime] [datetime]  NULL,
[modifier] [varchar]  (50) NULL,
[modifierId] [varchar]  (50) NULL,
[modifyTime] [datetime]  NULL,
[deleterId] [varchar]  (50) NULL,
[deleteTime] [datetime]  NULL)

ALTER TABLE [Message_ShortMsg] WITH NOCHECK ADD  CONSTRAINT [PK_Message_ShortMsg] PRIMARY KEY  NONCLUSTERED ( [uuid] )
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_Area]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_Area]

CREATE TABLE [Sys_Area] (
[F_Id] [varchar]  (50) NOT NULL,
[F_ParentId] [varchar]  (50) NULL,
[F_Layers] [int]  NULL,
[F_EnCode] [varchar]  (50) NULL,
[F_FullName] [varchar]  (50) NULL,
[F_SimpleSpelling] [varchar]  (50) NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (50) NULL)

ALTER TABLE [Sys_Area] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_Area] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'120100',N'120000',2,N'120100',N'天津市',N'tjs',120100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'130100',N'130000',2,N'130100',N'石家庄市',N'sjzs',130100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'130200',N'130000',2,N'130200',N'唐山市',N'tss',130200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'130300',N'130000',2,N'130300',N'秦皇岛市',N'qhds',130300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'130400',N'130000',2,N'130400',N'邯郸市',N'hds',130400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'130500',N'130000',2,N'130500',N'邢台市',N'xts',130500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'130600',N'130000',2,N'130600',N'保定市',N'bds',130600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'130700',N'130000',2,N'130700',N'张家口市',N'zjks',130700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'130800',N'130000',2,N'130800',N'承德市',N'cds',130800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'130900',N'130000',2,N'130900',N'沧州市',N'czs',130900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'131000',N'130000',2,N'131000',N'廊坊市',N'lfs',131000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'131100',N'130000',2,N'131100',N'衡水市',N'hss',131100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'140100',N'140000',2,N'140100',N'太原市',N'tys',140100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'140200',N'140000',2,N'140200',N'大同市',N'dts',140200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'140300',N'140000',2,N'140300',N'阳泉市',N'yqs',140300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'140400',N'140000',2,N'140400',N'长治市',N'czs',140400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'140500',N'140000',2,N'140500',N'晋城市',N'jcs',140500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'140600',N'140000',2,N'140600',N'朔州市',N'szs',140600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'140700',N'140000',2,N'140700',N'晋中市',N'jzs',140700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'140800',N'140000',2,N'140800',N'运城市',N'ycs',140800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'140900',N'140000',2,N'140900',N'忻州市',N'xzs',140900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'141000',N'140000',2,N'141000',N'临汾市',N'lfs',141000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'141100',N'140000',2,N'141100',N'吕梁市',N'lls',141100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'150100',N'150000',2,N'150100',N'呼和浩特市',N'hhhts',150100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'150200',N'150000',2,N'150200',N'包头市',N'bts',150200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'150300',N'150000',2,N'150300',N'乌海市',N'whs',150300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'150400',N'150000',2,N'150400',N'赤峰市',N'cfs',150400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'150500',N'150000',2,N'150500',N'通辽市',N'tls',150500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'150600',N'150000',2,N'150600',N'鄂尔多斯市',N'eedss',150600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'150700',N'150000',2,N'150700',N'呼伦贝尔市',N'hlbes',150700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'150800',N'150000',2,N'150800',N'巴彦淖尔市',N'bynes',150800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'340400',N'340000',2,N'340400',N'淮南市',N'hns',340400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'340500',N'340000',2,N'340500',N'马鞍山市',N'mass',340500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'340600',N'340000',2,N'340600',N'淮北市',N'hbs',340600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'340700',N'340000',2,N'340700',N'铜陵市',N'tls',340700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'340800',N'340000',2,N'340800',N'安庆市',N'aqs',340800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'341000',N'340000',2,N'341000',N'黄山市',N'hss',341000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'341100',N'340000',2,N'341100',N'滁州市',N'czs',341100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'341200',N'340000',2,N'341200',N'阜阳市',N'fys',341200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'341300',N'340000',2,N'341300',N'宿州市',N'szs',341300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'341500',N'340000',2,N'341500',N'六安市',N'las',341500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'341600',N'340000',2,N'341600',N'亳州市',N'bzs',341600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'341700',N'340000',2,N'341700',N'池州市',N'czs',341700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'341800',N'340000',2,N'341800',N'宣城市',N'xcs',341800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'350100',N'350000',2,N'350100',N'福州市',N'fzs',350100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'350200',N'350000',2,N'350200',N'厦门市',N'xms',350200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'350300',N'350000',2,N'350300',N'莆田市',N'pts',350300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'350400',N'350000',2,N'350400',N'三明市',N'sms',350400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'350500',N'350000',2,N'350500',N'泉州市',N'qzs',350500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'350600',N'350000',2,N'350600',N'漳州市',N'zzs',350600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'350700',N'350000',2,N'350700',N'南平市',N'nps',350700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'350800',N'350000',2,N'350800',N'龙岩市',N'lys',350800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'350900',N'350000',2,N'350900',N'宁德市',N'nds',350900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'360100',N'360000',2,N'360100',N'南昌市',N'ncs',360100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'360200',N'360000',2,N'360200',N'景德镇市',N'jdzs',360200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'360300',N'360000',2,N'360300',N'萍乡市',N'pxs',360300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'360400',N'360000',2,N'360400',N'九江市',N'jjs',360400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'360500',N'360000',2,N'360500',N'新余市',N'xys',360500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'360600',N'360000',2,N'360600',N'鹰潭市',N'yts',360600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'360700',N'360000',2,N'360700',N'赣州市',N'gzs',360700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'360800',N'360000',2,N'360800',N'吉安市',N'jas',360800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'360900',N'360000',2,N'360900',N'宜春市',N'ycs',360900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'361000',N'360000',2,N'361000',N'抚州市',N'fzs',361000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'361100',N'360000',2,N'361100',N'上饶市',N'srs',361100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'370100',N'370000',2,N'370100',N'济南市',N'jns',370100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'370200',N'370000',2,N'370200',N'青岛市',N'qds',370200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'370300',N'370000',2,N'370300',N'淄博市',N'zbs',370300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'370400',N'370000',2,N'370400',N'枣庄市',N'zzs',370400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'370500',N'370000',2,N'370500',N'东营市',N'dys',370500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'370600',N'370000',2,N'370600',N'烟台市',N'yts',370600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'370700',N'370000',2,N'370700',N'潍坊市',N'wfs',370700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'370800',N'370000',2,N'370800',N'济宁市',N'jns',370800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'370900',N'370000',2,N'370900',N'泰安市',N'tas',370900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'371000',N'370000',2,N'371000',N'威海市',N'whs',371000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'371100',N'370000',2,N'371100',N'日照市',N'rzs',371100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'371200',N'370000',2,N'371200',N'莱芜市',N'lws',371200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'371300',N'370000',2,N'371300',N'临沂市',N'lys',371300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'371400',N'370000',2,N'371400',N'德州市',N'dzs',371400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'371500',N'370000',2,N'371500',N'聊城市',N'lcs',371500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'371600',N'370000',2,N'371600',N'滨州市',N'bzs',371600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'371700',N'370000',2,N'371700',N'菏泽市',N'hzs',371700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410100',N'410000',2,N'410100',N'郑州市',N'zzs',410100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410200',N'410000',2,N'410200',N'开封市',N'kfs',410200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410300',N'410000',2,N'410300',N'洛阳市',N'lys',410300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410400',N'410000',2,N'410400',N'平顶山市',N'pdss',410400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410500',N'410000',2,N'410500',N'安阳市',N'ays',410500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410600',N'410000',2,N'410600',N'鹤壁市',N'hbs',410600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410700',N'410000',2,N'410700',N'新乡市',N'xxs',410700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410800',N'410000',2,N'410800',N'焦作市',N'jzs',410800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410881',N'410000',2,N'410881',N'济源市',N'jys',410881,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410900',N'410000',2,N'410900',N'濮阳市',N'pys',410900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'411000',N'410000',2,N'411000',N'许昌市',N'xcs',411000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'411100',N'410000',2,N'411100',N'漯河市',N'lhs',411100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'411200',N'410000',2,N'411200',N'三门峡市',N'smxs',411200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'411300',N'410000',2,N'411300',N'南阳市',N'nys',411300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'411400',N'410000',2,N'411400',N'商丘市',N'sqs',411400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'411500',N'410000',2,N'411500',N'信阳市',N'xys',411500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'411600',N'410000',2,N'411600',N'周口市',N'zks',411600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'152200',N'150000',2,N'152200',N'兴安盟',N'xam',152200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'152500',N'150000',2,N'152500',N'锡林郭勒盟',N'xlglm',152500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'152900',N'150000',2,N'152900',N'阿拉善盟',N'alsm',152900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'210100',N'210000',2,N'210100',N'沈阳市',N'sys',210100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'210200',N'210000',2,N'210200',N'大连市',N'dls',210200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'210300',N'210000',2,N'210300',N'鞍山市',N'ass',210300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'210400',N'210000',2,N'210400',N'抚顺市',N'fss',210400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'210500',N'210000',2,N'210500',N'本溪市',N'bxs',210500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'210600',N'210000',2,N'210600',N'丹东市',N'dds',210600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'210700',N'210000',2,N'210700',N'锦州市',N'jzs',210700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'210800',N'210000',2,N'210800',N'营口市',N'yks',210800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'210900',N'210000',2,N'210900',N'阜新市',N'fxs',210900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'211000',N'210000',2,N'211000',N'辽阳市',N'lys',211000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'211100',N'210000',2,N'211100',N'盘锦市',N'pjs',211100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'211200',N'210000',2,N'211200',N'铁岭市',N'tls',211200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'211300',N'210000',2,N'211300',N'朝阳市',N'zys',211300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'211400',N'210000',2,N'211400',N'葫芦岛市',N'hlds',211400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'220100',N'220000',2,N'220100',N'长春市',N'zcs',220100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'220200',N'220000',2,N'220200',N'吉林市',N'jls',220200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'220300',N'220000',2,N'220300',N'四平市',N'sps',220300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'220400',N'220000',2,N'220400',N'辽源市',N'lys',220400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'220500',N'220000',2,N'220500',N'通化市',N'ths',220500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'220600',N'220000',2,N'220600',N'白山市',N'bss',220600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'220700',N'220000',2,N'220700',N'松原市',N'sys',220700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'220800',N'220000',2,N'220800',N'白城市',N'bcs',220800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'222400',N'220000',2,N'222400',N'延边朝鲜族自治州',N'ybzxzzzz',222400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'230100',N'230000',2,N'230100',N'哈尔滨市',N'hebs',230100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'230200',N'230000',2,N'230200',N'齐齐哈尔市',N'qqhes',230200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'230300',N'230000',2,N'230300',N'鸡西市',N'jxs',230300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'230400',N'230000',2,N'230400',N'鹤岗市',N'hgs',230400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'230500',N'230000',2,N'230500',N'双鸭山市',N'syss',230500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'230600',N'230000',2,N'230600',N'大庆市',N'dqs',230600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'230700',N'230000',2,N'230700',N'伊春市',N'ycs',230700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'230800',N'230000',2,N'230800',N'佳木斯市',N'jmss',230800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'230900',N'230000',2,N'230900',N'七台河市',N'qths',230900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'231000',N'230000',2,N'231000',N'牡丹江市',N'mdjs',231000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'231100',N'230000',2,N'231100',N'黑河市',N'hhs',231100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'231200',N'230000',2,N'231200',N'绥化市',N'shs',231200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'232700',N'230000',2,N'232700',N'大兴安岭地区',N'dxaldq',232700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'310100',N'310000',2,N'310100',N'上海市',N'shs',310100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'320100',N'320000',2,N'320100',N'南京市',N'njs',320100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'320200',N'320000',2,N'320200',N'无锡市',N'wxs',320200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'320300',N'320000',2,N'320300',N'徐州市',N'xzs',320300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'320400',N'320000',2,N'320400',N'常州市',N'czs',320400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'320500',N'320000',2,N'320500',N'苏州市',N'szs',320500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'320600',N'320000',2,N'320600',N'南通市',N'nts',320600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'320700',N'320000',2,N'320700',N'连云港市',N'lygs',320700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'320800',N'320000',2,N'320800',N'淮安市',N'has',320800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'320900',N'320000',2,N'320900',N'盐城市',N'ycs',320900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'321000',N'320000',2,N'321000',N'扬州市',N'yzs',321000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'321100',N'320000',2,N'321100',N'镇江市',N'zjs',321100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'321200',N'320000',2,N'321200',N'泰州市',N'tzs',321200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'321300',N'320000',2,N'321300',N'宿迁市',N'sqs',321300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'330100',N'330000',2,N'330100',N'杭州市',N'hzs',330100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'330200',N'330000',2,N'330200',N'宁波市',N'nbs',330200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'330300',N'330000',2,N'330300',N'温州市',N'wzs',330300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'330400',N'330000',2,N'330400',N'嘉兴市',N'jxs',330400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'330500',N'330000',2,N'330500',N'湖州市',N'hzs',330500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'330600',N'330000',2,N'330600',N'绍兴市',N'sxs',330600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'330700',N'330000',2,N'330700',N'金华市',N'jhs',330700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'330800',N'330000',2,N'330800',N'衢州市',N'qzs',330800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'330900',N'330000',2,N'330900',N'舟山市',N'zss',330900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'331000',N'330000',2,N'331000',N'台州市',N'tzs',331000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'331100',N'330000',2,N'331100',N'丽水市',N'lss',331100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'340100',N'340000',2,N'340100',N'合肥市',N'hfs',340100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'340200',N'340000',2,N'340200',N'芜湖市',N'whs',340200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'420100',N'420000',2,N'420100',N'武汉市',N'whs',420100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'420200',N'420000',2,N'420200',N'黄石市',N'hss',420200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'420300',N'420000',2,N'420300',N'十堰市',N'sys',420300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'420500',N'420000',2,N'420500',N'宜昌市',N'ycs',420500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'420600',N'420000',2,N'420600',N'襄阳市',N'xys',420600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'420700',N'420000',2,N'420700',N'鄂州市',N'ezs',420700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'420800',N'420000',2,N'420800',N'荆门市',N'jms',420800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'420900',N'420000',2,N'420900',N'孝感市',N'xgs',420900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'421000',N'420000',2,N'421000',N'荆州市',N'jzs',421000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'421100',N'420000',2,N'421100',N'黄冈市',N'hgs',421100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'421200',N'420000',2,N'421200',N'咸宁市',N'xns',421200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'421300',N'420000',2,N'421300',N'随州市',N'szs',421300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'422800',N'420000',2,N'422800',N'恩施土家族苗族自治州',N'estjzmzzzz',422800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'430100',N'430000',2,N'430100',N'长沙市',N'zss',430100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'430200',N'430000',2,N'430200',N'株洲市',N'zzs',430200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'430300',N'430000',2,N'430300',N'湘潭市',N'xts',430300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'430400',N'430000',2,N'430400',N'衡阳市',N'hys',430400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'430500',N'430000',2,N'430500',N'邵阳市',N'sys',430500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'430600',N'430000',2,N'430600',N'岳阳市',N'yys',430600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'430700',N'430000',2,N'430700',N'常德市',N'cds',430700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'430800',N'430000',2,N'430800',N'张家界市',N'zjjs',430800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'430900',N'430000',2,N'430900',N'益阳市',N'yys',430900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'431000',N'430000',2,N'431000',N'郴州市',N'czs',431000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'431100',N'430000',2,N'431100',N'永州市',N'yzs',431100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'431200',N'430000',2,N'431200',N'怀化市',N'hhs',431200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'431300',N'430000',2,N'431300',N'娄底市',N'lds',431300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'433100',N'430000',2,N'433100',N'湘西土家族苗族自治州',N'xxtjzmzzzz',433100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'440100',N'440000',2,N'440100',N'广州市',N'gzs',440100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'440200',N'440000',2,N'440200',N'韶关市',N'sgs',440200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'440300',N'440000',2,N'440300',N'深圳市',N'szs',440300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'440400',N'440000',2,N'440400',N'珠海市',N'zhs',440400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'440500',N'440000',2,N'440500',N'汕头市',N'sts',440500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'440600',N'440000',2,N'440600',N'佛山市',N'fss',440600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'440700',N'440000',2,N'440700',N'江门市',N'jms',440700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'440800',N'440000',2,N'440800',N'湛江市',N'zjs',440800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'440900',N'440000',2,N'440900',N'茂名市',N'mms',440900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'441200',N'440000',2,N'441200',N'肇庆市',N'zqs',441200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'441300',N'440000',2,N'441300',N'惠州市',N'hzs',441300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'441400',N'440000',2,N'441400',N'梅州市',N'mzs',441400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'441500',N'440000',2,N'441500',N'汕尾市',N'sws',441500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'441600',N'440000',2,N'441600',N'河源市',N'hys',441600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'441700',N'440000',2,N'441700',N'阳江市',N'yjs',441700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'441800',N'440000',2,N'441800',N'清远市',N'qys',441800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'445100',N'440000',2,N'445100',N'潮州市',N'czs',445100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'445200',N'440000',2,N'445200',N'揭阳市',N'jys',445200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'445300',N'440000',2,N'445300',N'云浮市',N'yfs',445300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'450100',N'450000',2,N'450100',N'南宁市',N'nns',450100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'450200',N'450000',2,N'450200',N'柳州市',N'lzs',450200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'450300',N'450000',2,N'450300',N'桂林市',N'gls',450300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'450400',N'450000',2,N'450400',N'梧州市',N'wzs',450400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'450500',N'450000',2,N'450500',N'北海市',N'bhs',450500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'450600',N'450000',2,N'450600',N'防城港市',N'fcgs',450600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'450700',N'450000',2,N'450700',N'钦州市',N'qzs',450700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'450800',N'450000',2,N'450800',N'贵港市',N'ggs',450800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'450900',N'450000',2,N'450900',N'玉林市',N'yls',450900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'451000',N'450000',2,N'451000',N'百色市',N'bss',451000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'451100',N'450000',2,N'451100',N'贺州市',N'hzs',451100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'451200',N'450000',2,N'451200',N'河池市',N'hcs',451200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'451300',N'450000',2,N'451300',N'来宾市',N'lbs',451300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'451400',N'450000',2,N'451400',N'崇左市',N'czs',451400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'460100',N'460000',2,N'460100',N'海口市',N'hks',460100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'500100',N'500000',2,N'500100',N'重庆市',N'zqs',500100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'510100',N'510000',2,N'510100',N'成都市',N'cds',510100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'510300',N'510000',2,N'510300',N'自贡市',N'zgs',510300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'510400',N'510000',2,N'510400',N'攀枝花市',N'pzhs',510400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'510500',N'510000',2,N'510500',N'泸州市',N'lzs',510500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'510700',N'510000',2,N'510700',N'绵阳市',N'mys',510700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'510800',N'510000',2,N'510800',N'广元市',N'gys',510800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'510900',N'510000',2,N'510900',N'遂宁市',N'sns',510900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'511000',N'510000',2,N'511000',N'内江市',N'njs',511000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'511100',N'510000',2,N'511100',N'乐山市',N'yss',511100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'511300',N'510000',2,N'511300',N'南充市',N'ncs',511300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'511400',N'510000',2,N'511400',N'眉山市',N'mss',511400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'511500',N'510000',2,N'511500',N'宜宾市',N'ybs',511500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'511600',N'510000',2,N'511600',N'广安市',N'gas',511600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'511700',N'510000',2,N'511700',N'达州市',N'dzs',511700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'511800',N'510000',2,N'511800',N'雅安市',N'yas',511800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'511900',N'510000',2,N'511900',N'巴中市',N'bzs',511900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'512000',N'510000',2,N'512000',N'资阳市',N'zys',512000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'513200',N'510000',2,N'513200',N'阿坝藏族羌族自治州',N'abzzqzzzz',513200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'513300',N'510000',2,N'513300',N'甘孜藏族自治州',N'gzzzzzz',513300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'513400',N'510000',2,N'513400',N'凉山彝族自治州',N'lsyzzzz',513400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'520100',N'520000',2,N'520100',N'贵阳市',N'gys',520100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'520200',N'520000',2,N'520200',N'六盘水市',N'lpss',520200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'520300',N'520000',2,N'520300',N'遵义市',N'zys',520300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'520400',N'520000',2,N'520400',N'安顺市',N'ass',520400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'522200',N'520000',2,N'522200',N'铜仁市',N'trs',522200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'522300',N'520000',2,N'522300',N'黔西南布依族苗族自治州',N'qxnbyzmzzzz',522300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'522400',N'520000',2,N'522400',N'毕节市',N'bjs',522400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'522600',N'520000',2,N'522600',N'黔东南苗族侗族自治州',N'qdnmztzzzz',522600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'522700',N'520000',2,N'522700',N'黔南布依族苗族自治州',N'qnbyzmzzzz',522700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'530100',N'530000',2,N'530100',N'昆明市',N'kms',530100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'530300',N'530000',2,N'530300',N'曲靖市',N'qjs',530300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'530400',N'530000',2,N'530400',N'玉溪市',N'yxs',530400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'530500',N'530000',2,N'530500',N'保山市',N'bss',530500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'530600',N'530000',2,N'530600',N'昭通市',N'zts',530600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'530700',N'530000',2,N'530700',N'丽江市',N'ljs',530700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'530800',N'530000',2,N'530800',N'普洱市',N'pes',530800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'530900',N'530000',2,N'530900',N'临沧市',N'lcs',530900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'532300',N'530000',2,N'532300',N'楚雄彝族自治州',N'cxyzzzz',532300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'532500',N'530000',2,N'532500',N'红河哈尼族彝族自治州',N'hhhnzyzzzz',532500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'532600',N'530000',2,N'532600',N'文山壮族苗族自治州',N'wszzmzzzz',532600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'532800',N'530000',2,N'532800',N'西双版纳傣族自治州',N'xsbndzzzz',532800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'532900',N'530000',2,N'532900',N'大理白族自治州',N'dlbzzzz',532900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'533100',N'530000',2,N'533100',N'德宏傣族景颇族自治州',N'dhdzjpzzzz',533100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'533300',N'530000',2,N'533300',N'怒江傈僳族自治州',N'njlszzzz',533300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'533400',N'530000',2,N'533400',N'迪庆藏族自治州',N'dqzzzzz',533400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'540100',N'540000',2,N'540100',N'拉萨市',N'lss',540100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'542100',N'540000',2,N'542100',N'昌都地区',N'cddq',542100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'542200',N'540000',2,N'542200',N'山南地区',N'sndq',542200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'542300',N'540000',2,N'542300',N'日喀则地区',N'rkzdq',542300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'542400',N'540000',2,N'542400',N'那曲地区',N'nqdq',542400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'542500',N'540000',2,N'542500',N'阿里地区',N'aldq',542500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'542600',N'540000',2,N'542600',N'林芝地区',N'lzdq',542600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'610100',N'610000',2,N'610100',N'西安市',N'xas',610100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'610200',N'610000',2,N'610200',N'铜川市',N'tcs',610200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'610300',N'610000',2,N'610300',N'宝鸡市',N'bjs',610300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'610400',N'610000',2,N'610400',N'咸阳市',N'xys',610400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'610500',N'610000',2,N'610500',N'渭南市',N'wns',610500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'610600',N'610000',2,N'610600',N'延安市',N'yas',610600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'610700',N'610000',2,N'610700',N'汉中市',N'hzs',610700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'610800',N'610000',2,N'610800',N'榆林市',N'yls',610800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'610900',N'610000',2,N'610900',N'安康市',N'aks',610900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'611000',N'610000',2,N'611000',N'商洛市',N'sls',611000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'620100',N'620000',2,N'620100',N'兰州市',N'lzs',620100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'620200',N'620000',2,N'620200',N'嘉峪关市',N'jygs',620200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'620300',N'620000',2,N'620300',N'金昌市',N'jcs',620300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'620400',N'620000',2,N'620400',N'白银市',N'bys',620400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'620500',N'620000',2,N'620500',N'天水市',N'tss',620500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'110000',N'0',1,N'110000',N'北京',N'bj',110000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'120000',N'0',1,N'120000',N'天津',N'tj',120000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'130000',N'0',1,N'130000',N'河北省',N'hbs',130000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'140000',N'0',1,N'140000',N'山西省',N'sxs',140000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'150000',N'0',1,N'150000',N'内蒙古自治区',N'nmgzzq',150000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'210000',N'0',1,N'210000',N'辽宁省',N'lns',210000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'220000',N'0',1,N'220000',N'吉林省',N'jls',220000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'230000',N'0',1,N'230000',N'黑龙江省',N'hljs',230000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'310000',N'0',1,N'310000',N'上海',N'sh',310000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'320000',N'0',1,N'320000',N'江苏省',N'jss',320000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'330000',N'0',1,N'330000',N'浙江省',N'zjs',330000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'340000',N'0',1,N'340000',N'安徽省',N'ahs',340000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'350000',N'0',1,N'350000',N'福建省',N'fjs',350000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'360000',N'0',1,N'360000',N'江西省',N'jxs',360000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'370000',N'0',1,N'370000',N'山东省',N'sds',370000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410000',N'0',1,N'410000',N'河南省',N'hns',410000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'420000',N'0',1,N'420000',N'湖北省',N'hbs',420000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'430000',N'0',1,N'430000',N'湖南省',N'hns',430000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'440000',N'0',1,N'440000',N'广东省',N'gds',440000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'450000',N'0',1,N'450000',N'广西壮族自治区',N'gxzzzzq',450000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'460000',N'0',1,N'460000',N'海南省',N'hns',460000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'500000',N'0',1,N'500000',N'重庆',N'zq',500000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'510000',N'0',1,N'510000',N'四川省',N'scs',510000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'520000',N'0',1,N'520000',N'贵州省',N'gzs',520000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'530000',N'0',1,N'530000',N'云南省',N'yns',530000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'540000',N'0',1,N'540000',N'西藏自治区',N'xzzzq',540000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'610000',N'0',1,N'610000',N'陕西省',N'sxs',610000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'620000',N'0',1,N'620000',N'甘肃省',N'gss',620000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'630000',N'0',1,N'630000',N'青海省',N'qhs',630000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'640000',N'0',1,N'640000',N'宁夏回族自治区',N'nxhzzzq',640000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'650000',N'0',1,N'650000',N'新疆维吾尔自治区',N'xjwwezzq',650000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'810000',N'0',1,N'810000',N'香港特别行政区',N'xgtbxzq',810000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'820000',N'0',1,N'820000',N'澳门特别行政区',N'amtbxzq',820000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'830000',N'0',1,N'830000',N'台湾省',N'tws',830000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'150900',N'150000',2,N'150900',N'乌兰察布市',N'wlcbs',150900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'340300',N'340000',2,N'340300',N'蚌埠市',N'bbs',340300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'411700',N'410000',2,N'411700',N'驻马店市',N'zmds',411700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'510600',N'510000',2,N'510600',N'德阳市',N'dys',510600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'620600',N'620000',2,N'620600',N'武威市',N'wws',620600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'620700',N'620000',2,N'620700',N'张掖市',N'zys',620700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'620800',N'620000',2,N'620800',N'平凉市',N'pls',620800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'620900',N'620000',2,N'620900',N'酒泉市',N'jqs',620900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'621000',N'620000',2,N'621000',N'庆阳市',N'qys',621000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'621100',N'620000',2,N'621100',N'定西市',N'dxs',621100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'621200',N'620000',2,N'621200',N'陇南市',N'lns',621200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'622900',N'620000',2,N'622900',N'临夏回族自治州',N'lxhzzzz',622900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'623000',N'620000',2,N'623000',N'甘南藏族自治州',N'gnzzzzz',623000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'630100',N'630000',2,N'630100',N'西宁市',N'xns',630100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'632100',N'630000',2,N'632100',N'海东市',N'hds',632100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'632200',N'630000',2,N'632200',N'海北藏族自治州',N'hbzzzzz',632200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'632300',N'630000',2,N'632300',N'黄南藏族自治州',N'hnzzzzz',632300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'632500',N'630000',2,N'632500',N'海南藏族自治州',N'hnzzzzz',632500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'632600',N'630000',2,N'632600',N'果洛藏族自治州',N'glzzzzz',632600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'632700',N'630000',2,N'632700',N'玉树藏族自治州',N'yszzzzz',632700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'632800',N'630000',2,N'632800',N'海西蒙古族藏族自治州',N'hxmgzzzzzz',632800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'640100',N'640000',2,N'640100',N'银川市',N'ycs',640100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'640200',N'640000',2,N'640200',N'石嘴山市',N'szss',640200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'640300',N'640000',2,N'640300',N'吴忠市',N'wzs',640300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'640400',N'640000',2,N'640400',N'固原市',N'gys',640400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'640500',N'640000',2,N'640500',N'中卫市',N'zws',640500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'650100',N'650000',2,N'650100',N'乌鲁木齐市',N'wlmqs',650100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'650200',N'650000',2,N'650200',N'克拉玛依市',N'klmys',650200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'652100',N'650000',2,N'652100',N'吐鲁番地区',N'tlfdq',652100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'652200',N'650000',2,N'652200',N'哈密地区',N'hmdq',652200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'652300',N'650000',2,N'652300',N'昌吉回族自治州',N'cjhzzzz',652300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'652700',N'650000',2,N'652700',N'博尔塔拉蒙古自治州',N'betlmgzzz',652700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'652800',N'650000',2,N'652800',N'巴音郭楞蒙古自治州',N'byglmgzzz',652800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'652900',N'650000',2,N'652900',N'阿克苏地区',N'aksdq',652900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'653000',N'650000',2,N'653000',N'克孜勒苏柯尔克孜自治州',N'kzlskekzzzz',653000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'653100',N'650000',2,N'653100',N'喀什地区',N'ksdq',653100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'653200',N'650000',2,N'653200',N'和田地区',N'htdq',653200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'654000',N'650000',2,N'654000',N'伊犁哈萨克自治州',N'ylhskzzz',654000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'654200',N'650000',2,N'654200',N'塔城地区',N'tcdq',654200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'654300',N'650000',2,N'654300',N'阿勒泰地区',N'altdq',654300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'810100',N'810000',2,N'810100',N'香港岛',N'xgd',810100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'810200',N'810000',2,N'810200',N'九龙',N'jl',810200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'810300',N'810000',2,N'810300',N'新界',N'xj',810300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'820100',N'820000',2,N'820100',N'澳门半岛',N'ambd',820100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'820300',N'820000',2,N'820300',N'路环岛',N'lhd',820300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'820400',N'820000',2,N'820400',N'凼仔岛',N'dzd',820400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'830100',N'830000',2,N'830100',N'台北市',N'tbs',830100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'830200',N'830000',2,N'830200',N'高雄市',N'gxs',830200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'830300',N'830000',2,N'830300',N'台南市',N'tns',830300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'830400',N'830000',2,N'830400',N'台中市',N'tzs',830400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'830500',N'830000',2,N'830500',N'南投县',N'ntx',830500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'830600',N'830000',2,N'830600',N'基隆市',N'jls',830600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'830700',N'830000',2,N'830700',N'新竹市',N'xzs',830700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'830800',N'830000',2,N'830800',N'嘉义市',N'jys',830800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'830900',N'830000',2,N'830900',N'宜兰县',N'ylx',830900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'831000',N'830000',2,N'831000',N'新竹县',N'xzx',831000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'831100',N'830000',2,N'831100',N'桃园县',N'tyx',831100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'831200',N'830000',2,N'831200',N'苗栗县',N'mlx',831200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'831300',N'830000',2,N'831300',N'彰化县',N'zhx',831300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'831400',N'830000',2,N'831400',N'嘉义县',N'jyx',831400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'831500',N'830000',2,N'831500',N'云林县',N'ylx',831500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'831600',N'830000',2,N'831600',N'屏东县',N'pdx',831600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'831700',N'830000',2,N'831700',N'台东县',N'tdx',831700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'831800',N'830000',2,N'831800',N'花莲县',N'hlx',831800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'831900',N'830000',2,N'831900',N'澎湖县',N'phx',831900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'832000',N'830000',2,N'832000',N'新北市',N'xbs',832000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'832100',N'830000',2,N'832100',N'台中县',N'tzx',832100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'832200',N'830000',2,N'832200',N'连江县',N'ljx',832200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'110100',N'110000',2,N'110100',N'北京市',N'bjs',110100,0,1,N'2016-07-20 00:00:00')
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_DbBackup]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_DbBackup]

CREATE TABLE [Sys_DbBackup] (
[F_Id] [varchar]  (50) NOT NULL,
[F_BackupType] [varchar]  (50) NULL,
[F_DbName] [varchar]  (50) NULL,
[F_FileName] [varchar]  (50) NULL,
[F_FileSize] [varchar]  (50) NULL,
[F_FilePath] [varchar]  (500) NULL,
[F_BackupTime] [datetime]  NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (500) NULL)

ALTER TABLE [Sys_DbBackup] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_DbBackup] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_DbBackup] ([F_Id],[F_BackupType],[F_DbName],[F_FileName],[F_FileSize],[F_FilePath],[F_BackupTime],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'8b3fb1ff-07ab-46bb-a12a-85e65a9a748d',N'1',N'NFineBase',N'201607190929504502.bak',N'2.81 MB',N'/Resource/DbBackup/201607190929504502.bak',N'2016-07-19 09:29:52',0,1,N'2016-07-19 09:29:52')
INSERT [Sys_DbBackup] ([F_Id],[F_BackupType],[F_DbName],[F_FileName],[F_FileSize],[F_FilePath],[F_BackupTime],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'ddbbfaf3-44b7-4e34-b0c5-c79e21aba83a',N'1',N'NFineBase',N'201607181640402083.bak',N'2.81 MB',N'/Resource/DbBackup/201607181640402083.bak',N'2016-07-18 16:40:41',0,1,N'2016-07-18 16:40:41')
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_FilterIP]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_FilterIP]

CREATE TABLE [Sys_FilterIP] (
[F_Id] [varchar]  (50) NOT NULL,
[F_Type] [bit]  NULL,
[F_StartIP] [varchar]  (50) NULL,
[F_EndIP] [varchar]  (50) NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (500) NULL)

ALTER TABLE [Sys_FilterIP] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_FilterIP] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_FilterIP] ([F_Id],[F_Type],[F_StartIP],[F_EndIP],[F_DeleteMark],[F_EnabledMark],[F_Description],[F_CreatorTime]) VALUES ( N'4e035f2b-a03b-49b5-a38d-1c6d211a2a04',1,N'192.168.1.1',N'192.168.1.10',0,1,N'测试',N'2016-07-18 17:51:06')
INSERT [Sys_FilterIP] ([F_Id],[F_Type],[F_StartIP],[F_EndIP],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'b3fbe66f-82cd-4f4a-ada3-61eb5a2d9eee',0,N'192.168.0.20',N'192.168.0.25',0,1,N'2016-07-18 17:52:47')
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_Items]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_Items]

CREATE TABLE [Sys_Items] (
[F_Id] [varchar]  (50) NOT NULL,
[F_ParentId] [varchar]  (50) NULL,
[F_EnCode] [varchar]  (50) NULL,
[F_FullName] [varchar]  (50) NULL,
[F_IsTree] [bit]  NULL,
[F_Layers] [int]  NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (50) NULL)

ALTER TABLE [Sys_Items] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_Items] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'0',N'Sys_Items',N'通用字典',0,1,1,0,1)
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'OrganizeCategory',N'机构分类',0,2,2,0,1)
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'RoleType',N'角色类型',0,2,3,0,1)
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'0DF5B725-5FB8-487F-B0E4-BC563A77EB04',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'DbType',N'数据库类型',0,2,4,0,1)
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'9a7079bd-0660-4549-9c2d-db5e8616619f',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'DbLogType',N'系统日志',0,16,0,1,N'2016-07-19 17:09:45')
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'AuditState',N'审核状态',0,2,6,0,1)
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'2748F35F-4EE2-417C-A907-3453146AAF67',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'Certificate',N'证件名称',0,2,7,0,1)
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'00F76465-DBBA-484A-B75C-E81DEE9313E6',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'Education',N'学历',0,2,8,0,1)
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'FA7537E2-1C64-4431-84BF-66158DD63269',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'101',N'婚姻',0,2,12,0,1)
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'8CEB2F71-026C-4FA6-9A61-378127AE7320',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'102',N'生育',0,2,13,0,1)
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'15023A4E-4856-44EB-BE71-36A106E2AA59',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'103',N'民族',0,2,14,0,1)
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'BDD797C3-2323-4868-9A63-C8CC3437AEAA',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'104',N'性别',0,2,15,0,1)
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_ItemsDetail]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_ItemsDetail]

CREATE TABLE [Sys_ItemsDetail] (
[F_Id] [varchar]  (50) NOT NULL,
[F_ItemId] [varchar]  (50) NULL,
[F_ParentId] [varchar]  (50) NULL,
[F_ItemCode] [varchar]  (50) NULL,
[F_ItemName] [varchar]  (50) NULL,
[F_SimpleSpelling] [varchar]  (500) NULL,
[F_IsDefault] [bit]  NULL,
[F_Layers] [int]  NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (50) NULL)

ALTER TABLE [Sys_ItemsDetail] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_ItemsDetail] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'B97BD7F5-B212-40C1-A1F7-DD9A2E63EEF2',N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D',N'Group',N'集团',0,1,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'2C3715AC-16F7-48FC-AB40-B0931DB1E729',N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D',N'Area',N'区域',0,2,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'D082BDB9-5C34-49BF-BD51-4E85D7BFF646',N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D',N'Company',N'公司',0,3,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'2B540AC5-6E64-4688-BB60-E0C01DFA982C',N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D',N'SubCompany',N'子公司',0,4,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'A64EBB80-6A24-48AF-A10E-B6A532C32CA6',N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D',N'Department',N'部门',0,5,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'D1F439B9-D80E-4547-9EF0-163391854AB5',N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D',N'SubDepartment',N'子部门',0,6,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'19EE595A-E775-409D-A48F-B33CF9F262C7',N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D',N'WorkGroup',N'小组',0,7,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'e5079bae-a8c0-4209-9019-6a2b4a3a7dac',N'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE',N'1',N'系统角色',0,1,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'04aba88d-f09b-46c6-bd90-a38471399b0e',N'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE',N'2',N'业务角色',0,2,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'cc6daa5c-a71c-4b2c-9a98-336bc3ee13c8',N'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE',N'3',N'其他角色',0,3,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'7a6d1bc4-3ec7-4c57-be9b-b4c97d60d5f6',N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0',N'1',N'草稿',0,1,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'ce340c73-5048-4940-b86e-e3b3d53fdb2c',N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0',N'2',N'提交',0,2,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'41053517-215d-4e11-81cd-367c0e9578d7',N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0',N'3',N'通过',0,3,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'e1979a4f-7fc1-42b9-a0e2-52d7059e8fb9',N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0',N'4',N'待审',0,4,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'63acf96d-6115-4d76-a994-438f59419aad',N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0',N'5',N'退回',0,5,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'8b7b38bf-07c5-4f71-a853-41c5add4a94e',N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0',N'6',N'完成',0,6,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'49b68663-ad01-4c43-b084-f98e3e23fee8',N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0',N'7',N'废弃',0,7,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'fa6c1873-888c-4b70-a2cc-59fccbb22078',N'0DF5B725-5FB8-487F-B0E4-BC563A77EB04',N'SqlServer',N'SqlServer',0,1,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'27e85cb8-04e7-447b-911d-dd1e97dfab83',N'0DF5B725-5FB8-487F-B0E4-BC563A77EB04',N'Oracle',N'Oracle',0,2,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'34a642b2-44d4-485f-b3fc-6cce24f68b0f',N'0DF5B725-5FB8-487F-B0E4-BC563A77EB04',N'MySql',N'MySql',0,3,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'1950efdf-8685-4341-8d2c-ac85ac7addd0',N'00F76465-DBBA-484A-B75C-E81DEE9313E6',N'1',N'小学',0,1,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'433511a9-78bd-41a0-ab25-e4d4b3423055',N'00F76465-DBBA-484A-B75C-E81DEE9313E6',N'2',N'初中',0,2,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'acb128a6-ff63-4e25-b1e8-0a336ed3ab18',N'00F76465-DBBA-484A-B75C-E81DEE9313E6',N'3',N'高中',0,3,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'a4974810-d88d-4d54-82cc-fd779875478f',N'00F76465-DBBA-484A-B75C-E81DEE9313E6',N'4',N'中专',0,4,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'486a82e3-1950-425e-b2ce-b5d98f33016a',N'00F76465-DBBA-484A-B75C-E81DEE9313E6',N'5',N'大专',0,5,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'34222d46-e0c6-446e-8150-dbefc47a1d5f',N'00F76465-DBBA-484A-B75C-E81DEE9313E6',N'6',N'本科',0,6,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'3f280e2b-92f6-466c-8cc3-d7c8ff48cc8d',N'00F76465-DBBA-484A-B75C-E81DEE9313E6',N'7',N'硕士',0,7,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'930b8de2-049f-4753-b9fd-87f484911ee4',N'00F76465-DBBA-484A-B75C-E81DEE9313E6',N'8',N'博士',0,8,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'355ad7a4-c4f8-4bd3-9c72-ff07983da0f0',N'00F76465-DBBA-484A-B75C-E81DEE9313E6',N'9',N'其他',0,9,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'5d6def0e-e2a7-48eb-b43c-cc3631f60dd7',N'BDD797C3-2323-4868-9A63-C8CC3437AEAA',N'1',N'男',0,1,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'822baf7c-abdb-4257-9b78-1f550806f544',N'BDD797C3-2323-4868-9A63-C8CC3437AEAA',N'0',N'女',0,2,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'738edf2a-d59f-4992-97ef-d847db23bcb8',N'FA7537E2-1C64-4431-84BF-66158DD63269',N'1',N'已婚',0,1,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'a7c4aba2-a891-4558-9b0a-bd7a1100a645',N'FA7537E2-1C64-4431-84BF-66158DD63269',N'2',N'未婚',0,2,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'f9609400-7caf-49af-ae3c-7671a9292fb3',N'FA7537E2-1C64-4431-84BF-66158DD63269',N'3',N'离异',0,3,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'a6f271f9-8653-4c5c-86cf-4cd00324b3c3',N'FA7537E2-1C64-4431-84BF-66158DD63269',N'4',N'丧偶',0,4,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'7c1135be-0148-43eb-ae49-62a1e16ebbe3',N'FA7537E2-1C64-4431-84BF-66158DD63269',N'5',N'其他',0,5,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'582e0b66-2ee9-4885-9f0c-3ce3ebf96e12',N'8CEB2F71-026C-4FA6-9A61-378127AE7320',N'1',N'已育',0,1,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'de2167f3-40fe-4bf7-b8cb-5b1c554bad7a',N'8CEB2F71-026C-4FA6-9A61-378127AE7320',N'2',N'未育',0,2,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'9b6a2225-6138-4cf2-9845-1bbecdf9b3ed',N'8CEB2F71-026C-4FA6-9A61-378127AE7320',N'3',N'其他',0,3,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'49300258-1227-4b85-b6a2-e948dbbe57a4',N'15023A4E-4856-44EB-BE71-36A106E2AA59',N'汉族',N'汉族',0,1,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'd69cb819-2bb3-4e1d-9917-33b9a439233d',N'2748F35F-4EE2-417C-A907-3453146AAF67',N'1',N'身份证',0,1,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'4c2f2428-2e00-4336-b9ce-5a61f24193f6',N'2748F35F-4EE2-417C-A907-3453146AAF67',N'2',N'士兵证',0,2,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'48c4e0f5-f570-4601-8946-6078762db3bf',N'2748F35F-4EE2-417C-A907-3453146AAF67',N'3',N'军官证',0,3,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'0096ad81-4317-486e-9144-a6a02999ff19',N'2748F35F-4EE2-417C-A907-3453146AAF67',N'4',N'护照',0,4,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'ace2d5e8-56d4-4c8b-8409-34bc272df404',N'2748F35F-4EE2-417C-A907-3453146AAF67',N'5',N'其它',0,5,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'795f2695-497a-4f5e-ab1d-706095c1edb9',N'9a7079bd-0660-4549-9c2d-db5e8616619f',N'Other',N'其他',0,0,0,1,N'2016-07-19 17:10:33',N'2016-07-19 18:20:09')
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'643209c8-931b-4641-9e04-b8bdd11800af',N'9a7079bd-0660-4549-9c2d-db5e8616619f',N'Login',N'登录',0,1,0,1,N'2016-07-19 17:10:39',N'2016-07-19 18:20:17')
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'3c884a03-4f34-4150-b134-966387f1de2a',N'9a7079bd-0660-4549-9c2d-db5e8616619f',N'Exit',N'退出',0,2,0,1,N'2016-07-19 17:10:49',N'2016-07-19 18:20:23')
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'ccc8e274-75da-4eb8-bed0-69008ab7c41c',N'9a7079bd-0660-4549-9c2d-db5e8616619f',N'Visit',N'访问',0,3,0,1,N'2016-07-19 17:10:55',N'2016-07-19 18:20:29')
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'e545061c-93fd-4ca2-ab29-b43db9db798b',N'9a7079bd-0660-4549-9c2d-db5e8616619f',N'Create',N'新增',0,4,0,1,N'2016-07-19 17:11:03',N'2016-07-19 18:20:35')
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'a13ccf0d-ac8f-44ac-a522-4a54edf1f0fa',N'9a7079bd-0660-4549-9c2d-db5e8616619f',N'Delete',N'删除',0,5,0,1,N'2016-07-19 17:11:09',N'2016-07-19 18:20:43')
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'392f88a8-02c2-49eb-8aed-b2acf474272a',N'9a7079bd-0660-4549-9c2d-db5e8616619f',N'Update',N'修改',0,6,0,1,N'2016-07-19 17:11:14',N'2016-07-19 18:20:49')
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'24e39617-f04e-4f6f-9209-ad71e870e7c6',N'9a7079bd-0660-4549-9c2d-db5e8616619f',N'Submit',N'提交',0,7,0,1,N'2016-07-19 17:11:19',N'2016-07-19 18:20:54')
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'7fc8fa11-4acf-409a-a771-aaf1eb81e814',N'9a7079bd-0660-4549-9c2d-db5e8616619f',N'Exception',N'异常',0,8,0,1,N'2016-07-19 17:11:25',N'2016-07-19 18:21:01')
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_Log]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_Log]

CREATE TABLE [Sys_Log] (
[F_Id] [varchar]  (50) NOT NULL,
[F_Date] [datetime]  NULL,
[F_Account] [varchar]  (50) NULL,
[F_NickName] [varchar]  (50) NULL,
[F_Type] [varchar]  (50) NULL,
[F_IPAddress] [varchar]  (50) NULL,
[F_IPAddressName] [varchar]  (50) NULL,
[F_ModuleId] [varchar]  (50) NULL,
[F_ModuleName] [varchar]  (50) NULL,
[F_Result] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL)

ALTER TABLE [Sys_Log] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_Log] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_Module]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_Module]

CREATE TABLE [Sys_Module] (
[F_Id] [varchar]  (50) NOT NULL,
[F_ParentId] [varchar]  (50) NULL,
[F_Layers] [int]  NULL,
[F_EnCode] [varchar]  (50) NULL,
[F_FullName] [varchar]  (50) NULL,
[F_Icon] [varchar]  (50) NULL,
[F_UrlAddress] [varchar]  (500) NULL,
[F_Target] [varchar]  (50) NULL,
[F_IsMenu] [bit]  NULL,
[F_IsExpand] [bit]  NULL,
[F_IsPublic] [bit]  NULL,
[F_AllowEdit] [bit]  NULL,
[F_AllowDelete] [bit]  NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (50) NULL)

ALTER TABLE [Sys_Module] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_Module] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'e72c75d0-3a69-41ad-b220-13c9a62ec788',N'73FD1267-79BA-4E23-A152-744AF73117E9',N'数据备份',N'/SystemSecurity/DbBackup/Index',N'iframe',1,0,0,0,0,1,0,1,N'2016-07-17 22:05:07',N'2016-07-20 16:15:40')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_Icon],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'462027E0-0848-41DD-BCC3-025DCAE65555',N'0',1,N'系统管理',N'fa fa-gears',N'expand',0,1,0,0,0,2,0,1,N'2016-07-22 15:46:46',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_Icon],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'73FD1267-79BA-4E23-A152-744AF73117E9',N'0',1,N'系统安全',N'fa fa-desktop',N'expand',0,1,0,0,0,3,0,1,N'2016-07-22 15:46:56',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_Icon],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',N'0',1,N'统计报表',N'fa fa-bar-chart-o',N'fa fa-bar-chart-o',N'expand',0,1,0,0,0,4,0,1,N'2016-07-22 15:47:10',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_Icon],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'9F56840F-DF92-4936-A48C-8F65A39291A2',N'0',1,N'常用示例',N'fa fa-tags',N'expand',0,1,0,0,0,5,0,1,N'2016-07-22 15:47:23',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'a3a4742d-ca39-42ec-b95a-8552a6fae579',N'73FD1267-79BA-4E23-A152-744AF73117E9',N'访问控制',N'/SystemSecurity/FilterIP/Index',N'iframe',1,0,0,0,0,2,0,1,N'2016-07-17 22:06:10',N'2016-07-20 16:16:02')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_Description],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'64A1C550-2C61-4A8C-833D-ACD0C012260F',N'462027E0-0848-41DD-BCC3-025DCAE65555',2,N'系统菜单',N'/SystemManage/Module/Index',N'iframe',1,0,0,0,0,7,0,1,N'测试',N'2016-07-27 10:50:09',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime]) VALUES ( N'38CA5A66-C993-4410-AF95-50489B22939C',N'462027E0-0848-41DD-BCC3-025DCAE65555',2,N'用户管理',N'/SystemManage/User/Index',N'iframe',1,0,0,0,0,4,0,1,N'2016-07-14 16:22:47')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime]) VALUES ( N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B',N'462027E0-0848-41DD-BCC3-025DCAE65555',2,N'机构管理',N'/SystemManage/Organize/Index',N'iframe',1,0,0,0,0,1,0,1,N'2016-07-15 22:21:04')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime]) VALUES ( N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C',N'462027E0-0848-41DD-BCC3-025DCAE65555',2,N'角色管理',N'/SystemManage/Role/Index',N'iframe',1,0,0,0,0,2,0,1,N'2016-07-14 16:22:35')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime]) VALUES ( N'337A4661-99A5-4E5E-B028-861CACAF9917',N'462027E0-0848-41DD-BCC3-025DCAE65555',2,N'区域管理',N'/SystemManage/Area/Index',N'iframe',1,0,0,0,0,5,0,1,N'2016-07-14 16:21:47')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime]) VALUES ( N'423A200B-FA5F-4B29-B7B7-A3F5474B725F',N'462027E0-0848-41DD-BCC3-025DCAE65555',2,N'数据字典',N'/SystemManage/ItemsData/Index',N'iframe',1,0,0,0,0,6,0,1,N'2016-07-15 22:26:07')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime]) VALUES ( N'F298F868-B689-4982-8C8B-9268CBF0308D',N'462027E0-0848-41DD-BCC3-025DCAE65555',2,N'岗位管理',N'/SystemManage/Duty/Index',N'iframe',1,0,0,0,0,3,0,1,N'2016-07-14 16:22:41')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime]) VALUES ( N'96EE855E-8CD2-47FC-A51D-127C131C9FB9',N'73FD1267-79BA-4E23-A152-744AF73117E9',2,N'系统日志',N'/SystemSecurity/Log/Index',N'iframe',1,0,0,0,0,3,0,1,N'2016-07-20 16:16:19')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'df9920e0-ba33-4e36-a911-ef08c6ea77ea',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',N'饼图',N'/ReportManage/Highcharts/Sample7',N'iframe',1,0,0,0,0,12,0,1,N'2016-07-20 17:13:32',N'2016-07-22 15:45:37',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_FullName],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'3A95BBC6-CB5B-4438-869F-5F7B738E2568',N'散点图',N'iframe',0,0,0,0,0,0,0)
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime]) VALUES ( N'49F61713-C1E4-420E-BEEC-0B4DBC2D7DE8',N'73FD1267-79BA-4E23-A152-744AF73117E9',2,N'服务器监控',N'/SystemSecurity/ServerMonitoring/Index',N'iframe',1,0,0,0,0,4,0,1,N'2016-07-20 16:16:38')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'F2DAD50B-95DF-48F7-8638-BA503B539143',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',2,N'折线图',N'/ReportManage/Highcharts/Sample1',N'iframe',1,0,0,0,0,1,0,1,N'2016-07-22 15:47:43',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'0EDF1DDB-CA17-4D08-AA25-914FE4E13324',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',2,N'曲线图',N'/ReportManage/Highcharts/Sample2',N'iframe',1,0,0,0,0,2,0,1,N'2016-07-22 15:45:07',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_FullName],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'AD4BC418-B66E-48C7-BC13-81590056CD15',N'气泡图',N'iframe',0,0,0,0,0,0,0)
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'C3D12056-D906-4D8B-8B9C-954942742BDE',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',2,N'面积图',N'/ReportManage/Highcharts/Sample3',N'iframe',1,0,0,0,0,4,0,1,N'2016-07-22 15:45:12',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'B3BF41E1-0299-4EFE-BA76-A7377AC81B38',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',2,N'柱状图',N'/ReportManage/Highcharts/Sample4',N'iframe',1,0,0,0,0,5,0,1,N'2016-07-22 15:45:19',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'85FAF4F4-9CBE-4904-94B3-2B930CA49F0C',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',2,N'综合报表1',N'/ReportManage/Highcharts/Sample14',N'iframe',1,0,0,0,0,21,0,1,N'2016-07-22 15:46:22',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'6BBC3562-1051-4246-98B0-9F37CAC40DC8',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',2,N'综合报表2',N'/ReportManage/Highcharts/Sample15',N'iframe',1,0,0,0,0,22,0,1,N'2016-07-22 15:48:05',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'822E2523-5105-4AE0-BF48-62459D3641F6',N'9F56840F-DF92-4936-A48C-8F65A39291A2',2,N'外部邮件',N'/ExampleManage/SendMail/Index',N'iframe',1,0,0,0,0,2,0,1,N'2016-08-01 18:25:45',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'7B959522-BE45-4747-B89D-592C7F3987A5',N'9F56840F-DF92-4936-A48C-8F65A39291A2',2,N'短信工具',N'/ExampleManage/SendMessages/Index',N'iframe',1,0,0,0,0,3,0,1,N'2016-08-01 23:08:35',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'AF34B824-439E-4365-99CC-C1D30514D869',N'9F56840F-DF92-4936-A48C-8F65A39291A2',2,N'二维码生成',N'/ExampleManage/BarCode/Index',N'iframe',1,0,0,0,0,4,0,1,N'2016-08-01 23:19:23',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'D2ECB516-4CB7-49B1-B536-504382115DD2',N'9F56840F-DF92-4936-A48C-8F65A39291A2',2,N'打印测试',N'/ExampleManage/Print/Index',N'iframe',1,0,0,0,0,5,0,1,N'2016-08-03 14:24:30',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'39E97B05-7B6F-4069-9972-6F9643BC3042',N'9F56840F-DF92-4936-A48C-8F65A39291A2',2,N'电子签章',N'/ExampleManage/Signet/Index',N'iframe',1,0,0,0,0,6,0,1,N'2016-08-02 22:42:36',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'91425AF9-F762-43AF-B784-107D23FFDC85',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',N'模拟时钟',N'/ReportManage/Highcharts/Sample5',N'iframe',1,0,0,0,0,11,0,0,N'2016-07-22 15:45:25',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'7858E329-16FC-49F4-93A1-11E2E7EF2998',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',N'仪表盘',N'/ReportManage/Highcharts/Sample6',N'iframe',1,0,0,0,0,12,0,0,N'2016-07-22 15:45:31',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'163DA347-887C-4C91-8298-EB00FFBFEC84',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',N'雷达图',N'/ReportManage/Highcharts/Sample8',N'iframe',1,0,0,0,0,13,0,0,N'2016-07-22 15:45:43',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'1F14A1ED-B22E-4E4A-BF10-6CF018507E76',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',N'蛛网图',N'/ReportManage/Highcharts/Sample9',N'iframe',1,0,0,0,0,14,0,0,N'2016-07-22 15:45:50',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'FE04386D-1307-4E34-8DFB-B56D9FEC78CE',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',N'玫瑰图',N'/ReportManage/Highcharts/Sample10',N'iframe',1,0,0,0,0,15,0,0,N'2016-07-22 15:45:56',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'54E9D12D-C039-4F01-A6FE-810A147D31D5',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',N'漏斗图',N'/ReportManage/Highcharts/Sample11',N'iframe',1,0,0,0,0,16,0,0,N'2016-07-22 15:46:03',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'ACDBD633-99A0-4BEF-B67C-3A5B41E7C1FD',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',N'蜡烛图',N'/ReportManage/Highcharts/Sample12',N'iframe',1,0,0,0,0,17,0,0,N'2016-07-22 15:46:09',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'A33ADBFC-089B-4981-BFAB-08178052EE36',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',N'流程图',N'/ReportManage/Highcharts/Sample13',N'iframe',1,0,0,0,0,18,0,0,N'2016-07-22 15:46:15',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'3593c43a-e4bc-4b7f-9629-0449a3d1818e',N'03739f9e-9a36-4c0d-a402-87f402c8cb81',2,N'部门管理',N'/DingTalkManage/Department/Index',N'iframe',1,0,0,0,0,39,0,1,N'2018-12-14 14:41:47',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2018-12-14 15:06:35',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_Icon],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'eaff0f23-0678-40af-8679-7fb2e2674e57',N'0',N'微信平台',N'fa fa-tablet',N'expand',0,1,0,0,0,7,0,1,N'2019-01-18 09:58:18',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-07-11 17:11:10',N'172557595021881487')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'e40a4371-6835-4f67-a349-c2b02ed6760e',N'eaff0f23-0678-40af-8679-7fb2e2674e57',N'微信账号',N'/WeixinManage/WxCode/Index',N'iframe',1,0,0,1,1,1,0,1,N'2019-01-18 09:59:58',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'f35094a8-b404-4831-8685-5a93d33109bd',N'eaff0f23-0678-40af-8679-7fb2e2674e57',N'自定义菜单',N'/WeixinManage/WxMenu/Index',N'blank',1,0,0,1,0,2,0,1,N'2019-01-18 10:02:12',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'd8168e8a-675d-4a06-a01c-d6eed9035262',N'eaff0f23-0678-40af-8679-7fb2e2674e57',N'自定义回复',N'/WeixinManage/WxSubscribe/Index',N'iframe',1,0,0,1,0,3,0,1,N'2019-01-18 10:04:07',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'0c253d7a-f1bf-45c0-9a59-0ad3396323e6',N'eaff0f23-0678-40af-8679-7fb2e2674e57',N'消息模板',N'/WeixinManage/WxTempMsg/Index',N'iframe',1,0,0,0,0,4,0,1,N'2019-01-18 10:04:56',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-24 21:12:16',N'48b7029f-e632-42cc-baeb-0b84339f295e')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'9a727a52-43ed-425a-940c-a4b64749f745',N'eaff0f23-0678-40af-8679-7fb2e2674e57',N'微信用户',N'/WeixinManage/WxUsers/Index',N'iframe',1,0,0,0,0,4,0,1,N'2019-07-04 10:52:37',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_Icon],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'03739f9e-9a36-4c0d-a402-87f402c8cb81',N'0',N'钉钉平台',N'fa fa-tablet',N'expand',0,1,0,0,0,6,0,1,N'2018-08-14 00:04:09',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-07-11 17:09:12',N'172557595021881487')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'5b263367-33a8-48e1-89ec-ba225f7d5e7a',N'03739f9e-9a36-4c0d-a402-87f402c8cb81',N'用户管理',N'/DingTalkManage/Users/Index',N'iframe',1,0,0,0,0,38,0,1,N'2018-08-14 00:06:05',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2018-08-14 00:06:48',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_ModuleButton]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_ModuleButton]

CREATE TABLE [Sys_ModuleButton] (
[F_Id] [varchar]  (50) NOT NULL,
[F_ModuleId] [varchar]  (50) NULL,
[F_ParentId] [varchar]  (50) NULL,
[F_Layers] [int]  NULL,
[F_EnCode] [varchar]  (50) NULL,
[F_FullName] [varchar]  (50) NULL,
[F_Icon] [varchar]  (50) NULL,
[F_Location] [int]  NULL,
[F_JsEvent] [varchar]  (50) NULL,
[F_UrlAddress] [varchar]  (500) NULL,
[F_Split] [bit]  NULL,
[F_IsPublic] [bit]  NULL,
[F_AllowEdit] [bit]  NULL,
[F_AllowDelete] [bit]  NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (50) NULL)

ALTER TABLE [Sys_ModuleButton] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_ModuleButton] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'9FD543DB-C5BB-4789-ACFF-C5865AFB032C',N'64A1C550-2C61-4A8C-833D-ACD0C012260F',N'0',1,N'NF-add',N'新增菜单',1,N'btn_add()',N'/SystemManage/Module/Form',0,0,0,0,1,0,1,N'2016-07-25 15:41:08',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'E29FCBA7-F848-4A8B-BC41-A3C668A9005D',N'64A1C550-2C61-4A8C-833D-ACD0C012260F',N'0',1,N'NF-edit',N'修改菜单',2,N'btn_edit()',N'/SystemManage/Module/Form',0,0,0,0,2,0,1,N'2016-07-25 15:41:02',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'85F5212F-E321-4124-B155-9374AA5D9C10',N'64A1C550-2C61-4A8C-833D-ACD0C012260F',N'0',1,N'NF-delete',N'删除菜单',2,N'btn_delete()',N'/SystemManage/Module/DeleteForm',0,0,0,0,3,0,1,N'2016-07-25 15:41:15',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'D4FCAFED-7640-449E-80B7-622DDACD5012',N'64A1C550-2C61-4A8C-833D-ACD0C012260F',N'0',1,N'NF-Details',N'查看菜单',2,N'btn_details()',N'/SystemManage/Module/Details',1,0,0,0,4,0,1,N'2016-07-25 15:41:27',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'FD3D073C-4F88-467A-AE3B-CDD060952CE6',N'64A1C550-2C61-4A8C-833D-ACD0C012260F',N'0',1,N'NF-modulebutton',N'按钮管理',2,N'btn_modulebutton()',N'/SystemManage/ModuleButton/Index',0,0,0,0,5,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'4bb19533-8e81-419b-86a1-7ee56bf1dd45',N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B',N'0',1,N'NF-delete',N'删除机构',2,N'btn_delete()',N'/SystemManage/Organize/DeleteForm',0,0,0,0,3,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'709a4a7b-4d98-462d-b47c-351ef11db06f',N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B',N'0',1,N'NF-Details',N'查看机构',2,N'btn_details()',N'/SystemManage/Organize/Details',0,0,0,0,4,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'91be873e-ccb7-434f-9a3b-d312d6d5798a',N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B',N'0',1,N'NF-edit',N'修改机构',2,N'btn_edit()',N'/SystemManage/Organize/Form',0,0,0,0,2,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'cd65e50a-0bea-45a9-b82e-f2eacdbd209e',N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B',N'0',1,N'NF-add',N'新建机构',1,N'btn_add()',N'/SystemManage/Organize/Form',0,0,0,0,1,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'239077ff-13e1-4720-84e1-67b6f0276979',N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C',N'0',1,N'NF-delete',N'删除角色',2,N'btn_delete()',N'/SystemManage/Role/DeleteForm',0,0,0,0,3,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'5d708d9d-6ebe-40ea-8589-e3efce9e74ec',N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C',N'0',1,N'NF-add',N'新建角色',1,N'btn_add()',N'/SystemManage/Role/Form',0,0,0,0,1,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'f93763ff-51a1-478d-9585-3c86084c54f3',N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C',N'0',1,N'NF-Details',N'查看角色',2,N'btn_details()',N'/SystemManage/Role/Details',0,0,0,0,4,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'ffffe7f8-900c-413a-9970-bee7d6599cce',N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C',N'0',1,N'NF-edit',N'修改角色',2,N'btn_edit()',N'/SystemManage/Role/Form',0,0,0,0,2,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'13c9a15f-c50d-4f09-8344-fd0050f70086',N'F298F868-B689-4982-8C8B-9268CBF0308D',N'0',1,N'NF-add',N'新建岗位',1,N'btn_add()',N'/SystemManage/Duty/Form',0,0,0,0,1,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'88f7b3a8-fd6d-4f8e-a861-11405f434868',N'F298F868-B689-4982-8C8B-9268CBF0308D',N'0',1,N'NF-Details',N'查看岗位',2,N'btn_details()',N'/SystemManage/Duty/Details',0,0,0,0,4,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'8a9993af-69b2-4d8a-85b3-337745a1f428',N'F298F868-B689-4982-8C8B-9268CBF0308D',N'0',1,N'NF-delete',N'删除岗位',2,N'btn_delete()',N'/SystemManage/Duty/DeleteForm',0,0,0,0,3,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'e75e4efc-d461-4334-a764-56992fec38e6',N'F298F868-B689-4982-8C8B-9268CBF0308D',N'0',1,N'NF-edit',N'修改岗位',2,N'btn_edit()',N'/SystemManage/Duty/Form',0,0,0,0,2,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'14617a4f-bfef-4bc2-b943-d18d3ff8d22f',N'38CA5A66-C993-4410-AF95-50489B22939C',N'0',1,N'NF-delete',N'删除用户',2,N'btn_delete()',N'/SystemManage/User/DeleteForm',0,0,0,0,3,0,1,N'2016-07-25 14:16:13',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'4727adf7-5525-4c8c-9de5-39e49c268349',N'38CA5A66-C993-4410-AF95-50489B22939C',N'0',1,N'NF-edit',N'修改用户',2,N'btn_edit()',N'/SystemManage/User/Form',0,0,0,0,2,0,1,N'2016-07-25 14:16:01',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'74eecdfb-3bee-405d-be07-27a78219c179',N'38CA5A66-C993-4410-AF95-50489B22939C',N'0',1,N'NF-add',N'新建用户',1,N'btn_add()',N'/SystemManage/User/Form',0,0,0,0,1,0,1,N'2016-07-25 14:15:42',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'abfdff21-8ebf-4024-8555-401b4df6acd9',N'38CA5A66-C993-4410-AF95-50489B22939C',N'0',1,N'NF-Details',N'查看用户',2,N'btn_details()',N'/SystemManage/User/Details',1,0,0,0,4,0,1,N'2016-07-25 15:29:10',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'38e39592-6e86-42fb-8f72-adea0c82cbc1',N'38CA5A66-C993-4410-AF95-50489B22939C',N'0',N'NF-revisepassword',N'密码重置',2,N'btn_revisepassword()',N'/SystemManage/User/RevisePassword',1,0,0,0,5,0,1,N'2016-07-25 14:18:19',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'15362a59-b242-494a-bc6e-413b4a63580e',N'38CA5A66-C993-4410-AF95-50489B22939C',N'0',N'NF-disabled',N'禁用',2,N'btn_disabled()',N'/SystemManage/User/DisabledAccount',0,0,0,0,6,0,1,N'2016-07-25 15:25:54',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2016-07-25 15:28:33',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'2a8f5342-5eb7-491c-a1a9-a2631d8eb5d6',N'38CA5A66-C993-4410-AF95-50489B22939C',N'0',N'NF-enabled',N'启用',2,N'btn_enabled()',N'/SystemManage/User/EnabledAccount',0,0,0,0,7,0,1,N'2016-07-25 15:28:08',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'48afe7b3-e158-4256-b50c-cd0ee7c6dcc9',N'337A4661-99A5-4E5E-B028-861CACAF9917',N'0',1,N'NF-add',N'新建区域',1,N'btn_add()',N'/SystemManage/Area/Form',0,0,0,0,1,0,1,N'2016-07-25 15:32:26',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'89d7a69d-b953-4ce2-9294-db4f50f2a157',N'337A4661-99A5-4E5E-B028-861CACAF9917',N'0',1,N'NF-edit',N'修改区域',2,N'btn_edit()',N'/SystemManage/Area/Form',0,0,0,0,2,0,1,N'2016-07-25 15:32:42',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'8c7013a9-3682-4367-8bc6-c77ca89f346b',N'337A4661-99A5-4E5E-B028-861CACAF9917',N'0',1,N'NF-delete',N'删除区域',2,N'btn_delete()',N'/SystemManage/Area/DeleteForm',0,0,0,0,3,0,1,N'2016-07-25 15:32:53',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'0d777b07-041a-4205-a393-d1a009aaafc7',N'423A200B-FA5F-4B29-B7B7-A3F5474B725F',N'0',1,N'NF-edit',N'修改字典',2,N'btn_edit()',N'/SystemManage/ItemsData/Form',0,0,0,0,3,0,1,N'2016-07-25 15:37:42',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'104bcc01-0cfd-433f-87f4-29a8a3efb313',N'423A200B-FA5F-4B29-B7B7-A3F5474B725F',N'0',1,N'NF-add',N'新建字典',1,N'btn_add()',N'/SystemManage/ItemsData/Form',0,0,0,0,1,0,1,N'2016-07-25 15:37:35',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'1ee1c46b-e767-4532-8636-936ea4c12003',N'423A200B-FA5F-4B29-B7B7-A3F5474B725F',N'0',1,N'NF-delete',N'删除字典',2,N'btn_delete()',N'/SystemManage/ItemsData/DeleteForm',0,0,0,0,4,0,1,N'2016-07-25 15:37:53',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'82f162cb-beb9-4a79-8924-cd1860e26e2e',N'423A200B-FA5F-4B29-B7B7-A3F5474B725F',N'0',1,N'NF-Details',N'查看字典',2,N'btn_details()',N'/SystemManage/ItemsData/Details',0,0,0,0,5,0,1,N'2016-07-25 15:37:59',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'4b876abc-1b85-47b0-abc7-96e313b18ed8',N'423A200B-FA5F-4B29-B7B7-A3F5474B725F',N'0',N'NF-itemstype',N'分类管理',1,N'btn_itemstype()',N'/SystemManage/ItemsType/Index',0,0,0,0,2,0,1,N'2016-07-25 15:36:21',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'0f0596f6-aa50-4df0-ad8e-af867cb4a9de',N'e72c75d0-3a69-41ad-b220-13c9a62ec788',N'0',1,N'NF-delete',N'删除备份',2,N'btn_delete()',N'/SystemSecurity/DbBackup/DeleteForm',0,0,0,0,2,0,1,N'2016-07-25 15:47:47',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'41862743-f703-4b6d-be54-08d253eb0ebc',N'e72c75d0-3a69-41ad-b220-13c9a62ec788',N'0',1,N'NF-add',N'新建备份',1,N'btn_add()',N'/SystemSecurity/DbBackup/Form',0,0,0,0,1,0,1,N'2016-07-25 15:43:15',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'aed66cfb-d78e-43d4-9987-c714546be7eb',N'e72c75d0-3a69-41ad-b220-13c9a62ec788',N'0',1,N'NF-download',N'下载备份',2,N'btn_download()',N'/SystemSecurity/DbBackup/DownloadBackup',0,0,0,0,3,0,1,N'2016-07-25 15:48:17',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'329c0326-ce68-4a24-904d-aade67a90fc7',N'a3a4742d-ca39-42ec-b95a-8552a6fae579',N'0',1,N'NF-Details',N'查看策略',2,N'btn_details()',N'/SystemSecurity/FilterIP/Details',0,0,0,0,4,0,1,N'2016-07-25 15:58:04',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'8379135e-5b13-4236-bfb1-9289e6129034',N'a3a4742d-ca39-42ec-b95a-8552a6fae579',N'0',1,N'NF-delete',N'删除策略',2,N'btn_delete()',N'/SystemSecurity/FilterIP/DeleteForm',0,0,0,0,3,0,1,N'2016-07-25 15:57:57',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'aaf58c1b-4af2-4e5f-a3e4-c48e86378191',N'a3a4742d-ca39-42ec-b95a-8552a6fae579',N'0',1,N'NF-edit',N'修改策略',2,N'btn_edit()',N'/SystemSecurity/FilterIP/Form',0,0,0,0,2,0,1,N'2016-07-25 15:57:49',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'd4074121-0d4f-465e-ad37-409bbe15bf8a',N'a3a4742d-ca39-42ec-b95a-8552a6fae579',N'0',1,N'NF-add',N'新建策略',1,N'btn_add()',N'/SystemSecurity/FilterIP/Form',0,0,0,0,1,0,1,N'2016-07-25 15:57:40',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'3a35c662-a356-45e4-953d-00ebd981cad6',N'96EE855E-8CD2-47FC-A51D-127C131C9FB9',N'0',1,N'NF-removelog',N'清空日志',1,N'btn_removeLog()',N'/SystemSecurity/Log/RemoveLog',0,0,0,0,1,0,1,N'2016-07-25 16:03:12',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'4c13c9c3-c1a4-4f7e-a061-2266b2c47c7a',N'3593c43a-e4bc-4b7f-9629-0449a3d1818e',N'0',N'NF-delete',N'删除',2,N'btn_delete()',N'/DingTalkManage/Department/DeleteForm',0,0,0,0,3,0,1,N'2018-08-14 22:53:13',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:27:14',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'80afeabc-5502-47cc-a304-a1c736b150d2',N'3593c43a-e4bc-4b7f-9629-0449a3d1818e',N'0',N'NF-Details',N'查看',2,N'btn_details()',N'/DingTalkManage/Department/Details',0,0,0,0,4,0,1,N'2018-08-14 22:54:07',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:27:25',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'd02984f1-2fea-4507-9442-72b1d81a490c',N'3593c43a-e4bc-4b7f-9629-0449a3d1818e',N'0',N'NF-edit',N'修改',2,N'btn_edit()',N'/DingTalkManage/Department/Form',0,0,0,0,2,0,1,N'2018-08-14 22:51:47',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:27:05',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'fea84a80-2f19-4118-a2aa-a269a66df346',N'3593c43a-e4bc-4b7f-9629-0449a3d1818e',N'0',N'NF-add',N'新增',1,N'btn_add()',N'/DingTalkManage/Department/Form',0,0,0,0,1,0,1,N'2018-08-14 22:49:22',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:26:57',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'a026f86d-d7ed-4cd3-8901-f6c7808026e6',N'9a727a52-43ed-425a-940c-a4b64749f745',N'0',N'NF-Details',N'查看',2,N'btn_details()',N'/WeixinMPManage/WxUsers/Details',0,0,0,0,4,0,1,N'2018-08-14 22:54:07',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-07-04 10:54:46',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'b5168959-7655-4dce-956a-754e3ebbfb2e',N'9a727a52-43ed-425a-940c-a4b64749f745',N'0',N'NF-add',N'新增',1,N'btn_add()',N'/WeixinManage/WxUsers/Form',0,0,0,0,1,0,1,N'2018-08-14 22:49:22',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-07-04 10:54:25',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'2f21a804-cd90-4da3-98f3-f31cfe6031dc',N'5b263367-33a8-48e1-89ec-ba225f7d5e7a',N'0',N'NF-add',N'新增',1,N'btn_add()',N'/WeixinManage/Users/Form',0,0,0,0,1,0,1,N'2018-08-14 22:49:22',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:25:43',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'02f35b16-f299-4805-85cf-f4a76c1b1e8a',N'5b263367-33a8-48e1-89ec-ba225f7d5e7a',N'0',N'NF-edit',N'修改',2,N'btn_edit()',N'/DingTalkManage/Users/Form',0,0,0,0,2,0,1,N'2018-08-14 22:51:47',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:25:51',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'10148a76-3843-405c-b5af-b2b3d738a2b0',N'5b263367-33a8-48e1-89ec-ba225f7d5e7a',N'0',N'NF-delete',N'删除',2,N'btn_delete()',N'/DingTalkManage/Users/DeleteForm',0,0,0,0,3,0,1,N'2018-08-14 22:53:13',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:26:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'f7c7c0ce-1916-449c-b239-a9a5db940c6a',N'5b263367-33a8-48e1-89ec-ba225f7d5e7a',N'0',N'NF-Details',N'查看',2,N'btn_details()',N'/DingTalkManage/Users/Details',0,0,0,0,4,0,1,N'2018-08-14 22:54:07',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:26:24',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'6b639924-6594-4293-ae72-9e1f84bdcbfa',N'9a727a52-43ed-425a-940c-a4b64749f745',N'0',N'NF-edit',N'修改',2,N'btn_edit()',N'/WeixinManage/WxUsers/Form',0,0,0,0,2,0,1,N'2018-08-14 22:51:47',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-07-04 10:54:31',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'78d0d7df-7b33-4b05-be3f-899b79773643',N'9a727a52-43ed-425a-940c-a4b64749f745',N'0',N'NF-delete',N'删除',2,N'btn_delete()',N'/WeixinManage/WxUsers/DeleteForm',0,0,0,0,3,0,1,N'2018-08-14 22:53:13',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-07-04 10:54:39',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'27b50b8b-0552-4c1c-a0e9-54f3402aa8e2',N'e40a4371-6835-4f67-a349-c2b02ed6760e',N'0',N'NF-Details',N'查看',2,N'btn_details()',N'/WeixinManage/Users/Details',0,0,0,0,4,0,1,N'2018-08-14 22:54:07',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:26:24',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'6cd3de7d-589b-457f-bfc8-ad3939649519',N'e40a4371-6835-4f67-a349-c2b02ed6760e',N'0',N'NF-edit',N'修改',2,N'btn_edit()',N'/WeixinManage/Users/Form',0,0,0,0,2,0,1,N'2018-08-14 22:51:47',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:25:51',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'711e01d6-c5c1-4238-ae23-78e21cf933f3',N'e40a4371-6835-4f67-a349-c2b02ed6760e',N'0',N'NF-delete',N'删除',2,N'btn_delete()',N'/WeixinManage/Users/DeleteForm',0,0,0,0,3,0,1,N'2018-08-14 22:53:13',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:26:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'de0dd0b8-defe-4766-a8fe-93da339981e8',N'e40a4371-6835-4f67-a349-c2b02ed6760e',N'0',N'NF-add',N'新增',1,N'btn_add()',N'/WeixinManage/Users/Form',0,0,0,0,1,0,1,N'2018-08-14 22:49:22',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:25:43',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'037df8cd-ed27-4c6e-9a83-9153a7c2727a',N'0c253d7a-f1bf-45c0-9a59-0ad3396323e6',N'0',N'NF-delete',N'删除',2,N'btn_delete()',N'/WeixinManage/WxTempMsg/DeleteForm',0,0,0,0,3,0,1,N'2018-08-14 22:53:13',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-07-04 10:54:39',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'1d612157-fb91-447b-80ec-e96514c8e00b',N'0c253d7a-f1bf-45c0-9a59-0ad3396323e6',N'0',N'NF-add',N'新增',1,N'btn_add()',N'/WeixinManageWxTempMsg/Form',0,0,0,0,1,0,1,N'2018-08-14 22:49:22',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-07-04 10:54:25',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'8d7b059e-4105-4dde-944c-c2424f68b5c5',N'0c253d7a-f1bf-45c0-9a59-0ad3396323e6',N'0',N'NF-Details',N'查看',2,N'btn_details()',N'/WeixinMPManage/WxTempMsg/Details',0,0,0,0,4,0,1,N'2018-08-14 22:54:07',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-07-04 10:54:46',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'b02a3807-0835-46c1-a965-af192dfb9823',N'0c253d7a-f1bf-45c0-9a59-0ad3396323e6',N'0',N'NF-edit',N'修改',2,N'btn_edit()',N'/WeixinManage/WxTempMsg/Form',0,0,0,0,2,0,1,N'2018-08-14 22:51:47',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-07-04 10:54:31',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_ModuleForm]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_ModuleForm]

CREATE TABLE [Sys_ModuleForm] (
[F_Id] [varchar]  (50) NOT NULL,
[F_ModuleId] [varchar]  (50) NULL,
[F_EnCode] [varchar]  (50) NULL,
[F_FullName] [varchar]  (50) NULL,
[F_FormJson] [varchar]  (MAX) NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (500) NULL)

ALTER TABLE [Sys_ModuleForm] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_ModuleForm] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_ModuleFormInstance]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_ModuleFormInstance]

CREATE TABLE [Sys_ModuleFormInstance] (
[F_Id] [varchar]  (50) NOT NULL,
[F_FormId] [varchar]  (50) NOT NULL,
[F_ObjectId] [varchar]  (50) NULL,
[F_InstanceJson] [varchar]  (MAX) NULL,
[F_SortCode] [int]  NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL)

ALTER TABLE [Sys_ModuleFormInstance] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_ModuleFormInstance] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_Organize]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_Organize]

CREATE TABLE [Sys_Organize] (
[F_Id] [varchar]  (50) NOT NULL,
[F_ParentId] [varchar]  (50) NULL,
[F_Layers] [int]  NULL,
[F_EnCode] [varchar]  (50) NULL,
[F_FullName] [varchar]  (50) NULL,
[F_ShortName] [varchar]  (50) NULL,
[F_CategoryId] [varchar]  (50) NULL,
[F_ManagerId] [varchar]  (50) NULL,
[F_TelePhone] [varchar]  (20) NULL,
[F_MobilePhone] [varchar]  (20) NULL,
[F_WeChat] [varchar]  (50) NULL,
[F_Fax] [varchar]  (20) NULL,
[F_Email] [varchar]  (50) NULL,
[F_AreaId] [varchar]  (50) NULL,
[F_Address] [varchar]  (500) NULL,
[F_AllowEdit] [bit]  NULL,
[F_AllowDelete] [bit]  NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (500) NULL)

ALTER TABLE [Sys_Organize] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_Organize] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_Organize] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_CategoryId],[F_ManagerId],[F_Address],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'5AB270C0-5D33-4203-A54F-4552699FDA3C',N'0',1,N'Company',N'上海东鞋贸易有限公司',N'Company',N'郭总',N'上海市松江区',0,0,1,0,1,N'2016-06-10 00:00:00')
INSERT [Sys_Organize] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_CategoryId],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'80E10CD5-7591-40B8-A005-BCDE1B961E76',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'Administration',N'行政部',N'Department',0,0,2,0,1,N'2016-06-10 00:00:00')
INSERT [Sys_Organize] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_CategoryId],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'5B417E2B-4B96-4F37-8BAA-10E5A812D05E',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'Market',N'市场部',N'Department',0,0,3,0,1,N'2016-06-10 00:00:00')
INSERT [Sys_Organize] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_CategoryId],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'F02A66CA-3D8B-491B-8A17-C9ACA3E3B5DD',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'Financial',N'财务部',N'Department',0,0,4,0,1,N'2016-06-10 00:00:00')
INSERT [Sys_Organize] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_CategoryId],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'554C61CE-6AE0-44EB-B33D-A462BE7EB3E1',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'Ministry',N'技术部',N'Department',0,0,5,0,1,N'2016-06-10 00:00:00')
INSERT [Sys_Organize] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_CategoryId],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'BD830AEF-0A2E-4228-ACF8-8843C39D41D8',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'Purchase',N'采购部',N'Department',0,0,6,0,1,N'2016-06-10 00:00:00')
INSERT [Sys_Organize] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_CategoryId],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'253EDA1F-F158-4F3F-A778-B7E538E052A2',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'Manufacturing',N'生产部',N'Department',0,0,7,0,1,N'2016-06-10 00:00:00')
INSERT [Sys_Organize] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_CategoryId],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'DFA2FB91-C909-44A3-9282-BF946102E1C9',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'HumanResourse',N'人事部',N'Department',0,0,8,0,1,N'2016-06-10 00:00:00')
INSERT [Sys_Organize] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_CategoryId],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'59703D6A-0EC9-4762-824F-A8D9E62E93D2',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'Sales',N'营销部',N'Department',0,0,9,0,1,N'2016-06-10 00:00:00')
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_Role]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_Role]

CREATE TABLE [Sys_Role] (
[F_Id] [varchar]  (50) NOT NULL,
[F_OrganizeId] [varchar]  (50) NULL,
[F_Category] [int]  NULL,
[F_EnCode] [varchar]  (50) NULL,
[F_FullName] [varchar]  (50) NULL,
[F_Type] [varchar]  (50) NULL,
[F_AllowEdit] [bit]  NULL,
[F_AllowDelete] [bit]  NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (500) NULL)

ALTER TABLE [Sys_Role] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_Role] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'administrators',N'超级管理员',N'1',1,1,1,0,1,N'2016-07-10 00:00:00',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'4B2140D3-E61D-488E-ADF6-FF0EBCBC5D2C',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'system',N'系统管理员',N'1',0,0,2,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'42C44AC0-27FA-482D-B5E3-8F9B38B80A6A',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'configuration',N'系统配置员',N'2',0,0,3,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'7A9CF301-FCDF-4BC9-A52B-A7D4FAE2D344',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'developer',N'系统开发人员',N'2',0,0,4,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'2691AB91-3010-465F-8D92-60A97425A45E',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'innerStaff',N'内部员工',N'2',0,0,5,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'41652BB4-E2DC-420E-AA8A-8C92784B76E3',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'archvist',N'档案管理员',N'2',0,0,6,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'531F7D18-C49F-4F4F-A920-0074FCB52078',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'guest',N'访客人员',N'2',0,0,7,0,1,N'2016-07-10 00:00:00',N'2016-07-24 15:43:29',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'2DA8390B-61A4-4E6C-A6E7-8F6794C7EDCE',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'tester',N'测试人员',N'2',0,0,8,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'07A8E061-AE47-49C9-8310-F055F35FF44B',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'services',N'客服人员',N'2',0,0,9,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'AADB479E-9F87-49B1-AE2D-5DA6FECA3F8E',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'implement',N'实施人员',N'2',0,0,10,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'8683CB17-5F9D-4A99-A233-A18C4D1CF95B',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'businessPersonnel',N'业务人员',N'2',0,0,12,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'F68956A9-9C53-4C08-AFE8-8A4755FE2B8F',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'inventory',N'库存管理员',N'2',0,0,13,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'F9421969-D85C-4E4C-927F-CCFB18388A59',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'contracts',N'合同专员',N'2',0,0,14,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'23ED024E-0AAA-4C8D-9216-D1AB93348D26',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'employee',N'员工',0,0,1,0,1,N'2016-07-12 00:00:00',N'2016-07-18 15:18:56')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'D335A5B8-7DED-495C-B8FC-EE933FB30779',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'charge',N'主管',0,0,2,0,1,N'2016-07-12 00:00:00',N'2016-07-18 15:17:22')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'0052A230-EA7B-4F3A-A1C9-1611FF26481A',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'manager',N'经理',0,0,3,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'CEEA79E8-2E19-4294-8447-13247053DE04',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'director',N'总监',0,0,4,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'EA56E457-5024-49AF-9410-D5D71D24F14B',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'vicegeneral',N'副总经理',0,0,5,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'796E9C6A-8432-4BA6-8CF6-EFFAB6F2098C',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'general',N'总经理',0,0,6,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'91E09653-D3DE-416A-BF6C-E91E60B4B4CF',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'chairman',N'主任',0,0,7,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'C609D4D6-81F7-4647-BF2F-81BD4CED2C19',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'fileattache',N'档案专员',0,0,8,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'F03EA699-9A0A-4EE9-9D33-27B9A7DFF09B',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'engineer',N'高级工程师',0,0,9,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'0CD2A952-2EE0-4CAF-9757-617D5075745B',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'president',N'董事长',0,0,10,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'B2624F67-E092-461A-AAAD-13592A9429D9',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'10018',N'行政助理',0,0,11,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'3263446A-D303-4C42-B436-6F46BF7CE86A',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'10019',N'总裁',0,0,12,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'CB116AA3-88CC-4CF7-B0BC-7C55EC502183',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'10020',N'首席执行官',0,0,13,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'7E2639BA-02B9-417A-9AAA-CF6DCF8487E0',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'10022',N'力资源专员',0,0,14,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'2B3406F9-B7FF-4D23-BC61-D8EEB6C88D5B',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'10023',N'行业顾问',0,0,15,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'05691457-5284-4FEE-8D7E-C35141F3FF39',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'10024',N'总经理助理',0,0,16,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'3A2FD4D7-E73C-44E4-8AED-B6EE5980779E',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'10025',N'大堂经理',0,0,17,0,1,N'2016-07-12 00:00:00')
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_RoleAuthorize]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_RoleAuthorize]

CREATE TABLE [Sys_RoleAuthorize] (
[F_Id] [varchar]  (50) NOT NULL,
[F_ItemType] [int]  NULL,
[F_ItemId] [varchar]  (50) NULL,
[F_ObjectType] [int]  NULL,
[F_ObjectId] [varchar]  (50) NULL,
[F_SortCode] [int]  NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL)

ALTER TABLE [Sys_RoleAuthorize] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_RoleAuthorize] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'ccfcea25-cab8-42e7-aee3-61663d89ba93',2,N'91be873e-ccb7-434f-9a3b-d312d6d5798a',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'cd061505-61fe-4a4e-a612-41952ba33e3b',1,N'163DA347-887C-4C91-8298-EB00FFBFEC84',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'd4cd5d85-c730-4bd9-9d62-3233056fa7f3',2,N'E29FCBA7-F848-4A8B-BC41-A3C668A9005D',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'da24baba-479c-4017-acee-569b1fa0ce1a',1,N'54E9D12D-C039-4F01-A6FE-810A147D31D5',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'e7095efa-4793-44f0-8edb-57e21d4aeea2',1,N'64A1C550-2C61-4A8C-833D-ACD0C012260F',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'ea573da4-7921-40db-bf8f-447ef980ee31',1,N'85FAF4F4-9CBE-4904-94B3-2B930CA49F0C',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'eb7aabf3-801e-4751-85e9-8972faec4452',1,N'AF34B824-439E-4365-99CC-C1D30514D869',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'ebff5f54-bbe5-482a-a763-d6fcce17b655',2,N'5d708d9d-6ebe-40ea-8589-e3efce9e74ec',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'f5dc517b-f045-41ba-bae0-f7053a89c6c9',2,N'f93763ff-51a1-478d-9585-3c86084c54f3',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'f929d1f3-2485-4d0b-8253-ff778dd30add',2,N'cd65e50a-0bea-45a9-b82e-f2eacdbd209e',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'fcf8d653-fe9a-4e8f-81d5-f4af1119bbbf',1,N'F2DAD50B-95DF-48F7-8638-BA503B539143',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'04d23b62-8401-4e50-8279-aaeb66377daa',2,N'FD3D073C-4F88-467A-AE3B-CDD060952CE6',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'0f7b0b1b-d925-45d5-adf9-55044a7f4c19',2,N'5d708d9d-6ebe-40ea-8589-e3efce9e74ec',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'1afefe4f-c76d-488b-b165-e797b017c216',2,N'e75e4efc-d461-4334-a764-56992fec38e6',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'22ddf57d-739d-4da0-b2a7-752459f110a6',2,N'8a9993af-69b2-4d8a-85b3-337745a1f428',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'244823d7-6b36-4cf9-b63d-c749e91061ae',2,N'48afe7b3-e158-4256-b50c-cd0ee7c6dcc9',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'250a92b7-a549-4a35-b007-82f90dcf5622',2,N'104bcc01-0cfd-433f-87f4-29a8a3efb313',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'2af34ef2-522e-4ea3-a8df-668b57e3b4e3',1,N'337A4661-99A5-4E5E-B028-861CACAF9917',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'2e467fc2-2e71-45c7-ad7c-fad5eb956adf',2,N'cd65e50a-0bea-45a9-b82e-f2eacdbd209e',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'32119cfa-864e-4bf9-945b-2d76dad0a31c',2,N'f93763ff-51a1-478d-9585-3c86084c54f3',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'379e90a9-5628-47e0-8314-da3e0c550fb3',2,N'88f7b3a8-fd6d-4f8e-a861-11405f434868',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'37b242db-cd74-400f-964b-96d72bd651c6',2,N'1ee1c46b-e767-4532-8636-936ea4c12003',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'3ec593df-c492-4270-9aef-e75d521171da',2,N'14617a4f-bfef-4bc2-b943-d18d3ff8d22f',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'41105b53-4315-442c-bb7f-9b9204355351',2,N'4727adf7-5525-4c8c-9de5-39e49c268349',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'4ff4e45a-9ed6-4c79-be52-ae6d07d77b3a',2,N'8c7013a9-3682-4367-8bc6-c77ca89f346b',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'52cce008-0755-4a75-9fdf-6425f74f62b0',2,N'89d7a69d-b953-4ce2-9294-db4f50f2a157',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'53967381-3765-4bff-ad74-6aa1c9d03596',2,N'D4FCAFED-7640-449E-80B7-622DDACD5012',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'64f6b88c-7510-4e83-956e-d2d6c163200a',1,N'F298F868-B689-4982-8C8B-9268CBF0308D',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'68905347-8abf-4f99-bacd-8d3045b06e2b',2,N'4b876abc-1b85-47b0-abc7-96e313b18ed8',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'6d4f5a20-98b2-40c5-8352-80b15af1b360',2,N'239077ff-13e1-4720-84e1-67b6f0276979',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'700916e8-3488-45f2-b407-6f30df9b9123',2,N'B6A9473D-DAA7-4574-9231-13D9E631D379',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'7535204c-60ce-4114-bb12-430a5975b363',2,N'38e39592-6e86-42fb-8f72-adea0c82cbc1',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'77eafdea-c1e3-4e36-9d70-cdaa7b5200d4',1,N'38CA5A66-C993-4410-AF95-50489B22939C',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'790dc854-bdbf-4ff0-8cea-2ffffcbe98ed',2,N'E29FCBA7-F848-4A8B-BC41-A3C668A9005D',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'848319d7-89f3-4ef9-b9fc-fcd99eddf632',2,N'4bb19533-8e81-419b-86a1-7ee56bf1dd45',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'94fa7a37-986f-4534-87bc-b66bcf7246d0',1,N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'997a0c17-7de7-4eb3-9adb-c4900b310948',2,N'74eecdfb-3bee-405d-be07-27a78219c179',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'a06b6fb1-f68a-4856-9e41-44ec8a642139',2,N'85F5212F-E321-4124-B155-9374AA5D9C10',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'aa5d1775-d95b-4f07-8c2b-7a9820876dc0',2,N'709a4a7b-4d98-462d-b47c-351ef11db06f',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'af617592-755c-4a6b-99ac-3d1ba457d760',2,N'91be873e-ccb7-434f-9a3b-d312d6d5798a',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'c0a099cf-8ea2-4193-bd66-403f35ac3e42',1,N'423A200B-FA5F-4B29-B7B7-A3F5474B725F',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'c5c51f2e-4f7d-4aa9-9b90-b0ad1679771d',2,N'13c9a15f-c50d-4f09-8344-fd0050f70086',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'cbf03b03-096a-4eb3-9983-81637429e51b',2,N'82f162cb-beb9-4a79-8924-cd1860e26e2e',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'd5f8dc31-4c8d-41a5-8154-9c855553793a',2,N'ffffe7f8-900c-413a-9970-bee7d6599cce',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'd71845b3-c39b-4a99-a523-f7a93f3ac038',2,N'abfdff21-8ebf-4024-8555-401b4df6acd9',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'e1a1c00f-e10e-4589-8144-797f38efcd80',2,N'0d777b07-041a-4205-a393-d1a009aaafc7',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'b52fbff2-78d5-475d-84ca-6d9ed11d3cc6',1,N'4B2140D3-E61D-488E-ADF6-FF0EBCBC5D2C')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'e61a0833-aa73-4e15-9c03-83b8089e6bd8',2,N'9FD543DB-C5BB-4789-ACFF-C5865AFB032C',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'e6c1e0a7-aaaa-4adb-b95d-353134a484c6',1,N'64A1C550-2C61-4A8C-833D-ACD0C012260F',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'eae52f23-db61-4997-82e0-437978517f6a',1,N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'f5c3d009-3d00-4be1-822c-feba6c89ae0a',1,N'462027E0-0848-41DD-BCC3-025DCAE65555',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'1fd4ae2a-24fd-49e3-8007-5cc987cd05c0',1,N'42C44AC0-27FA-482D-B5E3-8F9B38B80A6A')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'df6839d3-60c4-447d-9d48-c75d26d77a7b',1,N'7A9CF301-FCDF-4BC9-A52B-A7D4FAE2D344')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'2bf9d1bd-510f-463a-9555-4ab8357bfb08',1,N'2691AB91-3010-465F-8D92-60A97425A45E')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'f8a6180a-ee18-41f4-b28e-d7e4c5a36045',1,N'41652BB4-E2DC-420E-AA8A-8C92784B76E3')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'cf6bf931-ae94-4820-92de-4f80590c615d',1,N'2DA8390B-61A4-4E6C-A6E7-8F6794C7EDCE')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'93e3474f-a8c9-4b0e-bf42-1571e9f4e6b8',1,N'07A8E061-AE47-49C9-8310-F055F35FF44B')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'fbc0b434-f261-47eb-94c8-0c450dd56cc4',1,N'AADB479E-9F87-49B1-AE2D-5DA6FECA3F8E')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'df6281cb-6ad9-4d4b-aff2-ba6f266c1dd3',1,N'8683CB17-5F9D-4A99-A233-A18C4D1CF95B')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'06a71015-42f4-4f16-ad9e-88e0665f7504',1,N'F68956A9-9C53-4C08-AFE8-8A4755FE2B8F')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'bb544273-6e31-4235-b507-3f0ffbfded28',1,N'F9421969-D85C-4E4C-927F-CCFB18388A59')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'0000da5b-6305-4b23-b1db-1f55a66daca8',2,N'FD3D073C-4F88-467A-AE3B-CDD060952CE6',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'06011f83-df9a-4d5d-bb6f-0b948574256c',1,N'73FD1267-79BA-4E23-A152-744AF73117E9',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'12cc8ed7-d769-48cc-ab3c-866466462e70',1,N'96EE855E-8CD2-47FC-A51D-127C131C9FB9',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'15b2279f-7082-421e-a6a3-9abd5bca8303',1,N'337A4661-99A5-4E5E-B028-861CACAF9917',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'166e6255-d5cc-4718-b257-771398b4132b',2,N'13c9a15f-c50d-4f09-8344-fd0050f70086',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'1822a1c4-5a49-4742-a937-b63e4f9bd826',1,N'FE04386D-1307-4E34-8DFB-B56D9FEC78CE',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'1a81232c-037a-4af8-b2cf-55e19fce1582',2,N'239077ff-13e1-4720-84e1-67b6f0276979',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'1dbe5bcb-3907-49d4-93d9-0d41cc539a1d',1,N'423A200B-FA5F-4B29-B7B7-A3F5474B725F',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'1e2c7104-1731-4519-81ac-3594f78bf8dd',1,N'9F56840F-DF92-4936-A48C-8F65A39291A2',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'2078f57a-454a-48c8-9fee-122df8f5786e',1,N'7B959522-BE45-4747-B89D-592C7F3987A5',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'237da469-8831-45bf-bb78-0e7ca06f33d7',1,N'38CA5A66-C993-4410-AF95-50489B22939C',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'243814e8-2279-4749-b84a-4e0c269d2910',2,N'709a4a7b-4d98-462d-b47c-351ef11db06f',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'2c069a5e-8785-49b3-a6e7-355dbad2e89f',1,N'39E97B05-7B6F-4069-9972-6F9643BC3042',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'3115d827-1419-48ab-88fa-c9b56be6df86',1,N'822E2523-5105-4AE0-BF48-62459D3641F6',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'335e819a-866c-409d-8233-3449481b0460',2,N'D4FCAFED-7640-449E-80B7-622DDACD5012',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'34b49233-b13b-4a6f-bc98-3000bf6b75ee',1,N'91425AF9-F762-43AF-B784-107D23FFDC85',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'35753609-e0d7-4829-9685-6cafe02c7ca7',1,N'462027E0-0848-41DD-BCC3-025DCAE65555',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'3f21e866-1f79-4cac-9f8e-91a0cb1014ce',2,N'85F5212F-E321-4124-B155-9374AA5D9C10',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'43ad8ba2-3258-40ce-a121-a4c4c1af0871',1,N'a3a4742d-ca39-42ec-b95a-8552a6fae579',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'474417c9-51de-40e9-b2dc-59d169f0bf12',1,N'ABA7DA44-A291-4A25-9BDC-C310CF1C931C',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'4d0ba76b-dbb0-4e4f-b83e-92df13bf702a',2,N'ffffe7f8-900c-413a-9970-bee7d6599cce',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'4d26e4ba-cf4f-4783-a4bd-84e1f2f9ecb3',1,N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'5324f369-ce2d-47cc-a3c5-cf4f690a7914',1,N'D2ECB516-4CB7-49B1-B536-504382115DD2',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'577c000a-2997-4915-aa24-412c4acfbb38',1,N'6BBC3562-1051-4246-98B0-9F37CAC40DC8',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'5ae6902f-0520-4000-a495-6db64d3ff469',1,N'C3D12056-D906-4D8B-8B9C-954942742BDE',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'6e725406-22c9-4c19-8f85-054f97ee20f4',1,N'49F61713-C1E4-420E-BEEC-0B4DBC2D7DE8',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'6e83c40f-c7fc-4b96-86aa-b17485a2d8ca',1,N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'766067c0-ebef-43f6-b49b-a7261634ff05',2,N'88f7b3a8-fd6d-4f8e-a861-11405f434868',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'77699534-4f0b-44f0-a6d2-3953334be95a',1,N'A33ADBFC-089B-4981-BFAB-08178052EE36',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'844841a3-a465-4bba-816e-920dbdca9715',1,N'0EDF1DDB-CA17-4D08-AA25-914FE4E13324',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'8e81b948-313c-4d2c-b752-92a83197b7e6',1,N'e72c75d0-3a69-41ad-b220-13c9a62ec788',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'90a522bb-5e94-48d7-be44-e4180ee7bc3d',1,N'df9920e0-ba33-4e36-a911-ef08c6ea77ea',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'90a63c30-1c20-4f47-9cd8-d9bcc44e10d9',1,N'F298F868-B689-4982-8C8B-9268CBF0308D',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'94a7787a-6659-49cc-a902-7ea63231c177',2,N'4bb19533-8e81-419b-86a1-7ee56bf1dd45',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'9c9cfbd1-525a-4f02-a765-30a72c771e23',2,N'B6A9473D-DAA7-4574-9231-13D9E631D379',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'9cc97a78-d8ca-45bd-aad5-efbeef4a4c8a',2,N'8a9993af-69b2-4d8a-85b3-337745a1f428',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'9fef22f9-1962-4cd0-84a6-ba85b9ce29c1',1,N'B3BF41E1-0299-4EFE-BA76-A7377AC81B38',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'a8b2ff07-7af6-4e6a-8b9a-5785a25afe8c',1,N'1F14A1ED-B22E-4E4A-BF10-6CF018507E76',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'a8cf8cde-db46-4f5e-a3b2-883aef62ff7f',1,N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'b10ca258-bd85-403c-aded-95b546fecaea',1,N'ACDBD633-99A0-4BEF-B67C-3A5B41E7C1FD',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'c0257ed1-eae3-4260-9633-0f53b0e3d106',2,N'9FD543DB-C5BB-4789-ACFF-C5865AFB032C',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'c2e04783-a45a-449d-9f7f-83d6a855ec22',1,N'7858E329-16FC-49F4-93A1-11E2E7EF2998',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'c2e7dba8-b103-4c63-a597-136110a89c7b',2,N'e75e4efc-d461-4334-a764-56992fec38e6',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_User]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_User]

CREATE TABLE [Sys_User] (
[F_Id] [varchar]  (50) NOT NULL,
[F_Account] [varchar]  (50) NULL,
[F_RealName] [varchar]  (50) NULL,
[F_NickName] [varchar]  (50) NULL,
[F_HeadIcon] [varchar]  (50) NULL,
[F_Gender] [bit]  NULL,
[F_Birthday] [datetime]  NULL,
[F_MobilePhone] [varchar]  (20) NULL,
[F_Email] [varchar]  (50) NULL,
[F_WeChat] [varchar]  (50) NULL,
[F_ManagerId] [varchar]  (50) NULL,
[F_SecurityLevel] [int]  NULL,
[F_Signature] [varchar]  (500) NULL,
[F_OrganizeId] [varchar]  (50) NULL,
[F_DepartmentId] [varchar]  (500) NULL,
[F_RoleId] [varchar]  (500) NULL,
[F_DutyId] [varchar]  (500) NULL,
[F_IsAdmin] [bit]  NULL,
[F_IsBoss] [bit]  NULL,
[F_IsLeaderInDepts] [bit]  NULL,
[F_IsSenior] [bit]  NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (500) NULL,
[F_DingTalkUserId] [varchar]  (50) NULL,
[F_DingTalkUserName] [varchar]  (50) NULL,
[F_DingTalkAvatar] [varchar]  (100) NULL,
[F_WxOpenId] [varchar]  (50) NULL,
[F_WxNickName] [varchar]  (50) NULL,
[F_HeadImgUrl] [varchar]  (100) NULL)

ALTER TABLE [Sys_User] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_User] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_User] ([F_Id],[F_Account],[F_RealName],[F_NickName],[F_Gender],[F_MobilePhone],[F_OrganizeId],[F_DepartmentId],[F_RoleId],[F_DutyId],[F_IsAdmin],[F_IsBoss],[F_IsLeaderInDepts],[F_IsSenior],[F_DeleteMark],[F_EnabledMark],[F_Description],[F_CreatorTime],[F_LastModifyTime],[F_LastModifyUserId],[F_DingTalkUserName]) VALUES ( N'6903ab9d-20cd-44c4-a380-09f229366e1f',N'1010',N'白玉芬',N'白玉芬',0,N'15202701761',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',N'80E10CD5-7591-40B8-A005-BCDE1B961E76',N'531F7D18-C49F-4F4F-A920-0074FCB52078',N'23ED024E-0AAA-4C8D-9216-D1AB93348D26',0,0,0,0,0,1,N'测试数据',N'2016-07-20 00:00:00',N'2016-07-24 22:58:43',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'闫志辉')
INSERT [Sys_User] ([F_Id],[F_Account],[F_RealName],[F_NickName],[F_Gender],[F_MobilePhone],[F_OrganizeId],[F_DepartmentId],[F_IsAdmin],[F_IsBoss],[F_IsLeaderInDepts],[F_IsSenior],[F_DeleteMark],[F_EnabledMark],[F_Description],[F_CreatorTime],[F_DingTalkUserName]) VALUES ( N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'admin',N'超级管理员',N'超级管理员',1,N'13600000000',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',N'554C61CE-6AE0-44EB-B33D-A462BE7EB3E1',0,0,0,0,0,1,N'系统内置账户',N'2016-07-20 00:00:00',N'闫志辉')
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_UserLogOn]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_UserLogOn]

CREATE TABLE [Sys_UserLogOn] (
[F_Id] [varchar]  (50) NOT NULL,
[F_UserId] [varchar]  (50) NULL,
[F_UserPassword] [varchar]  (50) NULL,
[F_UserSecretkey] [varchar]  (50) NULL,
[F_AllowStartTime] [datetime]  NULL,
[F_AllowEndTime] [datetime]  NULL,
[F_LockStartDate] [datetime]  NULL,
[F_LockEndDate] [datetime]  NULL,
[F_FirstVisitTime] [datetime]  NULL,
[F_PreviousVisitTime] [datetime]  NULL,
[F_LastVisitTime] [datetime]  NULL,
[F_ChangePasswordDate] [datetime]  NULL,
[F_MultiUserLogin] [bit]  NULL,
[F_LogOnCount] [int]  NULL,
[F_UserOnLine] [bit]  NULL,
[F_Question] [varchar]  (50) NULL,
[F_AnswerQuestion] [varchar]  (500) NULL,
[F_CheckIPAddress] [bit]  NULL,
[F_Language] [varchar]  (50) NULL,
[F_Theme] [varchar]  (50) NULL)

ALTER TABLE [Sys_UserLogOn] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_UserLogOn] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_UserLogOn] ([F_Id],[F_UserId],[F_UserPassword],[F_UserSecretkey],[F_PreviousVisitTime],[F_LastVisitTime],[F_MultiUserLogin],[F_LogOnCount],[F_UserOnLine],[F_CheckIPAddress]) VALUES ( N'6903ab9d-20cd-44c4-a380-09f229366e1f',N'6903ab9d-20cd-44c4-a380-09f229366e1f',N'403ffebb404e8c30c57747baaa522902',N'95aa29b12cf25d9a',N'2016-07-26 13:59:26',N'2016-07-27 17:33:18',0,7,0,0)
INSERT [Sys_UserLogOn] ([F_Id],[F_UserId],[F_UserPassword],[F_UserSecretkey],[F_PreviousVisitTime],[F_LastVisitTime],[F_MultiUserLogin],[F_LogOnCount],[F_UserOnLine],[F_CheckIPAddress]) VALUES ( N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'44c35ab35cb0603e90d168642ca51fb6',N'57d3031d6fc4a34d',N'2019-11-14 23:06:57',N'2019-11-21 22:03:37',0,106,0,0)
if exists (select * from sysobjects where id = OBJECT_ID('[WeiXin_RequestBaseData]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [WeiXin_RequestBaseData]

CREATE TABLE [WeiXin_RequestBaseData] (
[uuId] [varchar]  (50) NOT NULL,
[OpenId] [varchar]  (100) NULL,
[MsgType] [varchar]  (100) NULL,
[DataContent] [varchar]  (2000) NULL,
[EventKey] [varchar]  (500) NULL,
[Url] [varchar]  (500) NULL,
[Url2] [varchar]  (500) NULL,
[XmlContent] [varchar]  (2000) NULL,
[CreateDate] [datetime]  NULL,
[Flag] [int]  NULL,
[RType] [varchar]  (70) NULL,
[Remark] [varchar]  (500) NULL,
[ExtInt] [int]  NULL,
[ExtStr] [varchar]  (200) NULL,
[ExtStr2] [varchar]  (700) NULL,
[ExtStr3] [varchar]  (2000) NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [WeiXin_RequestBaseData] WITH NOCHECK ADD  CONSTRAINT [PK_WeiXin_RequestBaseData] PRIMARY KEY  NONCLUSTERED ( [uuId] )
if exists (select * from sysobjects where id = OBJECT_ID('[WeiXin_RequestRule]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [WeiXin_RequestRule]

CREATE TABLE [WeiXin_RequestRule] (
[uuId] [varchar]  (50) NOT NULL,
[UserId] [varchar]  (50) NULL,
[RuleName] [varchar]  (200) NULL,
[ReqKeywords] [varchar]  (2000) NULL,
[ReqestType] [nchar]  (10) NULL,
[ResponseType] [int]  NULL,
[IsDefault] [bit]  NULL DEFAULT (0),
[ModelFunctionName] [varchar]  (200) NULL,
[ModelFunctionId] [int]  NULL,
[Seq] [int]  NULL,
[CreateDate] [datetime]  NULL,
[AgentUrl] [varchar]  (1000) NULL,
[AgentToken] [varchar]  (200) NULL,
[IsLikeSearch] [bit]  NULL DEFAULT (0),
[ExtInt] [int]  NULL,
[ExtInt2] [int]  NULL,
[ExtStr] [varchar]  (200) NULL,
[ExtStr2] [varchar]  (500) NULL,
[ExtStr3] [varchar]  (800) NULL,
[ExtStr4] [varchar]  (1000) NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [WeiXin_RequestRule] WITH NOCHECK ADD  CONSTRAINT [PK_WeiXin_RequestRule] PRIMARY KEY  NONCLUSTERED ( [uuId] )
if exists (select * from sysobjects where id = OBJECT_ID('[WeiXin_RequestRuleContent]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [WeiXin_RequestRuleContent]

CREATE TABLE [WeiXin_RequestRuleContent] (
[uuId] [varchar]  (50) NOT NULL,
[UserId] [varchar]  (50) NULL,
[RId] [varchar]  (50) NULL,
[RContent] [text]  NULL,
[RContent2] [varchar]  (2000) NULL,
[DetailUrl] [varchar]  (1000) NULL,
[PicUrl] [varchar]  (1000) NULL,
[MediaUrl] [varchar]  (1500) NULL,
[MeidaHDUrl] [varchar]  (1500) NULL,
[Remark] [varchar]  (2000) NULL,
[Seq] [int]  NULL,
[CreateDate] [datetime]  NULL,
[ExtInt] [int]  NULL,
[ExtInt2] [int]  NULL,
[ExtStr] [varchar]  (800) NULL,
[ExtStr2] [varchar]  (1000) NULL,
[Extstr3] [varchar]  (1500) NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [WeiXin_RequestRuleContent] WITH NOCHECK ADD  CONSTRAINT [PK_WeiXin_RequestRuleContent] PRIMARY KEY  NONCLUSTERED ( [uuId] )
if exists (select * from sysobjects where id = OBJECT_ID('[WeiXin_ResponseBaseData]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [WeiXin_ResponseBaseData]

CREATE TABLE [WeiXin_ResponseBaseData] (
[uuId] [varchar]  (50) NOT NULL,
[OpenId] [varchar]  (100) NULL,
[RequestType] [varchar]  (50) NULL,
[RequestContent] [varchar]  (2000) NULL,
[ResponseType] [varchar]  (50) NULL,
[ReponseContent] [varchar]  (2000) NULL,
[XmlContent] [varchar]  (2000) NULL,
[CreateDate] [datetime]  NULL,
[Flag] [int]  NULL,
[RType] [varchar]  (70) NULL,
[Remark] [varchar]  (500) NULL,
[ExtInt] [int]  NULL,
[ExtStr] [varchar]  (200) NULL,
[ExtStr2] [varchar]  (700) NULL,
[ExtStr3] [varchar]  (2000) NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [WeiXin_ResponseBaseData] WITH NOCHECK ADD  CONSTRAINT [PK_WeiXin_ResponseBaseData] PRIMARY KEY  NONCLUSTERED ( [uuId] )
if exists (select * from sysobjects where id = OBJECT_ID('[WeiXin_TemplateMessage]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [WeiXin_TemplateMessage]

CREATE TABLE [WeiXin_TemplateMessage] (
[uuId] [varchar]  (50) NOT NULL,
[Code] [varchar]  (50) NOT NULL,
[TemplateId] [varchar]  (100) NOT NULL,
[Title] [varchar]  (50) NULL,
[Primary_Industry] [int]  NULL,
[Deputy_Industry] [int]  NULL,
[Data_First] [varchar]  (100) NULL,
[Data_Remark] [varchar]  (100) NULL,
[Data_Keyword1] [varchar]  (50) NULL,
[Data_Keyword2] [varchar]  (50) NULL,
[Data_Keyword3] [varchar]  (50) NULL,
[Data_Keyword4] [varchar]  (50) NULL,
[Data_Keyword5] [varchar]  (50) NULL,
[LinkUrl] [varchar]  (50) NULL,
[MiniProgram] [int]  NULL,
[Appid] [varchar]  (50) NULL,
[Pagepath] [varchar]  (50) NULL,
[FirstColor] [nchar]  (10) NULL,
[RemarkColor] [nchar]  (10) NULL,
[Content] [varchar]  (500) NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [WeiXin_TemplateMessage] WITH NOCHECK ADD  CONSTRAINT [PK_WeiXin_TemplateMessage] PRIMARY KEY  NONCLUSTERED ( [uuId] )
if exists (select * from sysobjects where id = OBJECT_ID('[WeiXin_Users]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [WeiXin_Users]

CREATE TABLE [WeiXin_Users] (
[uuId] [varchar]  (50) NOT NULL,
[OpenId] [varchar]  (300) NOT NULL,
[Nickname] [varchar]  (200) NULL,
[Mobile] [varchar]  (20) NULL,
[Sex] [varchar]  (10) NULL,
[City] [varchar]  (200) NULL,
[Country] [varchar]  (200) NULL,
[Province] [varchar]  (200) NULL,
[Language] [varchar]  (30) NULL,
[HeadImgUrl] [varchar]  (1000) NULL,
[SubscribeTime] [varchar]  (30) NULL,
[Unionid] [varchar]  (200) NULL,
[CreateDate] [datetime]  NULL,
[GroupId] [int]  NULL,
[Status] [int]  NULL,
[WeixinId] [varchar]  (50) NULL,
[UpdateDate] [datetime]  NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [WeiXin_Users] WITH NOCHECK ADD  CONSTRAINT [PK_WeiXin_Users] PRIMARY KEY  NONCLUSTERED ( [uuId] )
if exists (select * from sysobjects where id = OBJECT_ID('[WeiXin_WxAppConfig]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [WeiXin_WxAppConfig]

CREATE TABLE [WeiXin_WxAppConfig] (
[uuId] [varchar]  (50) NOT NULL,
[WxName] [varchar]  (50) NULL,
[WxId] [varchar]  (50) NOT NULL,
[WxCode] [varchar]  (50) NULL,
[HeadPic] [varchar]  (50) NULL,
[Province] [varchar]  (50) NULL,
[City] [varchar]  (50) NULL,
[Token] [varchar]  (300) NULL,
[ApiUrl] [varchar]  (500) NULL,
[AppId] [varchar]  (200) NULL,
[AppSecret] [varchar]  (200) NULL,
[Access_Token] [varchar]  (200) NULL,
[Encoding] [varchar]  (200) NULL,
[WxType] [int]  NULL,
[Status] [bit]  NULL,
[IsDefault] [bit]  NULL,
[CloseKW] [bit]  NULL,
[Remark] [varchar]  (50) NULL,
[TimeStamp] [varchar]  (50) NULL,
[ExtStr] [varchar]  (1000) NULL,
[ExtStr2] [varchar]  (1000) NULL,
[ExtStr3] [varchar]  (1000) NULL,
[PersonSynDate] [datetime]  NULL,
[OpenidCount] [int]  NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [WeiXin_WxAppConfig] WITH NOCHECK ADD  CONSTRAINT [PK_WeiXin_WxAppConfig] PRIMARY KEY  NONCLUSTERED ( [uuId] )
INSERT [WeiXin_WxAppConfig] ([uuId],[WxName],[WxId],[WxCode],[Token],[ApiUrl],[AppId],[AppSecret],[Encoding],[WxType],[Status],[IsDefault],[CloseKW],[PersonSynDate],[OpenidCount]) VALUES ( N'2d747bf6-9efc-43e9-8263-fb4cf6f16da8',N'宜宾机电一体化研究所',N'gh_69c27280f38d',N'ybjd3936',N'yibinmetec',N'eims.dalecloud.cn/api/weixin/index?apiid=ybjd3936',N'wx21027f00d4234abc',N'e90f525e8d396fc68f0bdf4cafcc56b2',N'bwQlhHUl2pe2VU9CzVN9FCF2yZDAAiJBZqTLo3o9Oyb',0,1,1,0,N'2019-07-04 13:33:02',122)
if exists (select * from sysobjects where id = OBJECT_ID('[WeiXin_WxPropertyInfo]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [WeiXin_WxPropertyInfo]

CREATE TABLE [WeiXin_WxPropertyInfo] (
[uuId] [varchar]  (50) NOT NULL,
[WxId] [varchar]  (50) NULL,
[TypeId] [int]  NULL,
[TypeName] [varchar]  (100) NULL,
[IName] [varchar]  (200) NULL,
[IContent] [varchar]  (MAX) NULL,
[ExpiresIn] [int]  NULL,
[Count] [int]  NULL,
[CategoryId] [int]  NULL,
[CategoryName] [varchar]  (50) NULL,
[Remark] [varchar]  (1000) NULL,
[Status] [bit]  NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [WeiXin_WxPropertyInfo] WITH NOCHECK ADD  CONSTRAINT [PK_WeiXin_WxPropertyInfo] PRIMARY KEY  NONCLUSTERED ( [uuId] )
if exists (select * from sysobjects where id = OBJECT_ID('[Article]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Article]

CREATE TABLE [Article] (
[F_Id] [varchar]  (50) NOT NULL,
[F_CategoryId] [varchar]  (50) NULL,
[F_Title] [varchar]  (100) NULL,
[F_Zhaiyao] [varchar]  (255) NULL,
[F_SortCode] [int]  NULL,
[F_Source] [varchar]  (50) NULL,
[F_Author] [varchar]  (50) NULL,
[F_SubTitle] [varchar]  (100) NULL,
[F_IsRed] [bit]  NULL,
[F_IsHot] [bit]  NULL,
[F_IsTop] [bit]  NULL,
[F_IsSlide] [bit]  NULL,
[F_IsMsg] [bit]  NULL,
[F_Content] [ntext]  NULL,
[F_ImgUrl] [varchar]  (255) NULL,
[F_LinkUrl] [varchar]  (255) NULL,
[F_Click] [int]  NULL,
[F_Status] [bit]  NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL)

ALTER TABLE [Article] WITH NOCHECK ADD  CONSTRAINT [PK_Article] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
if exists (select * from sysobjects where id = OBJECT_ID('[Article_Category]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Article_Category]

CREATE TABLE [Article_Category] (
[F_Id] [varchar]  (50) NOT NULL,
[F_Title] [varchar]  (50) NULL,
[F_ParentId] [varchar]  (50) NULL,
[F_Layer] [int]  NULL,
[F_SortCode] [int]  NULL,
[F_IsHead] [bit]  NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL)

ALTER TABLE [Article_Category] WITH NOCHECK ADD  CONSTRAINT [PK_Article_Category] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
if exists (select * from sysobjects where id = OBJECT_ID('[Base_Tags]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Base_Tags]

CREATE TABLE [Base_Tags] (
[T_TagId] [varchar]  (50) NOT NULL,
[T_Tag] [varchar]  (50) NULL)

ALTER TABLE [Base_Tags] WITH NOCHECK ADD  CONSTRAINT [PK_Base_Tags] PRIMARY KEY  NONCLUSTERED ( [T_TagId] )
if exists (select * from sysobjects where id = OBJECT_ID('[DingTalk_AppConfig]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [DingTalk_AppConfig]

CREATE TABLE [DingTalk_AppConfig] (
[AppCode] [varchar]  (50) NOT NULL,
[AppName] [varchar]  (50) NULL,
[AgentId] [varchar]  (50) NULL,
[AppId] [varchar]  (50) NULL,
[AppKey] [varchar]  (50) NULL,
[AppSecret] [varchar]  (50) NULL,
[Access_Token] [varchar]  (50) NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [DingTalk_AppConfig] WITH NOCHECK ADD  CONSTRAINT [PK_DingTalk_AppConfig] PRIMARY KEY  NONCLUSTERED ( [AppCode] )
if exists (select * from sysobjects where id = OBJECT_ID('[DingTalk_CorpConfig]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [DingTalk_CorpConfig]

CREATE TABLE [DingTalk_CorpConfig] (
[uuId] [int]  NOT NULL,
[CorpId] [varchar]  (100) NULL,
[CorpSecret] [varchar]  (100) NULL,
[AppName] [varchar]  (100) NULL,
[HeadPic] [varchar]  (100) NULL,
[ApiUrl] [varchar]  (100) NULL,
[AppId] [varchar]  (100) NULL,
[AgentId] [varchar]  (100) NOT NULL,
[AppKey] [varchar]  (100) NULL,
[AppSecret] [varchar]  (100) NULL,
[Access_Token] [varchar]  (100) NULL,
[Status] [int]  NULL,
[Encoding] [varchar]  (100) NULL,
[Remark] [varchar]  (100) NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [DingTalk_CorpConfig] WITH NOCHECK ADD  CONSTRAINT [PK_DingTalk_CorpConfig] PRIMARY KEY  NONCLUSTERED ( [uuId] )
if exists (select * from sysobjects where id = OBJECT_ID('[DingTalk_Department]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [DingTalk_Department]

CREATE TABLE [DingTalk_Department] (
[Id] [varchar]  (50) NOT NULL,
[Name] [varchar]  (50) NULL,
[Order] [varchar]  (50) NULL,
[ParentId] [varchar]  (50) NULL,
[CreateDeptGroup] [bit]  NULL,
[AutoAddUser] [bit]  NULL,
[DeptHiding] [bit]  NULL,
[DeptPermits] [nvarchar]  (500) NULL,
[UserPermits] [nvarchar]  (500) NULL,
[OuterDept] [bit]  NULL,
[OuterPermitDepts] [nvarchar]  (500) NULL,
[OuterPermitUsers] [nvarchar]  (500) NULL,
[OrgDeptOwner] [varchar]  (50) NULL,
[DeptManagerUseridList] [nvarchar]  (500) NULL,
[SourceIdentifier] [varchar]  (50) NULL,
[GroupContainSubDept] [bit]  NULL,
[UpdateTime] [datetime]  NULL)

ALTER TABLE [DingTalk_Department] WITH NOCHECK ADD  CONSTRAINT [PK_DingTalk_Department] PRIMARY KEY  NONCLUSTERED ( [Id] )
if exists (select * from sysobjects where id = OBJECT_ID('[DingTalk_ProcessInstanceList]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [DingTalk_ProcessInstanceList]

CREATE TABLE [DingTalk_ProcessInstanceList] (
[uuId] [varchar]  (50) NOT NULL,
[ProcessCode] [varchar]  (50) NULL,
[Title] [varchar]  (50) NULL,
[Approvers] [nvarchar]  (255) NULL,
[CreateTime2] [datetime]  NULL,
[FinishTime] [datetime]  NULL,
[OriginatorUserId] [nvarchar]  (255) NULL,
[OriginatorDeptId] [nvarchar]  (255) NULL,
[Status] [varchar]  (50) NULL,
[CcUserids] [nvarchar]  (255) NULL,
[CcPosition] [varchar]  (50) NULL,
[Result] [varchar]  (50) NULL,
[BusinessId] [nvarchar]  (255) NULL,
[OriginatorDeptName] [nvarchar]  (255) NULL,
[BizAction] [nvarchar]  (255) NULL,
[Tasks] [nvarchar]  (500) NULL,
[FormComponentValues] [ntext]  NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [DingTalk_ProcessInstanceList] WITH NOCHECK ADD  CONSTRAINT [PK_DingTalk_ProcessInstanceList] PRIMARY KEY  NONCLUSTERED ( [uuId] )
if exists (select * from sysobjects where id = OBJECT_ID('[DingTalk_User]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [DingTalk_User]

CREATE TABLE [DingTalk_User] (
[UserId] [varchar]  (50) NOT NULL,
[OpenId] [varchar]  (50) NULL,
[UserName] [varchar]  (50) NULL,
[Active] [bit]  NULL,
[IsAdmin] [bit]  NULL,
[IsBoss] [bit]  NULL,
[Unionid] [varchar]  (100) NULL,
[IsLeaderInDepts] [bit]  NULL,
[IsLeader] [bit]  NULL,
[IsHide] [bit]  NULL,
[Department] [varchar]  (50) NULL,
[Position] [varchar]  (50) NULL,
[Avatar] [varchar]  (100) NULL,
[HiredDate] [varchar]  (50) NULL,
[JobNumber] [varchar]  (50) NULL,
[IsSenior] [bit]  NULL,
[Email] [varchar]  (50) NULL,
[Mobile] [varchar]  (50) NULL,
[OrganizeId] [varchar]  (50) NULL,
[RoleId] [varchar]  (50) NULL,
[SysUserId] [varchar]  (50) NULL,
[UpdateTime] [datetime]  NULL)

ALTER TABLE [DingTalk_User] WITH NOCHECK ADD  CONSTRAINT [PK_DingTalk_User] PRIMARY KEY  NONCLUSTERED ( [UserId] )
if exists (select * from sysobjects where id = OBJECT_ID('[Message_ShortMsg]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Message_ShortMsg]

CREATE TABLE [Message_ShortMsg] (
[uuid] [varchar]  (50) NOT NULL,
[aliCode] [varchar]  (50) NULL,
[aliMessage] [varchar]  (50) NULL,
[aliSendStatus] [int]  NULL,
[aliContent] [varchar]  (255) NULL,
[aliSendDate] [datetime]  NULL,
[aliReceiveDate] [datetime]  NULL,
[phoneNumber] [varchar]  (20) NULL,
[signName] [varchar]  (50) NULL,
[templateCode] [varchar]  (50) NULL,
[templateParam] [varchar]  (255) NULL,
[creator] [varchar]  (50) NULL,
[creatorId] [varchar]  (50) NULL,
[createTime] [datetime]  NULL,
[modifier] [varchar]  (50) NULL,
[modifierId] [varchar]  (50) NULL,
[modifyTime] [datetime]  NULL,
[deleterId] [varchar]  (50) NULL,
[deleteTime] [datetime]  NULL)

ALTER TABLE [Message_ShortMsg] WITH NOCHECK ADD  CONSTRAINT [PK_Message_ShortMsg] PRIMARY KEY  NONCLUSTERED ( [uuid] )
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_Area]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_Area]

CREATE TABLE [Sys_Area] (
[F_Id] [varchar]  (50) NOT NULL,
[F_ParentId] [varchar]  (50) NULL,
[F_Layers] [int]  NULL,
[F_EnCode] [varchar]  (50) NULL,
[F_FullName] [varchar]  (50) NULL,
[F_SimpleSpelling] [varchar]  (50) NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (50) NULL)

ALTER TABLE [Sys_Area] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_Area] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'120100',N'120000',2,N'120100',N'天津市',N'tjs',120100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'130100',N'130000',2,N'130100',N'石家庄市',N'sjzs',130100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'130200',N'130000',2,N'130200',N'唐山市',N'tss',130200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'130300',N'130000',2,N'130300',N'秦皇岛市',N'qhds',130300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'130400',N'130000',2,N'130400',N'邯郸市',N'hds',130400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'130500',N'130000',2,N'130500',N'邢台市',N'xts',130500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'130600',N'130000',2,N'130600',N'保定市',N'bds',130600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'130700',N'130000',2,N'130700',N'张家口市',N'zjks',130700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'130800',N'130000',2,N'130800',N'承德市',N'cds',130800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'130900',N'130000',2,N'130900',N'沧州市',N'czs',130900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'131000',N'130000',2,N'131000',N'廊坊市',N'lfs',131000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'131100',N'130000',2,N'131100',N'衡水市',N'hss',131100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'140100',N'140000',2,N'140100',N'太原市',N'tys',140100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'140200',N'140000',2,N'140200',N'大同市',N'dts',140200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'140300',N'140000',2,N'140300',N'阳泉市',N'yqs',140300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'140400',N'140000',2,N'140400',N'长治市',N'czs',140400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'140500',N'140000',2,N'140500',N'晋城市',N'jcs',140500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'140600',N'140000',2,N'140600',N'朔州市',N'szs',140600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'140700',N'140000',2,N'140700',N'晋中市',N'jzs',140700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'140800',N'140000',2,N'140800',N'运城市',N'ycs',140800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'140900',N'140000',2,N'140900',N'忻州市',N'xzs',140900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'141000',N'140000',2,N'141000',N'临汾市',N'lfs',141000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'141100',N'140000',2,N'141100',N'吕梁市',N'lls',141100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'150100',N'150000',2,N'150100',N'呼和浩特市',N'hhhts',150100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'150200',N'150000',2,N'150200',N'包头市',N'bts',150200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'150300',N'150000',2,N'150300',N'乌海市',N'whs',150300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'150400',N'150000',2,N'150400',N'赤峰市',N'cfs',150400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'150500',N'150000',2,N'150500',N'通辽市',N'tls',150500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'150600',N'150000',2,N'150600',N'鄂尔多斯市',N'eedss',150600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'150700',N'150000',2,N'150700',N'呼伦贝尔市',N'hlbes',150700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'150800',N'150000',2,N'150800',N'巴彦淖尔市',N'bynes',150800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'340400',N'340000',2,N'340400',N'淮南市',N'hns',340400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'340500',N'340000',2,N'340500',N'马鞍山市',N'mass',340500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'340600',N'340000',2,N'340600',N'淮北市',N'hbs',340600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'340700',N'340000',2,N'340700',N'铜陵市',N'tls',340700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'340800',N'340000',2,N'340800',N'安庆市',N'aqs',340800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'341000',N'340000',2,N'341000',N'黄山市',N'hss',341000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'341100',N'340000',2,N'341100',N'滁州市',N'czs',341100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'341200',N'340000',2,N'341200',N'阜阳市',N'fys',341200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'341300',N'340000',2,N'341300',N'宿州市',N'szs',341300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'341500',N'340000',2,N'341500',N'六安市',N'las',341500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'341600',N'340000',2,N'341600',N'亳州市',N'bzs',341600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'341700',N'340000',2,N'341700',N'池州市',N'czs',341700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'341800',N'340000',2,N'341800',N'宣城市',N'xcs',341800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'350100',N'350000',2,N'350100',N'福州市',N'fzs',350100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'350200',N'350000',2,N'350200',N'厦门市',N'xms',350200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'350300',N'350000',2,N'350300',N'莆田市',N'pts',350300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'350400',N'350000',2,N'350400',N'三明市',N'sms',350400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'350500',N'350000',2,N'350500',N'泉州市',N'qzs',350500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'350600',N'350000',2,N'350600',N'漳州市',N'zzs',350600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'350700',N'350000',2,N'350700',N'南平市',N'nps',350700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'350800',N'350000',2,N'350800',N'龙岩市',N'lys',350800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'350900',N'350000',2,N'350900',N'宁德市',N'nds',350900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'360100',N'360000',2,N'360100',N'南昌市',N'ncs',360100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'360200',N'360000',2,N'360200',N'景德镇市',N'jdzs',360200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'360300',N'360000',2,N'360300',N'萍乡市',N'pxs',360300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'360400',N'360000',2,N'360400',N'九江市',N'jjs',360400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'360500',N'360000',2,N'360500',N'新余市',N'xys',360500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'360600',N'360000',2,N'360600',N'鹰潭市',N'yts',360600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'360700',N'360000',2,N'360700',N'赣州市',N'gzs',360700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'360800',N'360000',2,N'360800',N'吉安市',N'jas',360800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'360900',N'360000',2,N'360900',N'宜春市',N'ycs',360900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'361000',N'360000',2,N'361000',N'抚州市',N'fzs',361000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'361100',N'360000',2,N'361100',N'上饶市',N'srs',361100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'370100',N'370000',2,N'370100',N'济南市',N'jns',370100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'370200',N'370000',2,N'370200',N'青岛市',N'qds',370200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'370300',N'370000',2,N'370300',N'淄博市',N'zbs',370300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'370400',N'370000',2,N'370400',N'枣庄市',N'zzs',370400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'370500',N'370000',2,N'370500',N'东营市',N'dys',370500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'370600',N'370000',2,N'370600',N'烟台市',N'yts',370600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'370700',N'370000',2,N'370700',N'潍坊市',N'wfs',370700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'370800',N'370000',2,N'370800',N'济宁市',N'jns',370800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'370900',N'370000',2,N'370900',N'泰安市',N'tas',370900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'371000',N'370000',2,N'371000',N'威海市',N'whs',371000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'371100',N'370000',2,N'371100',N'日照市',N'rzs',371100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'371200',N'370000',2,N'371200',N'莱芜市',N'lws',371200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'371300',N'370000',2,N'371300',N'临沂市',N'lys',371300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'371400',N'370000',2,N'371400',N'德州市',N'dzs',371400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'371500',N'370000',2,N'371500',N'聊城市',N'lcs',371500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'371600',N'370000',2,N'371600',N'滨州市',N'bzs',371600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'371700',N'370000',2,N'371700',N'菏泽市',N'hzs',371700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410100',N'410000',2,N'410100',N'郑州市',N'zzs',410100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410200',N'410000',2,N'410200',N'开封市',N'kfs',410200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410300',N'410000',2,N'410300',N'洛阳市',N'lys',410300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410400',N'410000',2,N'410400',N'平顶山市',N'pdss',410400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410500',N'410000',2,N'410500',N'安阳市',N'ays',410500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410600',N'410000',2,N'410600',N'鹤壁市',N'hbs',410600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410700',N'410000',2,N'410700',N'新乡市',N'xxs',410700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410800',N'410000',2,N'410800',N'焦作市',N'jzs',410800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410881',N'410000',2,N'410881',N'济源市',N'jys',410881,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410900',N'410000',2,N'410900',N'濮阳市',N'pys',410900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'411000',N'410000',2,N'411000',N'许昌市',N'xcs',411000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'411100',N'410000',2,N'411100',N'漯河市',N'lhs',411100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'411200',N'410000',2,N'411200',N'三门峡市',N'smxs',411200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'411300',N'410000',2,N'411300',N'南阳市',N'nys',411300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'411400',N'410000',2,N'411400',N'商丘市',N'sqs',411400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'411500',N'410000',2,N'411500',N'信阳市',N'xys',411500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'411600',N'410000',2,N'411600',N'周口市',N'zks',411600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'152200',N'150000',2,N'152200',N'兴安盟',N'xam',152200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'152500',N'150000',2,N'152500',N'锡林郭勒盟',N'xlglm',152500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'152900',N'150000',2,N'152900',N'阿拉善盟',N'alsm',152900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'210100',N'210000',2,N'210100',N'沈阳市',N'sys',210100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'210200',N'210000',2,N'210200',N'大连市',N'dls',210200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'210300',N'210000',2,N'210300',N'鞍山市',N'ass',210300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'210400',N'210000',2,N'210400',N'抚顺市',N'fss',210400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'210500',N'210000',2,N'210500',N'本溪市',N'bxs',210500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'210600',N'210000',2,N'210600',N'丹东市',N'dds',210600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'210700',N'210000',2,N'210700',N'锦州市',N'jzs',210700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'210800',N'210000',2,N'210800',N'营口市',N'yks',210800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'210900',N'210000',2,N'210900',N'阜新市',N'fxs',210900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'211000',N'210000',2,N'211000',N'辽阳市',N'lys',211000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'211100',N'210000',2,N'211100',N'盘锦市',N'pjs',211100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'211200',N'210000',2,N'211200',N'铁岭市',N'tls',211200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'211300',N'210000',2,N'211300',N'朝阳市',N'zys',211300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'211400',N'210000',2,N'211400',N'葫芦岛市',N'hlds',211400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'220100',N'220000',2,N'220100',N'长春市',N'zcs',220100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'220200',N'220000',2,N'220200',N'吉林市',N'jls',220200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'220300',N'220000',2,N'220300',N'四平市',N'sps',220300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'220400',N'220000',2,N'220400',N'辽源市',N'lys',220400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'220500',N'220000',2,N'220500',N'通化市',N'ths',220500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'220600',N'220000',2,N'220600',N'白山市',N'bss',220600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'220700',N'220000',2,N'220700',N'松原市',N'sys',220700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'220800',N'220000',2,N'220800',N'白城市',N'bcs',220800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'222400',N'220000',2,N'222400',N'延边朝鲜族自治州',N'ybzxzzzz',222400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'230100',N'230000',2,N'230100',N'哈尔滨市',N'hebs',230100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'230200',N'230000',2,N'230200',N'齐齐哈尔市',N'qqhes',230200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'230300',N'230000',2,N'230300',N'鸡西市',N'jxs',230300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'230400',N'230000',2,N'230400',N'鹤岗市',N'hgs',230400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'230500',N'230000',2,N'230500',N'双鸭山市',N'syss',230500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'230600',N'230000',2,N'230600',N'大庆市',N'dqs',230600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'230700',N'230000',2,N'230700',N'伊春市',N'ycs',230700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'230800',N'230000',2,N'230800',N'佳木斯市',N'jmss',230800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'230900',N'230000',2,N'230900',N'七台河市',N'qths',230900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'231000',N'230000',2,N'231000',N'牡丹江市',N'mdjs',231000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'231100',N'230000',2,N'231100',N'黑河市',N'hhs',231100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'231200',N'230000',2,N'231200',N'绥化市',N'shs',231200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'232700',N'230000',2,N'232700',N'大兴安岭地区',N'dxaldq',232700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'310100',N'310000',2,N'310100',N'上海市',N'shs',310100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'320100',N'320000',2,N'320100',N'南京市',N'njs',320100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'320200',N'320000',2,N'320200',N'无锡市',N'wxs',320200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'320300',N'320000',2,N'320300',N'徐州市',N'xzs',320300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'320400',N'320000',2,N'320400',N'常州市',N'czs',320400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'320500',N'320000',2,N'320500',N'苏州市',N'szs',320500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'320600',N'320000',2,N'320600',N'南通市',N'nts',320600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'320700',N'320000',2,N'320700',N'连云港市',N'lygs',320700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'320800',N'320000',2,N'320800',N'淮安市',N'has',320800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'320900',N'320000',2,N'320900',N'盐城市',N'ycs',320900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'321000',N'320000',2,N'321000',N'扬州市',N'yzs',321000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'321100',N'320000',2,N'321100',N'镇江市',N'zjs',321100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'321200',N'320000',2,N'321200',N'泰州市',N'tzs',321200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'321300',N'320000',2,N'321300',N'宿迁市',N'sqs',321300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'330100',N'330000',2,N'330100',N'杭州市',N'hzs',330100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'330200',N'330000',2,N'330200',N'宁波市',N'nbs',330200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'330300',N'330000',2,N'330300',N'温州市',N'wzs',330300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'330400',N'330000',2,N'330400',N'嘉兴市',N'jxs',330400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'330500',N'330000',2,N'330500',N'湖州市',N'hzs',330500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'330600',N'330000',2,N'330600',N'绍兴市',N'sxs',330600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'330700',N'330000',2,N'330700',N'金华市',N'jhs',330700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'330800',N'330000',2,N'330800',N'衢州市',N'qzs',330800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'330900',N'330000',2,N'330900',N'舟山市',N'zss',330900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'331000',N'330000',2,N'331000',N'台州市',N'tzs',331000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'331100',N'330000',2,N'331100',N'丽水市',N'lss',331100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'340100',N'340000',2,N'340100',N'合肥市',N'hfs',340100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'340200',N'340000',2,N'340200',N'芜湖市',N'whs',340200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'420100',N'420000',2,N'420100',N'武汉市',N'whs',420100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'420200',N'420000',2,N'420200',N'黄石市',N'hss',420200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'420300',N'420000',2,N'420300',N'十堰市',N'sys',420300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'420500',N'420000',2,N'420500',N'宜昌市',N'ycs',420500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'420600',N'420000',2,N'420600',N'襄阳市',N'xys',420600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'420700',N'420000',2,N'420700',N'鄂州市',N'ezs',420700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'420800',N'420000',2,N'420800',N'荆门市',N'jms',420800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'420900',N'420000',2,N'420900',N'孝感市',N'xgs',420900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'421000',N'420000',2,N'421000',N'荆州市',N'jzs',421000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'421100',N'420000',2,N'421100',N'黄冈市',N'hgs',421100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'421200',N'420000',2,N'421200',N'咸宁市',N'xns',421200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'421300',N'420000',2,N'421300',N'随州市',N'szs',421300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'422800',N'420000',2,N'422800',N'恩施土家族苗族自治州',N'estjzmzzzz',422800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'430100',N'430000',2,N'430100',N'长沙市',N'zss',430100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'430200',N'430000',2,N'430200',N'株洲市',N'zzs',430200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'430300',N'430000',2,N'430300',N'湘潭市',N'xts',430300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'430400',N'430000',2,N'430400',N'衡阳市',N'hys',430400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'430500',N'430000',2,N'430500',N'邵阳市',N'sys',430500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'430600',N'430000',2,N'430600',N'岳阳市',N'yys',430600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'430700',N'430000',2,N'430700',N'常德市',N'cds',430700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'430800',N'430000',2,N'430800',N'张家界市',N'zjjs',430800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'430900',N'430000',2,N'430900',N'益阳市',N'yys',430900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'431000',N'430000',2,N'431000',N'郴州市',N'czs',431000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'431100',N'430000',2,N'431100',N'永州市',N'yzs',431100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'431200',N'430000',2,N'431200',N'怀化市',N'hhs',431200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'431300',N'430000',2,N'431300',N'娄底市',N'lds',431300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'433100',N'430000',2,N'433100',N'湘西土家族苗族自治州',N'xxtjzmzzzz',433100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'440100',N'440000',2,N'440100',N'广州市',N'gzs',440100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'440200',N'440000',2,N'440200',N'韶关市',N'sgs',440200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'440300',N'440000',2,N'440300',N'深圳市',N'szs',440300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'440400',N'440000',2,N'440400',N'珠海市',N'zhs',440400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'440500',N'440000',2,N'440500',N'汕头市',N'sts',440500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'440600',N'440000',2,N'440600',N'佛山市',N'fss',440600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'440700',N'440000',2,N'440700',N'江门市',N'jms',440700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'440800',N'440000',2,N'440800',N'湛江市',N'zjs',440800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'440900',N'440000',2,N'440900',N'茂名市',N'mms',440900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'441200',N'440000',2,N'441200',N'肇庆市',N'zqs',441200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'441300',N'440000',2,N'441300',N'惠州市',N'hzs',441300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'441400',N'440000',2,N'441400',N'梅州市',N'mzs',441400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'441500',N'440000',2,N'441500',N'汕尾市',N'sws',441500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'441600',N'440000',2,N'441600',N'河源市',N'hys',441600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'441700',N'440000',2,N'441700',N'阳江市',N'yjs',441700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'441800',N'440000',2,N'441800',N'清远市',N'qys',441800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'445100',N'440000',2,N'445100',N'潮州市',N'czs',445100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'445200',N'440000',2,N'445200',N'揭阳市',N'jys',445200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'445300',N'440000',2,N'445300',N'云浮市',N'yfs',445300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'450100',N'450000',2,N'450100',N'南宁市',N'nns',450100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'450200',N'450000',2,N'450200',N'柳州市',N'lzs',450200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'450300',N'450000',2,N'450300',N'桂林市',N'gls',450300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'450400',N'450000',2,N'450400',N'梧州市',N'wzs',450400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'450500',N'450000',2,N'450500',N'北海市',N'bhs',450500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'450600',N'450000',2,N'450600',N'防城港市',N'fcgs',450600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'450700',N'450000',2,N'450700',N'钦州市',N'qzs',450700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'450800',N'450000',2,N'450800',N'贵港市',N'ggs',450800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'450900',N'450000',2,N'450900',N'玉林市',N'yls',450900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'451000',N'450000',2,N'451000',N'百色市',N'bss',451000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'451100',N'450000',2,N'451100',N'贺州市',N'hzs',451100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'451200',N'450000',2,N'451200',N'河池市',N'hcs',451200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'451300',N'450000',2,N'451300',N'来宾市',N'lbs',451300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'451400',N'450000',2,N'451400',N'崇左市',N'czs',451400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'460100',N'460000',2,N'460100',N'海口市',N'hks',460100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'500100',N'500000',2,N'500100',N'重庆市',N'zqs',500100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'510100',N'510000',2,N'510100',N'成都市',N'cds',510100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'510300',N'510000',2,N'510300',N'自贡市',N'zgs',510300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'510400',N'510000',2,N'510400',N'攀枝花市',N'pzhs',510400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'510500',N'510000',2,N'510500',N'泸州市',N'lzs',510500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'510700',N'510000',2,N'510700',N'绵阳市',N'mys',510700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'510800',N'510000',2,N'510800',N'广元市',N'gys',510800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'510900',N'510000',2,N'510900',N'遂宁市',N'sns',510900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'511000',N'510000',2,N'511000',N'内江市',N'njs',511000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'511100',N'510000',2,N'511100',N'乐山市',N'yss',511100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'511300',N'510000',2,N'511300',N'南充市',N'ncs',511300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'511400',N'510000',2,N'511400',N'眉山市',N'mss',511400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'511500',N'510000',2,N'511500',N'宜宾市',N'ybs',511500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'511600',N'510000',2,N'511600',N'广安市',N'gas',511600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'511700',N'510000',2,N'511700',N'达州市',N'dzs',511700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'511800',N'510000',2,N'511800',N'雅安市',N'yas',511800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'511900',N'510000',2,N'511900',N'巴中市',N'bzs',511900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'512000',N'510000',2,N'512000',N'资阳市',N'zys',512000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'513200',N'510000',2,N'513200',N'阿坝藏族羌族自治州',N'abzzqzzzz',513200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'513300',N'510000',2,N'513300',N'甘孜藏族自治州',N'gzzzzzz',513300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'513400',N'510000',2,N'513400',N'凉山彝族自治州',N'lsyzzzz',513400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'520100',N'520000',2,N'520100',N'贵阳市',N'gys',520100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'520200',N'520000',2,N'520200',N'六盘水市',N'lpss',520200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'520300',N'520000',2,N'520300',N'遵义市',N'zys',520300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'520400',N'520000',2,N'520400',N'安顺市',N'ass',520400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'522200',N'520000',2,N'522200',N'铜仁市',N'trs',522200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'522300',N'520000',2,N'522300',N'黔西南布依族苗族自治州',N'qxnbyzmzzzz',522300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'522400',N'520000',2,N'522400',N'毕节市',N'bjs',522400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'522600',N'520000',2,N'522600',N'黔东南苗族侗族自治州',N'qdnmztzzzz',522600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'522700',N'520000',2,N'522700',N'黔南布依族苗族自治州',N'qnbyzmzzzz',522700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'530100',N'530000',2,N'530100',N'昆明市',N'kms',530100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'530300',N'530000',2,N'530300',N'曲靖市',N'qjs',530300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'530400',N'530000',2,N'530400',N'玉溪市',N'yxs',530400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'530500',N'530000',2,N'530500',N'保山市',N'bss',530500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'530600',N'530000',2,N'530600',N'昭通市',N'zts',530600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'530700',N'530000',2,N'530700',N'丽江市',N'ljs',530700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'530800',N'530000',2,N'530800',N'普洱市',N'pes',530800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'530900',N'530000',2,N'530900',N'临沧市',N'lcs',530900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'532300',N'530000',2,N'532300',N'楚雄彝族自治州',N'cxyzzzz',532300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'532500',N'530000',2,N'532500',N'红河哈尼族彝族自治州',N'hhhnzyzzzz',532500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'532600',N'530000',2,N'532600',N'文山壮族苗族自治州',N'wszzmzzzz',532600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'532800',N'530000',2,N'532800',N'西双版纳傣族自治州',N'xsbndzzzz',532800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'532900',N'530000',2,N'532900',N'大理白族自治州',N'dlbzzzz',532900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'533100',N'530000',2,N'533100',N'德宏傣族景颇族自治州',N'dhdzjpzzzz',533100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'533300',N'530000',2,N'533300',N'怒江傈僳族自治州',N'njlszzzz',533300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'533400',N'530000',2,N'533400',N'迪庆藏族自治州',N'dqzzzzz',533400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'540100',N'540000',2,N'540100',N'拉萨市',N'lss',540100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'542100',N'540000',2,N'542100',N'昌都地区',N'cddq',542100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'542200',N'540000',2,N'542200',N'山南地区',N'sndq',542200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'542300',N'540000',2,N'542300',N'日喀则地区',N'rkzdq',542300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'542400',N'540000',2,N'542400',N'那曲地区',N'nqdq',542400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'542500',N'540000',2,N'542500',N'阿里地区',N'aldq',542500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'542600',N'540000',2,N'542600',N'林芝地区',N'lzdq',542600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'610100',N'610000',2,N'610100',N'西安市',N'xas',610100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'610200',N'610000',2,N'610200',N'铜川市',N'tcs',610200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'610300',N'610000',2,N'610300',N'宝鸡市',N'bjs',610300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'610400',N'610000',2,N'610400',N'咸阳市',N'xys',610400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'610500',N'610000',2,N'610500',N'渭南市',N'wns',610500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'610600',N'610000',2,N'610600',N'延安市',N'yas',610600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'610700',N'610000',2,N'610700',N'汉中市',N'hzs',610700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'610800',N'610000',2,N'610800',N'榆林市',N'yls',610800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'610900',N'610000',2,N'610900',N'安康市',N'aks',610900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'611000',N'610000',2,N'611000',N'商洛市',N'sls',611000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'620100',N'620000',2,N'620100',N'兰州市',N'lzs',620100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'620200',N'620000',2,N'620200',N'嘉峪关市',N'jygs',620200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'620300',N'620000',2,N'620300',N'金昌市',N'jcs',620300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'620400',N'620000',2,N'620400',N'白银市',N'bys',620400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'620500',N'620000',2,N'620500',N'天水市',N'tss',620500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'110000',N'0',1,N'110000',N'北京',N'bj',110000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'120000',N'0',1,N'120000',N'天津',N'tj',120000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'130000',N'0',1,N'130000',N'河北省',N'hbs',130000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'140000',N'0',1,N'140000',N'山西省',N'sxs',140000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'150000',N'0',1,N'150000',N'内蒙古自治区',N'nmgzzq',150000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'210000',N'0',1,N'210000',N'辽宁省',N'lns',210000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'220000',N'0',1,N'220000',N'吉林省',N'jls',220000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'230000',N'0',1,N'230000',N'黑龙江省',N'hljs',230000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'310000',N'0',1,N'310000',N'上海',N'sh',310000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'320000',N'0',1,N'320000',N'江苏省',N'jss',320000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'330000',N'0',1,N'330000',N'浙江省',N'zjs',330000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'340000',N'0',1,N'340000',N'安徽省',N'ahs',340000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'350000',N'0',1,N'350000',N'福建省',N'fjs',350000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'360000',N'0',1,N'360000',N'江西省',N'jxs',360000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'370000',N'0',1,N'370000',N'山东省',N'sds',370000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410000',N'0',1,N'410000',N'河南省',N'hns',410000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'420000',N'0',1,N'420000',N'湖北省',N'hbs',420000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'430000',N'0',1,N'430000',N'湖南省',N'hns',430000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'440000',N'0',1,N'440000',N'广东省',N'gds',440000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'450000',N'0',1,N'450000',N'广西壮族自治区',N'gxzzzzq',450000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'460000',N'0',1,N'460000',N'海南省',N'hns',460000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'500000',N'0',1,N'500000',N'重庆',N'zq',500000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'510000',N'0',1,N'510000',N'四川省',N'scs',510000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'520000',N'0',1,N'520000',N'贵州省',N'gzs',520000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'530000',N'0',1,N'530000',N'云南省',N'yns',530000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'540000',N'0',1,N'540000',N'西藏自治区',N'xzzzq',540000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'610000',N'0',1,N'610000',N'陕西省',N'sxs',610000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'620000',N'0',1,N'620000',N'甘肃省',N'gss',620000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'630000',N'0',1,N'630000',N'青海省',N'qhs',630000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'640000',N'0',1,N'640000',N'宁夏回族自治区',N'nxhzzzq',640000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'650000',N'0',1,N'650000',N'新疆维吾尔自治区',N'xjwwezzq',650000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'810000',N'0',1,N'810000',N'香港特别行政区',N'xgtbxzq',810000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'820000',N'0',1,N'820000',N'澳门特别行政区',N'amtbxzq',820000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'830000',N'0',1,N'830000',N'台湾省',N'tws',830000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'150900',N'150000',2,N'150900',N'乌兰察布市',N'wlcbs',150900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'340300',N'340000',2,N'340300',N'蚌埠市',N'bbs',340300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'411700',N'410000',2,N'411700',N'驻马店市',N'zmds',411700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'510600',N'510000',2,N'510600',N'德阳市',N'dys',510600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'620600',N'620000',2,N'620600',N'武威市',N'wws',620600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'620700',N'620000',2,N'620700',N'张掖市',N'zys',620700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'620800',N'620000',2,N'620800',N'平凉市',N'pls',620800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'620900',N'620000',2,N'620900',N'酒泉市',N'jqs',620900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'621000',N'620000',2,N'621000',N'庆阳市',N'qys',621000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'621100',N'620000',2,N'621100',N'定西市',N'dxs',621100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'621200',N'620000',2,N'621200',N'陇南市',N'lns',621200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'622900',N'620000',2,N'622900',N'临夏回族自治州',N'lxhzzzz',622900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'623000',N'620000',2,N'623000',N'甘南藏族自治州',N'gnzzzzz',623000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'630100',N'630000',2,N'630100',N'西宁市',N'xns',630100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'632100',N'630000',2,N'632100',N'海东市',N'hds',632100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'632200',N'630000',2,N'632200',N'海北藏族自治州',N'hbzzzzz',632200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'632300',N'630000',2,N'632300',N'黄南藏族自治州',N'hnzzzzz',632300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'632500',N'630000',2,N'632500',N'海南藏族自治州',N'hnzzzzz',632500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'632600',N'630000',2,N'632600',N'果洛藏族自治州',N'glzzzzz',632600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'632700',N'630000',2,N'632700',N'玉树藏族自治州',N'yszzzzz',632700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'632800',N'630000',2,N'632800',N'海西蒙古族藏族自治州',N'hxmgzzzzzz',632800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'640100',N'640000',2,N'640100',N'银川市',N'ycs',640100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'640200',N'640000',2,N'640200',N'石嘴山市',N'szss',640200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'640300',N'640000',2,N'640300',N'吴忠市',N'wzs',640300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'640400',N'640000',2,N'640400',N'固原市',N'gys',640400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'640500',N'640000',2,N'640500',N'中卫市',N'zws',640500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'650100',N'650000',2,N'650100',N'乌鲁木齐市',N'wlmqs',650100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'650200',N'650000',2,N'650200',N'克拉玛依市',N'klmys',650200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'652100',N'650000',2,N'652100',N'吐鲁番地区',N'tlfdq',652100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'652200',N'650000',2,N'652200',N'哈密地区',N'hmdq',652200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'652300',N'650000',2,N'652300',N'昌吉回族自治州',N'cjhzzzz',652300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'652700',N'650000',2,N'652700',N'博尔塔拉蒙古自治州',N'betlmgzzz',652700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'652800',N'650000',2,N'652800',N'巴音郭楞蒙古自治州',N'byglmgzzz',652800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'652900',N'650000',2,N'652900',N'阿克苏地区',N'aksdq',652900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'653000',N'650000',2,N'653000',N'克孜勒苏柯尔克孜自治州',N'kzlskekzzzz',653000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'653100',N'650000',2,N'653100',N'喀什地区',N'ksdq',653100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'653200',N'650000',2,N'653200',N'和田地区',N'htdq',653200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'654000',N'650000',2,N'654000',N'伊犁哈萨克自治州',N'ylhskzzz',654000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'654200',N'650000',2,N'654200',N'塔城地区',N'tcdq',654200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'654300',N'650000',2,N'654300',N'阿勒泰地区',N'altdq',654300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'810100',N'810000',2,N'810100',N'香港岛',N'xgd',810100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'810200',N'810000',2,N'810200',N'九龙',N'jl',810200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'810300',N'810000',2,N'810300',N'新界',N'xj',810300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'820100',N'820000',2,N'820100',N'澳门半岛',N'ambd',820100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'820300',N'820000',2,N'820300',N'路环岛',N'lhd',820300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'820400',N'820000',2,N'820400',N'凼仔岛',N'dzd',820400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'830100',N'830000',2,N'830100',N'台北市',N'tbs',830100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'830200',N'830000',2,N'830200',N'高雄市',N'gxs',830200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'830300',N'830000',2,N'830300',N'台南市',N'tns',830300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'830400',N'830000',2,N'830400',N'台中市',N'tzs',830400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'830500',N'830000',2,N'830500',N'南投县',N'ntx',830500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'830600',N'830000',2,N'830600',N'基隆市',N'jls',830600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'830700',N'830000',2,N'830700',N'新竹市',N'xzs',830700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'830800',N'830000',2,N'830800',N'嘉义市',N'jys',830800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'830900',N'830000',2,N'830900',N'宜兰县',N'ylx',830900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'831000',N'830000',2,N'831000',N'新竹县',N'xzx',831000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'831100',N'830000',2,N'831100',N'桃园县',N'tyx',831100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'831200',N'830000',2,N'831200',N'苗栗县',N'mlx',831200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'831300',N'830000',2,N'831300',N'彰化县',N'zhx',831300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'831400',N'830000',2,N'831400',N'嘉义县',N'jyx',831400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'831500',N'830000',2,N'831500',N'云林县',N'ylx',831500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'831600',N'830000',2,N'831600',N'屏东县',N'pdx',831600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'831700',N'830000',2,N'831700',N'台东县',N'tdx',831700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'831800',N'830000',2,N'831800',N'花莲县',N'hlx',831800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'831900',N'830000',2,N'831900',N'澎湖县',N'phx',831900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'832000',N'830000',2,N'832000',N'新北市',N'xbs',832000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'832100',N'830000',2,N'832100',N'台中县',N'tzx',832100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'832200',N'830000',2,N'832200',N'连江县',N'ljx',832200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'110100',N'110000',2,N'110100',N'北京市',N'bjs',110100,0,1,N'2016-07-20 00:00:00')
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_DbBackup]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_DbBackup]

CREATE TABLE [Sys_DbBackup] (
[F_Id] [varchar]  (50) NOT NULL,
[F_BackupType] [varchar]  (50) NULL,
[F_DbName] [varchar]  (50) NULL,
[F_FileName] [varchar]  (50) NULL,
[F_FileSize] [varchar]  (50) NULL,
[F_FilePath] [varchar]  (500) NULL,
[F_BackupTime] [datetime]  NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (500) NULL)

ALTER TABLE [Sys_DbBackup] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_DbBackup] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_DbBackup] ([F_Id],[F_BackupType],[F_DbName],[F_FileName],[F_FileSize],[F_FilePath],[F_BackupTime],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'8b3fb1ff-07ab-46bb-a12a-85e65a9a748d',N'1',N'NFineBase',N'201607190929504502.bak',N'2.81 MB',N'/Resource/DbBackup/201607190929504502.bak',N'2016-07-19 09:29:52',0,1,N'2016-07-19 09:29:52')
INSERT [Sys_DbBackup] ([F_Id],[F_BackupType],[F_DbName],[F_FileName],[F_FileSize],[F_FilePath],[F_BackupTime],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'ddbbfaf3-44b7-4e34-b0c5-c79e21aba83a',N'1',N'NFineBase',N'201607181640402083.bak',N'2.81 MB',N'/Resource/DbBackup/201607181640402083.bak',N'2016-07-18 16:40:41',0,1,N'2016-07-18 16:40:41')
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_FilterIP]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_FilterIP]

CREATE TABLE [Sys_FilterIP] (
[F_Id] [varchar]  (50) NOT NULL,
[F_Type] [bit]  NULL,
[F_StartIP] [varchar]  (50) NULL,
[F_EndIP] [varchar]  (50) NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (500) NULL)

ALTER TABLE [Sys_FilterIP] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_FilterIP] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_FilterIP] ([F_Id],[F_Type],[F_StartIP],[F_EndIP],[F_DeleteMark],[F_EnabledMark],[F_Description],[F_CreatorTime]) VALUES ( N'4e035f2b-a03b-49b5-a38d-1c6d211a2a04',1,N'192.168.1.1',N'192.168.1.10',0,1,N'测试',N'2016-07-18 17:51:06')
INSERT [Sys_FilterIP] ([F_Id],[F_Type],[F_StartIP],[F_EndIP],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'b3fbe66f-82cd-4f4a-ada3-61eb5a2d9eee',0,N'192.168.0.20',N'192.168.0.25',0,1,N'2016-07-18 17:52:47')
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_Items]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_Items]

CREATE TABLE [Sys_Items] (
[F_Id] [varchar]  (50) NOT NULL,
[F_ParentId] [varchar]  (50) NULL,
[F_EnCode] [varchar]  (50) NULL,
[F_FullName] [varchar]  (50) NULL,
[F_IsTree] [bit]  NULL,
[F_Layers] [int]  NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (50) NULL)

ALTER TABLE [Sys_Items] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_Items] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'0',N'Sys_Items',N'通用字典',0,1,1,0,1)
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'OrganizeCategory',N'机构分类',0,2,2,0,1)
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'RoleType',N'角色类型',0,2,3,0,1)
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'0DF5B725-5FB8-487F-B0E4-BC563A77EB04',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'DbType',N'数据库类型',0,2,4,0,1)
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'9a7079bd-0660-4549-9c2d-db5e8616619f',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'DbLogType',N'系统日志',0,16,0,1,N'2016-07-19 17:09:45')
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'AuditState',N'审核状态',0,2,6,0,1)
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'2748F35F-4EE2-417C-A907-3453146AAF67',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'Certificate',N'证件名称',0,2,7,0,1)
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'00F76465-DBBA-484A-B75C-E81DEE9313E6',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'Education',N'学历',0,2,8,0,1)
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'FA7537E2-1C64-4431-84BF-66158DD63269',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'101',N'婚姻',0,2,12,0,1)
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'8CEB2F71-026C-4FA6-9A61-378127AE7320',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'102',N'生育',0,2,13,0,1)
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'15023A4E-4856-44EB-BE71-36A106E2AA59',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'103',N'民族',0,2,14,0,1)
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'BDD797C3-2323-4868-9A63-C8CC3437AEAA',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'104',N'性别',0,2,15,0,1)
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_ItemsDetail]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_ItemsDetail]

CREATE TABLE [Sys_ItemsDetail] (
[F_Id] [varchar]  (50) NOT NULL,
[F_ItemId] [varchar]  (50) NULL,
[F_ParentId] [varchar]  (50) NULL,
[F_ItemCode] [varchar]  (50) NULL,
[F_ItemName] [varchar]  (50) NULL,
[F_SimpleSpelling] [varchar]  (500) NULL,
[F_IsDefault] [bit]  NULL,
[F_Layers] [int]  NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (50) NULL)

ALTER TABLE [Sys_ItemsDetail] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_ItemsDetail] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'B97BD7F5-B212-40C1-A1F7-DD9A2E63EEF2',N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D',N'Group',N'集团',0,1,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'2C3715AC-16F7-48FC-AB40-B0931DB1E729',N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D',N'Area',N'区域',0,2,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'D082BDB9-5C34-49BF-BD51-4E85D7BFF646',N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D',N'Company',N'公司',0,3,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'2B540AC5-6E64-4688-BB60-E0C01DFA982C',N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D',N'SubCompany',N'子公司',0,4,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'A64EBB80-6A24-48AF-A10E-B6A532C32CA6',N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D',N'Department',N'部门',0,5,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'D1F439B9-D80E-4547-9EF0-163391854AB5',N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D',N'SubDepartment',N'子部门',0,6,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'19EE595A-E775-409D-A48F-B33CF9F262C7',N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D',N'WorkGroup',N'小组',0,7,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'e5079bae-a8c0-4209-9019-6a2b4a3a7dac',N'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE',N'1',N'系统角色',0,1,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'04aba88d-f09b-46c6-bd90-a38471399b0e',N'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE',N'2',N'业务角色',0,2,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'cc6daa5c-a71c-4b2c-9a98-336bc3ee13c8',N'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE',N'3',N'其他角色',0,3,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'7a6d1bc4-3ec7-4c57-be9b-b4c97d60d5f6',N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0',N'1',N'草稿',0,1,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'ce340c73-5048-4940-b86e-e3b3d53fdb2c',N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0',N'2',N'提交',0,2,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'41053517-215d-4e11-81cd-367c0e9578d7',N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0',N'3',N'通过',0,3,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'e1979a4f-7fc1-42b9-a0e2-52d7059e8fb9',N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0',N'4',N'待审',0,4,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'63acf96d-6115-4d76-a994-438f59419aad',N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0',N'5',N'退回',0,5,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'8b7b38bf-07c5-4f71-a853-41c5add4a94e',N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0',N'6',N'完成',0,6,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'49b68663-ad01-4c43-b084-f98e3e23fee8',N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0',N'7',N'废弃',0,7,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'fa6c1873-888c-4b70-a2cc-59fccbb22078',N'0DF5B725-5FB8-487F-B0E4-BC563A77EB04',N'SqlServer',N'SqlServer',0,1,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'27e85cb8-04e7-447b-911d-dd1e97dfab83',N'0DF5B725-5FB8-487F-B0E4-BC563A77EB04',N'Oracle',N'Oracle',0,2,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'34a642b2-44d4-485f-b3fc-6cce24f68b0f',N'0DF5B725-5FB8-487F-B0E4-BC563A77EB04',N'MySql',N'MySql',0,3,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'1950efdf-8685-4341-8d2c-ac85ac7addd0',N'00F76465-DBBA-484A-B75C-E81DEE9313E6',N'1',N'小学',0,1,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'433511a9-78bd-41a0-ab25-e4d4b3423055',N'00F76465-DBBA-484A-B75C-E81DEE9313E6',N'2',N'初中',0,2,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'acb128a6-ff63-4e25-b1e8-0a336ed3ab18',N'00F76465-DBBA-484A-B75C-E81DEE9313E6',N'3',N'高中',0,3,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'a4974810-d88d-4d54-82cc-fd779875478f',N'00F76465-DBBA-484A-B75C-E81DEE9313E6',N'4',N'中专',0,4,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'486a82e3-1950-425e-b2ce-b5d98f33016a',N'00F76465-DBBA-484A-B75C-E81DEE9313E6',N'5',N'大专',0,5,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'34222d46-e0c6-446e-8150-dbefc47a1d5f',N'00F76465-DBBA-484A-B75C-E81DEE9313E6',N'6',N'本科',0,6,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'3f280e2b-92f6-466c-8cc3-d7c8ff48cc8d',N'00F76465-DBBA-484A-B75C-E81DEE9313E6',N'7',N'硕士',0,7,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'930b8de2-049f-4753-b9fd-87f484911ee4',N'00F76465-DBBA-484A-B75C-E81DEE9313E6',N'8',N'博士',0,8,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'355ad7a4-c4f8-4bd3-9c72-ff07983da0f0',N'00F76465-DBBA-484A-B75C-E81DEE9313E6',N'9',N'其他',0,9,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'5d6def0e-e2a7-48eb-b43c-cc3631f60dd7',N'BDD797C3-2323-4868-9A63-C8CC3437AEAA',N'1',N'男',0,1,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'822baf7c-abdb-4257-9b78-1f550806f544',N'BDD797C3-2323-4868-9A63-C8CC3437AEAA',N'0',N'女',0,2,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'738edf2a-d59f-4992-97ef-d847db23bcb8',N'FA7537E2-1C64-4431-84BF-66158DD63269',N'1',N'已婚',0,1,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'a7c4aba2-a891-4558-9b0a-bd7a1100a645',N'FA7537E2-1C64-4431-84BF-66158DD63269',N'2',N'未婚',0,2,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'f9609400-7caf-49af-ae3c-7671a9292fb3',N'FA7537E2-1C64-4431-84BF-66158DD63269',N'3',N'离异',0,3,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'a6f271f9-8653-4c5c-86cf-4cd00324b3c3',N'FA7537E2-1C64-4431-84BF-66158DD63269',N'4',N'丧偶',0,4,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'7c1135be-0148-43eb-ae49-62a1e16ebbe3',N'FA7537E2-1C64-4431-84BF-66158DD63269',N'5',N'其他',0,5,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'582e0b66-2ee9-4885-9f0c-3ce3ebf96e12',N'8CEB2F71-026C-4FA6-9A61-378127AE7320',N'1',N'已育',0,1,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'de2167f3-40fe-4bf7-b8cb-5b1c554bad7a',N'8CEB2F71-026C-4FA6-9A61-378127AE7320',N'2',N'未育',0,2,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'9b6a2225-6138-4cf2-9845-1bbecdf9b3ed',N'8CEB2F71-026C-4FA6-9A61-378127AE7320',N'3',N'其他',0,3,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'49300258-1227-4b85-b6a2-e948dbbe57a4',N'15023A4E-4856-44EB-BE71-36A106E2AA59',N'汉族',N'汉族',0,1,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'd69cb819-2bb3-4e1d-9917-33b9a439233d',N'2748F35F-4EE2-417C-A907-3453146AAF67',N'1',N'身份证',0,1,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'4c2f2428-2e00-4336-b9ce-5a61f24193f6',N'2748F35F-4EE2-417C-A907-3453146AAF67',N'2',N'士兵证',0,2,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'48c4e0f5-f570-4601-8946-6078762db3bf',N'2748F35F-4EE2-417C-A907-3453146AAF67',N'3',N'军官证',0,3,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'0096ad81-4317-486e-9144-a6a02999ff19',N'2748F35F-4EE2-417C-A907-3453146AAF67',N'4',N'护照',0,4,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'ace2d5e8-56d4-4c8b-8409-34bc272df404',N'2748F35F-4EE2-417C-A907-3453146AAF67',N'5',N'其它',0,5,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'795f2695-497a-4f5e-ab1d-706095c1edb9',N'9a7079bd-0660-4549-9c2d-db5e8616619f',N'Other',N'其他',0,0,0,1,N'2016-07-19 17:10:33',N'2016-07-19 18:20:09')
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'643209c8-931b-4641-9e04-b8bdd11800af',N'9a7079bd-0660-4549-9c2d-db5e8616619f',N'Login',N'登录',0,1,0,1,N'2016-07-19 17:10:39',N'2016-07-19 18:20:17')
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'3c884a03-4f34-4150-b134-966387f1de2a',N'9a7079bd-0660-4549-9c2d-db5e8616619f',N'Exit',N'退出',0,2,0,1,N'2016-07-19 17:10:49',N'2016-07-19 18:20:23')
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'ccc8e274-75da-4eb8-bed0-69008ab7c41c',N'9a7079bd-0660-4549-9c2d-db5e8616619f',N'Visit',N'访问',0,3,0,1,N'2016-07-19 17:10:55',N'2016-07-19 18:20:29')
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'e545061c-93fd-4ca2-ab29-b43db9db798b',N'9a7079bd-0660-4549-9c2d-db5e8616619f',N'Create',N'新增',0,4,0,1,N'2016-07-19 17:11:03',N'2016-07-19 18:20:35')
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'a13ccf0d-ac8f-44ac-a522-4a54edf1f0fa',N'9a7079bd-0660-4549-9c2d-db5e8616619f',N'Delete',N'删除',0,5,0,1,N'2016-07-19 17:11:09',N'2016-07-19 18:20:43')
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'392f88a8-02c2-49eb-8aed-b2acf474272a',N'9a7079bd-0660-4549-9c2d-db5e8616619f',N'Update',N'修改',0,6,0,1,N'2016-07-19 17:11:14',N'2016-07-19 18:20:49')
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'24e39617-f04e-4f6f-9209-ad71e870e7c6',N'9a7079bd-0660-4549-9c2d-db5e8616619f',N'Submit',N'提交',0,7,0,1,N'2016-07-19 17:11:19',N'2016-07-19 18:20:54')
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'7fc8fa11-4acf-409a-a771-aaf1eb81e814',N'9a7079bd-0660-4549-9c2d-db5e8616619f',N'Exception',N'异常',0,8,0,1,N'2016-07-19 17:11:25',N'2016-07-19 18:21:01')
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_Log]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_Log]

CREATE TABLE [Sys_Log] (
[F_Id] [varchar]  (50) NOT NULL,
[F_Date] [datetime]  NULL,
[F_Account] [varchar]  (50) NULL,
[F_NickName] [varchar]  (50) NULL,
[F_Type] [varchar]  (50) NULL,
[F_IPAddress] [varchar]  (50) NULL,
[F_IPAddressName] [varchar]  (50) NULL,
[F_ModuleId] [varchar]  (50) NULL,
[F_ModuleName] [varchar]  (50) NULL,
[F_Result] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL)

ALTER TABLE [Sys_Log] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_Log] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_Module]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_Module]

CREATE TABLE [Sys_Module] (
[F_Id] [varchar]  (50) NOT NULL,
[F_ParentId] [varchar]  (50) NULL,
[F_Layers] [int]  NULL,
[F_EnCode] [varchar]  (50) NULL,
[F_FullName] [varchar]  (50) NULL,
[F_Icon] [varchar]  (50) NULL,
[F_UrlAddress] [varchar]  (500) NULL,
[F_Target] [varchar]  (50) NULL,
[F_IsMenu] [bit]  NULL,
[F_IsExpand] [bit]  NULL,
[F_IsPublic] [bit]  NULL,
[F_AllowEdit] [bit]  NULL,
[F_AllowDelete] [bit]  NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (50) NULL)

ALTER TABLE [Sys_Module] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_Module] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'e72c75d0-3a69-41ad-b220-13c9a62ec788',N'73FD1267-79BA-4E23-A152-744AF73117E9',N'数据备份',N'/SystemSecurity/DbBackup/Index',N'iframe',1,0,0,0,0,1,0,1,N'2016-07-17 22:05:07',N'2016-07-20 16:15:40')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_Icon],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'462027E0-0848-41DD-BCC3-025DCAE65555',N'0',1,N'系统管理',N'fa fa-gears',N'expand',0,1,0,0,0,2,0,1,N'2016-07-22 15:46:46',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_Icon],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'73FD1267-79BA-4E23-A152-744AF73117E9',N'0',1,N'系统安全',N'fa fa-desktop',N'expand',0,1,0,0,0,3,0,1,N'2016-07-22 15:46:56',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_Icon],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',N'0',1,N'统计报表',N'fa fa-bar-chart-o',N'fa fa-bar-chart-o',N'expand',0,1,0,0,0,4,0,1,N'2016-07-22 15:47:10',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_Icon],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'9F56840F-DF92-4936-A48C-8F65A39291A2',N'0',1,N'常用示例',N'fa fa-tags',N'expand',0,1,0,0,0,5,0,1,N'2016-07-22 15:47:23',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'a3a4742d-ca39-42ec-b95a-8552a6fae579',N'73FD1267-79BA-4E23-A152-744AF73117E9',N'访问控制',N'/SystemSecurity/FilterIP/Index',N'iframe',1,0,0,0,0,2,0,1,N'2016-07-17 22:06:10',N'2016-07-20 16:16:02')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_Description],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'64A1C550-2C61-4A8C-833D-ACD0C012260F',N'462027E0-0848-41DD-BCC3-025DCAE65555',2,N'系统菜单',N'/SystemManage/Module/Index',N'iframe',1,0,0,0,0,7,0,1,N'测试',N'2016-07-27 10:50:09',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime]) VALUES ( N'38CA5A66-C993-4410-AF95-50489B22939C',N'462027E0-0848-41DD-BCC3-025DCAE65555',2,N'用户管理',N'/SystemManage/User/Index',N'iframe',1,0,0,0,0,4,0,1,N'2016-07-14 16:22:47')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime]) VALUES ( N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B',N'462027E0-0848-41DD-BCC3-025DCAE65555',2,N'机构管理',N'/SystemManage/Organize/Index',N'iframe',1,0,0,0,0,1,0,1,N'2016-07-15 22:21:04')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime]) VALUES ( N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C',N'462027E0-0848-41DD-BCC3-025DCAE65555',2,N'角色管理',N'/SystemManage/Role/Index',N'iframe',1,0,0,0,0,2,0,1,N'2016-07-14 16:22:35')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime]) VALUES ( N'337A4661-99A5-4E5E-B028-861CACAF9917',N'462027E0-0848-41DD-BCC3-025DCAE65555',2,N'区域管理',N'/SystemManage/Area/Index',N'iframe',1,0,0,0,0,5,0,1,N'2016-07-14 16:21:47')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime]) VALUES ( N'423A200B-FA5F-4B29-B7B7-A3F5474B725F',N'462027E0-0848-41DD-BCC3-025DCAE65555',2,N'数据字典',N'/SystemManage/ItemsData/Index',N'iframe',1,0,0,0,0,6,0,1,N'2016-07-15 22:26:07')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime]) VALUES ( N'F298F868-B689-4982-8C8B-9268CBF0308D',N'462027E0-0848-41DD-BCC3-025DCAE65555',2,N'岗位管理',N'/SystemManage/Duty/Index',N'iframe',1,0,0,0,0,3,0,1,N'2016-07-14 16:22:41')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime]) VALUES ( N'96EE855E-8CD2-47FC-A51D-127C131C9FB9',N'73FD1267-79BA-4E23-A152-744AF73117E9',2,N'系统日志',N'/SystemSecurity/Log/Index',N'iframe',1,0,0,0,0,3,0,1,N'2016-07-20 16:16:19')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'df9920e0-ba33-4e36-a911-ef08c6ea77ea',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',N'饼图',N'/ReportManage/Highcharts/Sample7',N'iframe',1,0,0,0,0,12,0,1,N'2016-07-20 17:13:32',N'2016-07-22 15:45:37',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_FullName],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'3A95BBC6-CB5B-4438-869F-5F7B738E2568',N'散点图',N'iframe',0,0,0,0,0,0,0)
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime]) VALUES ( N'49F61713-C1E4-420E-BEEC-0B4DBC2D7DE8',N'73FD1267-79BA-4E23-A152-744AF73117E9',2,N'服务器监控',N'/SystemSecurity/ServerMonitoring/Index',N'iframe',1,0,0,0,0,4,0,1,N'2016-07-20 16:16:38')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'F2DAD50B-95DF-48F7-8638-BA503B539143',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',2,N'折线图',N'/ReportManage/Highcharts/Sample1',N'iframe',1,0,0,0,0,1,0,1,N'2016-07-22 15:47:43',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'0EDF1DDB-CA17-4D08-AA25-914FE4E13324',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',2,N'曲线图',N'/ReportManage/Highcharts/Sample2',N'iframe',1,0,0,0,0,2,0,1,N'2016-07-22 15:45:07',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_FullName],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'AD4BC418-B66E-48C7-BC13-81590056CD15',N'气泡图',N'iframe',0,0,0,0,0,0,0)
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'C3D12056-D906-4D8B-8B9C-954942742BDE',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',2,N'面积图',N'/ReportManage/Highcharts/Sample3',N'iframe',1,0,0,0,0,4,0,1,N'2016-07-22 15:45:12',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'B3BF41E1-0299-4EFE-BA76-A7377AC81B38',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',2,N'柱状图',N'/ReportManage/Highcharts/Sample4',N'iframe',1,0,0,0,0,5,0,1,N'2016-07-22 15:45:19',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'85FAF4F4-9CBE-4904-94B3-2B930CA49F0C',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',2,N'综合报表1',N'/ReportManage/Highcharts/Sample14',N'iframe',1,0,0,0,0,21,0,1,N'2016-07-22 15:46:22',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'6BBC3562-1051-4246-98B0-9F37CAC40DC8',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',2,N'综合报表2',N'/ReportManage/Highcharts/Sample15',N'iframe',1,0,0,0,0,22,0,1,N'2016-07-22 15:48:05',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'822E2523-5105-4AE0-BF48-62459D3641F6',N'9F56840F-DF92-4936-A48C-8F65A39291A2',2,N'外部邮件',N'/ExampleManage/SendMail/Index',N'iframe',1,0,0,0,0,2,0,1,N'2016-08-01 18:25:45',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'7B959522-BE45-4747-B89D-592C7F3987A5',N'9F56840F-DF92-4936-A48C-8F65A39291A2',2,N'短信工具',N'/ExampleManage/SendMessages/Index',N'iframe',1,0,0,0,0,3,0,1,N'2016-08-01 23:08:35',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'AF34B824-439E-4365-99CC-C1D30514D869',N'9F56840F-DF92-4936-A48C-8F65A39291A2',2,N'二维码生成',N'/ExampleManage/BarCode/Index',N'iframe',1,0,0,0,0,4,0,1,N'2016-08-01 23:19:23',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'D2ECB516-4CB7-49B1-B536-504382115DD2',N'9F56840F-DF92-4936-A48C-8F65A39291A2',2,N'打印测试',N'/ExampleManage/Print/Index',N'iframe',1,0,0,0,0,5,0,1,N'2016-08-03 14:24:30',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'39E97B05-7B6F-4069-9972-6F9643BC3042',N'9F56840F-DF92-4936-A48C-8F65A39291A2',2,N'电子签章',N'/ExampleManage/Signet/Index',N'iframe',1,0,0,0,0,6,0,1,N'2016-08-02 22:42:36',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'91425AF9-F762-43AF-B784-107D23FFDC85',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',N'模拟时钟',N'/ReportManage/Highcharts/Sample5',N'iframe',1,0,0,0,0,11,0,0,N'2016-07-22 15:45:25',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'7858E329-16FC-49F4-93A1-11E2E7EF2998',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',N'仪表盘',N'/ReportManage/Highcharts/Sample6',N'iframe',1,0,0,0,0,12,0,0,N'2016-07-22 15:45:31',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'163DA347-887C-4C91-8298-EB00FFBFEC84',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',N'雷达图',N'/ReportManage/Highcharts/Sample8',N'iframe',1,0,0,0,0,13,0,0,N'2016-07-22 15:45:43',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'1F14A1ED-B22E-4E4A-BF10-6CF018507E76',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',N'蛛网图',N'/ReportManage/Highcharts/Sample9',N'iframe',1,0,0,0,0,14,0,0,N'2016-07-22 15:45:50',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'FE04386D-1307-4E34-8DFB-B56D9FEC78CE',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',N'玫瑰图',N'/ReportManage/Highcharts/Sample10',N'iframe',1,0,0,0,0,15,0,0,N'2016-07-22 15:45:56',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'54E9D12D-C039-4F01-A6FE-810A147D31D5',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',N'漏斗图',N'/ReportManage/Highcharts/Sample11',N'iframe',1,0,0,0,0,16,0,0,N'2016-07-22 15:46:03',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'ACDBD633-99A0-4BEF-B67C-3A5B41E7C1FD',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',N'蜡烛图',N'/ReportManage/Highcharts/Sample12',N'iframe',1,0,0,0,0,17,0,0,N'2016-07-22 15:46:09',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'A33ADBFC-089B-4981-BFAB-08178052EE36',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',N'流程图',N'/ReportManage/Highcharts/Sample13',N'iframe',1,0,0,0,0,18,0,0,N'2016-07-22 15:46:15',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'3593c43a-e4bc-4b7f-9629-0449a3d1818e',N'03739f9e-9a36-4c0d-a402-87f402c8cb81',2,N'部门管理',N'/DingTalkManage/Department/Index',N'iframe',1,0,0,0,0,39,0,1,N'2018-12-14 14:41:47',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2018-12-14 15:06:35',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_Icon],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'eaff0f23-0678-40af-8679-7fb2e2674e57',N'0',N'微信平台',N'fa fa-tablet',N'expand',0,1,0,0,0,7,0,1,N'2019-01-18 09:58:18',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-07-11 17:11:10',N'172557595021881487')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'e40a4371-6835-4f67-a349-c2b02ed6760e',N'eaff0f23-0678-40af-8679-7fb2e2674e57',N'微信账号',N'/WeixinManage/WxCode/Index',N'iframe',1,0,0,1,1,1,0,1,N'2019-01-18 09:59:58',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'f35094a8-b404-4831-8685-5a93d33109bd',N'eaff0f23-0678-40af-8679-7fb2e2674e57',N'自定义菜单',N'/WeixinManage/WxMenu/Index',N'blank',1,0,0,1,0,2,0,1,N'2019-01-18 10:02:12',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'd8168e8a-675d-4a06-a01c-d6eed9035262',N'eaff0f23-0678-40af-8679-7fb2e2674e57',N'自定义回复',N'/WeixinManage/WxSubscribe/Index',N'iframe',1,0,0,1,0,3,0,1,N'2019-01-18 10:04:07',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'0c253d7a-f1bf-45c0-9a59-0ad3396323e6',N'eaff0f23-0678-40af-8679-7fb2e2674e57',N'消息模板',N'/WeixinManage/WxTempMsg/Index',N'iframe',1,0,0,0,0,4,0,1,N'2019-01-18 10:04:56',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-24 21:12:16',N'48b7029f-e632-42cc-baeb-0b84339f295e')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'9a727a52-43ed-425a-940c-a4b64749f745',N'eaff0f23-0678-40af-8679-7fb2e2674e57',N'微信用户',N'/WeixinManage/WxUsers/Index',N'iframe',1,0,0,0,0,4,0,1,N'2019-07-04 10:52:37',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_Icon],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'03739f9e-9a36-4c0d-a402-87f402c8cb81',N'0',N'钉钉平台',N'fa fa-tablet',N'expand',0,1,0,0,0,6,0,1,N'2018-08-14 00:04:09',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-07-11 17:09:12',N'172557595021881487')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'5b263367-33a8-48e1-89ec-ba225f7d5e7a',N'03739f9e-9a36-4c0d-a402-87f402c8cb81',N'用户管理',N'/DingTalkManage/Users/Index',N'iframe',1,0,0,0,0,38,0,1,N'2018-08-14 00:06:05',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2018-08-14 00:06:48',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_ModuleButton]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_ModuleButton]

CREATE TABLE [Sys_ModuleButton] (
[F_Id] [varchar]  (50) NOT NULL,
[F_ModuleId] [varchar]  (50) NULL,
[F_ParentId] [varchar]  (50) NULL,
[F_Layers] [int]  NULL,
[F_EnCode] [varchar]  (50) NULL,
[F_FullName] [varchar]  (50) NULL,
[F_Icon] [varchar]  (50) NULL,
[F_Location] [int]  NULL,
[F_JsEvent] [varchar]  (50) NULL,
[F_UrlAddress] [varchar]  (500) NULL,
[F_Split] [bit]  NULL,
[F_IsPublic] [bit]  NULL,
[F_AllowEdit] [bit]  NULL,
[F_AllowDelete] [bit]  NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (50) NULL)

ALTER TABLE [Sys_ModuleButton] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_ModuleButton] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'9FD543DB-C5BB-4789-ACFF-C5865AFB032C',N'64A1C550-2C61-4A8C-833D-ACD0C012260F',N'0',1,N'NF-add',N'新增菜单',1,N'btn_add()',N'/SystemManage/Module/Form',0,0,0,0,1,0,1,N'2016-07-25 15:41:08',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'E29FCBA7-F848-4A8B-BC41-A3C668A9005D',N'64A1C550-2C61-4A8C-833D-ACD0C012260F',N'0',1,N'NF-edit',N'修改菜单',2,N'btn_edit()',N'/SystemManage/Module/Form',0,0,0,0,2,0,1,N'2016-07-25 15:41:02',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'85F5212F-E321-4124-B155-9374AA5D9C10',N'64A1C550-2C61-4A8C-833D-ACD0C012260F',N'0',1,N'NF-delete',N'删除菜单',2,N'btn_delete()',N'/SystemManage/Module/DeleteForm',0,0,0,0,3,0,1,N'2016-07-25 15:41:15',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'D4FCAFED-7640-449E-80B7-622DDACD5012',N'64A1C550-2C61-4A8C-833D-ACD0C012260F',N'0',1,N'NF-Details',N'查看菜单',2,N'btn_details()',N'/SystemManage/Module/Details',1,0,0,0,4,0,1,N'2016-07-25 15:41:27',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'FD3D073C-4F88-467A-AE3B-CDD060952CE6',N'64A1C550-2C61-4A8C-833D-ACD0C012260F',N'0',1,N'NF-modulebutton',N'按钮管理',2,N'btn_modulebutton()',N'/SystemManage/ModuleButton/Index',0,0,0,0,5,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'4bb19533-8e81-419b-86a1-7ee56bf1dd45',N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B',N'0',1,N'NF-delete',N'删除机构',2,N'btn_delete()',N'/SystemManage/Organize/DeleteForm',0,0,0,0,3,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'709a4a7b-4d98-462d-b47c-351ef11db06f',N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B',N'0',1,N'NF-Details',N'查看机构',2,N'btn_details()',N'/SystemManage/Organize/Details',0,0,0,0,4,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'91be873e-ccb7-434f-9a3b-d312d6d5798a',N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B',N'0',1,N'NF-edit',N'修改机构',2,N'btn_edit()',N'/SystemManage/Organize/Form',0,0,0,0,2,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'cd65e50a-0bea-45a9-b82e-f2eacdbd209e',N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B',N'0',1,N'NF-add',N'新建机构',1,N'btn_add()',N'/SystemManage/Organize/Form',0,0,0,0,1,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'239077ff-13e1-4720-84e1-67b6f0276979',N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C',N'0',1,N'NF-delete',N'删除角色',2,N'btn_delete()',N'/SystemManage/Role/DeleteForm',0,0,0,0,3,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'5d708d9d-6ebe-40ea-8589-e3efce9e74ec',N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C',N'0',1,N'NF-add',N'新建角色',1,N'btn_add()',N'/SystemManage/Role/Form',0,0,0,0,1,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'f93763ff-51a1-478d-9585-3c86084c54f3',N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C',N'0',1,N'NF-Details',N'查看角色',2,N'btn_details()',N'/SystemManage/Role/Details',0,0,0,0,4,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'ffffe7f8-900c-413a-9970-bee7d6599cce',N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C',N'0',1,N'NF-edit',N'修改角色',2,N'btn_edit()',N'/SystemManage/Role/Form',0,0,0,0,2,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'13c9a15f-c50d-4f09-8344-fd0050f70086',N'F298F868-B689-4982-8C8B-9268CBF0308D',N'0',1,N'NF-add',N'新建岗位',1,N'btn_add()',N'/SystemManage/Duty/Form',0,0,0,0,1,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'88f7b3a8-fd6d-4f8e-a861-11405f434868',N'F298F868-B689-4982-8C8B-9268CBF0308D',N'0',1,N'NF-Details',N'查看岗位',2,N'btn_details()',N'/SystemManage/Duty/Details',0,0,0,0,4,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'8a9993af-69b2-4d8a-85b3-337745a1f428',N'F298F868-B689-4982-8C8B-9268CBF0308D',N'0',1,N'NF-delete',N'删除岗位',2,N'btn_delete()',N'/SystemManage/Duty/DeleteForm',0,0,0,0,3,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'e75e4efc-d461-4334-a764-56992fec38e6',N'F298F868-B689-4982-8C8B-9268CBF0308D',N'0',1,N'NF-edit',N'修改岗位',2,N'btn_edit()',N'/SystemManage/Duty/Form',0,0,0,0,2,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'14617a4f-bfef-4bc2-b943-d18d3ff8d22f',N'38CA5A66-C993-4410-AF95-50489B22939C',N'0',1,N'NF-delete',N'删除用户',2,N'btn_delete()',N'/SystemManage/User/DeleteForm',0,0,0,0,3,0,1,N'2016-07-25 14:16:13',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'4727adf7-5525-4c8c-9de5-39e49c268349',N'38CA5A66-C993-4410-AF95-50489B22939C',N'0',1,N'NF-edit',N'修改用户',2,N'btn_edit()',N'/SystemManage/User/Form',0,0,0,0,2,0,1,N'2016-07-25 14:16:01',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'74eecdfb-3bee-405d-be07-27a78219c179',N'38CA5A66-C993-4410-AF95-50489B22939C',N'0',1,N'NF-add',N'新建用户',1,N'btn_add()',N'/SystemManage/User/Form',0,0,0,0,1,0,1,N'2016-07-25 14:15:42',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'abfdff21-8ebf-4024-8555-401b4df6acd9',N'38CA5A66-C993-4410-AF95-50489B22939C',N'0',1,N'NF-Details',N'查看用户',2,N'btn_details()',N'/SystemManage/User/Details',1,0,0,0,4,0,1,N'2016-07-25 15:29:10',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'38e39592-6e86-42fb-8f72-adea0c82cbc1',N'38CA5A66-C993-4410-AF95-50489B22939C',N'0',N'NF-revisepassword',N'密码重置',2,N'btn_revisepassword()',N'/SystemManage/User/RevisePassword',1,0,0,0,5,0,1,N'2016-07-25 14:18:19',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'15362a59-b242-494a-bc6e-413b4a63580e',N'38CA5A66-C993-4410-AF95-50489B22939C',N'0',N'NF-disabled',N'禁用',2,N'btn_disabled()',N'/SystemManage/User/DisabledAccount',0,0,0,0,6,0,1,N'2016-07-25 15:25:54',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2016-07-25 15:28:33',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'2a8f5342-5eb7-491c-a1a9-a2631d8eb5d6',N'38CA5A66-C993-4410-AF95-50489B22939C',N'0',N'NF-enabled',N'启用',2,N'btn_enabled()',N'/SystemManage/User/EnabledAccount',0,0,0,0,7,0,1,N'2016-07-25 15:28:08',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'48afe7b3-e158-4256-b50c-cd0ee7c6dcc9',N'337A4661-99A5-4E5E-B028-861CACAF9917',N'0',1,N'NF-add',N'新建区域',1,N'btn_add()',N'/SystemManage/Area/Form',0,0,0,0,1,0,1,N'2016-07-25 15:32:26',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'89d7a69d-b953-4ce2-9294-db4f50f2a157',N'337A4661-99A5-4E5E-B028-861CACAF9917',N'0',1,N'NF-edit',N'修改区域',2,N'btn_edit()',N'/SystemManage/Area/Form',0,0,0,0,2,0,1,N'2016-07-25 15:32:42',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'8c7013a9-3682-4367-8bc6-c77ca89f346b',N'337A4661-99A5-4E5E-B028-861CACAF9917',N'0',1,N'NF-delete',N'删除区域',2,N'btn_delete()',N'/SystemManage/Area/DeleteForm',0,0,0,0,3,0,1,N'2016-07-25 15:32:53',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'0d777b07-041a-4205-a393-d1a009aaafc7',N'423A200B-FA5F-4B29-B7B7-A3F5474B725F',N'0',1,N'NF-edit',N'修改字典',2,N'btn_edit()',N'/SystemManage/ItemsData/Form',0,0,0,0,3,0,1,N'2016-07-25 15:37:42',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'104bcc01-0cfd-433f-87f4-29a8a3efb313',N'423A200B-FA5F-4B29-B7B7-A3F5474B725F',N'0',1,N'NF-add',N'新建字典',1,N'btn_add()',N'/SystemManage/ItemsData/Form',0,0,0,0,1,0,1,N'2016-07-25 15:37:35',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'1ee1c46b-e767-4532-8636-936ea4c12003',N'423A200B-FA5F-4B29-B7B7-A3F5474B725F',N'0',1,N'NF-delete',N'删除字典',2,N'btn_delete()',N'/SystemManage/ItemsData/DeleteForm',0,0,0,0,4,0,1,N'2016-07-25 15:37:53',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'82f162cb-beb9-4a79-8924-cd1860e26e2e',N'423A200B-FA5F-4B29-B7B7-A3F5474B725F',N'0',1,N'NF-Details',N'查看字典',2,N'btn_details()',N'/SystemManage/ItemsData/Details',0,0,0,0,5,0,1,N'2016-07-25 15:37:59',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'4b876abc-1b85-47b0-abc7-96e313b18ed8',N'423A200B-FA5F-4B29-B7B7-A3F5474B725F',N'0',N'NF-itemstype',N'分类管理',1,N'btn_itemstype()',N'/SystemManage/ItemsType/Index',0,0,0,0,2,0,1,N'2016-07-25 15:36:21',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'0f0596f6-aa50-4df0-ad8e-af867cb4a9de',N'e72c75d0-3a69-41ad-b220-13c9a62ec788',N'0',1,N'NF-delete',N'删除备份',2,N'btn_delete()',N'/SystemSecurity/DbBackup/DeleteForm',0,0,0,0,2,0,1,N'2016-07-25 15:47:47',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'41862743-f703-4b6d-be54-08d253eb0ebc',N'e72c75d0-3a69-41ad-b220-13c9a62ec788',N'0',1,N'NF-add',N'新建备份',1,N'btn_add()',N'/SystemSecurity/DbBackup/Form',0,0,0,0,1,0,1,N'2016-07-25 15:43:15',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'aed66cfb-d78e-43d4-9987-c714546be7eb',N'e72c75d0-3a69-41ad-b220-13c9a62ec788',N'0',1,N'NF-download',N'下载备份',2,N'btn_download()',N'/SystemSecurity/DbBackup/DownloadBackup',0,0,0,0,3,0,1,N'2016-07-25 15:48:17',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'329c0326-ce68-4a24-904d-aade67a90fc7',N'a3a4742d-ca39-42ec-b95a-8552a6fae579',N'0',1,N'NF-Details',N'查看策略',2,N'btn_details()',N'/SystemSecurity/FilterIP/Details',0,0,0,0,4,0,1,N'2016-07-25 15:58:04',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'8379135e-5b13-4236-bfb1-9289e6129034',N'a3a4742d-ca39-42ec-b95a-8552a6fae579',N'0',1,N'NF-delete',N'删除策略',2,N'btn_delete()',N'/SystemSecurity/FilterIP/DeleteForm',0,0,0,0,3,0,1,N'2016-07-25 15:57:57',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'aaf58c1b-4af2-4e5f-a3e4-c48e86378191',N'a3a4742d-ca39-42ec-b95a-8552a6fae579',N'0',1,N'NF-edit',N'修改策略',2,N'btn_edit()',N'/SystemSecurity/FilterIP/Form',0,0,0,0,2,0,1,N'2016-07-25 15:57:49',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'd4074121-0d4f-465e-ad37-409bbe15bf8a',N'a3a4742d-ca39-42ec-b95a-8552a6fae579',N'0',1,N'NF-add',N'新建策略',1,N'btn_add()',N'/SystemSecurity/FilterIP/Form',0,0,0,0,1,0,1,N'2016-07-25 15:57:40',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'3a35c662-a356-45e4-953d-00ebd981cad6',N'96EE855E-8CD2-47FC-A51D-127C131C9FB9',N'0',1,N'NF-removelog',N'清空日志',1,N'btn_removeLog()',N'/SystemSecurity/Log/RemoveLog',0,0,0,0,1,0,1,N'2016-07-25 16:03:12',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'4c13c9c3-c1a4-4f7e-a061-2266b2c47c7a',N'3593c43a-e4bc-4b7f-9629-0449a3d1818e',N'0',N'NF-delete',N'删除',2,N'btn_delete()',N'/DingTalkManage/Department/DeleteForm',0,0,0,0,3,0,1,N'2018-08-14 22:53:13',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:27:14',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'80afeabc-5502-47cc-a304-a1c736b150d2',N'3593c43a-e4bc-4b7f-9629-0449a3d1818e',N'0',N'NF-Details',N'查看',2,N'btn_details()',N'/DingTalkManage/Department/Details',0,0,0,0,4,0,1,N'2018-08-14 22:54:07',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:27:25',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'd02984f1-2fea-4507-9442-72b1d81a490c',N'3593c43a-e4bc-4b7f-9629-0449a3d1818e',N'0',N'NF-edit',N'修改',2,N'btn_edit()',N'/DingTalkManage/Department/Form',0,0,0,0,2,0,1,N'2018-08-14 22:51:47',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:27:05',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'fea84a80-2f19-4118-a2aa-a269a66df346',N'3593c43a-e4bc-4b7f-9629-0449a3d1818e',N'0',N'NF-add',N'新增',1,N'btn_add()',N'/DingTalkManage/Department/Form',0,0,0,0,1,0,1,N'2018-08-14 22:49:22',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:26:57',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'a026f86d-d7ed-4cd3-8901-f6c7808026e6',N'9a727a52-43ed-425a-940c-a4b64749f745',N'0',N'NF-Details',N'查看',2,N'btn_details()',N'/WeixinMPManage/WxUsers/Details',0,0,0,0,4,0,1,N'2018-08-14 22:54:07',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-07-04 10:54:46',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'b5168959-7655-4dce-956a-754e3ebbfb2e',N'9a727a52-43ed-425a-940c-a4b64749f745',N'0',N'NF-add',N'新增',1,N'btn_add()',N'/WeixinManage/WxUsers/Form',0,0,0,0,1,0,1,N'2018-08-14 22:49:22',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-07-04 10:54:25',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'2f21a804-cd90-4da3-98f3-f31cfe6031dc',N'5b263367-33a8-48e1-89ec-ba225f7d5e7a',N'0',N'NF-add',N'新增',1,N'btn_add()',N'/WeixinManage/Users/Form',0,0,0,0,1,0,1,N'2018-08-14 22:49:22',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:25:43',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'02f35b16-f299-4805-85cf-f4a76c1b1e8a',N'5b263367-33a8-48e1-89ec-ba225f7d5e7a',N'0',N'NF-edit',N'修改',2,N'btn_edit()',N'/DingTalkManage/Users/Form',0,0,0,0,2,0,1,N'2018-08-14 22:51:47',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:25:51',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'10148a76-3843-405c-b5af-b2b3d738a2b0',N'5b263367-33a8-48e1-89ec-ba225f7d5e7a',N'0',N'NF-delete',N'删除',2,N'btn_delete()',N'/DingTalkManage/Users/DeleteForm',0,0,0,0,3,0,1,N'2018-08-14 22:53:13',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:26:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'f7c7c0ce-1916-449c-b239-a9a5db940c6a',N'5b263367-33a8-48e1-89ec-ba225f7d5e7a',N'0',N'NF-Details',N'查看',2,N'btn_details()',N'/DingTalkManage/Users/Details',0,0,0,0,4,0,1,N'2018-08-14 22:54:07',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:26:24',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'6b639924-6594-4293-ae72-9e1f84bdcbfa',N'9a727a52-43ed-425a-940c-a4b64749f745',N'0',N'NF-edit',N'修改',2,N'btn_edit()',N'/WeixinManage/WxUsers/Form',0,0,0,0,2,0,1,N'2018-08-14 22:51:47',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-07-04 10:54:31',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'78d0d7df-7b33-4b05-be3f-899b79773643',N'9a727a52-43ed-425a-940c-a4b64749f745',N'0',N'NF-delete',N'删除',2,N'btn_delete()',N'/WeixinManage/WxUsers/DeleteForm',0,0,0,0,3,0,1,N'2018-08-14 22:53:13',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-07-04 10:54:39',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'27b50b8b-0552-4c1c-a0e9-54f3402aa8e2',N'e40a4371-6835-4f67-a349-c2b02ed6760e',N'0',N'NF-Details',N'查看',2,N'btn_details()',N'/WeixinManage/Users/Details',0,0,0,0,4,0,1,N'2018-08-14 22:54:07',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:26:24',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'6cd3de7d-589b-457f-bfc8-ad3939649519',N'e40a4371-6835-4f67-a349-c2b02ed6760e',N'0',N'NF-edit',N'修改',2,N'btn_edit()',N'/WeixinManage/Users/Form',0,0,0,0,2,0,1,N'2018-08-14 22:51:47',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:25:51',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'711e01d6-c5c1-4238-ae23-78e21cf933f3',N'e40a4371-6835-4f67-a349-c2b02ed6760e',N'0',N'NF-delete',N'删除',2,N'btn_delete()',N'/WeixinManage/Users/DeleteForm',0,0,0,0,3,0,1,N'2018-08-14 22:53:13',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:26:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'de0dd0b8-defe-4766-a8fe-93da339981e8',N'e40a4371-6835-4f67-a349-c2b02ed6760e',N'0',N'NF-add',N'新增',1,N'btn_add()',N'/WeixinManage/Users/Form',0,0,0,0,1,0,1,N'2018-08-14 22:49:22',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:25:43',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'037df8cd-ed27-4c6e-9a83-9153a7c2727a',N'0c253d7a-f1bf-45c0-9a59-0ad3396323e6',N'0',N'NF-delete',N'删除',2,N'btn_delete()',N'/WeixinManage/WxTempMsg/DeleteForm',0,0,0,0,3,0,1,N'2018-08-14 22:53:13',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-07-04 10:54:39',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'1d612157-fb91-447b-80ec-e96514c8e00b',N'0c253d7a-f1bf-45c0-9a59-0ad3396323e6',N'0',N'NF-add',N'新增',1,N'btn_add()',N'/WeixinManageWxTempMsg/Form',0,0,0,0,1,0,1,N'2018-08-14 22:49:22',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-07-04 10:54:25',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'8d7b059e-4105-4dde-944c-c2424f68b5c5',N'0c253d7a-f1bf-45c0-9a59-0ad3396323e6',N'0',N'NF-Details',N'查看',2,N'btn_details()',N'/WeixinMPManage/WxTempMsg/Details',0,0,0,0,4,0,1,N'2018-08-14 22:54:07',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-07-04 10:54:46',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'b02a3807-0835-46c1-a965-af192dfb9823',N'0c253d7a-f1bf-45c0-9a59-0ad3396323e6',N'0',N'NF-edit',N'修改',2,N'btn_edit()',N'/WeixinManage/WxTempMsg/Form',0,0,0,0,2,0,1,N'2018-08-14 22:51:47',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-07-04 10:54:31',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_ModuleForm]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_ModuleForm]

CREATE TABLE [Sys_ModuleForm] (
[F_Id] [varchar]  (50) NOT NULL,
[F_ModuleId] [varchar]  (50) NULL,
[F_EnCode] [varchar]  (50) NULL,
[F_FullName] [varchar]  (50) NULL,
[F_FormJson] [varchar]  (MAX) NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (500) NULL)

ALTER TABLE [Sys_ModuleForm] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_ModuleForm] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_ModuleFormInstance]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_ModuleFormInstance]

CREATE TABLE [Sys_ModuleFormInstance] (
[F_Id] [varchar]  (50) NOT NULL,
[F_FormId] [varchar]  (50) NOT NULL,
[F_ObjectId] [varchar]  (50) NULL,
[F_InstanceJson] [varchar]  (MAX) NULL,
[F_SortCode] [int]  NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL)

ALTER TABLE [Sys_ModuleFormInstance] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_ModuleFormInstance] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_Organize]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_Organize]

CREATE TABLE [Sys_Organize] (
[F_Id] [varchar]  (50) NOT NULL,
[F_ParentId] [varchar]  (50) NULL,
[F_Layers] [int]  NULL,
[F_EnCode] [varchar]  (50) NULL,
[F_FullName] [varchar]  (50) NULL,
[F_ShortName] [varchar]  (50) NULL,
[F_CategoryId] [varchar]  (50) NULL,
[F_ManagerId] [varchar]  (50) NULL,
[F_TelePhone] [varchar]  (20) NULL,
[F_MobilePhone] [varchar]  (20) NULL,
[F_WeChat] [varchar]  (50) NULL,
[F_Fax] [varchar]  (20) NULL,
[F_Email] [varchar]  (50) NULL,
[F_AreaId] [varchar]  (50) NULL,
[F_Address] [varchar]  (500) NULL,
[F_AllowEdit] [bit]  NULL,
[F_AllowDelete] [bit]  NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (500) NULL)

ALTER TABLE [Sys_Organize] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_Organize] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_Organize] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_CategoryId],[F_ManagerId],[F_Address],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'5AB270C0-5D33-4203-A54F-4552699FDA3C',N'0',1,N'Company',N'上海东鞋贸易有限公司',N'Company',N'郭总',N'上海市松江区',0,0,1,0,1,N'2016-06-10 00:00:00')
INSERT [Sys_Organize] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_CategoryId],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'80E10CD5-7591-40B8-A005-BCDE1B961E76',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'Administration',N'行政部',N'Department',0,0,2,0,1,N'2016-06-10 00:00:00')
INSERT [Sys_Organize] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_CategoryId],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'5B417E2B-4B96-4F37-8BAA-10E5A812D05E',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'Market',N'市场部',N'Department',0,0,3,0,1,N'2016-06-10 00:00:00')
INSERT [Sys_Organize] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_CategoryId],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'F02A66CA-3D8B-491B-8A17-C9ACA3E3B5DD',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'Financial',N'财务部',N'Department',0,0,4,0,1,N'2016-06-10 00:00:00')
INSERT [Sys_Organize] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_CategoryId],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'554C61CE-6AE0-44EB-B33D-A462BE7EB3E1',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'Ministry',N'技术部',N'Department',0,0,5,0,1,N'2016-06-10 00:00:00')
INSERT [Sys_Organize] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_CategoryId],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'BD830AEF-0A2E-4228-ACF8-8843C39D41D8',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'Purchase',N'采购部',N'Department',0,0,6,0,1,N'2016-06-10 00:00:00')
INSERT [Sys_Organize] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_CategoryId],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'253EDA1F-F158-4F3F-A778-B7E538E052A2',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'Manufacturing',N'生产部',N'Department',0,0,7,0,1,N'2016-06-10 00:00:00')
INSERT [Sys_Organize] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_CategoryId],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'DFA2FB91-C909-44A3-9282-BF946102E1C9',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'HumanResourse',N'人事部',N'Department',0,0,8,0,1,N'2016-06-10 00:00:00')
INSERT [Sys_Organize] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_CategoryId],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'59703D6A-0EC9-4762-824F-A8D9E62E93D2',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'Sales',N'营销部',N'Department',0,0,9,0,1,N'2016-06-10 00:00:00')
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_Role]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_Role]

CREATE TABLE [Sys_Role] (
[F_Id] [varchar]  (50) NOT NULL,
[F_OrganizeId] [varchar]  (50) NULL,
[F_Category] [int]  NULL,
[F_EnCode] [varchar]  (50) NULL,
[F_FullName] [varchar]  (50) NULL,
[F_Type] [varchar]  (50) NULL,
[F_AllowEdit] [bit]  NULL,
[F_AllowDelete] [bit]  NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (500) NULL)

ALTER TABLE [Sys_Role] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_Role] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'administrators',N'超级管理员',N'1',1,1,1,0,1,N'2016-07-10 00:00:00',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'4B2140D3-E61D-488E-ADF6-FF0EBCBC5D2C',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'system',N'系统管理员',N'1',0,0,2,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'42C44AC0-27FA-482D-B5E3-8F9B38B80A6A',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'configuration',N'系统配置员',N'2',0,0,3,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'7A9CF301-FCDF-4BC9-A52B-A7D4FAE2D344',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'developer',N'系统开发人员',N'2',0,0,4,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'2691AB91-3010-465F-8D92-60A97425A45E',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'innerStaff',N'内部员工',N'2',0,0,5,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'41652BB4-E2DC-420E-AA8A-8C92784B76E3',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'archvist',N'档案管理员',N'2',0,0,6,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'531F7D18-C49F-4F4F-A920-0074FCB52078',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'guest',N'访客人员',N'2',0,0,7,0,1,N'2016-07-10 00:00:00',N'2016-07-24 15:43:29',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'2DA8390B-61A4-4E6C-A6E7-8F6794C7EDCE',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'tester',N'测试人员',N'2',0,0,8,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'07A8E061-AE47-49C9-8310-F055F35FF44B',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'services',N'客服人员',N'2',0,0,9,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'AADB479E-9F87-49B1-AE2D-5DA6FECA3F8E',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'implement',N'实施人员',N'2',0,0,10,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'8683CB17-5F9D-4A99-A233-A18C4D1CF95B',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'businessPersonnel',N'业务人员',N'2',0,0,12,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'F68956A9-9C53-4C08-AFE8-8A4755FE2B8F',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'inventory',N'库存管理员',N'2',0,0,13,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'F9421969-D85C-4E4C-927F-CCFB18388A59',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'contracts',N'合同专员',N'2',0,0,14,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'23ED024E-0AAA-4C8D-9216-D1AB93348D26',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'employee',N'员工',0,0,1,0,1,N'2016-07-12 00:00:00',N'2016-07-18 15:18:56')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'D335A5B8-7DED-495C-B8FC-EE933FB30779',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'charge',N'主管',0,0,2,0,1,N'2016-07-12 00:00:00',N'2016-07-18 15:17:22')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'0052A230-EA7B-4F3A-A1C9-1611FF26481A',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'manager',N'经理',0,0,3,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'CEEA79E8-2E19-4294-8447-13247053DE04',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'director',N'总监',0,0,4,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'EA56E457-5024-49AF-9410-D5D71D24F14B',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'vicegeneral',N'副总经理',0,0,5,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'796E9C6A-8432-4BA6-8CF6-EFFAB6F2098C',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'general',N'总经理',0,0,6,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'91E09653-D3DE-416A-BF6C-E91E60B4B4CF',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'chairman',N'主任',0,0,7,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'C609D4D6-81F7-4647-BF2F-81BD4CED2C19',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'fileattache',N'档案专员',0,0,8,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'F03EA699-9A0A-4EE9-9D33-27B9A7DFF09B',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'engineer',N'高级工程师',0,0,9,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'0CD2A952-2EE0-4CAF-9757-617D5075745B',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'president',N'董事长',0,0,10,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'B2624F67-E092-461A-AAAD-13592A9429D9',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'10018',N'行政助理',0,0,11,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'3263446A-D303-4C42-B436-6F46BF7CE86A',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'10019',N'总裁',0,0,12,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'CB116AA3-88CC-4CF7-B0BC-7C55EC502183',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'10020',N'首席执行官',0,0,13,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'7E2639BA-02B9-417A-9AAA-CF6DCF8487E0',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'10022',N'力资源专员',0,0,14,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'2B3406F9-B7FF-4D23-BC61-D8EEB6C88D5B',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'10023',N'行业顾问',0,0,15,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'05691457-5284-4FEE-8D7E-C35141F3FF39',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'10024',N'总经理助理',0,0,16,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'3A2FD4D7-E73C-44E4-8AED-B6EE5980779E',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'10025',N'大堂经理',0,0,17,0,1,N'2016-07-12 00:00:00')
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_RoleAuthorize]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_RoleAuthorize]

CREATE TABLE [Sys_RoleAuthorize] (
[F_Id] [varchar]  (50) NOT NULL,
[F_ItemType] [int]  NULL,
[F_ItemId] [varchar]  (50) NULL,
[F_ObjectType] [int]  NULL,
[F_ObjectId] [varchar]  (50) NULL,
[F_SortCode] [int]  NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL)

ALTER TABLE [Sys_RoleAuthorize] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_RoleAuthorize] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'ccfcea25-cab8-42e7-aee3-61663d89ba93',2,N'91be873e-ccb7-434f-9a3b-d312d6d5798a',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'cd061505-61fe-4a4e-a612-41952ba33e3b',1,N'163DA347-887C-4C91-8298-EB00FFBFEC84',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'd4cd5d85-c730-4bd9-9d62-3233056fa7f3',2,N'E29FCBA7-F848-4A8B-BC41-A3C668A9005D',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'da24baba-479c-4017-acee-569b1fa0ce1a',1,N'54E9D12D-C039-4F01-A6FE-810A147D31D5',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'e7095efa-4793-44f0-8edb-57e21d4aeea2',1,N'64A1C550-2C61-4A8C-833D-ACD0C012260F',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'ea573da4-7921-40db-bf8f-447ef980ee31',1,N'85FAF4F4-9CBE-4904-94B3-2B930CA49F0C',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'eb7aabf3-801e-4751-85e9-8972faec4452',1,N'AF34B824-439E-4365-99CC-C1D30514D869',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'ebff5f54-bbe5-482a-a763-d6fcce17b655',2,N'5d708d9d-6ebe-40ea-8589-e3efce9e74ec',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'f5dc517b-f045-41ba-bae0-f7053a89c6c9',2,N'f93763ff-51a1-478d-9585-3c86084c54f3',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'f929d1f3-2485-4d0b-8253-ff778dd30add',2,N'cd65e50a-0bea-45a9-b82e-f2eacdbd209e',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'fcf8d653-fe9a-4e8f-81d5-f4af1119bbbf',1,N'F2DAD50B-95DF-48F7-8638-BA503B539143',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'04d23b62-8401-4e50-8279-aaeb66377daa',2,N'FD3D073C-4F88-467A-AE3B-CDD060952CE6',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'0f7b0b1b-d925-45d5-adf9-55044a7f4c19',2,N'5d708d9d-6ebe-40ea-8589-e3efce9e74ec',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'1afefe4f-c76d-488b-b165-e797b017c216',2,N'e75e4efc-d461-4334-a764-56992fec38e6',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'22ddf57d-739d-4da0-b2a7-752459f110a6',2,N'8a9993af-69b2-4d8a-85b3-337745a1f428',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'244823d7-6b36-4cf9-b63d-c749e91061ae',2,N'48afe7b3-e158-4256-b50c-cd0ee7c6dcc9',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'250a92b7-a549-4a35-b007-82f90dcf5622',2,N'104bcc01-0cfd-433f-87f4-29a8a3efb313',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'2af34ef2-522e-4ea3-a8df-668b57e3b4e3',1,N'337A4661-99A5-4E5E-B028-861CACAF9917',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'2e467fc2-2e71-45c7-ad7c-fad5eb956adf',2,N'cd65e50a-0bea-45a9-b82e-f2eacdbd209e',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'32119cfa-864e-4bf9-945b-2d76dad0a31c',2,N'f93763ff-51a1-478d-9585-3c86084c54f3',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'379e90a9-5628-47e0-8314-da3e0c550fb3',2,N'88f7b3a8-fd6d-4f8e-a861-11405f434868',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'37b242db-cd74-400f-964b-96d72bd651c6',2,N'1ee1c46b-e767-4532-8636-936ea4c12003',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'3ec593df-c492-4270-9aef-e75d521171da',2,N'14617a4f-bfef-4bc2-b943-d18d3ff8d22f',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'41105b53-4315-442c-bb7f-9b9204355351',2,N'4727adf7-5525-4c8c-9de5-39e49c268349',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'4ff4e45a-9ed6-4c79-be52-ae6d07d77b3a',2,N'8c7013a9-3682-4367-8bc6-c77ca89f346b',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'52cce008-0755-4a75-9fdf-6425f74f62b0',2,N'89d7a69d-b953-4ce2-9294-db4f50f2a157',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'53967381-3765-4bff-ad74-6aa1c9d03596',2,N'D4FCAFED-7640-449E-80B7-622DDACD5012',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'64f6b88c-7510-4e83-956e-d2d6c163200a',1,N'F298F868-B689-4982-8C8B-9268CBF0308D',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'68905347-8abf-4f99-bacd-8d3045b06e2b',2,N'4b876abc-1b85-47b0-abc7-96e313b18ed8',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'6d4f5a20-98b2-40c5-8352-80b15af1b360',2,N'239077ff-13e1-4720-84e1-67b6f0276979',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'700916e8-3488-45f2-b407-6f30df9b9123',2,N'B6A9473D-DAA7-4574-9231-13D9E631D379',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'7535204c-60ce-4114-bb12-430a5975b363',2,N'38e39592-6e86-42fb-8f72-adea0c82cbc1',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'77eafdea-c1e3-4e36-9d70-cdaa7b5200d4',1,N'38CA5A66-C993-4410-AF95-50489B22939C',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'790dc854-bdbf-4ff0-8cea-2ffffcbe98ed',2,N'E29FCBA7-F848-4A8B-BC41-A3C668A9005D',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'848319d7-89f3-4ef9-b9fc-fcd99eddf632',2,N'4bb19533-8e81-419b-86a1-7ee56bf1dd45',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'94fa7a37-986f-4534-87bc-b66bcf7246d0',1,N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'997a0c17-7de7-4eb3-9adb-c4900b310948',2,N'74eecdfb-3bee-405d-be07-27a78219c179',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'a06b6fb1-f68a-4856-9e41-44ec8a642139',2,N'85F5212F-E321-4124-B155-9374AA5D9C10',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'aa5d1775-d95b-4f07-8c2b-7a9820876dc0',2,N'709a4a7b-4d98-462d-b47c-351ef11db06f',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'af617592-755c-4a6b-99ac-3d1ba457d760',2,N'91be873e-ccb7-434f-9a3b-d312d6d5798a',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'c0a099cf-8ea2-4193-bd66-403f35ac3e42',1,N'423A200B-FA5F-4B29-B7B7-A3F5474B725F',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'c5c51f2e-4f7d-4aa9-9b90-b0ad1679771d',2,N'13c9a15f-c50d-4f09-8344-fd0050f70086',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'cbf03b03-096a-4eb3-9983-81637429e51b',2,N'82f162cb-beb9-4a79-8924-cd1860e26e2e',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'd5f8dc31-4c8d-41a5-8154-9c855553793a',2,N'ffffe7f8-900c-413a-9970-bee7d6599cce',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'd71845b3-c39b-4a99-a523-f7a93f3ac038',2,N'abfdff21-8ebf-4024-8555-401b4df6acd9',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'e1a1c00f-e10e-4589-8144-797f38efcd80',2,N'0d777b07-041a-4205-a393-d1a009aaafc7',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'b52fbff2-78d5-475d-84ca-6d9ed11d3cc6',1,N'4B2140D3-E61D-488E-ADF6-FF0EBCBC5D2C')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'e61a0833-aa73-4e15-9c03-83b8089e6bd8',2,N'9FD543DB-C5BB-4789-ACFF-C5865AFB032C',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'e6c1e0a7-aaaa-4adb-b95d-353134a484c6',1,N'64A1C550-2C61-4A8C-833D-ACD0C012260F',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'eae52f23-db61-4997-82e0-437978517f6a',1,N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'f5c3d009-3d00-4be1-822c-feba6c89ae0a',1,N'462027E0-0848-41DD-BCC3-025DCAE65555',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'1fd4ae2a-24fd-49e3-8007-5cc987cd05c0',1,N'42C44AC0-27FA-482D-B5E3-8F9B38B80A6A')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'df6839d3-60c4-447d-9d48-c75d26d77a7b',1,N'7A9CF301-FCDF-4BC9-A52B-A7D4FAE2D344')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'2bf9d1bd-510f-463a-9555-4ab8357bfb08',1,N'2691AB91-3010-465F-8D92-60A97425A45E')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'f8a6180a-ee18-41f4-b28e-d7e4c5a36045',1,N'41652BB4-E2DC-420E-AA8A-8C92784B76E3')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'cf6bf931-ae94-4820-92de-4f80590c615d',1,N'2DA8390B-61A4-4E6C-A6E7-8F6794C7EDCE')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'93e3474f-a8c9-4b0e-bf42-1571e9f4e6b8',1,N'07A8E061-AE47-49C9-8310-F055F35FF44B')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'fbc0b434-f261-47eb-94c8-0c450dd56cc4',1,N'AADB479E-9F87-49B1-AE2D-5DA6FECA3F8E')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'df6281cb-6ad9-4d4b-aff2-ba6f266c1dd3',1,N'8683CB17-5F9D-4A99-A233-A18C4D1CF95B')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'06a71015-42f4-4f16-ad9e-88e0665f7504',1,N'F68956A9-9C53-4C08-AFE8-8A4755FE2B8F')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'bb544273-6e31-4235-b507-3f0ffbfded28',1,N'F9421969-D85C-4E4C-927F-CCFB18388A59')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'0000da5b-6305-4b23-b1db-1f55a66daca8',2,N'FD3D073C-4F88-467A-AE3B-CDD060952CE6',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'06011f83-df9a-4d5d-bb6f-0b948574256c',1,N'73FD1267-79BA-4E23-A152-744AF73117E9',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'12cc8ed7-d769-48cc-ab3c-866466462e70',1,N'96EE855E-8CD2-47FC-A51D-127C131C9FB9',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'15b2279f-7082-421e-a6a3-9abd5bca8303',1,N'337A4661-99A5-4E5E-B028-861CACAF9917',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'166e6255-d5cc-4718-b257-771398b4132b',2,N'13c9a15f-c50d-4f09-8344-fd0050f70086',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'1822a1c4-5a49-4742-a937-b63e4f9bd826',1,N'FE04386D-1307-4E34-8DFB-B56D9FEC78CE',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'1a81232c-037a-4af8-b2cf-55e19fce1582',2,N'239077ff-13e1-4720-84e1-67b6f0276979',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'1dbe5bcb-3907-49d4-93d9-0d41cc539a1d',1,N'423A200B-FA5F-4B29-B7B7-A3F5474B725F',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'1e2c7104-1731-4519-81ac-3594f78bf8dd',1,N'9F56840F-DF92-4936-A48C-8F65A39291A2',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'2078f57a-454a-48c8-9fee-122df8f5786e',1,N'7B959522-BE45-4747-B89D-592C7F3987A5',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'237da469-8831-45bf-bb78-0e7ca06f33d7',1,N'38CA5A66-C993-4410-AF95-50489B22939C',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'243814e8-2279-4749-b84a-4e0c269d2910',2,N'709a4a7b-4d98-462d-b47c-351ef11db06f',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'2c069a5e-8785-49b3-a6e7-355dbad2e89f',1,N'39E97B05-7B6F-4069-9972-6F9643BC3042',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'3115d827-1419-48ab-88fa-c9b56be6df86',1,N'822E2523-5105-4AE0-BF48-62459D3641F6',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'335e819a-866c-409d-8233-3449481b0460',2,N'D4FCAFED-7640-449E-80B7-622DDACD5012',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'34b49233-b13b-4a6f-bc98-3000bf6b75ee',1,N'91425AF9-F762-43AF-B784-107D23FFDC85',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'35753609-e0d7-4829-9685-6cafe02c7ca7',1,N'462027E0-0848-41DD-BCC3-025DCAE65555',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'3f21e866-1f79-4cac-9f8e-91a0cb1014ce',2,N'85F5212F-E321-4124-B155-9374AA5D9C10',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'43ad8ba2-3258-40ce-a121-a4c4c1af0871',1,N'a3a4742d-ca39-42ec-b95a-8552a6fae579',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'474417c9-51de-40e9-b2dc-59d169f0bf12',1,N'ABA7DA44-A291-4A25-9BDC-C310CF1C931C',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'4d0ba76b-dbb0-4e4f-b83e-92df13bf702a',2,N'ffffe7f8-900c-413a-9970-bee7d6599cce',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'4d26e4ba-cf4f-4783-a4bd-84e1f2f9ecb3',1,N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'5324f369-ce2d-47cc-a3c5-cf4f690a7914',1,N'D2ECB516-4CB7-49B1-B536-504382115DD2',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'577c000a-2997-4915-aa24-412c4acfbb38',1,N'6BBC3562-1051-4246-98B0-9F37CAC40DC8',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'5ae6902f-0520-4000-a495-6db64d3ff469',1,N'C3D12056-D906-4D8B-8B9C-954942742BDE',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'6e725406-22c9-4c19-8f85-054f97ee20f4',1,N'49F61713-C1E4-420E-BEEC-0B4DBC2D7DE8',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'6e83c40f-c7fc-4b96-86aa-b17485a2d8ca',1,N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'766067c0-ebef-43f6-b49b-a7261634ff05',2,N'88f7b3a8-fd6d-4f8e-a861-11405f434868',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'77699534-4f0b-44f0-a6d2-3953334be95a',1,N'A33ADBFC-089B-4981-BFAB-08178052EE36',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'844841a3-a465-4bba-816e-920dbdca9715',1,N'0EDF1DDB-CA17-4D08-AA25-914FE4E13324',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'8e81b948-313c-4d2c-b752-92a83197b7e6',1,N'e72c75d0-3a69-41ad-b220-13c9a62ec788',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'90a522bb-5e94-48d7-be44-e4180ee7bc3d',1,N'df9920e0-ba33-4e36-a911-ef08c6ea77ea',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'90a63c30-1c20-4f47-9cd8-d9bcc44e10d9',1,N'F298F868-B689-4982-8C8B-9268CBF0308D',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'94a7787a-6659-49cc-a902-7ea63231c177',2,N'4bb19533-8e81-419b-86a1-7ee56bf1dd45',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'9c9cfbd1-525a-4f02-a765-30a72c771e23',2,N'B6A9473D-DAA7-4574-9231-13D9E631D379',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'9cc97a78-d8ca-45bd-aad5-efbeef4a4c8a',2,N'8a9993af-69b2-4d8a-85b3-337745a1f428',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'9fef22f9-1962-4cd0-84a6-ba85b9ce29c1',1,N'B3BF41E1-0299-4EFE-BA76-A7377AC81B38',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'a8b2ff07-7af6-4e6a-8b9a-5785a25afe8c',1,N'1F14A1ED-B22E-4E4A-BF10-6CF018507E76',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'a8cf8cde-db46-4f5e-a3b2-883aef62ff7f',1,N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'b10ca258-bd85-403c-aded-95b546fecaea',1,N'ACDBD633-99A0-4BEF-B67C-3A5B41E7C1FD',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'c0257ed1-eae3-4260-9633-0f53b0e3d106',2,N'9FD543DB-C5BB-4789-ACFF-C5865AFB032C',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'c2e04783-a45a-449d-9f7f-83d6a855ec22',1,N'7858E329-16FC-49F4-93A1-11E2E7EF2998',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'c2e7dba8-b103-4c63-a597-136110a89c7b',2,N'e75e4efc-d461-4334-a764-56992fec38e6',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_User]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_User]

CREATE TABLE [Sys_User] (
[F_Id] [varchar]  (50) NOT NULL,
[F_Account] [varchar]  (50) NULL,
[F_RealName] [varchar]  (50) NULL,
[F_NickName] [varchar]  (50) NULL,
[F_HeadIcon] [varchar]  (50) NULL,
[F_Gender] [bit]  NULL,
[F_Birthday] [datetime]  NULL,
[F_MobilePhone] [varchar]  (20) NULL,
[F_Email] [varchar]  (50) NULL,
[F_WeChat] [varchar]  (50) NULL,
[F_ManagerId] [varchar]  (50) NULL,
[F_SecurityLevel] [int]  NULL,
[F_Signature] [varchar]  (500) NULL,
[F_OrganizeId] [varchar]  (50) NULL,
[F_DepartmentId] [varchar]  (500) NULL,
[F_RoleId] [varchar]  (500) NULL,
[F_DutyId] [varchar]  (500) NULL,
[F_IsAdmin] [bit]  NULL,
[F_IsBoss] [bit]  NULL,
[F_IsLeaderInDepts] [bit]  NULL,
[F_IsSenior] [bit]  NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (500) NULL,
[F_DingTalkUserId] [varchar]  (50) NULL,
[F_DingTalkUserName] [varchar]  (50) NULL,
[F_DingTalkAvatar] [varchar]  (100) NULL,
[F_WxOpenId] [varchar]  (50) NULL,
[F_WxNickName] [varchar]  (50) NULL,
[F_HeadImgUrl] [varchar]  (100) NULL)

ALTER TABLE [Sys_User] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_User] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_User] ([F_Id],[F_Account],[F_RealName],[F_NickName],[F_Gender],[F_MobilePhone],[F_OrganizeId],[F_DepartmentId],[F_RoleId],[F_DutyId],[F_IsAdmin],[F_IsBoss],[F_IsLeaderInDepts],[F_IsSenior],[F_DeleteMark],[F_EnabledMark],[F_Description],[F_CreatorTime],[F_LastModifyTime],[F_LastModifyUserId],[F_DingTalkUserName]) VALUES ( N'6903ab9d-20cd-44c4-a380-09f229366e1f',N'1010',N'白玉芬',N'白玉芬',0,N'15202701761',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',N'80E10CD5-7591-40B8-A005-BCDE1B961E76',N'531F7D18-C49F-4F4F-A920-0074FCB52078',N'23ED024E-0AAA-4C8D-9216-D1AB93348D26',0,0,0,0,0,1,N'测试数据',N'2016-07-20 00:00:00',N'2016-07-24 22:58:43',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'闫志辉')
INSERT [Sys_User] ([F_Id],[F_Account],[F_RealName],[F_NickName],[F_Gender],[F_MobilePhone],[F_OrganizeId],[F_DepartmentId],[F_IsAdmin],[F_IsBoss],[F_IsLeaderInDepts],[F_IsSenior],[F_DeleteMark],[F_EnabledMark],[F_Description],[F_CreatorTime],[F_DingTalkUserName]) VALUES ( N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'admin',N'超级管理员',N'超级管理员',1,N'13600000000',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',N'554C61CE-6AE0-44EB-B33D-A462BE7EB3E1',0,0,0,0,0,1,N'系统内置账户',N'2016-07-20 00:00:00',N'闫志辉')
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_UserLogOn]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_UserLogOn]

CREATE TABLE [Sys_UserLogOn] (
[F_Id] [varchar]  (50) NOT NULL,
[F_UserId] [varchar]  (50) NULL,
[F_UserPassword] [varchar]  (50) NULL,
[F_UserSecretkey] [varchar]  (50) NULL,
[F_AllowStartTime] [datetime]  NULL,
[F_AllowEndTime] [datetime]  NULL,
[F_LockStartDate] [datetime]  NULL,
[F_LockEndDate] [datetime]  NULL,
[F_FirstVisitTime] [datetime]  NULL,
[F_PreviousVisitTime] [datetime]  NULL,
[F_LastVisitTime] [datetime]  NULL,
[F_ChangePasswordDate] [datetime]  NULL,
[F_MultiUserLogin] [bit]  NULL,
[F_LogOnCount] [int]  NULL,
[F_UserOnLine] [bit]  NULL,
[F_Question] [varchar]  (50) NULL,
[F_AnswerQuestion] [varchar]  (500) NULL,
[F_CheckIPAddress] [bit]  NULL,
[F_Language] [varchar]  (50) NULL,
[F_Theme] [varchar]  (50) NULL)

ALTER TABLE [Sys_UserLogOn] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_UserLogOn] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_UserLogOn] ([F_Id],[F_UserId],[F_UserPassword],[F_UserSecretkey],[F_PreviousVisitTime],[F_LastVisitTime],[F_MultiUserLogin],[F_LogOnCount],[F_UserOnLine],[F_CheckIPAddress]) VALUES ( N'6903ab9d-20cd-44c4-a380-09f229366e1f',N'6903ab9d-20cd-44c4-a380-09f229366e1f',N'403ffebb404e8c30c57747baaa522902',N'95aa29b12cf25d9a',N'2016-07-26 13:59:26',N'2016-07-27 17:33:18',0,7,0,0)
INSERT [Sys_UserLogOn] ([F_Id],[F_UserId],[F_UserPassword],[F_UserSecretkey],[F_PreviousVisitTime],[F_LastVisitTime],[F_MultiUserLogin],[F_LogOnCount],[F_UserOnLine],[F_CheckIPAddress]) VALUES ( N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'44c35ab35cb0603e90d168642ca51fb6',N'57d3031d6fc4a34d',N'2019-11-14 23:06:57',N'2019-11-21 22:03:37',0,106,0,0)
if exists (select * from sysobjects where id = OBJECT_ID('[WeiXin_RequestBaseData]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [WeiXin_RequestBaseData]

CREATE TABLE [WeiXin_RequestBaseData] (
[uuId] [varchar]  (50) NOT NULL,
[OpenId] [varchar]  (100) NULL,
[MsgType] [varchar]  (100) NULL,
[DataContent] [varchar]  (2000) NULL,
[EventKey] [varchar]  (500) NULL,
[Url] [varchar]  (500) NULL,
[Url2] [varchar]  (500) NULL,
[XmlContent] [varchar]  (2000) NULL,
[CreateDate] [datetime]  NULL,
[Flag] [int]  NULL,
[RType] [varchar]  (70) NULL,
[Remark] [varchar]  (500) NULL,
[ExtInt] [int]  NULL,
[ExtStr] [varchar]  (200) NULL,
[ExtStr2] [varchar]  (700) NULL,
[ExtStr3] [varchar]  (2000) NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [WeiXin_RequestBaseData] WITH NOCHECK ADD  CONSTRAINT [PK_WeiXin_RequestBaseData] PRIMARY KEY  NONCLUSTERED ( [uuId] )
if exists (select * from sysobjects where id = OBJECT_ID('[WeiXin_RequestRule]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [WeiXin_RequestRule]

CREATE TABLE [WeiXin_RequestRule] (
[uuId] [varchar]  (50) NOT NULL,
[UserId] [varchar]  (50) NULL,
[RuleName] [varchar]  (200) NULL,
[ReqKeywords] [varchar]  (2000) NULL,
[ReqestType] [nchar]  (10) NULL,
[ResponseType] [int]  NULL,
[IsDefault] [bit]  NULL DEFAULT (0),
[ModelFunctionName] [varchar]  (200) NULL,
[ModelFunctionId] [int]  NULL,
[Seq] [int]  NULL,
[CreateDate] [datetime]  NULL,
[AgentUrl] [varchar]  (1000) NULL,
[AgentToken] [varchar]  (200) NULL,
[IsLikeSearch] [bit]  NULL DEFAULT (0),
[ExtInt] [int]  NULL,
[ExtInt2] [int]  NULL,
[ExtStr] [varchar]  (200) NULL,
[ExtStr2] [varchar]  (500) NULL,
[ExtStr3] [varchar]  (800) NULL,
[ExtStr4] [varchar]  (1000) NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [WeiXin_RequestRule] WITH NOCHECK ADD  CONSTRAINT [PK_WeiXin_RequestRule] PRIMARY KEY  NONCLUSTERED ( [uuId] )
if exists (select * from sysobjects where id = OBJECT_ID('[WeiXin_RequestRuleContent]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [WeiXin_RequestRuleContent]

CREATE TABLE [WeiXin_RequestRuleContent] (
[uuId] [varchar]  (50) NOT NULL,
[UserId] [varchar]  (50) NULL,
[RId] [varchar]  (50) NULL,
[RContent] [text]  NULL,
[RContent2] [varchar]  (2000) NULL,
[DetailUrl] [varchar]  (1000) NULL,
[PicUrl] [varchar]  (1000) NULL,
[MediaUrl] [varchar]  (1500) NULL,
[MeidaHDUrl] [varchar]  (1500) NULL,
[Remark] [varchar]  (2000) NULL,
[Seq] [int]  NULL,
[CreateDate] [datetime]  NULL,
[ExtInt] [int]  NULL,
[ExtInt2] [int]  NULL,
[ExtStr] [varchar]  (800) NULL,
[ExtStr2] [varchar]  (1000) NULL,
[Extstr3] [varchar]  (1500) NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [WeiXin_RequestRuleContent] WITH NOCHECK ADD  CONSTRAINT [PK_WeiXin_RequestRuleContent] PRIMARY KEY  NONCLUSTERED ( [uuId] )
if exists (select * from sysobjects where id = OBJECT_ID('[WeiXin_ResponseBaseData]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [WeiXin_ResponseBaseData]

CREATE TABLE [WeiXin_ResponseBaseData] (
[uuId] [varchar]  (50) NOT NULL,
[OpenId] [varchar]  (100) NULL,
[RequestType] [varchar]  (50) NULL,
[RequestContent] [varchar]  (2000) NULL,
[ResponseType] [varchar]  (50) NULL,
[ReponseContent] [varchar]  (2000) NULL,
[XmlContent] [varchar]  (2000) NULL,
[CreateDate] [datetime]  NULL,
[Flag] [int]  NULL,
[RType] [varchar]  (70) NULL,
[Remark] [varchar]  (500) NULL,
[ExtInt] [int]  NULL,
[ExtStr] [varchar]  (200) NULL,
[ExtStr2] [varchar]  (700) NULL,
[ExtStr3] [varchar]  (2000) NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [WeiXin_ResponseBaseData] WITH NOCHECK ADD  CONSTRAINT [PK_WeiXin_ResponseBaseData] PRIMARY KEY  NONCLUSTERED ( [uuId] )
if exists (select * from sysobjects where id = OBJECT_ID('[WeiXin_TemplateMessage]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [WeiXin_TemplateMessage]

CREATE TABLE [WeiXin_TemplateMessage] (
[uuId] [varchar]  (50) NOT NULL,
[Code] [varchar]  (50) NOT NULL,
[TemplateId] [varchar]  (100) NOT NULL,
[Title] [varchar]  (50) NULL,
[Primary_Industry] [int]  NULL,
[Deputy_Industry] [int]  NULL,
[Data_First] [varchar]  (100) NULL,
[Data_Remark] [varchar]  (100) NULL,
[Data_Keyword1] [varchar]  (50) NULL,
[Data_Keyword2] [varchar]  (50) NULL,
[Data_Keyword3] [varchar]  (50) NULL,
[Data_Keyword4] [varchar]  (50) NULL,
[Data_Keyword5] [varchar]  (50) NULL,
[LinkUrl] [varchar]  (50) NULL,
[MiniProgram] [int]  NULL,
[Appid] [varchar]  (50) NULL,
[Pagepath] [varchar]  (50) NULL,
[FirstColor] [nchar]  (10) NULL,
[RemarkColor] [nchar]  (10) NULL,
[Content] [varchar]  (500) NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [WeiXin_TemplateMessage] WITH NOCHECK ADD  CONSTRAINT [PK_WeiXin_TemplateMessage] PRIMARY KEY  NONCLUSTERED ( [uuId] )
if exists (select * from sysobjects where id = OBJECT_ID('[WeiXin_Users]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [WeiXin_Users]

CREATE TABLE [WeiXin_Users] (
[uuId] [varchar]  (50) NOT NULL,
[OpenId] [varchar]  (300) NOT NULL,
[Nickname] [varchar]  (200) NULL,
[Mobile] [varchar]  (20) NULL,
[Sex] [varchar]  (10) NULL,
[City] [varchar]  (200) NULL,
[Country] [varchar]  (200) NULL,
[Province] [varchar]  (200) NULL,
[Language] [varchar]  (30) NULL,
[HeadImgUrl] [varchar]  (1000) NULL,
[SubscribeTime] [varchar]  (30) NULL,
[Unionid] [varchar]  (200) NULL,
[CreateDate] [datetime]  NULL,
[GroupId] [int]  NULL,
[Status] [int]  NULL,
[WeixinId] [varchar]  (50) NULL,
[UpdateDate] [datetime]  NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [WeiXin_Users] WITH NOCHECK ADD  CONSTRAINT [PK_WeiXin_Users] PRIMARY KEY  NONCLUSTERED ( [uuId] )
if exists (select * from sysobjects where id = OBJECT_ID('[WeiXin_WxAppConfig]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [WeiXin_WxAppConfig]

CREATE TABLE [WeiXin_WxAppConfig] (
[uuId] [varchar]  (50) NOT NULL,
[WxName] [varchar]  (50) NULL,
[WxId] [varchar]  (50) NOT NULL,
[WxCode] [varchar]  (50) NULL,
[HeadPic] [varchar]  (50) NULL,
[Province] [varchar]  (50) NULL,
[City] [varchar]  (50) NULL,
[Token] [varchar]  (300) NULL,
[ApiUrl] [varchar]  (500) NULL,
[AppId] [varchar]  (200) NULL,
[AppSecret] [varchar]  (200) NULL,
[Access_Token] [varchar]  (200) NULL,
[Encoding] [varchar]  (200) NULL,
[WxType] [int]  NULL,
[Status] [bit]  NULL,
[IsDefault] [bit]  NULL,
[CloseKW] [bit]  NULL,
[Remark] [varchar]  (50) NULL,
[TimeStamp] [varchar]  (50) NULL,
[ExtStr] [varchar]  (1000) NULL,
[ExtStr2] [varchar]  (1000) NULL,
[ExtStr3] [varchar]  (1000) NULL,
[PersonSynDate] [datetime]  NULL,
[OpenidCount] [int]  NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [WeiXin_WxAppConfig] WITH NOCHECK ADD  CONSTRAINT [PK_WeiXin_WxAppConfig] PRIMARY KEY  NONCLUSTERED ( [uuId] )
INSERT [WeiXin_WxAppConfig] ([uuId],[WxName],[WxId],[WxCode],[Token],[ApiUrl],[AppId],[AppSecret],[Encoding],[WxType],[Status],[IsDefault],[CloseKW],[PersonSynDate],[OpenidCount]) VALUES ( N'2d747bf6-9efc-43e9-8263-fb4cf6f16da8',N'宜宾机电一体化研究所',N'gh_69c27280f38d',N'ybjd3936',N'yibinmetec',N'eims.dalecloud.cn/api/weixin/index?apiid=ybjd3936',N'wx21027f00d4234abc',N'e90f525e8d396fc68f0bdf4cafcc56b2',N'bwQlhHUl2pe2VU9CzVN9FCF2yZDAAiJBZqTLo3o9Oyb',0,1,1,0,N'2019-07-04 13:33:02',122)
if exists (select * from sysobjects where id = OBJECT_ID('[WeiXin_WxPropertyInfo]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [WeiXin_WxPropertyInfo]

CREATE TABLE [WeiXin_WxPropertyInfo] (
[uuId] [varchar]  (50) NOT NULL,
[WxId] [varchar]  (50) NULL,
[TypeId] [int]  NULL,
[TypeName] [varchar]  (100) NULL,
[IName] [varchar]  (200) NULL,
[IContent] [varchar]  (MAX) NULL,
[ExpiresIn] [int]  NULL,
[Count] [int]  NULL,
[CategoryId] [int]  NULL,
[CategoryName] [varchar]  (50) NULL,
[Remark] [varchar]  (1000) NULL,
[Status] [bit]  NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [WeiXin_WxPropertyInfo] WITH NOCHECK ADD  CONSTRAINT [PK_WeiXin_WxPropertyInfo] PRIMARY KEY  NONCLUSTERED ( [uuId] )
if exists (select * from sysobjects where id = OBJECT_ID('[Base_Tags]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Base_Tags]

CREATE TABLE [Base_Tags] (
[T_TagId] [varchar]  (50) NOT NULL,
[T_Tag] [varchar]  (50) NULL)

ALTER TABLE [Base_Tags] WITH NOCHECK ADD  CONSTRAINT [PK_Base_Tags] PRIMARY KEY  NONCLUSTERED ( [T_TagId] )
if exists (select * from sysobjects where id = OBJECT_ID('[DC_Article]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [DC_Article]

CREATE TABLE [DC_Article] (
[F_Id] [varchar]  (50) NOT NULL,
[F_CategoryId] [varchar]  (50) NULL,
[F_Title] [varchar]  (100) NULL,
[F_Zhaiyao] [varchar]  (255) NULL,
[F_SortCode] [int]  NULL,
[F_Source] [varchar]  (50) NULL,
[F_Author] [varchar]  (50) NULL,
[F_SubTitle] [varchar]  (100) NULL,
[F_IsRed] [bit]  NULL,
[F_IsHot] [bit]  NULL,
[F_IsTop] [bit]  NULL,
[F_IsSlide] [bit]  NULL,
[F_IsMsg] [bit]  NULL,
[F_Content] [ntext]  NULL,
[F_ImgUrl] [varchar]  (255) NULL,
[F_LinkUrl] [varchar]  (255) NULL,
[F_Click] [int]  NULL,
[F_Status] [bit]  NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL)

ALTER TABLE [DC_Article] WITH NOCHECK ADD  CONSTRAINT [PK_DC_Article] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
if exists (select * from sysobjects where id = OBJECT_ID('[DC_Article_Category]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [DC_Article_Category]

CREATE TABLE [DC_Article_Category] (
[F_Id] [varchar]  (50) NOT NULL,
[F_Title] [varchar]  (50) NULL,
[F_ParentId] [varchar]  (50) NULL,
[F_Layer] [int]  NULL,
[F_SortCode] [int]  NULL,
[F_IsHead] [bit]  NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL)

ALTER TABLE [DC_Article_Category] WITH NOCHECK ADD  CONSTRAINT [PK_DC_Article_Category] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
if exists (select * from sysobjects where id = OBJECT_ID('[DingTalk_AppConfig]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [DingTalk_AppConfig]

CREATE TABLE [DingTalk_AppConfig] (
[AppCode] [varchar]  (50) NOT NULL,
[AppName] [varchar]  (50) NULL,
[AgentId] [varchar]  (50) NULL,
[AppId] [varchar]  (50) NULL,
[AppKey] [varchar]  (50) NULL,
[AppSecret] [varchar]  (50) NULL,
[Access_Token] [varchar]  (50) NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [DingTalk_AppConfig] WITH NOCHECK ADD  CONSTRAINT [PK_DingTalk_AppConfig] PRIMARY KEY  NONCLUSTERED ( [AppCode] )
if exists (select * from sysobjects where id = OBJECT_ID('[DingTalk_CorpConfig]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [DingTalk_CorpConfig]

CREATE TABLE [DingTalk_CorpConfig] (
[uuId] [int]  NOT NULL,
[CorpId] [varchar]  (100) NULL,
[CorpSecret] [varchar]  (100) NULL,
[AppName] [varchar]  (100) NULL,
[HeadPic] [varchar]  (100) NULL,
[ApiUrl] [varchar]  (100) NULL,
[AppId] [varchar]  (100) NULL,
[AgentId] [varchar]  (100) NOT NULL,
[AppKey] [varchar]  (100) NULL,
[AppSecret] [varchar]  (100) NULL,
[Access_Token] [varchar]  (100) NULL,
[Status] [int]  NULL,
[Encoding] [varchar]  (100) NULL,
[Remark] [varchar]  (100) NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [DingTalk_CorpConfig] WITH NOCHECK ADD  CONSTRAINT [PK_DingTalk_CorpConfig] PRIMARY KEY  NONCLUSTERED ( [uuId] )
if exists (select * from sysobjects where id = OBJECT_ID('[DingTalk_Department]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [DingTalk_Department]

CREATE TABLE [DingTalk_Department] (
[Id] [varchar]  (50) NOT NULL,
[Name] [varchar]  (50) NULL,
[Order] [varchar]  (50) NULL,
[ParentId] [varchar]  (50) NULL,
[CreateDeptGroup] [bit]  NULL,
[AutoAddUser] [bit]  NULL,
[DeptHiding] [bit]  NULL,
[DeptPermits] [nvarchar]  (500) NULL,
[UserPermits] [nvarchar]  (500) NULL,
[OuterDept] [bit]  NULL,
[OuterPermitDepts] [nvarchar]  (500) NULL,
[OuterPermitUsers] [nvarchar]  (500) NULL,
[OrgDeptOwner] [varchar]  (50) NULL,
[DeptManagerUseridList] [nvarchar]  (500) NULL,
[SourceIdentifier] [varchar]  (50) NULL,
[GroupContainSubDept] [bit]  NULL,
[UpdateTime] [datetime]  NULL)

ALTER TABLE [DingTalk_Department] WITH NOCHECK ADD  CONSTRAINT [PK_DingTalk_Department] PRIMARY KEY  NONCLUSTERED ( [Id] )
if exists (select * from sysobjects where id = OBJECT_ID('[DingTalk_ProcessInstanceList]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [DingTalk_ProcessInstanceList]

CREATE TABLE [DingTalk_ProcessInstanceList] (
[uuId] [varchar]  (50) NOT NULL,
[ProcessCode] [varchar]  (50) NULL,
[Title] [varchar]  (50) NULL,
[Approvers] [nvarchar]  (255) NULL,
[CreateTime2] [datetime]  NULL,
[FinishTime] [datetime]  NULL,
[OriginatorUserId] [nvarchar]  (255) NULL,
[OriginatorDeptId] [nvarchar]  (255) NULL,
[Status] [varchar]  (50) NULL,
[CcUserids] [nvarchar]  (255) NULL,
[CcPosition] [varchar]  (50) NULL,
[Result] [varchar]  (50) NULL,
[BusinessId] [nvarchar]  (255) NULL,
[OriginatorDeptName] [nvarchar]  (255) NULL,
[BizAction] [nvarchar]  (255) NULL,
[Tasks] [nvarchar]  (500) NULL,
[FormComponentValues] [ntext]  NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [DingTalk_ProcessInstanceList] WITH NOCHECK ADD  CONSTRAINT [PK_DingTalk_ProcessInstanceList] PRIMARY KEY  NONCLUSTERED ( [uuId] )
if exists (select * from sysobjects where id = OBJECT_ID('[DingTalk_User]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [DingTalk_User]

CREATE TABLE [DingTalk_User] (
[UserId] [varchar]  (50) NOT NULL,
[OpenId] [varchar]  (50) NULL,
[UserName] [varchar]  (50) NULL,
[Active] [bit]  NULL,
[IsAdmin] [bit]  NULL,
[IsBoss] [bit]  NULL,
[Unionid] [varchar]  (100) NULL,
[IsLeaderInDepts] [bit]  NULL,
[IsLeader] [bit]  NULL,
[IsHide] [bit]  NULL,
[Department] [varchar]  (50) NULL,
[Position] [varchar]  (50) NULL,
[Avatar] [varchar]  (100) NULL,
[HiredDate] [varchar]  (50) NULL,
[JobNumber] [varchar]  (50) NULL,
[IsSenior] [bit]  NULL,
[Email] [varchar]  (50) NULL,
[Mobile] [varchar]  (50) NULL,
[OrganizeId] [varchar]  (50) NULL,
[RoleId] [varchar]  (50) NULL,
[SysUserId] [varchar]  (50) NULL,
[UpdateTime] [datetime]  NULL)

ALTER TABLE [DingTalk_User] WITH NOCHECK ADD  CONSTRAINT [PK_DingTalk_User] PRIMARY KEY  NONCLUSTERED ( [UserId] )
if exists (select * from sysobjects where id = OBJECT_ID('[Message_ShortMsg]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Message_ShortMsg]

CREATE TABLE [Message_ShortMsg] (
[uuid] [varchar]  (50) NOT NULL,
[aliCode] [varchar]  (50) NULL,
[aliMessage] [varchar]  (50) NULL,
[aliSendStatus] [int]  NULL,
[aliContent] [varchar]  (255) NULL,
[aliSendDate] [datetime]  NULL,
[aliReceiveDate] [datetime]  NULL,
[phoneNumber] [varchar]  (20) NULL,
[signName] [varchar]  (50) NULL,
[templateCode] [varchar]  (50) NULL,
[templateParam] [varchar]  (255) NULL,
[creator] [varchar]  (50) NULL,
[creatorId] [varchar]  (50) NULL,
[createTime] [datetime]  NULL,
[modifier] [varchar]  (50) NULL,
[modifierId] [varchar]  (50) NULL,
[modifyTime] [datetime]  NULL,
[deleterId] [varchar]  (50) NULL,
[deleteTime] [datetime]  NULL)

ALTER TABLE [Message_ShortMsg] WITH NOCHECK ADD  CONSTRAINT [PK_Message_ShortMsg] PRIMARY KEY  NONCLUSTERED ( [uuid] )
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_Area]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_Area]

CREATE TABLE [Sys_Area] (
[F_Id] [varchar]  (50) NOT NULL,
[F_ParentId] [varchar]  (50) NULL,
[F_Layers] [int]  NULL,
[F_EnCode] [varchar]  (50) NULL,
[F_FullName] [varchar]  (50) NULL,
[F_SimpleSpelling] [varchar]  (50) NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (50) NULL)

ALTER TABLE [Sys_Area] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_Area] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'120100',N'120000',2,N'120100',N'天津市',N'tjs',120100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'130100',N'130000',2,N'130100',N'石家庄市',N'sjzs',130100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'130200',N'130000',2,N'130200',N'唐山市',N'tss',130200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'130300',N'130000',2,N'130300',N'秦皇岛市',N'qhds',130300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'130400',N'130000',2,N'130400',N'邯郸市',N'hds',130400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'130500',N'130000',2,N'130500',N'邢台市',N'xts',130500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'130600',N'130000',2,N'130600',N'保定市',N'bds',130600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'130700',N'130000',2,N'130700',N'张家口市',N'zjks',130700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'130800',N'130000',2,N'130800',N'承德市',N'cds',130800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'130900',N'130000',2,N'130900',N'沧州市',N'czs',130900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'131000',N'130000',2,N'131000',N'廊坊市',N'lfs',131000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'131100',N'130000',2,N'131100',N'衡水市',N'hss',131100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'140100',N'140000',2,N'140100',N'太原市',N'tys',140100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'140200',N'140000',2,N'140200',N'大同市',N'dts',140200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'140300',N'140000',2,N'140300',N'阳泉市',N'yqs',140300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'140400',N'140000',2,N'140400',N'长治市',N'czs',140400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'140500',N'140000',2,N'140500',N'晋城市',N'jcs',140500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'140600',N'140000',2,N'140600',N'朔州市',N'szs',140600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'140700',N'140000',2,N'140700',N'晋中市',N'jzs',140700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'140800',N'140000',2,N'140800',N'运城市',N'ycs',140800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'140900',N'140000',2,N'140900',N'忻州市',N'xzs',140900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'141000',N'140000',2,N'141000',N'临汾市',N'lfs',141000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'141100',N'140000',2,N'141100',N'吕梁市',N'lls',141100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'150100',N'150000',2,N'150100',N'呼和浩特市',N'hhhts',150100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'150200',N'150000',2,N'150200',N'包头市',N'bts',150200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'150300',N'150000',2,N'150300',N'乌海市',N'whs',150300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'150400',N'150000',2,N'150400',N'赤峰市',N'cfs',150400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'150500',N'150000',2,N'150500',N'通辽市',N'tls',150500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'150600',N'150000',2,N'150600',N'鄂尔多斯市',N'eedss',150600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'150700',N'150000',2,N'150700',N'呼伦贝尔市',N'hlbes',150700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'150800',N'150000',2,N'150800',N'巴彦淖尔市',N'bynes',150800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'340400',N'340000',2,N'340400',N'淮南市',N'hns',340400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'340500',N'340000',2,N'340500',N'马鞍山市',N'mass',340500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'340600',N'340000',2,N'340600',N'淮北市',N'hbs',340600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'340700',N'340000',2,N'340700',N'铜陵市',N'tls',340700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'340800',N'340000',2,N'340800',N'安庆市',N'aqs',340800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'341000',N'340000',2,N'341000',N'黄山市',N'hss',341000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'341100',N'340000',2,N'341100',N'滁州市',N'czs',341100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'341200',N'340000',2,N'341200',N'阜阳市',N'fys',341200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'341300',N'340000',2,N'341300',N'宿州市',N'szs',341300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'341500',N'340000',2,N'341500',N'六安市',N'las',341500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'341600',N'340000',2,N'341600',N'亳州市',N'bzs',341600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'341700',N'340000',2,N'341700',N'池州市',N'czs',341700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'341800',N'340000',2,N'341800',N'宣城市',N'xcs',341800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'350100',N'350000',2,N'350100',N'福州市',N'fzs',350100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'350200',N'350000',2,N'350200',N'厦门市',N'xms',350200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'350300',N'350000',2,N'350300',N'莆田市',N'pts',350300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'350400',N'350000',2,N'350400',N'三明市',N'sms',350400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'350500',N'350000',2,N'350500',N'泉州市',N'qzs',350500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'350600',N'350000',2,N'350600',N'漳州市',N'zzs',350600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'350700',N'350000',2,N'350700',N'南平市',N'nps',350700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'350800',N'350000',2,N'350800',N'龙岩市',N'lys',350800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'350900',N'350000',2,N'350900',N'宁德市',N'nds',350900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'360100',N'360000',2,N'360100',N'南昌市',N'ncs',360100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'360200',N'360000',2,N'360200',N'景德镇市',N'jdzs',360200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'360300',N'360000',2,N'360300',N'萍乡市',N'pxs',360300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'360400',N'360000',2,N'360400',N'九江市',N'jjs',360400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'360500',N'360000',2,N'360500',N'新余市',N'xys',360500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'360600',N'360000',2,N'360600',N'鹰潭市',N'yts',360600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'360700',N'360000',2,N'360700',N'赣州市',N'gzs',360700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'360800',N'360000',2,N'360800',N'吉安市',N'jas',360800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'360900',N'360000',2,N'360900',N'宜春市',N'ycs',360900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'361000',N'360000',2,N'361000',N'抚州市',N'fzs',361000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'361100',N'360000',2,N'361100',N'上饶市',N'srs',361100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'370100',N'370000',2,N'370100',N'济南市',N'jns',370100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'370200',N'370000',2,N'370200',N'青岛市',N'qds',370200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'370300',N'370000',2,N'370300',N'淄博市',N'zbs',370300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'370400',N'370000',2,N'370400',N'枣庄市',N'zzs',370400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'370500',N'370000',2,N'370500',N'东营市',N'dys',370500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'370600',N'370000',2,N'370600',N'烟台市',N'yts',370600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'370700',N'370000',2,N'370700',N'潍坊市',N'wfs',370700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'370800',N'370000',2,N'370800',N'济宁市',N'jns',370800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'370900',N'370000',2,N'370900',N'泰安市',N'tas',370900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'371000',N'370000',2,N'371000',N'威海市',N'whs',371000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'371100',N'370000',2,N'371100',N'日照市',N'rzs',371100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'371200',N'370000',2,N'371200',N'莱芜市',N'lws',371200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'371300',N'370000',2,N'371300',N'临沂市',N'lys',371300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'371400',N'370000',2,N'371400',N'德州市',N'dzs',371400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'371500',N'370000',2,N'371500',N'聊城市',N'lcs',371500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'371600',N'370000',2,N'371600',N'滨州市',N'bzs',371600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'371700',N'370000',2,N'371700',N'菏泽市',N'hzs',371700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410100',N'410000',2,N'410100',N'郑州市',N'zzs',410100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410200',N'410000',2,N'410200',N'开封市',N'kfs',410200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410300',N'410000',2,N'410300',N'洛阳市',N'lys',410300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410400',N'410000',2,N'410400',N'平顶山市',N'pdss',410400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410500',N'410000',2,N'410500',N'安阳市',N'ays',410500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410600',N'410000',2,N'410600',N'鹤壁市',N'hbs',410600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410700',N'410000',2,N'410700',N'新乡市',N'xxs',410700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410800',N'410000',2,N'410800',N'焦作市',N'jzs',410800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410881',N'410000',2,N'410881',N'济源市',N'jys',410881,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410900',N'410000',2,N'410900',N'濮阳市',N'pys',410900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'411000',N'410000',2,N'411000',N'许昌市',N'xcs',411000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'411100',N'410000',2,N'411100',N'漯河市',N'lhs',411100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'411200',N'410000',2,N'411200',N'三门峡市',N'smxs',411200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'411300',N'410000',2,N'411300',N'南阳市',N'nys',411300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'411400',N'410000',2,N'411400',N'商丘市',N'sqs',411400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'411500',N'410000',2,N'411500',N'信阳市',N'xys',411500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'411600',N'410000',2,N'411600',N'周口市',N'zks',411600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'152200',N'150000',2,N'152200',N'兴安盟',N'xam',152200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'152500',N'150000',2,N'152500',N'锡林郭勒盟',N'xlglm',152500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'152900',N'150000',2,N'152900',N'阿拉善盟',N'alsm',152900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'210100',N'210000',2,N'210100',N'沈阳市',N'sys',210100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'210200',N'210000',2,N'210200',N'大连市',N'dls',210200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'210300',N'210000',2,N'210300',N'鞍山市',N'ass',210300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'210400',N'210000',2,N'210400',N'抚顺市',N'fss',210400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'210500',N'210000',2,N'210500',N'本溪市',N'bxs',210500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'210600',N'210000',2,N'210600',N'丹东市',N'dds',210600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'210700',N'210000',2,N'210700',N'锦州市',N'jzs',210700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'210800',N'210000',2,N'210800',N'营口市',N'yks',210800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'210900',N'210000',2,N'210900',N'阜新市',N'fxs',210900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'211000',N'210000',2,N'211000',N'辽阳市',N'lys',211000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'211100',N'210000',2,N'211100',N'盘锦市',N'pjs',211100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'211200',N'210000',2,N'211200',N'铁岭市',N'tls',211200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'211300',N'210000',2,N'211300',N'朝阳市',N'zys',211300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'211400',N'210000',2,N'211400',N'葫芦岛市',N'hlds',211400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'220100',N'220000',2,N'220100',N'长春市',N'zcs',220100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'220200',N'220000',2,N'220200',N'吉林市',N'jls',220200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'220300',N'220000',2,N'220300',N'四平市',N'sps',220300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'220400',N'220000',2,N'220400',N'辽源市',N'lys',220400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'220500',N'220000',2,N'220500',N'通化市',N'ths',220500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'220600',N'220000',2,N'220600',N'白山市',N'bss',220600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'220700',N'220000',2,N'220700',N'松原市',N'sys',220700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'220800',N'220000',2,N'220800',N'白城市',N'bcs',220800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'222400',N'220000',2,N'222400',N'延边朝鲜族自治州',N'ybzxzzzz',222400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'230100',N'230000',2,N'230100',N'哈尔滨市',N'hebs',230100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'230200',N'230000',2,N'230200',N'齐齐哈尔市',N'qqhes',230200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'230300',N'230000',2,N'230300',N'鸡西市',N'jxs',230300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'230400',N'230000',2,N'230400',N'鹤岗市',N'hgs',230400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'230500',N'230000',2,N'230500',N'双鸭山市',N'syss',230500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'230600',N'230000',2,N'230600',N'大庆市',N'dqs',230600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'230700',N'230000',2,N'230700',N'伊春市',N'ycs',230700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'230800',N'230000',2,N'230800',N'佳木斯市',N'jmss',230800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'230900',N'230000',2,N'230900',N'七台河市',N'qths',230900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'231000',N'230000',2,N'231000',N'牡丹江市',N'mdjs',231000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'231100',N'230000',2,N'231100',N'黑河市',N'hhs',231100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'231200',N'230000',2,N'231200',N'绥化市',N'shs',231200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'232700',N'230000',2,N'232700',N'大兴安岭地区',N'dxaldq',232700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'310100',N'310000',2,N'310100',N'上海市',N'shs',310100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'320100',N'320000',2,N'320100',N'南京市',N'njs',320100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'320200',N'320000',2,N'320200',N'无锡市',N'wxs',320200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'320300',N'320000',2,N'320300',N'徐州市',N'xzs',320300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'320400',N'320000',2,N'320400',N'常州市',N'czs',320400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'320500',N'320000',2,N'320500',N'苏州市',N'szs',320500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'320600',N'320000',2,N'320600',N'南通市',N'nts',320600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'320700',N'320000',2,N'320700',N'连云港市',N'lygs',320700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'320800',N'320000',2,N'320800',N'淮安市',N'has',320800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'320900',N'320000',2,N'320900',N'盐城市',N'ycs',320900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'321000',N'320000',2,N'321000',N'扬州市',N'yzs',321000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'321100',N'320000',2,N'321100',N'镇江市',N'zjs',321100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'321200',N'320000',2,N'321200',N'泰州市',N'tzs',321200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'321300',N'320000',2,N'321300',N'宿迁市',N'sqs',321300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'330100',N'330000',2,N'330100',N'杭州市',N'hzs',330100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'330200',N'330000',2,N'330200',N'宁波市',N'nbs',330200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'330300',N'330000',2,N'330300',N'温州市',N'wzs',330300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'330400',N'330000',2,N'330400',N'嘉兴市',N'jxs',330400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'330500',N'330000',2,N'330500',N'湖州市',N'hzs',330500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'330600',N'330000',2,N'330600',N'绍兴市',N'sxs',330600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'330700',N'330000',2,N'330700',N'金华市',N'jhs',330700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'330800',N'330000',2,N'330800',N'衢州市',N'qzs',330800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'330900',N'330000',2,N'330900',N'舟山市',N'zss',330900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'331000',N'330000',2,N'331000',N'台州市',N'tzs',331000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'331100',N'330000',2,N'331100',N'丽水市',N'lss',331100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'340100',N'340000',2,N'340100',N'合肥市',N'hfs',340100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'340200',N'340000',2,N'340200',N'芜湖市',N'whs',340200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'420100',N'420000',2,N'420100',N'武汉市',N'whs',420100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'420200',N'420000',2,N'420200',N'黄石市',N'hss',420200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'420300',N'420000',2,N'420300',N'十堰市',N'sys',420300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'420500',N'420000',2,N'420500',N'宜昌市',N'ycs',420500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'420600',N'420000',2,N'420600',N'襄阳市',N'xys',420600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'420700',N'420000',2,N'420700',N'鄂州市',N'ezs',420700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'420800',N'420000',2,N'420800',N'荆门市',N'jms',420800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'420900',N'420000',2,N'420900',N'孝感市',N'xgs',420900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'421000',N'420000',2,N'421000',N'荆州市',N'jzs',421000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'421100',N'420000',2,N'421100',N'黄冈市',N'hgs',421100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'421200',N'420000',2,N'421200',N'咸宁市',N'xns',421200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'421300',N'420000',2,N'421300',N'随州市',N'szs',421300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'422800',N'420000',2,N'422800',N'恩施土家族苗族自治州',N'estjzmzzzz',422800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'430100',N'430000',2,N'430100',N'长沙市',N'zss',430100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'430200',N'430000',2,N'430200',N'株洲市',N'zzs',430200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'430300',N'430000',2,N'430300',N'湘潭市',N'xts',430300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'430400',N'430000',2,N'430400',N'衡阳市',N'hys',430400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'430500',N'430000',2,N'430500',N'邵阳市',N'sys',430500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'430600',N'430000',2,N'430600',N'岳阳市',N'yys',430600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'430700',N'430000',2,N'430700',N'常德市',N'cds',430700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'430800',N'430000',2,N'430800',N'张家界市',N'zjjs',430800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'430900',N'430000',2,N'430900',N'益阳市',N'yys',430900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'431000',N'430000',2,N'431000',N'郴州市',N'czs',431000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'431100',N'430000',2,N'431100',N'永州市',N'yzs',431100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'431200',N'430000',2,N'431200',N'怀化市',N'hhs',431200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'431300',N'430000',2,N'431300',N'娄底市',N'lds',431300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'433100',N'430000',2,N'433100',N'湘西土家族苗族自治州',N'xxtjzmzzzz',433100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'440100',N'440000',2,N'440100',N'广州市',N'gzs',440100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'440200',N'440000',2,N'440200',N'韶关市',N'sgs',440200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'440300',N'440000',2,N'440300',N'深圳市',N'szs',440300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'440400',N'440000',2,N'440400',N'珠海市',N'zhs',440400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'440500',N'440000',2,N'440500',N'汕头市',N'sts',440500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'440600',N'440000',2,N'440600',N'佛山市',N'fss',440600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'440700',N'440000',2,N'440700',N'江门市',N'jms',440700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'440800',N'440000',2,N'440800',N'湛江市',N'zjs',440800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'440900',N'440000',2,N'440900',N'茂名市',N'mms',440900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'441200',N'440000',2,N'441200',N'肇庆市',N'zqs',441200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'441300',N'440000',2,N'441300',N'惠州市',N'hzs',441300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'441400',N'440000',2,N'441400',N'梅州市',N'mzs',441400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'441500',N'440000',2,N'441500',N'汕尾市',N'sws',441500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'441600',N'440000',2,N'441600',N'河源市',N'hys',441600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'441700',N'440000',2,N'441700',N'阳江市',N'yjs',441700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'441800',N'440000',2,N'441800',N'清远市',N'qys',441800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'445100',N'440000',2,N'445100',N'潮州市',N'czs',445100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'445200',N'440000',2,N'445200',N'揭阳市',N'jys',445200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'445300',N'440000',2,N'445300',N'云浮市',N'yfs',445300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'450100',N'450000',2,N'450100',N'南宁市',N'nns',450100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'450200',N'450000',2,N'450200',N'柳州市',N'lzs',450200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'450300',N'450000',2,N'450300',N'桂林市',N'gls',450300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'450400',N'450000',2,N'450400',N'梧州市',N'wzs',450400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'450500',N'450000',2,N'450500',N'北海市',N'bhs',450500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'450600',N'450000',2,N'450600',N'防城港市',N'fcgs',450600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'450700',N'450000',2,N'450700',N'钦州市',N'qzs',450700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'450800',N'450000',2,N'450800',N'贵港市',N'ggs',450800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'450900',N'450000',2,N'450900',N'玉林市',N'yls',450900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'451000',N'450000',2,N'451000',N'百色市',N'bss',451000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'451100',N'450000',2,N'451100',N'贺州市',N'hzs',451100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'451200',N'450000',2,N'451200',N'河池市',N'hcs',451200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'451300',N'450000',2,N'451300',N'来宾市',N'lbs',451300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'451400',N'450000',2,N'451400',N'崇左市',N'czs',451400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'460100',N'460000',2,N'460100',N'海口市',N'hks',460100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'500100',N'500000',2,N'500100',N'重庆市',N'zqs',500100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'510100',N'510000',2,N'510100',N'成都市',N'cds',510100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'510300',N'510000',2,N'510300',N'自贡市',N'zgs',510300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'510400',N'510000',2,N'510400',N'攀枝花市',N'pzhs',510400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'510500',N'510000',2,N'510500',N'泸州市',N'lzs',510500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'510700',N'510000',2,N'510700',N'绵阳市',N'mys',510700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'510800',N'510000',2,N'510800',N'广元市',N'gys',510800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'510900',N'510000',2,N'510900',N'遂宁市',N'sns',510900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'511000',N'510000',2,N'511000',N'内江市',N'njs',511000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'511100',N'510000',2,N'511100',N'乐山市',N'yss',511100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'511300',N'510000',2,N'511300',N'南充市',N'ncs',511300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'511400',N'510000',2,N'511400',N'眉山市',N'mss',511400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'511500',N'510000',2,N'511500',N'宜宾市',N'ybs',511500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'511600',N'510000',2,N'511600',N'广安市',N'gas',511600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'511700',N'510000',2,N'511700',N'达州市',N'dzs',511700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'511800',N'510000',2,N'511800',N'雅安市',N'yas',511800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'511900',N'510000',2,N'511900',N'巴中市',N'bzs',511900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'512000',N'510000',2,N'512000',N'资阳市',N'zys',512000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'513200',N'510000',2,N'513200',N'阿坝藏族羌族自治州',N'abzzqzzzz',513200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'513300',N'510000',2,N'513300',N'甘孜藏族自治州',N'gzzzzzz',513300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'513400',N'510000',2,N'513400',N'凉山彝族自治州',N'lsyzzzz',513400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'520100',N'520000',2,N'520100',N'贵阳市',N'gys',520100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'520200',N'520000',2,N'520200',N'六盘水市',N'lpss',520200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'520300',N'520000',2,N'520300',N'遵义市',N'zys',520300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'520400',N'520000',2,N'520400',N'安顺市',N'ass',520400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'522200',N'520000',2,N'522200',N'铜仁市',N'trs',522200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'522300',N'520000',2,N'522300',N'黔西南布依族苗族自治州',N'qxnbyzmzzzz',522300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'522400',N'520000',2,N'522400',N'毕节市',N'bjs',522400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'522600',N'520000',2,N'522600',N'黔东南苗族侗族自治州',N'qdnmztzzzz',522600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'522700',N'520000',2,N'522700',N'黔南布依族苗族自治州',N'qnbyzmzzzz',522700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'530100',N'530000',2,N'530100',N'昆明市',N'kms',530100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'530300',N'530000',2,N'530300',N'曲靖市',N'qjs',530300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'530400',N'530000',2,N'530400',N'玉溪市',N'yxs',530400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'530500',N'530000',2,N'530500',N'保山市',N'bss',530500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'530600',N'530000',2,N'530600',N'昭通市',N'zts',530600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'530700',N'530000',2,N'530700',N'丽江市',N'ljs',530700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'530800',N'530000',2,N'530800',N'普洱市',N'pes',530800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'530900',N'530000',2,N'530900',N'临沧市',N'lcs',530900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'532300',N'530000',2,N'532300',N'楚雄彝族自治州',N'cxyzzzz',532300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'532500',N'530000',2,N'532500',N'红河哈尼族彝族自治州',N'hhhnzyzzzz',532500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'532600',N'530000',2,N'532600',N'文山壮族苗族自治州',N'wszzmzzzz',532600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'532800',N'530000',2,N'532800',N'西双版纳傣族自治州',N'xsbndzzzz',532800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'532900',N'530000',2,N'532900',N'大理白族自治州',N'dlbzzzz',532900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'533100',N'530000',2,N'533100',N'德宏傣族景颇族自治州',N'dhdzjpzzzz',533100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'533300',N'530000',2,N'533300',N'怒江傈僳族自治州',N'njlszzzz',533300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'533400',N'530000',2,N'533400',N'迪庆藏族自治州',N'dqzzzzz',533400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'540100',N'540000',2,N'540100',N'拉萨市',N'lss',540100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'542100',N'540000',2,N'542100',N'昌都地区',N'cddq',542100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'542200',N'540000',2,N'542200',N'山南地区',N'sndq',542200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'542300',N'540000',2,N'542300',N'日喀则地区',N'rkzdq',542300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'542400',N'540000',2,N'542400',N'那曲地区',N'nqdq',542400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'542500',N'540000',2,N'542500',N'阿里地区',N'aldq',542500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'542600',N'540000',2,N'542600',N'林芝地区',N'lzdq',542600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'610100',N'610000',2,N'610100',N'西安市',N'xas',610100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'610200',N'610000',2,N'610200',N'铜川市',N'tcs',610200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'610300',N'610000',2,N'610300',N'宝鸡市',N'bjs',610300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'610400',N'610000',2,N'610400',N'咸阳市',N'xys',610400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'610500',N'610000',2,N'610500',N'渭南市',N'wns',610500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'610600',N'610000',2,N'610600',N'延安市',N'yas',610600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'610700',N'610000',2,N'610700',N'汉中市',N'hzs',610700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'610800',N'610000',2,N'610800',N'榆林市',N'yls',610800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'610900',N'610000',2,N'610900',N'安康市',N'aks',610900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'611000',N'610000',2,N'611000',N'商洛市',N'sls',611000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'620100',N'620000',2,N'620100',N'兰州市',N'lzs',620100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'620200',N'620000',2,N'620200',N'嘉峪关市',N'jygs',620200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'620300',N'620000',2,N'620300',N'金昌市',N'jcs',620300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'620400',N'620000',2,N'620400',N'白银市',N'bys',620400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'620500',N'620000',2,N'620500',N'天水市',N'tss',620500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'110000',N'0',1,N'110000',N'北京',N'bj',110000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'120000',N'0',1,N'120000',N'天津',N'tj',120000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'130000',N'0',1,N'130000',N'河北省',N'hbs',130000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'140000',N'0',1,N'140000',N'山西省',N'sxs',140000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'150000',N'0',1,N'150000',N'内蒙古自治区',N'nmgzzq',150000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'210000',N'0',1,N'210000',N'辽宁省',N'lns',210000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'220000',N'0',1,N'220000',N'吉林省',N'jls',220000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'230000',N'0',1,N'230000',N'黑龙江省',N'hljs',230000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'310000',N'0',1,N'310000',N'上海',N'sh',310000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'320000',N'0',1,N'320000',N'江苏省',N'jss',320000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'330000',N'0',1,N'330000',N'浙江省',N'zjs',330000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'340000',N'0',1,N'340000',N'安徽省',N'ahs',340000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'350000',N'0',1,N'350000',N'福建省',N'fjs',350000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'360000',N'0',1,N'360000',N'江西省',N'jxs',360000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'370000',N'0',1,N'370000',N'山东省',N'sds',370000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'410000',N'0',1,N'410000',N'河南省',N'hns',410000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'420000',N'0',1,N'420000',N'湖北省',N'hbs',420000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'430000',N'0',1,N'430000',N'湖南省',N'hns',430000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'440000',N'0',1,N'440000',N'广东省',N'gds',440000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'450000',N'0',1,N'450000',N'广西壮族自治区',N'gxzzzzq',450000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'460000',N'0',1,N'460000',N'海南省',N'hns',460000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'500000',N'0',1,N'500000',N'重庆',N'zq',500000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'510000',N'0',1,N'510000',N'四川省',N'scs',510000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'520000',N'0',1,N'520000',N'贵州省',N'gzs',520000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'530000',N'0',1,N'530000',N'云南省',N'yns',530000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'540000',N'0',1,N'540000',N'西藏自治区',N'xzzzq',540000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'610000',N'0',1,N'610000',N'陕西省',N'sxs',610000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'620000',N'0',1,N'620000',N'甘肃省',N'gss',620000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'630000',N'0',1,N'630000',N'青海省',N'qhs',630000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'640000',N'0',1,N'640000',N'宁夏回族自治区',N'nxhzzzq',640000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'650000',N'0',1,N'650000',N'新疆维吾尔自治区',N'xjwwezzq',650000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'810000',N'0',1,N'810000',N'香港特别行政区',N'xgtbxzq',810000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'820000',N'0',1,N'820000',N'澳门特别行政区',N'amtbxzq',820000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'830000',N'0',1,N'830000',N'台湾省',N'tws',830000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'150900',N'150000',2,N'150900',N'乌兰察布市',N'wlcbs',150900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'340300',N'340000',2,N'340300',N'蚌埠市',N'bbs',340300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'411700',N'410000',2,N'411700',N'驻马店市',N'zmds',411700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'510600',N'510000',2,N'510600',N'德阳市',N'dys',510600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'620600',N'620000',2,N'620600',N'武威市',N'wws',620600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'620700',N'620000',2,N'620700',N'张掖市',N'zys',620700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'620800',N'620000',2,N'620800',N'平凉市',N'pls',620800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'620900',N'620000',2,N'620900',N'酒泉市',N'jqs',620900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'621000',N'620000',2,N'621000',N'庆阳市',N'qys',621000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'621100',N'620000',2,N'621100',N'定西市',N'dxs',621100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'621200',N'620000',2,N'621200',N'陇南市',N'lns',621200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'622900',N'620000',2,N'622900',N'临夏回族自治州',N'lxhzzzz',622900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'623000',N'620000',2,N'623000',N'甘南藏族自治州',N'gnzzzzz',623000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'630100',N'630000',2,N'630100',N'西宁市',N'xns',630100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'632100',N'630000',2,N'632100',N'海东市',N'hds',632100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'632200',N'630000',2,N'632200',N'海北藏族自治州',N'hbzzzzz',632200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'632300',N'630000',2,N'632300',N'黄南藏族自治州',N'hnzzzzz',632300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'632500',N'630000',2,N'632500',N'海南藏族自治州',N'hnzzzzz',632500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'632600',N'630000',2,N'632600',N'果洛藏族自治州',N'glzzzzz',632600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'632700',N'630000',2,N'632700',N'玉树藏族自治州',N'yszzzzz',632700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'632800',N'630000',2,N'632800',N'海西蒙古族藏族自治州',N'hxmgzzzzzz',632800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'640100',N'640000',2,N'640100',N'银川市',N'ycs',640100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'640200',N'640000',2,N'640200',N'石嘴山市',N'szss',640200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'640300',N'640000',2,N'640300',N'吴忠市',N'wzs',640300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'640400',N'640000',2,N'640400',N'固原市',N'gys',640400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'640500',N'640000',2,N'640500',N'中卫市',N'zws',640500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'650100',N'650000',2,N'650100',N'乌鲁木齐市',N'wlmqs',650100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'650200',N'650000',2,N'650200',N'克拉玛依市',N'klmys',650200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'652100',N'650000',2,N'652100',N'吐鲁番地区',N'tlfdq',652100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'652200',N'650000',2,N'652200',N'哈密地区',N'hmdq',652200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'652300',N'650000',2,N'652300',N'昌吉回族自治州',N'cjhzzzz',652300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'652700',N'650000',2,N'652700',N'博尔塔拉蒙古自治州',N'betlmgzzz',652700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'652800',N'650000',2,N'652800',N'巴音郭楞蒙古自治州',N'byglmgzzz',652800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'652900',N'650000',2,N'652900',N'阿克苏地区',N'aksdq',652900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'653000',N'650000',2,N'653000',N'克孜勒苏柯尔克孜自治州',N'kzlskekzzzz',653000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'653100',N'650000',2,N'653100',N'喀什地区',N'ksdq',653100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'653200',N'650000',2,N'653200',N'和田地区',N'htdq',653200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'654000',N'650000',2,N'654000',N'伊犁哈萨克自治州',N'ylhskzzz',654000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'654200',N'650000',2,N'654200',N'塔城地区',N'tcdq',654200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'654300',N'650000',2,N'654300',N'阿勒泰地区',N'altdq',654300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'810100',N'810000',2,N'810100',N'香港岛',N'xgd',810100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'810200',N'810000',2,N'810200',N'九龙',N'jl',810200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'810300',N'810000',2,N'810300',N'新界',N'xj',810300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'820100',N'820000',2,N'820100',N'澳门半岛',N'ambd',820100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'820300',N'820000',2,N'820300',N'路环岛',N'lhd',820300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'820400',N'820000',2,N'820400',N'凼仔岛',N'dzd',820400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'830100',N'830000',2,N'830100',N'台北市',N'tbs',830100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'830200',N'830000',2,N'830200',N'高雄市',N'gxs',830200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'830300',N'830000',2,N'830300',N'台南市',N'tns',830300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'830400',N'830000',2,N'830400',N'台中市',N'tzs',830400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'830500',N'830000',2,N'830500',N'南投县',N'ntx',830500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'830600',N'830000',2,N'830600',N'基隆市',N'jls',830600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'830700',N'830000',2,N'830700',N'新竹市',N'xzs',830700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'830800',N'830000',2,N'830800',N'嘉义市',N'jys',830800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'830900',N'830000',2,N'830900',N'宜兰县',N'ylx',830900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'831000',N'830000',2,N'831000',N'新竹县',N'xzx',831000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'831100',N'830000',2,N'831100',N'桃园县',N'tyx',831100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'831200',N'830000',2,N'831200',N'苗栗县',N'mlx',831200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'831300',N'830000',2,N'831300',N'彰化县',N'zhx',831300,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'831400',N'830000',2,N'831400',N'嘉义县',N'jyx',831400,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'831500',N'830000',2,N'831500',N'云林县',N'ylx',831500,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'831600',N'830000',2,N'831600',N'屏东县',N'pdx',831600,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'831700',N'830000',2,N'831700',N'台东县',N'tdx',831700,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'831800',N'830000',2,N'831800',N'花莲县',N'hlx',831800,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'831900',N'830000',2,N'831900',N'澎湖县',N'phx',831900,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'832000',N'830000',2,N'832000',N'新北市',N'xbs',832000,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'832100',N'830000',2,N'832100',N'台中县',N'tzx',832100,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'832200',N'830000',2,N'832200',N'连江县',N'ljx',832200,0,1,N'2016-07-20 00:00:00')
INSERT [Sys_Area] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_SimpleSpelling],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'110100',N'110000',2,N'110100',N'北京市',N'bjs',110100,0,1,N'2016-07-20 00:00:00')
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_DbBackup]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_DbBackup]

CREATE TABLE [Sys_DbBackup] (
[F_Id] [varchar]  (50) NOT NULL,
[F_BackupType] [varchar]  (50) NULL,
[F_DbName] [varchar]  (50) NULL,
[F_FileName] [varchar]  (50) NULL,
[F_FileSize] [varchar]  (50) NULL,
[F_FilePath] [varchar]  (500) NULL,
[F_BackupTime] [datetime]  NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (500) NULL)

ALTER TABLE [Sys_DbBackup] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_DbBackup] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_DbBackup] ([F_Id],[F_BackupType],[F_DbName],[F_FileName],[F_FileSize],[F_FilePath],[F_BackupTime],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'8b3fb1ff-07ab-46bb-a12a-85e65a9a748d',N'1',N'NFineBase',N'201607190929504502.bak',N'2.81 MB',N'/Resource/DbBackup/201607190929504502.bak',N'2016-07-19 09:29:52',0,1,N'2016-07-19 09:29:52')
INSERT [Sys_DbBackup] ([F_Id],[F_BackupType],[F_DbName],[F_FileName],[F_FileSize],[F_FilePath],[F_BackupTime],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'ddbbfaf3-44b7-4e34-b0c5-c79e21aba83a',N'1',N'NFineBase',N'201607181640402083.bak',N'2.81 MB',N'/Resource/DbBackup/201607181640402083.bak',N'2016-07-18 16:40:41',0,1,N'2016-07-18 16:40:41')
INSERT [Sys_DbBackup] ([F_Id],[F_BackupType],[F_DbName],[F_FileName],[F_FileSize],[F_FilePath],[F_BackupTime],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'e6ebead5-f9f1-4aed-8193-b087fbde4a49',N'1',N'NFineBase',N'201912232324147656.bak',N'3.02 MB',N'/Resource/DbBackup/201912232324147656.bak',N'2019-12-23 23:24:25',0,1)
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_FilterIP]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_FilterIP]

CREATE TABLE [Sys_FilterIP] (
[F_Id] [varchar]  (50) NOT NULL,
[F_Type] [bit]  NULL,
[F_StartIP] [varchar]  (50) NULL,
[F_EndIP] [varchar]  (50) NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (500) NULL)

ALTER TABLE [Sys_FilterIP] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_FilterIP] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_FilterIP] ([F_Id],[F_Type],[F_StartIP],[F_EndIP],[F_DeleteMark],[F_EnabledMark],[F_Description],[F_CreatorTime]) VALUES ( N'4e035f2b-a03b-49b5-a38d-1c6d211a2a04',1,N'192.168.1.1',N'192.168.1.10',0,1,N'测试',N'2016-07-18 17:51:06')
INSERT [Sys_FilterIP] ([F_Id],[F_Type],[F_StartIP],[F_EndIP],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'b3fbe66f-82cd-4f4a-ada3-61eb5a2d9eee',0,N'192.168.0.20',N'192.168.0.25',0,1,N'2016-07-18 17:52:47')
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_Items]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_Items]

CREATE TABLE [Sys_Items] (
[F_Id] [varchar]  (50) NOT NULL,
[F_ParentId] [varchar]  (50) NULL,
[F_EnCode] [varchar]  (50) NULL,
[F_FullName] [varchar]  (50) NULL,
[F_IsTree] [bit]  NULL,
[F_Layers] [int]  NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (50) NULL)

ALTER TABLE [Sys_Items] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_Items] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'0',N'Sys_Items',N'通用字典',0,1,1,0,1)
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'OrganizeCategory',N'机构分类',0,2,2,0,1)
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'RoleType',N'角色类型',0,2,3,0,1)
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'0DF5B725-5FB8-487F-B0E4-BC563A77EB04',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'DbType',N'数据库类型',0,2,4,0,1)
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'9a7079bd-0660-4549-9c2d-db5e8616619f',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'DbLogType',N'系统日志',0,16,0,1,N'2016-07-19 17:09:45')
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'AuditState',N'审核状态',0,2,6,0,1)
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'2748F35F-4EE2-417C-A907-3453146AAF67',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'Certificate',N'证件名称',0,2,7,0,1)
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'00F76465-DBBA-484A-B75C-E81DEE9313E6',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'Education',N'学历',0,2,8,0,1)
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'FA7537E2-1C64-4431-84BF-66158DD63269',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'101',N'婚姻',0,2,12,0,1)
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'8CEB2F71-026C-4FA6-9A61-378127AE7320',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'102',N'生育',0,2,13,0,1)
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'15023A4E-4856-44EB-BE71-36A106E2AA59',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'103',N'民族',0,2,14,0,1)
INSERT [Sys_Items] ([F_Id],[F_ParentId],[F_EnCode],[F_FullName],[F_IsTree],[F_Layers],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'BDD797C3-2323-4868-9A63-C8CC3437AEAA',N'77070117-3F1A-41BA-BF81-B8B85BF10D5E',N'104',N'性别',0,2,15,0,1)
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_ItemsDetail]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_ItemsDetail]

CREATE TABLE [Sys_ItemsDetail] (
[F_Id] [varchar]  (50) NOT NULL,
[F_ItemId] [varchar]  (50) NULL,
[F_ParentId] [varchar]  (50) NULL,
[F_ItemCode] [varchar]  (50) NULL,
[F_ItemName] [varchar]  (50) NULL,
[F_SimpleSpelling] [varchar]  (500) NULL,
[F_IsDefault] [bit]  NULL,
[F_Layers] [int]  NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (50) NULL)

ALTER TABLE [Sys_ItemsDetail] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_ItemsDetail] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'B97BD7F5-B212-40C1-A1F7-DD9A2E63EEF2',N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D',N'Group',N'集团',0,1,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'2C3715AC-16F7-48FC-AB40-B0931DB1E729',N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D',N'Area',N'区域',0,2,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'D082BDB9-5C34-49BF-BD51-4E85D7BFF646',N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D',N'Company',N'公司',0,3,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'2B540AC5-6E64-4688-BB60-E0C01DFA982C',N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D',N'SubCompany',N'子公司',0,4,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'A64EBB80-6A24-48AF-A10E-B6A532C32CA6',N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D',N'Department',N'部门',0,5,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'D1F439B9-D80E-4547-9EF0-163391854AB5',N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D',N'SubDepartment',N'子部门',0,6,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'19EE595A-E775-409D-A48F-B33CF9F262C7',N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D',N'WorkGroup',N'小组',0,7,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'e5079bae-a8c0-4209-9019-6a2b4a3a7dac',N'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE',N'1',N'系统角色',0,1,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'04aba88d-f09b-46c6-bd90-a38471399b0e',N'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE',N'2',N'业务角色',0,2,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'cc6daa5c-a71c-4b2c-9a98-336bc3ee13c8',N'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE',N'3',N'其他角色',0,3,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'7a6d1bc4-3ec7-4c57-be9b-b4c97d60d5f6',N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0',N'1',N'草稿',0,1,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'ce340c73-5048-4940-b86e-e3b3d53fdb2c',N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0',N'2',N'提交',0,2,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'41053517-215d-4e11-81cd-367c0e9578d7',N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0',N'3',N'通过',0,3,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'e1979a4f-7fc1-42b9-a0e2-52d7059e8fb9',N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0',N'4',N'待审',0,4,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'63acf96d-6115-4d76-a994-438f59419aad',N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0',N'5',N'退回',0,5,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'8b7b38bf-07c5-4f71-a853-41c5add4a94e',N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0',N'6',N'完成',0,6,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'49b68663-ad01-4c43-b084-f98e3e23fee8',N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0',N'7',N'废弃',0,7,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'fa6c1873-888c-4b70-a2cc-59fccbb22078',N'0DF5B725-5FB8-487F-B0E4-BC563A77EB04',N'SqlServer',N'SqlServer',0,1,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'27e85cb8-04e7-447b-911d-dd1e97dfab83',N'0DF5B725-5FB8-487F-B0E4-BC563A77EB04',N'Oracle',N'Oracle',0,2,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'34a642b2-44d4-485f-b3fc-6cce24f68b0f',N'0DF5B725-5FB8-487F-B0E4-BC563A77EB04',N'MySql',N'MySql',0,3,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'1950efdf-8685-4341-8d2c-ac85ac7addd0',N'00F76465-DBBA-484A-B75C-E81DEE9313E6',N'1',N'小学',0,1,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'433511a9-78bd-41a0-ab25-e4d4b3423055',N'00F76465-DBBA-484A-B75C-E81DEE9313E6',N'2',N'初中',0,2,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'acb128a6-ff63-4e25-b1e8-0a336ed3ab18',N'00F76465-DBBA-484A-B75C-E81DEE9313E6',N'3',N'高中',0,3,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'a4974810-d88d-4d54-82cc-fd779875478f',N'00F76465-DBBA-484A-B75C-E81DEE9313E6',N'4',N'中专',0,4,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'486a82e3-1950-425e-b2ce-b5d98f33016a',N'00F76465-DBBA-484A-B75C-E81DEE9313E6',N'5',N'大专',0,5,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'34222d46-e0c6-446e-8150-dbefc47a1d5f',N'00F76465-DBBA-484A-B75C-E81DEE9313E6',N'6',N'本科',0,6,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'3f280e2b-92f6-466c-8cc3-d7c8ff48cc8d',N'00F76465-DBBA-484A-B75C-E81DEE9313E6',N'7',N'硕士',0,7,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'930b8de2-049f-4753-b9fd-87f484911ee4',N'00F76465-DBBA-484A-B75C-E81DEE9313E6',N'8',N'博士',0,8,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'355ad7a4-c4f8-4bd3-9c72-ff07983da0f0',N'00F76465-DBBA-484A-B75C-E81DEE9313E6',N'9',N'其他',0,9,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'5d6def0e-e2a7-48eb-b43c-cc3631f60dd7',N'BDD797C3-2323-4868-9A63-C8CC3437AEAA',N'1',N'男',0,1,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'822baf7c-abdb-4257-9b78-1f550806f544',N'BDD797C3-2323-4868-9A63-C8CC3437AEAA',N'0',N'女',0,2,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'738edf2a-d59f-4992-97ef-d847db23bcb8',N'FA7537E2-1C64-4431-84BF-66158DD63269',N'1',N'已婚',0,1,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'a7c4aba2-a891-4558-9b0a-bd7a1100a645',N'FA7537E2-1C64-4431-84BF-66158DD63269',N'2',N'未婚',0,2,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'f9609400-7caf-49af-ae3c-7671a9292fb3',N'FA7537E2-1C64-4431-84BF-66158DD63269',N'3',N'离异',0,3,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'a6f271f9-8653-4c5c-86cf-4cd00324b3c3',N'FA7537E2-1C64-4431-84BF-66158DD63269',N'4',N'丧偶',0,4,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'7c1135be-0148-43eb-ae49-62a1e16ebbe3',N'FA7537E2-1C64-4431-84BF-66158DD63269',N'5',N'其他',0,5,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'582e0b66-2ee9-4885-9f0c-3ce3ebf96e12',N'8CEB2F71-026C-4FA6-9A61-378127AE7320',N'1',N'已育',0,1,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'de2167f3-40fe-4bf7-b8cb-5b1c554bad7a',N'8CEB2F71-026C-4FA6-9A61-378127AE7320',N'2',N'未育',0,2,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'9b6a2225-6138-4cf2-9845-1bbecdf9b3ed',N'8CEB2F71-026C-4FA6-9A61-378127AE7320',N'3',N'其他',0,3,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'49300258-1227-4b85-b6a2-e948dbbe57a4',N'15023A4E-4856-44EB-BE71-36A106E2AA59',N'汉族',N'汉族',0,1,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'd69cb819-2bb3-4e1d-9917-33b9a439233d',N'2748F35F-4EE2-417C-A907-3453146AAF67',N'1',N'身份证',0,1,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'4c2f2428-2e00-4336-b9ce-5a61f24193f6',N'2748F35F-4EE2-417C-A907-3453146AAF67',N'2',N'士兵证',0,2,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'48c4e0f5-f570-4601-8946-6078762db3bf',N'2748F35F-4EE2-417C-A907-3453146AAF67',N'3',N'军官证',0,3,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'0096ad81-4317-486e-9144-a6a02999ff19',N'2748F35F-4EE2-417C-A907-3453146AAF67',N'4',N'护照',0,4,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'ace2d5e8-56d4-4c8b-8409-34bc272df404',N'2748F35F-4EE2-417C-A907-3453146AAF67',N'5',N'其它',0,5,0,1)
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'795f2695-497a-4f5e-ab1d-706095c1edb9',N'9a7079bd-0660-4549-9c2d-db5e8616619f',N'Other',N'其他',0,0,0,1,N'2016-07-19 17:10:33',N'2016-07-19 18:20:09')
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'643209c8-931b-4641-9e04-b8bdd11800af',N'9a7079bd-0660-4549-9c2d-db5e8616619f',N'Login',N'登录',0,1,0,1,N'2016-07-19 17:10:39',N'2016-07-19 18:20:17')
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'3c884a03-4f34-4150-b134-966387f1de2a',N'9a7079bd-0660-4549-9c2d-db5e8616619f',N'Exit',N'退出',0,2,0,1,N'2016-07-19 17:10:49',N'2016-07-19 18:20:23')
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'ccc8e274-75da-4eb8-bed0-69008ab7c41c',N'9a7079bd-0660-4549-9c2d-db5e8616619f',N'Visit',N'访问',0,3,0,1,N'2016-07-19 17:10:55',N'2016-07-19 18:20:29')
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'e545061c-93fd-4ca2-ab29-b43db9db798b',N'9a7079bd-0660-4549-9c2d-db5e8616619f',N'Create',N'新增',0,4,0,1,N'2016-07-19 17:11:03',N'2016-07-19 18:20:35')
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'a13ccf0d-ac8f-44ac-a522-4a54edf1f0fa',N'9a7079bd-0660-4549-9c2d-db5e8616619f',N'Delete',N'删除',0,5,0,1,N'2016-07-19 17:11:09',N'2016-07-19 18:20:43')
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'392f88a8-02c2-49eb-8aed-b2acf474272a',N'9a7079bd-0660-4549-9c2d-db5e8616619f',N'Update',N'修改',0,6,0,1,N'2016-07-19 17:11:14',N'2016-07-19 18:20:49')
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'24e39617-f04e-4f6f-9209-ad71e870e7c6',N'9a7079bd-0660-4549-9c2d-db5e8616619f',N'Submit',N'提交',0,7,0,1,N'2016-07-19 17:11:19',N'2016-07-19 18:20:54')
INSERT [Sys_ItemsDetail] ([F_Id],[F_ItemId],[F_ItemCode],[F_ItemName],[F_IsDefault],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'7fc8fa11-4acf-409a-a771-aaf1eb81e814',N'9a7079bd-0660-4549-9c2d-db5e8616619f',N'Exception',N'异常',0,8,0,1,N'2016-07-19 17:11:25',N'2016-07-19 18:21:01')
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_Log]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_Log]

CREATE TABLE [Sys_Log] (
[F_Id] [varchar]  (50) NOT NULL,
[F_Date] [datetime]  NULL,
[F_Account] [varchar]  (50) NULL,
[F_NickName] [varchar]  (50) NULL,
[F_Type] [varchar]  (50) NULL,
[F_IPAddress] [varchar]  (50) NULL,
[F_IPAddressName] [varchar]  (50) NULL,
[F_ModuleId] [varchar]  (50) NULL,
[F_ModuleName] [varchar]  (50) NULL,
[F_Result] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL)

ALTER TABLE [Sys_Log] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_Log] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_Log] ([F_Id],[F_Date],[F_Account],[F_NickName],[F_Type],[F_IPAddress],[F_IPAddressName],[F_ModuleName],[F_Result],[F_Description],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'9daf0a33-b92d-4f94-bc82-625aa202b086',N'2019-12-03 21:20:27',N'admin',N'超级管理员',N'Login',N'117.81.192.182',N'江苏省苏州市 电信',N'系统登录',1,N'登录成功',N'2019-12-03 21:20:28',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Log] ([F_Id],[F_Date],[F_Account],[F_NickName],[F_Type],[F_IPAddress],[F_IPAddressName],[F_ModuleName],[F_Result],[F_Description],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'016b2cf6-7221-4dea-b9d9-6e43c50cdd01',N'2019-12-23 21:41:08',N'admin',N'超级管理员',N'Login',N'117.81.192.182',N'江苏省苏州市 电信',N'系统登录',1,N'登录成功',N'2019-12-23 21:41:09',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Log] ([F_Id],[F_Date],[F_Account],[F_NickName],[F_Type],[F_IPAddress],[F_IPAddressName],[F_ModuleName],[F_Result],[F_Description],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'772d518c-a102-4965-845a-42cabf1ed807',N'2019-12-24 22:04:00',N'admin',N'超级管理员',N'Login',N'117.81.192.182',N'江苏省苏州市 电信',N'系统登录',1,N'登录成功',N'2019-12-24 22:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Log] ([F_Id],[F_Date],[F_Account],[F_NickName],[F_Type],[F_IPAddress],[F_IPAddressName],[F_ModuleName],[F_Result],[F_Description],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'58a893cd-970b-4eac-b1ec-b031473c54c2',N'2019-12-25 23:20:04',N'admin',N'超级管理员',N'Login',N'117.81.192.182',N'江苏省苏州市 电信',N'系统登录',1,N'登录成功',N'2019-12-25 23:20:04',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Log] ([F_Id],[F_Date],[F_Account],[F_NickName],[F_Type],[F_IPAddress],[F_IPAddressName],[F_ModuleName],[F_Result],[F_Description],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'b0f7c030-8f71-4475-bdf1-e6b79a394081',N'2019-12-30 20:51:37',N'admin',N'超级管理员',N'Login',N'117.81.192.182',N'江苏省苏州市 电信',N'系统登录',1,N'登录成功',N'2019-12-30 20:51:37',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Log] ([F_Id],[F_Date],[F_Account],[F_NickName],[F_Type],[F_IPAddress],[F_IPAddressName],[F_ModuleName],[F_Result],[F_Description],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'fe9a5473-9547-43a4-b741-76ba9f9bf260',N'2020-01-14 21:09:56',N'admin',N'超级管理员',N'Login',N'117.81.192.182',N'江苏省苏州市 电信',N'系统登录',1,N'登录成功',N'2020-01-14 21:09:56',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Log] ([F_Id],[F_Date],[F_Account],[F_NickName],[F_Type],[F_IPAddress],[F_IPAddressName],[F_ModuleName],[F_Result],[F_Description],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'f82ea160-e799-4870-8bc2-a18283e7bf31',N'2020-01-14 21:41:46',N'admin',N'超级管理员',N'Login',N'117.81.192.182',N'江苏省苏州市 电信',N'系统登录',1,N'登录成功',N'2020-01-14 21:41:46',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Log] ([F_Id],[F_Date],[F_Account],[F_NickName],[F_Type],[F_IPAddress],[F_IPAddressName],[F_ModuleName],[F_Result],[F_Description],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'22892136-3b29-418c-b1a0-0d9d6a27def4',N'2020-01-15 20:08:15',N'admin',N'超级管理员',N'Login',N'117.81.192.182',N'江苏省苏州市 电信',N'系统登录',1,N'登录成功',N'2020-01-15 20:08:16',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_Module]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_Module]

CREATE TABLE [Sys_Module] (
[F_Id] [varchar]  (50) NOT NULL,
[F_ParentId] [varchar]  (50) NULL,
[F_Layers] [int]  NULL,
[F_EnCode] [varchar]  (50) NULL,
[F_FullName] [varchar]  (50) NULL,
[F_Icon] [varchar]  (50) NULL,
[F_UrlAddress] [varchar]  (500) NULL,
[F_Target] [varchar]  (50) NULL,
[F_IsMenu] [bit]  NULL,
[F_IsExpand] [bit]  NULL,
[F_IsPublic] [bit]  NULL,
[F_AllowEdit] [bit]  NULL,
[F_AllowDelete] [bit]  NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (50) NULL)

ALTER TABLE [Sys_Module] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_Module] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'e72c75d0-3a69-41ad-b220-13c9a62ec788',N'73FD1267-79BA-4E23-A152-744AF73117E9',N'数据备份',N'/SystemSecurity/DbBackup/Index',N'iframe',1,0,0,0,0,1,0,1,N'2016-07-17 22:05:07',N'2016-07-20 16:15:40')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_Icon],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'462027E0-0848-41DD-BCC3-025DCAE65555',N'0',1,N'系统管理',N'fa fa-gears',N'expand',1,0,0,0,0,2,0,1,N'2019-12-24 23:06:19',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_Icon],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'73FD1267-79BA-4E23-A152-744AF73117E9',N'0',1,N'系统安全',N'fa fa-desktop',N'expand',0,1,0,0,0,3,0,1,N'2016-07-22 15:46:56',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_Icon],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',N'0',1,N'统计报表',N'fa fa-bar-chart-o',N'fa fa-bar-chart-o',N'expand',0,1,0,0,0,4,0,1,N'2016-07-22 15:47:10',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_Icon],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'9F56840F-DF92-4936-A48C-8F65A39291A2',N'0',1,N'常用示例',N'fa fa-tags',N'expand',0,1,0,0,0,5,0,1,N'2016-07-22 15:47:23',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'a3a4742d-ca39-42ec-b95a-8552a6fae579',N'73FD1267-79BA-4E23-A152-744AF73117E9',N'访问控制',N'/SystemSecurity/FilterIP/Index',N'iframe',1,0,0,0,0,2,0,1,N'2016-07-17 22:06:10',N'2016-07-20 16:16:02')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_Description],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'64A1C550-2C61-4A8C-833D-ACD0C012260F',N'462027E0-0848-41DD-BCC3-025DCAE65555',2,N'系统菜单',N'/SystemManage/Module/Index',N'iframe',1,0,0,0,0,7,0,1,N'测试',N'2016-07-27 10:50:09',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime]) VALUES ( N'38CA5A66-C993-4410-AF95-50489B22939C',N'462027E0-0848-41DD-BCC3-025DCAE65555',2,N'用户管理',N'/SystemManage/User/Index',N'iframe',1,0,0,0,0,4,0,1,N'2016-07-14 16:22:47')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime]) VALUES ( N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B',N'462027E0-0848-41DD-BCC3-025DCAE65555',2,N'机构管理',N'/SystemManage/Organize/Index',N'iframe',1,0,0,0,0,1,0,1,N'2016-07-15 22:21:04')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime]) VALUES ( N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C',N'462027E0-0848-41DD-BCC3-025DCAE65555',2,N'角色管理',N'/SystemManage/Role/Index',N'iframe',1,0,0,0,0,2,0,1,N'2016-07-14 16:22:35')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime]) VALUES ( N'337A4661-99A5-4E5E-B028-861CACAF9917',N'462027E0-0848-41DD-BCC3-025DCAE65555',2,N'区域管理',N'/SystemManage/Area/Index',N'iframe',1,0,0,0,0,5,0,1,N'2016-07-14 16:21:47')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime]) VALUES ( N'423A200B-FA5F-4B29-B7B7-A3F5474B725F',N'462027E0-0848-41DD-BCC3-025DCAE65555',2,N'数据字典',N'/SystemManage/ItemsData/Index',N'iframe',1,0,0,0,0,6,0,1,N'2016-07-15 22:26:07')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime]) VALUES ( N'F298F868-B689-4982-8C8B-9268CBF0308D',N'462027E0-0848-41DD-BCC3-025DCAE65555',2,N'岗位管理',N'/SystemManage/Duty/Index',N'iframe',1,0,0,0,0,3,0,1,N'2016-07-14 16:22:41')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime]) VALUES ( N'96EE855E-8CD2-47FC-A51D-127C131C9FB9',N'73FD1267-79BA-4E23-A152-744AF73117E9',2,N'系统日志',N'/SystemSecurity/Log/Index',N'iframe',1,0,0,0,0,3,0,1,N'2016-07-20 16:16:19')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'df9920e0-ba33-4e36-a911-ef08c6ea77ea',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',N'饼图',N'/ReportManage/Highcharts/Sample7',N'iframe',1,0,0,0,0,12,0,1,N'2016-07-20 17:13:32',N'2016-07-22 15:45:37',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_FullName],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'3A95BBC6-CB5B-4438-869F-5F7B738E2568',N'散点图',N'iframe',0,0,0,0,0,0,0)
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime]) VALUES ( N'49F61713-C1E4-420E-BEEC-0B4DBC2D7DE8',N'73FD1267-79BA-4E23-A152-744AF73117E9',2,N'服务器监控',N'/SystemSecurity/ServerMonitoring/Index',N'iframe',1,0,0,0,0,4,0,1,N'2016-07-20 16:16:38')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'F2DAD50B-95DF-48F7-8638-BA503B539143',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',2,N'折线图',N'/ReportManage/Highcharts/Sample1',N'iframe',1,0,0,0,0,1,0,1,N'2016-07-22 15:47:43',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'0EDF1DDB-CA17-4D08-AA25-914FE4E13324',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',2,N'曲线图',N'/ReportManage/Highcharts/Sample2',N'iframe',1,0,0,0,0,2,0,1,N'2016-07-22 15:45:07',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_FullName],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'AD4BC418-B66E-48C7-BC13-81590056CD15',N'气泡图',N'iframe',0,0,0,0,0,0,0)
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'C3D12056-D906-4D8B-8B9C-954942742BDE',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',2,N'面积图',N'/ReportManage/Highcharts/Sample3',N'iframe',1,0,0,0,0,4,0,1,N'2016-07-22 15:45:12',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'B3BF41E1-0299-4EFE-BA76-A7377AC81B38',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',2,N'柱状图',N'/ReportManage/Highcharts/Sample4',N'iframe',1,0,0,0,0,5,0,1,N'2016-07-22 15:45:19',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'85FAF4F4-9CBE-4904-94B3-2B930CA49F0C',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',2,N'综合报表1',N'/ReportManage/Highcharts/Sample14',N'iframe',1,0,0,0,0,21,0,1,N'2016-07-22 15:46:22',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'6BBC3562-1051-4246-98B0-9F37CAC40DC8',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',2,N'综合报表2',N'/ReportManage/Highcharts/Sample15',N'iframe',1,0,0,0,0,22,0,1,N'2016-07-22 15:48:05',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'822E2523-5105-4AE0-BF48-62459D3641F6',N'9F56840F-DF92-4936-A48C-8F65A39291A2',2,N'外部邮件',N'/ExampleManage/SendMail/Index',N'iframe',1,0,0,0,0,2,0,1,N'2016-08-01 18:25:45',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'7B959522-BE45-4747-B89D-592C7F3987A5',N'9F56840F-DF92-4936-A48C-8F65A39291A2',2,N'短信工具',N'/ExampleManage/SendMessages/Index',N'iframe',1,0,0,0,0,3,0,1,N'2016-08-01 23:08:35',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'AF34B824-439E-4365-99CC-C1D30514D869',N'9F56840F-DF92-4936-A48C-8F65A39291A2',2,N'二维码生成',N'/ExampleManage/BarCode/Index',N'iframe',1,0,0,0,0,4,0,1,N'2016-08-01 23:19:23',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'D2ECB516-4CB7-49B1-B536-504382115DD2',N'9F56840F-DF92-4936-A48C-8F65A39291A2',2,N'打印测试',N'/ExampleManage/Print/Index',N'iframe',1,0,0,0,0,5,0,1,N'2016-08-03 14:24:30',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'39E97B05-7B6F-4069-9972-6F9643BC3042',N'9F56840F-DF92-4936-A48C-8F65A39291A2',2,N'电子签章',N'/ExampleManage/Signet/Index',N'iframe',1,0,0,0,0,6,0,1,N'2016-08-02 22:42:36',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'91425AF9-F762-43AF-B784-107D23FFDC85',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',N'模拟时钟',N'/ReportManage/Highcharts/Sample5',N'iframe',1,0,0,0,0,11,0,0,N'2016-07-22 15:45:25',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'7858E329-16FC-49F4-93A1-11E2E7EF2998',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',N'仪表盘',N'/ReportManage/Highcharts/Sample6',N'iframe',1,0,0,0,0,12,0,0,N'2016-07-22 15:45:31',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'163DA347-887C-4C91-8298-EB00FFBFEC84',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',N'雷达图',N'/ReportManage/Highcharts/Sample8',N'iframe',1,0,0,0,0,13,0,0,N'2016-07-22 15:45:43',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'1F14A1ED-B22E-4E4A-BF10-6CF018507E76',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',N'蛛网图',N'/ReportManage/Highcharts/Sample9',N'iframe',1,0,0,0,0,14,0,0,N'2016-07-22 15:45:50',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'FE04386D-1307-4E34-8DFB-B56D9FEC78CE',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',N'玫瑰图',N'/ReportManage/Highcharts/Sample10',N'iframe',1,0,0,0,0,15,0,0,N'2016-07-22 15:45:56',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'54E9D12D-C039-4F01-A6FE-810A147D31D5',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',N'漏斗图',N'/ReportManage/Highcharts/Sample11',N'iframe',1,0,0,0,0,16,0,0,N'2016-07-22 15:46:03',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'ACDBD633-99A0-4BEF-B67C-3A5B41E7C1FD',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',N'蜡烛图',N'/ReportManage/Highcharts/Sample12',N'iframe',1,0,0,0,0,17,0,0,N'2016-07-22 15:46:09',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'A33ADBFC-089B-4981-BFAB-08178052EE36',N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',N'流程图',N'/ReportManage/Highcharts/Sample13',N'iframe',1,0,0,0,0,18,0,0,N'2016-07-22 15:46:15',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_Layers],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'3593c43a-e4bc-4b7f-9629-0449a3d1818e',N'03739f9e-9a36-4c0d-a402-87f402c8cb81',2,N'部门管理',N'/DingTalkManage/Department/Index',N'iframe',1,0,0,0,0,39,0,1,N'2018-12-14 14:41:47',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2018-12-14 15:06:35',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'b0bf9a7d-6a1d-4fdb-a88a-8016df8b95a3',N'9F56840F-DF92-4936-A48C-8F65A39291A2',N'上传工具',N'/ExampleManage/Upload/Index',N'iframe',1,0,0,0,0,5,0,1,N'2020-01-14 21:13:58',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_Icon],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'eaff0f23-0678-40af-8679-7fb2e2674e57',N'0',N'微信平台',N'fa fa-tablet',N'expand',0,1,0,0,0,7,0,1,N'2019-01-18 09:58:18',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-07-11 17:11:10',N'172557595021881487')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'e40a4371-6835-4f67-a349-c2b02ed6760e',N'eaff0f23-0678-40af-8679-7fb2e2674e57',N'微信账号',N'/WeixinManage/WxCode/Index',N'iframe',1,0,0,1,1,1,0,1,N'2019-01-18 09:59:58',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'f35094a8-b404-4831-8685-5a93d33109bd',N'eaff0f23-0678-40af-8679-7fb2e2674e57',N'自定义菜单',N'/WeixinManage/WxMenu/Index',N'blank',1,0,0,1,0,2,0,1,N'2019-01-18 10:02:12',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'd8168e8a-675d-4a06-a01c-d6eed9035262',N'eaff0f23-0678-40af-8679-7fb2e2674e57',N'自定义回复',N'/WeixinManage/WxSubscribe/Index',N'iframe',1,0,0,1,0,3,0,1,N'2019-01-18 10:04:07',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'0c253d7a-f1bf-45c0-9a59-0ad3396323e6',N'eaff0f23-0678-40af-8679-7fb2e2674e57',N'消息模板',N'/WeixinManage/WxTempMsg/Index',N'iframe',1,0,0,0,0,4,0,1,N'2019-01-18 10:04:56',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-24 21:12:16',N'48b7029f-e632-42cc-baeb-0b84339f295e')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'9a727a52-43ed-425a-940c-a4b64749f745',N'eaff0f23-0678-40af-8679-7fb2e2674e57',N'微信用户',N'/WeixinManage/WxUsers/Index',N'iframe',1,0,0,0,0,4,0,1,N'2019-07-04 10:52:37',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_Icon],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'03739f9e-9a36-4c0d-a402-87f402c8cb81',N'0',N'钉钉平台',N'fa fa-tablet',N'expand',0,1,0,0,0,6,0,1,N'2018-08-14 00:04:09',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-07-11 17:09:12',N'172557595021881487')
INSERT [Sys_Module] ([F_Id],[F_ParentId],[F_FullName],[F_UrlAddress],[F_Target],[F_IsMenu],[F_IsExpand],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'5b263367-33a8-48e1-89ec-ba225f7d5e7a',N'03739f9e-9a36-4c0d-a402-87f402c8cb81',N'用户管理',N'/DingTalkManage/Users/Index',N'iframe',1,0,0,0,0,38,0,1,N'2018-08-14 00:06:05',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2018-08-14 00:06:48',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_ModuleButton]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_ModuleButton]

CREATE TABLE [Sys_ModuleButton] (
[F_Id] [varchar]  (50) NOT NULL,
[F_ModuleId] [varchar]  (50) NULL,
[F_ParentId] [varchar]  (50) NULL,
[F_Layers] [int]  NULL,
[F_EnCode] [varchar]  (50) NULL,
[F_FullName] [varchar]  (50) NULL,
[F_Icon] [varchar]  (50) NULL,
[F_Location] [int]  NULL,
[F_JsEvent] [varchar]  (50) NULL,
[F_UrlAddress] [varchar]  (500) NULL,
[F_Split] [bit]  NULL,
[F_IsPublic] [bit]  NULL,
[F_AllowEdit] [bit]  NULL,
[F_AllowDelete] [bit]  NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (50) NULL)

ALTER TABLE [Sys_ModuleButton] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_ModuleButton] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'9FD543DB-C5BB-4789-ACFF-C5865AFB032C',N'64A1C550-2C61-4A8C-833D-ACD0C012260F',N'0',1,N'NF-add',N'新增菜单',1,N'btn_add()',N'/SystemManage/Module/Form',0,0,0,0,1,0,1,N'2016-07-25 15:41:08',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'E29FCBA7-F848-4A8B-BC41-A3C668A9005D',N'64A1C550-2C61-4A8C-833D-ACD0C012260F',N'0',1,N'NF-edit',N'修改菜单',2,N'btn_edit()',N'/SystemManage/Module/Form',0,0,0,0,2,0,1,N'2016-07-25 15:41:02',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'85F5212F-E321-4124-B155-9374AA5D9C10',N'64A1C550-2C61-4A8C-833D-ACD0C012260F',N'0',1,N'NF-delete',N'删除菜单',2,N'btn_delete()',N'/SystemManage/Module/DeleteForm',0,0,0,0,3,0,1,N'2016-07-25 15:41:15',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'D4FCAFED-7640-449E-80B7-622DDACD5012',N'64A1C550-2C61-4A8C-833D-ACD0C012260F',N'0',1,N'NF-Details',N'查看菜单',2,N'btn_details()',N'/SystemManage/Module/Details',1,0,0,0,4,0,1,N'2016-07-25 15:41:27',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'FD3D073C-4F88-467A-AE3B-CDD060952CE6',N'64A1C550-2C61-4A8C-833D-ACD0C012260F',N'0',1,N'NF-modulebutton',N'按钮管理',2,N'btn_modulebutton()',N'/SystemManage/ModuleButton/Index',0,0,0,0,5,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'4bb19533-8e81-419b-86a1-7ee56bf1dd45',N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B',N'0',1,N'NF-delete',N'删除机构',2,N'btn_delete()',N'/SystemManage/Organize/DeleteForm',0,0,0,0,3,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'709a4a7b-4d98-462d-b47c-351ef11db06f',N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B',N'0',1,N'NF-Details',N'查看机构',2,N'btn_details()',N'/SystemManage/Organize/Details',0,0,0,0,4,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'91be873e-ccb7-434f-9a3b-d312d6d5798a',N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B',N'0',1,N'NF-edit',N'修改机构',2,N'btn_edit()',N'/SystemManage/Organize/Form',0,0,0,0,2,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'cd65e50a-0bea-45a9-b82e-f2eacdbd209e',N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B',N'0',1,N'NF-add',N'新建机构',1,N'btn_add()',N'/SystemManage/Organize/Form',0,0,0,0,1,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'239077ff-13e1-4720-84e1-67b6f0276979',N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C',N'0',1,N'NF-delete',N'删除角色',2,N'btn_delete()',N'/SystemManage/Role/DeleteForm',0,0,0,0,3,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'5d708d9d-6ebe-40ea-8589-e3efce9e74ec',N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C',N'0',1,N'NF-add',N'新建角色',1,N'btn_add()',N'/SystemManage/Role/Form',0,0,0,0,1,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'f93763ff-51a1-478d-9585-3c86084c54f3',N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C',N'0',1,N'NF-Details',N'查看角色',2,N'btn_details()',N'/SystemManage/Role/Details',0,0,0,0,4,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'ffffe7f8-900c-413a-9970-bee7d6599cce',N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C',N'0',1,N'NF-edit',N'修改角色',2,N'btn_edit()',N'/SystemManage/Role/Form',0,0,0,0,2,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'13c9a15f-c50d-4f09-8344-fd0050f70086',N'F298F868-B689-4982-8C8B-9268CBF0308D',N'0',1,N'NF-add',N'新建岗位',1,N'btn_add()',N'/SystemManage/Duty/Form',0,0,0,0,1,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'88f7b3a8-fd6d-4f8e-a861-11405f434868',N'F298F868-B689-4982-8C8B-9268CBF0308D',N'0',1,N'NF-Details',N'查看岗位',2,N'btn_details()',N'/SystemManage/Duty/Details',0,0,0,0,4,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'8a9993af-69b2-4d8a-85b3-337745a1f428',N'F298F868-B689-4982-8C8B-9268CBF0308D',N'0',1,N'NF-delete',N'删除岗位',2,N'btn_delete()',N'/SystemManage/Duty/DeleteForm',0,0,0,0,3,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark]) VALUES ( N'e75e4efc-d461-4334-a764-56992fec38e6',N'F298F868-B689-4982-8C8B-9268CBF0308D',N'0',1,N'NF-edit',N'修改岗位',2,N'btn_edit()',N'/SystemManage/Duty/Form',0,0,0,0,2,0,1)
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'14617a4f-bfef-4bc2-b943-d18d3ff8d22f',N'38CA5A66-C993-4410-AF95-50489B22939C',N'0',1,N'NF-delete',N'删除用户',2,N'btn_delete()',N'/SystemManage/User/DeleteForm',0,0,0,0,3,0,1,N'2016-07-25 14:16:13',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'4727adf7-5525-4c8c-9de5-39e49c268349',N'38CA5A66-C993-4410-AF95-50489B22939C',N'0',1,N'NF-edit',N'修改用户',2,N'btn_edit()',N'/SystemManage/User/Form',0,0,0,0,2,0,1,N'2016-07-25 14:16:01',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'74eecdfb-3bee-405d-be07-27a78219c179',N'38CA5A66-C993-4410-AF95-50489B22939C',N'0',1,N'NF-add',N'新建用户',1,N'btn_add()',N'/SystemManage/User/Form',0,0,0,0,1,0,1,N'2016-07-25 14:15:42',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'abfdff21-8ebf-4024-8555-401b4df6acd9',N'38CA5A66-C993-4410-AF95-50489B22939C',N'0',1,N'NF-Details',N'查看用户',2,N'btn_details()',N'/SystemManage/User/Details',1,0,0,0,4,0,1,N'2016-07-25 15:29:10',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'38e39592-6e86-42fb-8f72-adea0c82cbc1',N'38CA5A66-C993-4410-AF95-50489B22939C',N'0',N'NF-revisepassword',N'密码重置',2,N'btn_revisepassword()',N'/SystemManage/User/RevisePassword',1,0,0,0,5,0,1,N'2016-07-25 14:18:19',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'15362a59-b242-494a-bc6e-413b4a63580e',N'38CA5A66-C993-4410-AF95-50489B22939C',N'0',N'NF-disabled',N'禁用',2,N'btn_disabled()',N'/SystemManage/User/DisabledAccount',0,0,0,0,6,0,1,N'2016-07-25 15:25:54',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2016-07-25 15:28:33',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'2a8f5342-5eb7-491c-a1a9-a2631d8eb5d6',N'38CA5A66-C993-4410-AF95-50489B22939C',N'0',N'NF-enabled',N'启用',2,N'btn_enabled()',N'/SystemManage/User/EnabledAccount',0,0,0,0,7,0,1,N'2016-07-25 15:28:08',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'48afe7b3-e158-4256-b50c-cd0ee7c6dcc9',N'337A4661-99A5-4E5E-B028-861CACAF9917',N'0',1,N'NF-add',N'新建区域',1,N'btn_add()',N'/SystemManage/Area/Form',0,0,0,0,1,0,1,N'2016-07-25 15:32:26',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'89d7a69d-b953-4ce2-9294-db4f50f2a157',N'337A4661-99A5-4E5E-B028-861CACAF9917',N'0',1,N'NF-edit',N'修改区域',2,N'btn_edit()',N'/SystemManage/Area/Form',0,0,0,0,2,0,1,N'2016-07-25 15:32:42',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'8c7013a9-3682-4367-8bc6-c77ca89f346b',N'337A4661-99A5-4E5E-B028-861CACAF9917',N'0',1,N'NF-delete',N'删除区域',2,N'btn_delete()',N'/SystemManage/Area/DeleteForm',0,0,0,0,3,0,1,N'2016-07-25 15:32:53',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'0d777b07-041a-4205-a393-d1a009aaafc7',N'423A200B-FA5F-4B29-B7B7-A3F5474B725F',N'0',1,N'NF-edit',N'修改字典',2,N'btn_edit()',N'/SystemManage/ItemsData/Form',0,0,0,0,3,0,1,N'2016-07-25 15:37:42',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'104bcc01-0cfd-433f-87f4-29a8a3efb313',N'423A200B-FA5F-4B29-B7B7-A3F5474B725F',N'0',1,N'NF-add',N'新建字典',1,N'btn_add()',N'/SystemManage/ItemsData/Form',0,0,0,0,1,0,1,N'2016-07-25 15:37:35',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'1ee1c46b-e767-4532-8636-936ea4c12003',N'423A200B-FA5F-4B29-B7B7-A3F5474B725F',N'0',1,N'NF-delete',N'删除字典',2,N'btn_delete()',N'/SystemManage/ItemsData/DeleteForm',0,0,0,0,4,0,1,N'2016-07-25 15:37:53',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'82f162cb-beb9-4a79-8924-cd1860e26e2e',N'423A200B-FA5F-4B29-B7B7-A3F5474B725F',N'0',1,N'NF-Details',N'查看字典',2,N'btn_details()',N'/SystemManage/ItemsData/Details',0,0,0,0,5,0,1,N'2016-07-25 15:37:59',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'4b876abc-1b85-47b0-abc7-96e313b18ed8',N'423A200B-FA5F-4B29-B7B7-A3F5474B725F',N'0',N'NF-itemstype',N'分类管理',1,N'btn_itemstype()',N'/SystemManage/ItemsType/Index',0,0,0,0,2,0,1,N'2016-07-25 15:36:21',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'0f0596f6-aa50-4df0-ad8e-af867cb4a9de',N'e72c75d0-3a69-41ad-b220-13c9a62ec788',N'0',1,N'NF-delete',N'删除备份',2,N'btn_delete()',N'/SystemSecurity/DbBackup/DeleteForm',0,0,0,0,2,0,1,N'2016-07-25 15:47:47',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'41862743-f703-4b6d-be54-08d253eb0ebc',N'e72c75d0-3a69-41ad-b220-13c9a62ec788',N'0',1,N'NF-add',N'新建备份',1,N'btn_add()',N'/SystemSecurity/DbBackup/Form',0,0,0,0,1,0,1,N'2016-07-25 15:43:15',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'aed66cfb-d78e-43d4-9987-c714546be7eb',N'e72c75d0-3a69-41ad-b220-13c9a62ec788',N'0',1,N'NF-download',N'下载备份',2,N'btn_download()',N'/SystemSecurity/DbBackup/DownloadBackup',0,0,0,0,3,0,1,N'2016-07-25 15:48:17',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'329c0326-ce68-4a24-904d-aade67a90fc7',N'a3a4742d-ca39-42ec-b95a-8552a6fae579',N'0',1,N'NF-Details',N'查看策略',2,N'btn_details()',N'/SystemSecurity/FilterIP/Details',0,0,0,0,4,0,1,N'2016-07-25 15:58:04',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'8379135e-5b13-4236-bfb1-9289e6129034',N'a3a4742d-ca39-42ec-b95a-8552a6fae579',N'0',1,N'NF-delete',N'删除策略',2,N'btn_delete()',N'/SystemSecurity/FilterIP/DeleteForm',0,0,0,0,3,0,1,N'2016-07-25 15:57:57',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'aaf58c1b-4af2-4e5f-a3e4-c48e86378191',N'a3a4742d-ca39-42ec-b95a-8552a6fae579',N'0',1,N'NF-edit',N'修改策略',2,N'btn_edit()',N'/SystemSecurity/FilterIP/Form',0,0,0,0,2,0,1,N'2016-07-25 15:57:49',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'd4074121-0d4f-465e-ad37-409bbe15bf8a',N'a3a4742d-ca39-42ec-b95a-8552a6fae579',N'0',1,N'NF-add',N'新建策略',1,N'btn_add()',N'/SystemSecurity/FilterIP/Form',0,0,0,0,1,0,1,N'2016-07-25 15:57:40',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'3a35c662-a356-45e4-953d-00ebd981cad6',N'96EE855E-8CD2-47FC-A51D-127C131C9FB9',N'0',1,N'NF-removelog',N'清空日志',1,N'btn_removeLog()',N'/SystemSecurity/Log/RemoveLog',0,0,0,0,1,0,1,N'2016-07-25 16:03:12',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'4c13c9c3-c1a4-4f7e-a061-2266b2c47c7a',N'3593c43a-e4bc-4b7f-9629-0449a3d1818e',N'0',N'NF-delete',N'删除',2,N'btn_delete()',N'/DingTalkManage/Department/DeleteForm',0,0,0,0,3,0,1,N'2018-08-14 22:53:13',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:27:14',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'80afeabc-5502-47cc-a304-a1c736b150d2',N'3593c43a-e4bc-4b7f-9629-0449a3d1818e',N'0',N'NF-Details',N'查看',2,N'btn_details()',N'/DingTalkManage/Department/Details',0,0,0,0,4,0,1,N'2018-08-14 22:54:07',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:27:25',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'd02984f1-2fea-4507-9442-72b1d81a490c',N'3593c43a-e4bc-4b7f-9629-0449a3d1818e',N'0',N'NF-edit',N'修改',2,N'btn_edit()',N'/DingTalkManage/Department/Form',0,0,0,0,2,0,1,N'2018-08-14 22:51:47',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:27:05',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'fea84a80-2f19-4118-a2aa-a269a66df346',N'3593c43a-e4bc-4b7f-9629-0449a3d1818e',N'0',N'NF-add',N'新增',1,N'btn_add()',N'/DingTalkManage/Department/Form',0,0,0,0,1,0,1,N'2018-08-14 22:49:22',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:26:57',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'a026f86d-d7ed-4cd3-8901-f6c7808026e6',N'9a727a52-43ed-425a-940c-a4b64749f745',N'0',N'NF-Details',N'查看',2,N'btn_details()',N'/WeixinMPManage/WxUsers/Details',0,0,0,0,4,0,1,N'2018-08-14 22:54:07',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-07-04 10:54:46',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'b5168959-7655-4dce-956a-754e3ebbfb2e',N'9a727a52-43ed-425a-940c-a4b64749f745',N'0',N'NF-add',N'新增',1,N'btn_add()',N'/WeixinManage/WxUsers/Form',0,0,0,0,1,0,1,N'2018-08-14 22:49:22',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-07-04 10:54:25',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'2f21a804-cd90-4da3-98f3-f31cfe6031dc',N'5b263367-33a8-48e1-89ec-ba225f7d5e7a',N'0',N'NF-add',N'新增',1,N'btn_add()',N'/WeixinManage/Users/Form',0,0,0,0,1,0,1,N'2018-08-14 22:49:22',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:25:43',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'02f35b16-f299-4805-85cf-f4a76c1b1e8a',N'5b263367-33a8-48e1-89ec-ba225f7d5e7a',N'0',N'NF-edit',N'修改',2,N'btn_edit()',N'/DingTalkManage/Users/Form',0,0,0,0,2,0,1,N'2018-08-14 22:51:47',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:25:51',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'10148a76-3843-405c-b5af-b2b3d738a2b0',N'5b263367-33a8-48e1-89ec-ba225f7d5e7a',N'0',N'NF-delete',N'删除',2,N'btn_delete()',N'/DingTalkManage/Users/DeleteForm',0,0,0,0,3,0,1,N'2018-08-14 22:53:13',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:26:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'f7c7c0ce-1916-449c-b239-a9a5db940c6a',N'5b263367-33a8-48e1-89ec-ba225f7d5e7a',N'0',N'NF-Details',N'查看',2,N'btn_details()',N'/DingTalkManage/Users/Details',0,0,0,0,4,0,1,N'2018-08-14 22:54:07',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:26:24',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'6b639924-6594-4293-ae72-9e1f84bdcbfa',N'9a727a52-43ed-425a-940c-a4b64749f745',N'0',N'NF-edit',N'修改',2,N'btn_edit()',N'/WeixinManage/WxUsers/Form',0,0,0,0,2,0,1,N'2018-08-14 22:51:47',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-07-04 10:54:31',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'78d0d7df-7b33-4b05-be3f-899b79773643',N'9a727a52-43ed-425a-940c-a4b64749f745',N'0',N'NF-delete',N'删除',2,N'btn_delete()',N'/WeixinManage/WxUsers/DeleteForm',0,0,0,0,3,0,1,N'2018-08-14 22:53:13',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-07-04 10:54:39',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'27b50b8b-0552-4c1c-a0e9-54f3402aa8e2',N'e40a4371-6835-4f67-a349-c2b02ed6760e',N'0',N'NF-Details',N'查看',2,N'btn_details()',N'/WeixinManage/Users/Details',0,0,0,0,4,0,1,N'2018-08-14 22:54:07',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:26:24',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'6cd3de7d-589b-457f-bfc8-ad3939649519',N'e40a4371-6835-4f67-a349-c2b02ed6760e',N'0',N'NF-edit',N'修改',2,N'btn_edit()',N'/WeixinManage/Users/Form',0,0,0,0,2,0,1,N'2018-08-14 22:51:47',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:25:51',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'711e01d6-c5c1-4238-ae23-78e21cf933f3',N'e40a4371-6835-4f67-a349-c2b02ed6760e',N'0',N'NF-delete',N'删除',2,N'btn_delete()',N'/WeixinManage/Users/DeleteForm',0,0,0,0,3,0,1,N'2018-08-14 22:53:13',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:26:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'de0dd0b8-defe-4766-a8fe-93da339981e8',N'e40a4371-6835-4f67-a349-c2b02ed6760e',N'0',N'NF-add',N'新增',1,N'btn_add()',N'/WeixinManage/Users/Form',0,0,0,0,1,0,1,N'2018-08-14 22:49:22',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-04-22 10:25:43',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'037df8cd-ed27-4c6e-9a83-9153a7c2727a',N'0c253d7a-f1bf-45c0-9a59-0ad3396323e6',N'0',N'NF-delete',N'删除',2,N'btn_delete()',N'/WeixinManage/WxTempMsg/DeleteForm',0,0,0,0,3,0,1,N'2018-08-14 22:53:13',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-07-04 10:54:39',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'1d612157-fb91-447b-80ec-e96514c8e00b',N'0c253d7a-f1bf-45c0-9a59-0ad3396323e6',N'0',N'NF-add',N'新增',1,N'btn_add()',N'/WeixinManageWxTempMsg/Form',0,0,0,0,1,0,1,N'2018-08-14 22:49:22',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-07-04 10:54:25',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'8d7b059e-4105-4dde-944c-c2424f68b5c5',N'0c253d7a-f1bf-45c0-9a59-0ad3396323e6',N'0',N'NF-Details',N'查看',2,N'btn_details()',N'/WeixinMPManage/WxTempMsg/Details',0,0,0,0,4,0,1,N'2018-08-14 22:54:07',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-07-04 10:54:46',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_ModuleButton] ([F_Id],[F_ModuleId],[F_ParentId],[F_EnCode],[F_FullName],[F_Location],[F_JsEvent],[F_UrlAddress],[F_Split],[F_IsPublic],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_CreatorUserId],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'b02a3807-0835-46c1-a965-af192dfb9823',N'0c253d7a-f1bf-45c0-9a59-0ad3396323e6',N'0',N'NF-edit',N'修改',2,N'btn_edit()',N'/WeixinManage/WxTempMsg/Form',0,0,0,0,2,0,1,N'2018-08-14 22:51:47',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'2019-07-04 10:54:31',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_ModuleForm]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_ModuleForm]

CREATE TABLE [Sys_ModuleForm] (
[F_Id] [varchar]  (50) NOT NULL,
[F_ModuleId] [varchar]  (50) NULL,
[F_EnCode] [varchar]  (50) NULL,
[F_FullName] [varchar]  (50) NULL,
[F_FormJson] [varchar]  (MAX) NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (500) NULL)

ALTER TABLE [Sys_ModuleForm] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_ModuleForm] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_ModuleFormInstance]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_ModuleFormInstance]

CREATE TABLE [Sys_ModuleFormInstance] (
[F_Id] [varchar]  (50) NOT NULL,
[F_FormId] [varchar]  (50) NOT NULL,
[F_ObjectId] [varchar]  (50) NULL,
[F_InstanceJson] [varchar]  (MAX) NULL,
[F_SortCode] [int]  NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL)

ALTER TABLE [Sys_ModuleFormInstance] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_ModuleFormInstance] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_Organize]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_Organize]

CREATE TABLE [Sys_Organize] (
[F_Id] [varchar]  (50) NOT NULL,
[F_ParentId] [varchar]  (50) NULL,
[F_Layers] [int]  NULL,
[F_EnCode] [varchar]  (50) NULL,
[F_FullName] [varchar]  (50) NULL,
[F_ShortName] [varchar]  (50) NULL,
[F_CategoryId] [varchar]  (50) NULL,
[F_ManagerId] [varchar]  (50) NULL,
[F_TelePhone] [varchar]  (20) NULL,
[F_MobilePhone] [varchar]  (20) NULL,
[F_WeChat] [varchar]  (50) NULL,
[F_Fax] [varchar]  (20) NULL,
[F_Email] [varchar]  (50) NULL,
[F_AreaId] [varchar]  (50) NULL,
[F_Address] [varchar]  (500) NULL,
[F_AllowEdit] [bit]  NULL,
[F_AllowDelete] [bit]  NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (500) NULL)

ALTER TABLE [Sys_Organize] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_Organize] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_Organize] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_CategoryId],[F_ManagerId],[F_Address],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'5AB270C0-5D33-4203-A54F-4552699FDA3C',N'0',1,N'Company',N'上海东鞋贸易有限公司',N'Company',N'郭总',N'上海市松江区',0,0,1,0,1,N'2016-06-10 00:00:00')
INSERT [Sys_Organize] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_CategoryId],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'80E10CD5-7591-40B8-A005-BCDE1B961E76',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'Administration',N'行政部',N'Department',0,0,2,0,1,N'2016-06-10 00:00:00')
INSERT [Sys_Organize] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_CategoryId],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'5B417E2B-4B96-4F37-8BAA-10E5A812D05E',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'Market',N'市场部',N'Department',0,0,3,0,1,N'2016-06-10 00:00:00')
INSERT [Sys_Organize] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_CategoryId],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'F02A66CA-3D8B-491B-8A17-C9ACA3E3B5DD',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'Financial',N'财务部',N'Department',0,0,4,0,1,N'2016-06-10 00:00:00')
INSERT [Sys_Organize] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_CategoryId],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'554C61CE-6AE0-44EB-B33D-A462BE7EB3E1',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'Ministry',N'技术部',N'Department',0,0,5,0,1,N'2016-06-10 00:00:00')
INSERT [Sys_Organize] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_CategoryId],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'BD830AEF-0A2E-4228-ACF8-8843C39D41D8',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'Purchase',N'采购部',N'Department',0,0,6,0,1,N'2016-06-10 00:00:00')
INSERT [Sys_Organize] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_CategoryId],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'253EDA1F-F158-4F3F-A778-B7E538E052A2',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'Manufacturing',N'生产部',N'Department',0,0,7,0,1,N'2016-06-10 00:00:00')
INSERT [Sys_Organize] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_CategoryId],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'DFA2FB91-C909-44A3-9282-BF946102E1C9',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'HumanResourse',N'人事部',N'Department',0,0,8,0,1,N'2016-06-10 00:00:00')
INSERT [Sys_Organize] ([F_Id],[F_ParentId],[F_Layers],[F_EnCode],[F_FullName],[F_CategoryId],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'59703D6A-0EC9-4762-824F-A8D9E62E93D2',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'Sales',N'营销部',N'Department',0,0,9,0,1,N'2016-06-10 00:00:00')
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_Role]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_Role]

CREATE TABLE [Sys_Role] (
[F_Id] [varchar]  (50) NOT NULL,
[F_OrganizeId] [varchar]  (50) NULL,
[F_Category] [int]  NULL,
[F_EnCode] [varchar]  (50) NULL,
[F_FullName] [varchar]  (50) NULL,
[F_Type] [varchar]  (50) NULL,
[F_AllowEdit] [bit]  NULL,
[F_AllowDelete] [bit]  NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (500) NULL)

ALTER TABLE [Sys_Role] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_Role] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'administrators',N'超级管理员',N'1',1,1,1,0,1,N'2016-07-10 00:00:00',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'4B2140D3-E61D-488E-ADF6-FF0EBCBC5D2C',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'system',N'系统管理员',N'1',0,0,2,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'42C44AC0-27FA-482D-B5E3-8F9B38B80A6A',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'configuration',N'系统配置员',N'2',0,0,3,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'7A9CF301-FCDF-4BC9-A52B-A7D4FAE2D344',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'developer',N'系统开发人员',N'2',0,0,4,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'2691AB91-3010-465F-8D92-60A97425A45E',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'innerStaff',N'内部员工',N'2',0,0,5,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'41652BB4-E2DC-420E-AA8A-8C92784B76E3',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'archvist',N'档案管理员',N'2',0,0,6,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime],[F_LastModifyUserId]) VALUES ( N'531F7D18-C49F-4F4F-A920-0074FCB52078',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'guest',N'访客人员',N'2',0,0,7,0,1,N'2016-07-10 00:00:00',N'2016-07-24 15:43:29',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'2DA8390B-61A4-4E6C-A6E7-8F6794C7EDCE',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'tester',N'测试人员',N'2',0,0,8,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'07A8E061-AE47-49C9-8310-F055F35FF44B',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'services',N'客服人员',N'2',0,0,9,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'AADB479E-9F87-49B1-AE2D-5DA6FECA3F8E',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'implement',N'实施人员',N'2',0,0,10,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'8683CB17-5F9D-4A99-A233-A18C4D1CF95B',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'businessPersonnel',N'业务人员',N'2',0,0,12,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'F68956A9-9C53-4C08-AFE8-8A4755FE2B8F',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'inventory',N'库存管理员',N'2',0,0,13,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_Type],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'F9421969-D85C-4E4C-927F-CCFB18388A59',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',1,N'contracts',N'合同专员',N'2',0,0,14,0,1,N'2016-07-10 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'23ED024E-0AAA-4C8D-9216-D1AB93348D26',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'employee',N'员工',0,0,1,0,1,N'2016-07-12 00:00:00',N'2016-07-18 15:18:56')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime],[F_LastModifyTime]) VALUES ( N'D335A5B8-7DED-495C-B8FC-EE933FB30779',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'charge',N'主管',0,0,2,0,1,N'2016-07-12 00:00:00',N'2016-07-18 15:17:22')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'0052A230-EA7B-4F3A-A1C9-1611FF26481A',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'manager',N'经理',0,0,3,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'CEEA79E8-2E19-4294-8447-13247053DE04',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'director',N'总监',0,0,4,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'EA56E457-5024-49AF-9410-D5D71D24F14B',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'vicegeneral',N'副总经理',0,0,5,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'796E9C6A-8432-4BA6-8CF6-EFFAB6F2098C',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'general',N'总经理',0,0,6,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'91E09653-D3DE-416A-BF6C-E91E60B4B4CF',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'chairman',N'主任',0,0,7,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'C609D4D6-81F7-4647-BF2F-81BD4CED2C19',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'fileattache',N'档案专员',0,0,8,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'F03EA699-9A0A-4EE9-9D33-27B9A7DFF09B',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'engineer',N'高级工程师',0,0,9,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'0CD2A952-2EE0-4CAF-9757-617D5075745B',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'president',N'董事长',0,0,10,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'B2624F67-E092-461A-AAAD-13592A9429D9',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'10018',N'行政助理',0,0,11,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'3263446A-D303-4C42-B436-6F46BF7CE86A',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'10019',N'总裁',0,0,12,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'CB116AA3-88CC-4CF7-B0BC-7C55EC502183',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'10020',N'首席执行官',0,0,13,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'7E2639BA-02B9-417A-9AAA-CF6DCF8487E0',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'10022',N'力资源专员',0,0,14,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'2B3406F9-B7FF-4D23-BC61-D8EEB6C88D5B',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'10023',N'行业顾问',0,0,15,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'05691457-5284-4FEE-8D7E-C35141F3FF39',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'10024',N'总经理助理',0,0,16,0,1,N'2016-07-12 00:00:00')
INSERT [Sys_Role] ([F_Id],[F_OrganizeId],[F_Category],[F_EnCode],[F_FullName],[F_AllowEdit],[F_AllowDelete],[F_SortCode],[F_DeleteMark],[F_EnabledMark],[F_CreatorTime]) VALUES ( N'3A2FD4D7-E73C-44E4-8AED-B6EE5980779E',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',2,N'10025',N'大堂经理',0,0,17,0,1,N'2016-07-12 00:00:00')
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_RoleAuthorize]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_RoleAuthorize]

CREATE TABLE [Sys_RoleAuthorize] (
[F_Id] [varchar]  (50) NOT NULL,
[F_ItemType] [int]  NULL,
[F_ItemId] [varchar]  (50) NULL,
[F_ObjectType] [int]  NULL,
[F_ObjectId] [varchar]  (50) NULL,
[F_SortCode] [int]  NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL)

ALTER TABLE [Sys_RoleAuthorize] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_RoleAuthorize] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'ccfcea25-cab8-42e7-aee3-61663d89ba93',2,N'91be873e-ccb7-434f-9a3b-d312d6d5798a',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'cd061505-61fe-4a4e-a612-41952ba33e3b',1,N'163DA347-887C-4C91-8298-EB00FFBFEC84',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'd4cd5d85-c730-4bd9-9d62-3233056fa7f3',2,N'E29FCBA7-F848-4A8B-BC41-A3C668A9005D',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'da24baba-479c-4017-acee-569b1fa0ce1a',1,N'54E9D12D-C039-4F01-A6FE-810A147D31D5',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'e7095efa-4793-44f0-8edb-57e21d4aeea2',1,N'64A1C550-2C61-4A8C-833D-ACD0C012260F',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'ea573da4-7921-40db-bf8f-447ef980ee31',1,N'85FAF4F4-9CBE-4904-94B3-2B930CA49F0C',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'eb7aabf3-801e-4751-85e9-8972faec4452',1,N'AF34B824-439E-4365-99CC-C1D30514D869',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'ebff5f54-bbe5-482a-a763-d6fcce17b655',2,N'5d708d9d-6ebe-40ea-8589-e3efce9e74ec',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'f5dc517b-f045-41ba-bae0-f7053a89c6c9',2,N'f93763ff-51a1-478d-9585-3c86084c54f3',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'f929d1f3-2485-4d0b-8253-ff778dd30add',2,N'cd65e50a-0bea-45a9-b82e-f2eacdbd209e',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'fcf8d653-fe9a-4e8f-81d5-f4af1119bbbf',1,N'F2DAD50B-95DF-48F7-8638-BA503B539143',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'04d23b62-8401-4e50-8279-aaeb66377daa',2,N'FD3D073C-4F88-467A-AE3B-CDD060952CE6',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'0f7b0b1b-d925-45d5-adf9-55044a7f4c19',2,N'5d708d9d-6ebe-40ea-8589-e3efce9e74ec',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'1afefe4f-c76d-488b-b165-e797b017c216',2,N'e75e4efc-d461-4334-a764-56992fec38e6',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'22ddf57d-739d-4da0-b2a7-752459f110a6',2,N'8a9993af-69b2-4d8a-85b3-337745a1f428',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'244823d7-6b36-4cf9-b63d-c749e91061ae',2,N'48afe7b3-e158-4256-b50c-cd0ee7c6dcc9',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'250a92b7-a549-4a35-b007-82f90dcf5622',2,N'104bcc01-0cfd-433f-87f4-29a8a3efb313',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'2af34ef2-522e-4ea3-a8df-668b57e3b4e3',1,N'337A4661-99A5-4E5E-B028-861CACAF9917',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'2e467fc2-2e71-45c7-ad7c-fad5eb956adf',2,N'cd65e50a-0bea-45a9-b82e-f2eacdbd209e',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'32119cfa-864e-4bf9-945b-2d76dad0a31c',2,N'f93763ff-51a1-478d-9585-3c86084c54f3',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'379e90a9-5628-47e0-8314-da3e0c550fb3',2,N'88f7b3a8-fd6d-4f8e-a861-11405f434868',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'37b242db-cd74-400f-964b-96d72bd651c6',2,N'1ee1c46b-e767-4532-8636-936ea4c12003',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'3ec593df-c492-4270-9aef-e75d521171da',2,N'14617a4f-bfef-4bc2-b943-d18d3ff8d22f',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'41105b53-4315-442c-bb7f-9b9204355351',2,N'4727adf7-5525-4c8c-9de5-39e49c268349',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'4ff4e45a-9ed6-4c79-be52-ae6d07d77b3a',2,N'8c7013a9-3682-4367-8bc6-c77ca89f346b',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'52cce008-0755-4a75-9fdf-6425f74f62b0',2,N'89d7a69d-b953-4ce2-9294-db4f50f2a157',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'53967381-3765-4bff-ad74-6aa1c9d03596',2,N'D4FCAFED-7640-449E-80B7-622DDACD5012',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'64f6b88c-7510-4e83-956e-d2d6c163200a',1,N'F298F868-B689-4982-8C8B-9268CBF0308D',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'68905347-8abf-4f99-bacd-8d3045b06e2b',2,N'4b876abc-1b85-47b0-abc7-96e313b18ed8',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'6d4f5a20-98b2-40c5-8352-80b15af1b360',2,N'239077ff-13e1-4720-84e1-67b6f0276979',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'700916e8-3488-45f2-b407-6f30df9b9123',2,N'B6A9473D-DAA7-4574-9231-13D9E631D379',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'7535204c-60ce-4114-bb12-430a5975b363',2,N'38e39592-6e86-42fb-8f72-adea0c82cbc1',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'77eafdea-c1e3-4e36-9d70-cdaa7b5200d4',1,N'38CA5A66-C993-4410-AF95-50489B22939C',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'790dc854-bdbf-4ff0-8cea-2ffffcbe98ed',2,N'E29FCBA7-F848-4A8B-BC41-A3C668A9005D',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'848319d7-89f3-4ef9-b9fc-fcd99eddf632',2,N'4bb19533-8e81-419b-86a1-7ee56bf1dd45',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'94fa7a37-986f-4534-87bc-b66bcf7246d0',1,N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'997a0c17-7de7-4eb3-9adb-c4900b310948',2,N'74eecdfb-3bee-405d-be07-27a78219c179',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'a06b6fb1-f68a-4856-9e41-44ec8a642139',2,N'85F5212F-E321-4124-B155-9374AA5D9C10',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'aa5d1775-d95b-4f07-8c2b-7a9820876dc0',2,N'709a4a7b-4d98-462d-b47c-351ef11db06f',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'af617592-755c-4a6b-99ac-3d1ba457d760',2,N'91be873e-ccb7-434f-9a3b-d312d6d5798a',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'c0a099cf-8ea2-4193-bd66-403f35ac3e42',1,N'423A200B-FA5F-4B29-B7B7-A3F5474B725F',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'c5c51f2e-4f7d-4aa9-9b90-b0ad1679771d',2,N'13c9a15f-c50d-4f09-8344-fd0050f70086',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'cbf03b03-096a-4eb3-9983-81637429e51b',2,N'82f162cb-beb9-4a79-8924-cd1860e26e2e',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'd5f8dc31-4c8d-41a5-8154-9c855553793a',2,N'ffffe7f8-900c-413a-9970-bee7d6599cce',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'd71845b3-c39b-4a99-a523-f7a93f3ac038',2,N'abfdff21-8ebf-4024-8555-401b4df6acd9',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'e1a1c00f-e10e-4589-8144-797f38efcd80',2,N'0d777b07-041a-4205-a393-d1a009aaafc7',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'b52fbff2-78d5-475d-84ca-6d9ed11d3cc6',1,N'4B2140D3-E61D-488E-ADF6-FF0EBCBC5D2C')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'e61a0833-aa73-4e15-9c03-83b8089e6bd8',2,N'9FD543DB-C5BB-4789-ACFF-C5865AFB032C',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'e6c1e0a7-aaaa-4adb-b95d-353134a484c6',1,N'64A1C550-2C61-4A8C-833D-ACD0C012260F',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'eae52f23-db61-4997-82e0-437978517f6a',1,N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId]) VALUES ( N'f5c3d009-3d00-4be1-822c-feba6c89ae0a',1,N'462027E0-0848-41DD-BCC3-025DCAE65555',1,N'531F7D18-C49F-4F4F-A920-0074FCB52078')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'1fd4ae2a-24fd-49e3-8007-5cc987cd05c0',1,N'42C44AC0-27FA-482D-B5E3-8F9B38B80A6A')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'df6839d3-60c4-447d-9d48-c75d26d77a7b',1,N'7A9CF301-FCDF-4BC9-A52B-A7D4FAE2D344')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'2bf9d1bd-510f-463a-9555-4ab8357bfb08',1,N'2691AB91-3010-465F-8D92-60A97425A45E')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'f8a6180a-ee18-41f4-b28e-d7e4c5a36045',1,N'41652BB4-E2DC-420E-AA8A-8C92784B76E3')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'cf6bf931-ae94-4820-92de-4f80590c615d',1,N'2DA8390B-61A4-4E6C-A6E7-8F6794C7EDCE')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'93e3474f-a8c9-4b0e-bf42-1571e9f4e6b8',1,N'07A8E061-AE47-49C9-8310-F055F35FF44B')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'fbc0b434-f261-47eb-94c8-0c450dd56cc4',1,N'AADB479E-9F87-49B1-AE2D-5DA6FECA3F8E')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'df6281cb-6ad9-4d4b-aff2-ba6f266c1dd3',1,N'8683CB17-5F9D-4A99-A233-A18C4D1CF95B')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'06a71015-42f4-4f16-ad9e-88e0665f7504',1,N'F68956A9-9C53-4C08-AFE8-8A4755FE2B8F')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ObjectType],[F_ObjectId]) VALUES ( N'bb544273-6e31-4235-b507-3f0ffbfded28',1,N'F9421969-D85C-4E4C-927F-CCFB18388A59')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'0000da5b-6305-4b23-b1db-1f55a66daca8',2,N'FD3D073C-4F88-467A-AE3B-CDD060952CE6',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'06011f83-df9a-4d5d-bb6f-0b948574256c',1,N'73FD1267-79BA-4E23-A152-744AF73117E9',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'12cc8ed7-d769-48cc-ab3c-866466462e70',1,N'96EE855E-8CD2-47FC-A51D-127C131C9FB9',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'15b2279f-7082-421e-a6a3-9abd5bca8303',1,N'337A4661-99A5-4E5E-B028-861CACAF9917',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'166e6255-d5cc-4718-b257-771398b4132b',2,N'13c9a15f-c50d-4f09-8344-fd0050f70086',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'1822a1c4-5a49-4742-a937-b63e4f9bd826',1,N'FE04386D-1307-4E34-8DFB-B56D9FEC78CE',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'1a81232c-037a-4af8-b2cf-55e19fce1582',2,N'239077ff-13e1-4720-84e1-67b6f0276979',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'1dbe5bcb-3907-49d4-93d9-0d41cc539a1d',1,N'423A200B-FA5F-4B29-B7B7-A3F5474B725F',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'1e2c7104-1731-4519-81ac-3594f78bf8dd',1,N'9F56840F-DF92-4936-A48C-8F65A39291A2',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'2078f57a-454a-48c8-9fee-122df8f5786e',1,N'7B959522-BE45-4747-B89D-592C7F3987A5',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'237da469-8831-45bf-bb78-0e7ca06f33d7',1,N'38CA5A66-C993-4410-AF95-50489B22939C',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'243814e8-2279-4749-b84a-4e0c269d2910',2,N'709a4a7b-4d98-462d-b47c-351ef11db06f',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'2c069a5e-8785-49b3-a6e7-355dbad2e89f',1,N'39E97B05-7B6F-4069-9972-6F9643BC3042',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'3115d827-1419-48ab-88fa-c9b56be6df86',1,N'822E2523-5105-4AE0-BF48-62459D3641F6',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'335e819a-866c-409d-8233-3449481b0460',2,N'D4FCAFED-7640-449E-80B7-622DDACD5012',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'34b49233-b13b-4a6f-bc98-3000bf6b75ee',1,N'91425AF9-F762-43AF-B784-107D23FFDC85',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'35753609-e0d7-4829-9685-6cafe02c7ca7',1,N'462027E0-0848-41DD-BCC3-025DCAE65555',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'3f21e866-1f79-4cac-9f8e-91a0cb1014ce',2,N'85F5212F-E321-4124-B155-9374AA5D9C10',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'43ad8ba2-3258-40ce-a121-a4c4c1af0871',1,N'a3a4742d-ca39-42ec-b95a-8552a6fae579',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'474417c9-51de-40e9-b2dc-59d169f0bf12',1,N'ABA7DA44-A291-4A25-9BDC-C310CF1C931C',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'4d0ba76b-dbb0-4e4f-b83e-92df13bf702a',2,N'ffffe7f8-900c-413a-9970-bee7d6599cce',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'4d26e4ba-cf4f-4783-a4bd-84e1f2f9ecb3',1,N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'5324f369-ce2d-47cc-a3c5-cf4f690a7914',1,N'D2ECB516-4CB7-49B1-B536-504382115DD2',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'577c000a-2997-4915-aa24-412c4acfbb38',1,N'6BBC3562-1051-4246-98B0-9F37CAC40DC8',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'5ae6902f-0520-4000-a495-6db64d3ff469',1,N'C3D12056-D906-4D8B-8B9C-954942742BDE',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'6e725406-22c9-4c19-8f85-054f97ee20f4',1,N'49F61713-C1E4-420E-BEEC-0B4DBC2D7DE8',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'6e83c40f-c7fc-4b96-86aa-b17485a2d8ca',1,N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'766067c0-ebef-43f6-b49b-a7261634ff05',2,N'88f7b3a8-fd6d-4f8e-a861-11405f434868',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'77699534-4f0b-44f0-a6d2-3953334be95a',1,N'A33ADBFC-089B-4981-BFAB-08178052EE36',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'844841a3-a465-4bba-816e-920dbdca9715',1,N'0EDF1DDB-CA17-4D08-AA25-914FE4E13324',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'8e81b948-313c-4d2c-b752-92a83197b7e6',1,N'e72c75d0-3a69-41ad-b220-13c9a62ec788',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'90a522bb-5e94-48d7-be44-e4180ee7bc3d',1,N'df9920e0-ba33-4e36-a911-ef08c6ea77ea',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'90a63c30-1c20-4f47-9cd8-d9bcc44e10d9',1,N'F298F868-B689-4982-8C8B-9268CBF0308D',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'94a7787a-6659-49cc-a902-7ea63231c177',2,N'4bb19533-8e81-419b-86a1-7ee56bf1dd45',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'9c9cfbd1-525a-4f02-a765-30a72c771e23',2,N'B6A9473D-DAA7-4574-9231-13D9E631D379',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'9cc97a78-d8ca-45bd-aad5-efbeef4a4c8a',2,N'8a9993af-69b2-4d8a-85b3-337745a1f428',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'9fef22f9-1962-4cd0-84a6-ba85b9ce29c1',1,N'B3BF41E1-0299-4EFE-BA76-A7377AC81B38',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'a8b2ff07-7af6-4e6a-8b9a-5785a25afe8c',1,N'1F14A1ED-B22E-4E4A-BF10-6CF018507E76',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'a8cf8cde-db46-4f5e-a3b2-883aef62ff7f',1,N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'b10ca258-bd85-403c-aded-95b546fecaea',1,N'ACDBD633-99A0-4BEF-B67C-3A5B41E7C1FD',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'c0257ed1-eae3-4260-9633-0f53b0e3d106',2,N'9FD543DB-C5BB-4789-ACFF-C5865AFB032C',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'c2e04783-a45a-449d-9f7f-83d6a855ec22',1,N'7858E329-16FC-49F4-93A1-11E2E7EF2998',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
INSERT [Sys_RoleAuthorize] ([F_Id],[F_ItemType],[F_ItemId],[F_ObjectType],[F_ObjectId],[F_CreatorTime],[F_CreatorUserId]) VALUES ( N'c2e7dba8-b103-4c63-a597-136110a89c7b',2,N'e75e4efc-d461-4334-a764-56992fec38e6',1,N'F0A2B36F-35A7-4660-B46C-D4AB796591EB',N'2016-07-24 00:04:00',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba')
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_User]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_User]

CREATE TABLE [Sys_User] (
[F_Id] [varchar]  (50) NOT NULL,
[F_Account] [varchar]  (50) NULL,
[F_RealName] [varchar]  (50) NULL,
[F_NickName] [varchar]  (50) NULL,
[F_HeadIcon] [varchar]  (50) NULL,
[F_Gender] [bit]  NULL,
[F_Birthday] [datetime]  NULL,
[F_MobilePhone] [varchar]  (20) NULL,
[F_Email] [varchar]  (50) NULL,
[F_WeChat] [varchar]  (50) NULL,
[F_ManagerId] [varchar]  (50) NULL,
[F_SecurityLevel] [int]  NULL,
[F_Signature] [varchar]  (500) NULL,
[F_OrganizeId] [varchar]  (50) NULL,
[F_DepartmentId] [varchar]  (500) NULL,
[F_RoleId] [varchar]  (500) NULL,
[F_DutyId] [varchar]  (500) NULL,
[F_IsAdmin] [bit]  NULL,
[F_IsBoss] [bit]  NULL,
[F_IsLeaderInDepts] [bit]  NULL,
[F_IsSenior] [bit]  NULL,
[F_SortCode] [int]  NULL,
[F_DeleteMark] [bit]  NULL,
[F_EnabledMark] [bit]  NULL,
[F_Description] [varchar]  (500) NULL,
[F_CreatorTime] [datetime]  NULL,
[F_CreatorUserId] [varchar]  (50) NULL,
[F_LastModifyTime] [datetime]  NULL,
[F_LastModifyUserId] [varchar]  (50) NULL,
[F_DeleteTime] [datetime]  NULL,
[F_DeleteUserId] [varchar]  (500) NULL,
[F_DingTalkUserId] [varchar]  (50) NULL,
[F_DingTalkUserName] [varchar]  (50) NULL,
[F_DingTalkAvatar] [varchar]  (100) NULL,
[F_WxOpenId] [varchar]  (50) NULL,
[F_WxNickName] [varchar]  (50) NULL,
[F_HeadImgUrl] [varchar]  (100) NULL)

ALTER TABLE [Sys_User] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_User] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_User] ([F_Id],[F_Account],[F_RealName],[F_NickName],[F_Gender],[F_MobilePhone],[F_OrganizeId],[F_DepartmentId],[F_RoleId],[F_DutyId],[F_IsAdmin],[F_IsBoss],[F_IsLeaderInDepts],[F_IsSenior],[F_DeleteMark],[F_EnabledMark],[F_Description],[F_CreatorTime],[F_LastModifyTime],[F_LastModifyUserId],[F_DingTalkUserName]) VALUES ( N'6903ab9d-20cd-44c4-a380-09f229366e1f',N'1010',N'白玉芬',N'白玉芬',0,N'15202701761',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',N'80E10CD5-7591-40B8-A005-BCDE1B961E76',N'531F7D18-C49F-4F4F-A920-0074FCB52078',N'23ED024E-0AAA-4C8D-9216-D1AB93348D26',0,0,0,0,0,1,N'测试数据',N'2016-07-20 00:00:00',N'2016-07-24 22:58:43',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'闫志辉')
INSERT [Sys_User] ([F_Id],[F_Account],[F_RealName],[F_NickName],[F_Gender],[F_MobilePhone],[F_OrganizeId],[F_DepartmentId],[F_IsAdmin],[F_IsBoss],[F_IsLeaderInDepts],[F_IsSenior],[F_DeleteMark],[F_EnabledMark],[F_Description],[F_CreatorTime],[F_DingTalkUserName]) VALUES ( N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'admin',N'超级管理员',N'超级管理员',1,N'13600000000',N'5AB270C0-5D33-4203-A54F-4552699FDA3C',N'554C61CE-6AE0-44EB-B33D-A462BE7EB3E1',0,0,0,0,0,1,N'系统内置账户',N'2016-07-20 00:00:00',N'闫志辉')
if exists (select * from sysobjects where id = OBJECT_ID('[Sys_UserLogOn]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [Sys_UserLogOn]

CREATE TABLE [Sys_UserLogOn] (
[F_Id] [varchar]  (50) NOT NULL,
[F_UserId] [varchar]  (50) NULL,
[F_UserPassword] [varchar]  (50) NULL,
[F_UserSecretkey] [varchar]  (50) NULL,
[F_AllowStartTime] [datetime]  NULL,
[F_AllowEndTime] [datetime]  NULL,
[F_LockStartDate] [datetime]  NULL,
[F_LockEndDate] [datetime]  NULL,
[F_FirstVisitTime] [datetime]  NULL,
[F_PreviousVisitTime] [datetime]  NULL,
[F_LastVisitTime] [datetime]  NULL,
[F_ChangePasswordDate] [datetime]  NULL,
[F_MultiUserLogin] [bit]  NULL,
[F_LogOnCount] [int]  NULL,
[F_UserOnLine] [bit]  NULL,
[F_Question] [varchar]  (50) NULL,
[F_AnswerQuestion] [varchar]  (500) NULL,
[F_CheckIPAddress] [bit]  NULL,
[F_Language] [varchar]  (50) NULL,
[F_Theme] [varchar]  (50) NULL)

ALTER TABLE [Sys_UserLogOn] WITH NOCHECK ADD  CONSTRAINT [PK_Sys_UserLogOn] PRIMARY KEY  NONCLUSTERED ( [F_Id] )
INSERT [Sys_UserLogOn] ([F_Id],[F_UserId],[F_UserPassword],[F_UserSecretkey],[F_PreviousVisitTime],[F_LastVisitTime],[F_MultiUserLogin],[F_LogOnCount],[F_UserOnLine],[F_CheckIPAddress]) VALUES ( N'6903ab9d-20cd-44c4-a380-09f229366e1f',N'6903ab9d-20cd-44c4-a380-09f229366e1f',N'403ffebb404e8c30c57747baaa522902',N'95aa29b12cf25d9a',N'2016-07-26 13:59:26',N'2016-07-27 17:33:18',0,7,0,0)
INSERT [Sys_UserLogOn] ([F_Id],[F_UserId],[F_UserPassword],[F_UserSecretkey],[F_PreviousVisitTime],[F_LastVisitTime],[F_MultiUserLogin],[F_LogOnCount],[F_UserOnLine],[F_CheckIPAddress]) VALUES ( N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba',N'44c35ab35cb0603e90d168642ca51fb6',N'57d3031d6fc4a34d',N'2020-01-14 21:41:43',N'2020-01-15 20:08:14',0,114,0,0)
if exists (select * from sysobjects where id = OBJECT_ID('[WeiXin_RequestBaseData]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [WeiXin_RequestBaseData]

CREATE TABLE [WeiXin_RequestBaseData] (
[uuId] [varchar]  (50) NOT NULL,
[OpenId] [varchar]  (100) NULL,
[MsgType] [varchar]  (100) NULL,
[DataContent] [varchar]  (2000) NULL,
[EventKey] [varchar]  (500) NULL,
[Url] [varchar]  (500) NULL,
[Url2] [varchar]  (500) NULL,
[XmlContent] [varchar]  (2000) NULL,
[CreateDate] [datetime]  NULL,
[Flag] [int]  NULL,
[RType] [varchar]  (70) NULL,
[Remark] [varchar]  (500) NULL,
[ExtInt] [int]  NULL,
[ExtStr] [varchar]  (200) NULL,
[ExtStr2] [varchar]  (700) NULL,
[ExtStr3] [varchar]  (2000) NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [WeiXin_RequestBaseData] WITH NOCHECK ADD  CONSTRAINT [PK_WeiXin_RequestBaseData] PRIMARY KEY  NONCLUSTERED ( [uuId] )
if exists (select * from sysobjects where id = OBJECT_ID('[WeiXin_RequestRule]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [WeiXin_RequestRule]

CREATE TABLE [WeiXin_RequestRule] (
[uuId] [varchar]  (50) NOT NULL,
[UserId] [varchar]  (50) NULL,
[RuleName] [varchar]  (200) NULL,
[ReqKeywords] [varchar]  (2000) NULL,
[ReqestType] [nchar]  (10) NULL,
[ResponseType] [int]  NULL,
[IsDefault] [bit]  NULL DEFAULT (0),
[ModelFunctionName] [varchar]  (200) NULL,
[ModelFunctionId] [int]  NULL,
[Seq] [int]  NULL,
[CreateDate] [datetime]  NULL,
[AgentUrl] [varchar]  (1000) NULL,
[AgentToken] [varchar]  (200) NULL,
[IsLikeSearch] [bit]  NULL DEFAULT (0),
[ExtInt] [int]  NULL,
[ExtInt2] [int]  NULL,
[ExtStr] [varchar]  (200) NULL,
[ExtStr2] [varchar]  (500) NULL,
[ExtStr3] [varchar]  (800) NULL,
[ExtStr4] [varchar]  (1000) NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [WeiXin_RequestRule] WITH NOCHECK ADD  CONSTRAINT [PK_WeiXin_RequestRule] PRIMARY KEY  NONCLUSTERED ( [uuId] )
if exists (select * from sysobjects where id = OBJECT_ID('[WeiXin_RequestRuleContent]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [WeiXin_RequestRuleContent]

CREATE TABLE [WeiXin_RequestRuleContent] (
[uuId] [varchar]  (50) NOT NULL,
[UserId] [varchar]  (50) NULL,
[RId] [varchar]  (50) NULL,
[RContent] [text]  NULL,
[RContent2] [varchar]  (2000) NULL,
[DetailUrl] [varchar]  (1000) NULL,
[PicUrl] [varchar]  (1000) NULL,
[MediaUrl] [varchar]  (1500) NULL,
[MeidaHDUrl] [varchar]  (1500) NULL,
[Remark] [varchar]  (2000) NULL,
[Seq] [int]  NULL,
[CreateDate] [datetime]  NULL,
[ExtInt] [int]  NULL,
[ExtInt2] [int]  NULL,
[ExtStr] [varchar]  (800) NULL,
[ExtStr2] [varchar]  (1000) NULL,
[Extstr3] [varchar]  (1500) NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [WeiXin_RequestRuleContent] WITH NOCHECK ADD  CONSTRAINT [PK_WeiXin_RequestRuleContent] PRIMARY KEY  NONCLUSTERED ( [uuId] )
if exists (select * from sysobjects where id = OBJECT_ID('[WeiXin_ResponseBaseData]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [WeiXin_ResponseBaseData]

CREATE TABLE [WeiXin_ResponseBaseData] (
[uuId] [varchar]  (50) NOT NULL,
[OpenId] [varchar]  (100) NULL,
[RequestType] [varchar]  (50) NULL,
[RequestContent] [varchar]  (2000) NULL,
[ResponseType] [varchar]  (50) NULL,
[ReponseContent] [varchar]  (2000) NULL,
[XmlContent] [varchar]  (2000) NULL,
[CreateDate] [datetime]  NULL,
[Flag] [int]  NULL,
[RType] [varchar]  (70) NULL,
[Remark] [varchar]  (500) NULL,
[ExtInt] [int]  NULL,
[ExtStr] [varchar]  (200) NULL,
[ExtStr2] [varchar]  (700) NULL,
[ExtStr3] [varchar]  (2000) NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [WeiXin_ResponseBaseData] WITH NOCHECK ADD  CONSTRAINT [PK_WeiXin_ResponseBaseData] PRIMARY KEY  NONCLUSTERED ( [uuId] )
if exists (select * from sysobjects where id = OBJECT_ID('[WeiXin_TemplateMessage]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [WeiXin_TemplateMessage]

CREATE TABLE [WeiXin_TemplateMessage] (
[uuId] [varchar]  (50) NOT NULL,
[Code] [varchar]  (50) NOT NULL,
[TemplateId] [varchar]  (100) NOT NULL,
[Title] [varchar]  (50) NULL,
[Primary_Industry] [int]  NULL,
[Deputy_Industry] [int]  NULL,
[Data_First] [varchar]  (100) NULL,
[Data_Remark] [varchar]  (100) NULL,
[Data_Keyword1] [varchar]  (50) NULL,
[Data_Keyword2] [varchar]  (50) NULL,
[Data_Keyword3] [varchar]  (50) NULL,
[Data_Keyword4] [varchar]  (50) NULL,
[Data_Keyword5] [varchar]  (50) NULL,
[LinkUrl] [varchar]  (50) NULL,
[MiniProgram] [int]  NULL,
[Appid] [varchar]  (50) NULL,
[Pagepath] [varchar]  (50) NULL,
[FirstColor] [nchar]  (10) NULL,
[RemarkColor] [nchar]  (10) NULL,
[Content] [varchar]  (500) NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [WeiXin_TemplateMessage] WITH NOCHECK ADD  CONSTRAINT [PK_WeiXin_TemplateMessage] PRIMARY KEY  NONCLUSTERED ( [uuId] )
if exists (select * from sysobjects where id = OBJECT_ID('[WeiXin_Users]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [WeiXin_Users]

CREATE TABLE [WeiXin_Users] (
[uuId] [varchar]  (50) NOT NULL,
[OpenId] [varchar]  (300) NOT NULL,
[Nickname] [varchar]  (200) NULL,
[Mobile] [varchar]  (20) NULL,
[Sex] [varchar]  (10) NULL,
[City] [varchar]  (200) NULL,
[Country] [varchar]  (200) NULL,
[Province] [varchar]  (200) NULL,
[Language] [varchar]  (30) NULL,
[HeadImgUrl] [varchar]  (1000) NULL,
[SubscribeTime] [varchar]  (30) NULL,
[Unionid] [varchar]  (200) NULL,
[CreateDate] [datetime]  NULL,
[GroupId] [int]  NULL,
[Status] [int]  NULL,
[WeixinId] [varchar]  (50) NULL,
[UpdateDate] [datetime]  NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [WeiXin_Users] WITH NOCHECK ADD  CONSTRAINT [PK_WeiXin_Users] PRIMARY KEY  NONCLUSTERED ( [uuId] )
if exists (select * from sysobjects where id = OBJECT_ID('[WeiXin_WxAppConfig]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [WeiXin_WxAppConfig]

CREATE TABLE [WeiXin_WxAppConfig] (
[uuId] [varchar]  (50) NOT NULL,
[WxName] [varchar]  (50) NULL,
[WxId] [varchar]  (50) NOT NULL,
[WxCode] [varchar]  (50) NULL,
[HeadPic] [varchar]  (50) NULL,
[Province] [varchar]  (50) NULL,
[City] [varchar]  (50) NULL,
[Token] [varchar]  (300) NULL,
[ApiUrl] [varchar]  (500) NULL,
[AppId] [varchar]  (200) NULL,
[AppSecret] [varchar]  (200) NULL,
[Access_Token] [varchar]  (200) NULL,
[Encoding] [varchar]  (200) NULL,
[WxType] [int]  NULL,
[Status] [bit]  NULL,
[IsDefault] [bit]  NULL,
[CloseKW] [bit]  NULL,
[Remark] [varchar]  (50) NULL,
[TimeStamp] [varchar]  (50) NULL,
[ExtStr] [varchar]  (1000) NULL,
[ExtStr2] [varchar]  (1000) NULL,
[ExtStr3] [varchar]  (1000) NULL,
[PersonSynDate] [datetime]  NULL,
[OpenidCount] [int]  NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [WeiXin_WxAppConfig] WITH NOCHECK ADD  CONSTRAINT [PK_WeiXin_WxAppConfig] PRIMARY KEY  NONCLUSTERED ( [uuId] )
INSERT [WeiXin_WxAppConfig] ([uuId],[WxName],[WxId],[WxCode],[Token],[ApiUrl],[AppId],[AppSecret],[Encoding],[WxType],[Status],[IsDefault],[CloseKW],[PersonSynDate],[OpenidCount]) VALUES ( N'2d747bf6-9efc-43e9-8263-fb4cf6f16da8',N'宜宾机电一体化研究所',N'gh_69c27280f38d',N'ybjd3936',N'yibinmetec',N'eims.dalecloud.cn/api/weixin/index?apiid=ybjd3936',N'wx21027f00d4234abc',N'e90f525e8d396fc68f0bdf4cafcc56b2',N'bwQlhHUl2pe2VU9CzVN9FCF2yZDAAiJBZqTLo3o9Oyb',0,1,1,0,N'2019-07-04 13:33:02',122)
if exists (select * from sysobjects where id = OBJECT_ID('[WeiXin_WxPropertyInfo]') and OBJECTPROPERTY(id, 'IsUserTable') = 1) 
DROP TABLE [WeiXin_WxPropertyInfo]

CREATE TABLE [WeiXin_WxPropertyInfo] (
[uuId] [varchar]  (50) NOT NULL,
[WxId] [varchar]  (50) NULL,
[TypeId] [int]  NULL,
[TypeName] [varchar]  (100) NULL,
[IName] [varchar]  (200) NULL,
[IContent] [varchar]  (MAX) NULL,
[ExpiresIn] [int]  NULL,
[Count] [int]  NULL,
[CategoryId] [int]  NULL,
[CategoryName] [varchar]  (50) NULL,
[Remark] [varchar]  (1000) NULL,
[Status] [bit]  NULL,
[Creator] [varchar]  (50) NULL,
[CreatorId] [varchar]  (50) NULL,
[CreateTime] [datetime]  NULL,
[Modifier] [varchar]  (50) NULL,
[ModifierId] [varchar]  (50) NULL,
[ModifyTime] [datetime]  NULL,
[DeleterId] [varchar]  (50) NULL,
[DeleteTime] [datetime]  NULL)

ALTER TABLE [WeiXin_WxPropertyInfo] WITH NOCHECK ADD  CONSTRAINT [PK_WeiXin_WxPropertyInfo] PRIMARY KEY  NONCLUSTERED ( [uuId] )
