USE [FormDB]
GO
/****** Object:  Table [dbo].[DicItem]    Script Date: 2020/3/27 16:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DicItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MainId] [int] NOT NULL,
	[MainCode] [nvarchar](50) NULL,
	[Name] [nvarchar](500) NOT NULL,
	[GroupName] [nvarchar](200) NULL,
	[IsSingle] [bit] NOT NULL,
	[PageNum] [int] NOT NULL,
	[PrintOrder] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_DicItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DicMain]    Script Date: 2020/3/27 16:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DicMain](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ShortName] [nvarchar](50) NULL,
	[Version] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[Type] [int] NOT NULL,
	[UniCode] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_DicMain] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DicOptions]    Script Date: 2020/3/27 16:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DicOptions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ItemId] [int] NOT NULL,
	[ItemName] [nvarchar](50) NULL,
	[HTMLType] [nvarchar](50) NOT NULL,
	[DomType] [nvarchar](50) NULL,
	[IsNecessary] [bit] NOT NULL,
	[ExtendContent] [nvarchar](500) NULL,
	[PrintOrder] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_DicOptions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DicItem] ON 
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1, 1, N'basic', N'1.疫情爆发后您的孩子是否有国内外主要疫情发生地旅行、居住、途径史？', NULL, 1, 1, N'1')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (4, 1, N'basic', N'2.疫情爆发后您的孩子是否接触过新冠肺炎确诊或疑似患者？', NULL, 1, 1, N'2')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (5, 1, N'basic', N'3.疫情爆发后您的孩子是否出现过发热咳嗽等呼吸道症状？', NULL, 1, 1, N'3')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (6, 1, N'basic', N'4.您对于疫情是否担忧？', NULL, 1, 1, N'4')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (7, 1, N'basic', N'5.您孩子对于疫情是否担忧？', NULL, 1, 1, N'5')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (8, 1, N'basic', N'6.您孩子是否因恐惧疫情难以入睡或夜间惊醒？', NULL, 1, 2, N'6')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (9, 1, N'basic', N'7.您的孩子目前所在地是{input}。是否为您孩子所就读学校的所在地？', NULL, 1, 2, N'7')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (10, 1, N'basic', N'8.您孩子是否为独身子女', NULL, 1, 2, N'8')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (11, 1, N'basic', N'9.父亲工作{input}，母亲工作{input}。目前是否离家上班？', NULL, 1, 2, N'9')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (12, 1, N'basic', N'10.疫情期间您孩子的学校是否统一开展网络课程', NULL, 1, 2, N'10')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (13, 1, N'basic', N'11.疫情开展网络课程期间您孩子的睡眠时间与疫情出现之前相比', NULL, 1, 3, N'11')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1002, 1, N'basic', N'12.疫情开展网络课程期间您孩子夜间入睡时间与疫情出现之前相比', NULL, 1, 3, N'12')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1003, 1, N'basic', N'13.疫情开展网络课程期间您孩子早晨起床时间与疫情出现之前相比', NULL, 1, 3, N'13')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1004, 1, N'basic', N'14.疫情开展网络课程期间您孩子的睡眠质量与疫情出现之前相比', NULL, 1, 3, N'14')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1005, 1, N'basic', N'15.疫情开展网络课程期间您孩子的就餐次数为{number}转轮0-9，精确到1），与疫情出现之前相比每日就餐次数
', NULL, 1, 3, N'15')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1006, 1, N'basic', N'每周吃早餐次数', NULL, 1, 3, N'15-1')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1007, 1, N'basic', N'每周吃夜宵次数', NULL, 1, 3, N'15-2')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1008, 1, N'basic', N'16.疫情开展网络课程期间您孩子就餐时间是否有改变', NULL, 1, 4, N'16')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1009, 1, N'basic', N'17.与疫情出现之前相比，您的孩子每日零食的摄入量', NULL, 1, 4, N'17')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1010, 1, N'basic', N'18.疫情期间您孩子的饮食以    摄入为主（多选5项）', NULL, 1, 4, N'18')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1011, 1, N'basic', N'19.	疫情开展网络课程期间您孩子平均每天体育锻炼时间{number}小时（转轮精确到0.5），与疫情出现之前相比增加/不变/减少（转轮{number}小时（转轮精确到0.5）
', NULL, 1, 4, N'19')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1012, 1, N'basic', N'20.疫情期间您孩子的体重增加/不变/减少（转轮）{number}公斤（转轮0-20，精确到0.5）', NULL, 1, 4, N'20')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1016, 1, N'basic', N'21.	疫情开展网络课程期间您孩子每天平均面对电子屏幕（电视、电脑、手机、平板等）的时间学习{number}小时（转轮精确到0.5），与疫情出现前相比增加/不变/减少（转轮）  小时（转轮精确到0.5）娱乐{number}小时（转轮精确到0.5），与疫情出现前相比增加/不变/减少（转轮）{number}小时（转轮精确到0.5）', NULL, 1, 5, N'21')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1017, 1, N'basic', N'22.疫情开展网络课程期间您孩子临睡前1小时面对电子屏幕（电视、电脑、手机、平板等）的时间{number}分钟（转轮0-60，精确到1），与疫情出现前相比增加/不变/减少（转轮）{number}分钟（转轮0-60，精确到1）', NULL, 1, 5, N'22')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1018, 1, N'basic', N'23.疫情期间您孩子的学校是否提供有心理辅导', NULL, 1, 5, N'23')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1019, 1, N'basic', N'24.您认为引起孩子的睡眠习惯改变的原因是', NULL, 1, 5, N'24')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1027, 3, N'sleep', N'睡觉打鼾超过睡眠时间的一半', N'1.呼吸情况', 1, 1, N'1')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1036, 3, N'sleep', N'睡觉总是打鼾', NULL, 1, 1, N'2')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1037, 3, N'sleep', N'睡觉鼾声重', NULL, 1, 1, N'3')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1038, 3, N'sleep', N'夜间睡觉时呼吸沉重或呼吸声大', NULL, 1, 1, N'4')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1039, 3, N'sleep', N'夜间睡觉时呼吸困难或呼吸费力', NULL, 1, 1, N'5')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1040, 3, N'sleep', N'夜间睡眠时观察到孩子有呼吸停止', NULL, 1, 1, N'6')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1041, 3, N'sleep', N'白天喜欢张嘴呼吸', NULL, 1, 1, N'7')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1042, 3, N'sleep', N'早晨睡醒时有口干', NULL, 1, 1, N'8')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1043, 3, N'sleep', N'早上起床时伴头痛', NULL, 1, 1, N'9')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1044, 3, N'sleep', N'白天有睡意的困扰或总爱睡觉', N'2.白天嗜睡情况', 1, 2, N'1')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1045, 3, N'sleep', N'老师或其他看护人评价孩子白天表现得昏昏欲睡', NULL, 1, 2, N'2')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1046, 3, N'sleep', N'在跟孩子讲话他/她好像心不在焉或没有在听', N'3.儿童行为情况', 1, 3, N'1')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1047, 3, N'sleep', N'较难安排活动或任务', NULL, 1, 3, N'2')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1048, 3, N'sleep', N'易被外部的刺激因素分散注意力', NULL, 1, 3, N'3')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1049, 3, N'sleep', N'坐下时总是手脚乱动不安或浑身不适', NULL, 1, 3, N'4')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1050, 3, N'sleep', N'常表现得忙个不停或高谈阔论 ', NULL, 1, 3, N'5')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1051, 3, N'sleep', N'平时总爱打断别人或者抢话说', NULL, 1, 3, N'6')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1052, 3, N'sleep', N'睡觉偶尔尿床', N'4.其他', 1, 4, N'1')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1053, 3, N'sleep', N'晨起时感觉未得到充分休息', NULL, 1, 4, N'2')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1054, 3, N'sleep', N'早上很难叫醒', NULL, 1, 4, N'3')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1055, 3, N'sleep', N'曾有过生长发育停滞', NULL, 1, 4, N'4')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1056, 3, N'sleep', N'超重 ', NULL, 1, 4, N'5')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1057, 4, N'sleephabit', N'填写人与小孩关系：', NULL, 1, 1, N'1')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1059, 4, N'sleephabit', N'疫情期间您孩子晚上就寝时间： ', N'平时', 1, 2, N'1')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1060, 4, N'sleephabit', N'疫情期间您孩子晚上就寝时间： ', N'周末', 1, 3, N'1')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1061, 4, N'sleephabit', N'1.孩子晚上是否在固定时间上床睡觉？', NULL, 1, 4, N'1')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1062, 4, N'sleephabit', N'2.孩子上床后是否可在20分钟内入睡？', NULL, 1, 4, N'2')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1063, 4, N'sleephabit', N'3.孩子是否独自在自己床上睡觉？', NULL, 1, 4, N'3')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1064, 4, N'sleephabit', N'4.孩子是否在他人床上入睡？', NULL, 1, 4, N'4')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1065, 4, N'sleephabit', N'5.孩子入睡时是否伴有翻身或肢体节律性动作？', NULL, 1, 4, N'5')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1066, 4, N'sleephabit', N'6.孩子入睡时是否需借助特殊物品（如玩具、毯子等）？', NULL, 1, 5, N'1')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1067, 4, N'sleephabit', N'7.孩子入睡时是否需要陪伴？', NULL, 1, 5, N'2')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1068, 4, N'sleephabit', N'8.到了就寝时间，孩子是否主动上床睡觉？', NULL, 1, 5, N'3')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1069, 4, N'sleephabit', N'9.到了就寝时间，孩子是否不愿意上床睡觉？', NULL, 1, 5, N'4')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1070, 4, N'sleephabit', N'10.到了就寝时间，孩子是否有如哭闹、拒绝待在床上等不良行为？', NULL, 1, 5, N'5')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1071, 4, N'sleephabit', N'11.孩子是否害怕在黑暗中睡觉？', NULL, 1, 6, N'1')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1072, 4, N'sleephabit', N'12.孩子是否害怕一个人睡觉？', NULL, 1, 6, N'2')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1073, 4, N'sleephabit', N'13.孩子是否担心在睡眠中死去？', NULL, 1, 6, N'3')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1074, 4, N'sleephabit', N'14.您是否认为孩子睡得太少？', NULL, 1, 6, N'4')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1075, 4, N'sleephabit', N'15.您是否认为孩子睡得太多？', NULL, 1, 6, N'5')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1076, 4, N'sleephabit', N'16.您是否认为孩子的睡眠量合适？', NULL, 1, 7, N'1')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1077, 4, N'sleephabit', N'17.您是否认为孩子的睡眠质量好？', NULL, 1, 7, N'2')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1078, 4, N'sleephabit', N'18.您是否认为孩子每日的睡眠量保持一致？', NULL, 1, 7, N'3')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1079, 4, N'sleephabit', N'19.孩子是否有尿床现象？', NULL, 1, 7, N'4')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1080, 4, N'sleephabit', N'20.孩子是否有说梦话现象？', NULL, 1, 7, N'5')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1081, 4, N'sleephabit', N'21.孩子睡眠过程中是否不安宁，常有肢体动作？', NULL, 1, 8, N'1')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1082, 4, N'sleephabit', N'22.孩子是否有梦游（睡眠过程中行走）现象？', NULL, 1, 8, N'2')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1083, 4, N'sleephabit', N'23.孩子是否同父母（或代养人）在同一房间内睡觉？', NULL, 1, 8, N'3')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1084, 4, N'sleephabit', N'24.孩子是否同父母（或代养人）在同一床上睡觉？', NULL, 1, 8, N'4')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1085, 4, N'sleephabit', N'25.孩子是否有半夜转移到他人（父母、兄弟姐妹等）床上的现象？', NULL, 1, 8, N'5')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1086, 4, N'sleephabit', N'26.孩子是否说睡觉时有身体疼痛？', NULL, 1, 9, N'1')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1087, 4, N'sleephabit', N'27.接上题，如有，在何部位？（如无可不填）', NULL, 1, 9, N'2')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1088, 4, N'sleephabit', N'28.孩子睡眠中是否有磨牙现象？', NULL, 1, 9, N'3')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1089, 4, N'sleephabit', N'29.孩子睡眠中是否有打鼾很响的现象？', NULL, 1, 9, N'4')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1090, 4, N'sleephabit', N'30.孩子睡眠中是否有呼吸暂停现象？', NULL, 1, 9, N'5')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1091, 4, N'sleephabit', N'31.孩子睡眠中是否有憋气或气急等呼吸困难现象？', NULL, 1, 10, N'1')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1092, 4, N'sleephabit', N'32.孩子在陌生环境中（如到亲戚家或去旅行）是否有入睡困难现象？', NULL, 1, 10, N'2')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1093, 4, N'sleephabit', N'33.孩子是否有抱怨睡得不好的现象？', NULL, 1, 10, N'3')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1094, 4, N'sleephabit', N'34.孩子是否有半夜醒来且伴有无法安慰的哭吵、出汗的现象？', NULL, 1, 10, N'4')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1095, 4, N'sleephabit', N'35.孩子是否有被噩梦惊醒的现象？', NULL, 1, 10, N'5')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1096, 4, N'sleephabit', N'36.孩子是否会夜间醒来一次？', NULL, 1, 11, N'1')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1097, 4, N'sleephabit', N'37.孩子是否会夜间醒来一次以上？', NULL, 1, 11, N'2')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1098, 4, N'sleephabit', N'38.孩子夜间醒来再次入睡是否需要帮助？', NULL, 1, 11, N'3')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1099, 4, N'sleephabit', N'39.孩子每次夜醒持续时间通常为：', NULL, 1, 11, N'4')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1100, 4, N'sleephabit', N'40.孩子早晨是否可自己醒来？', NULL, 1, 11, N'5')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1101, 4, N'sleephabit', N'41.孩子早晨是否需闹钟吵醒？', NULL, 1, 12, N'1')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1102, 4, N'sleephabit', N'42.孩子是否醒来后情绪不佳？', NULL, 1, 12, N'2')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1103, 4, N'sleephabit', N'43.孩子早晨是否由他人唤醒？', NULL, 1, 12, N'3')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1104, 4, N'sleephabit', N'44.孩子醒后是否不愿起床？', NULL, 1, 12, N'4')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1105, 4, N'sleephabit', N'45.孩子早晨起床后是否需长时间才能清醒？', NULL, 1, 12, N'5')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1106, 4, N'sleephabit', N'46.孩子是否醒得很早？', NULL, 1, 13, N'1')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1107, 4, N'sleephabit', N'47.孩子早餐是否胃口好？', NULL, 1, 13, N'2')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1108, 4, N'sleephabit', N'48.孩子白天是否有打盹现象？', NULL, 1, 13, N'3')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1109, 4, N'sleephabit', N'49.孩子是否有在活动过程中突然入睡的情况？', NULL, 1, 13, N'4')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1110, 4, N'sleephabit', N'50.孩子是否看起来疲乏？', NULL, 1, 13, N'5')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1111, 4, N'sleephabit', N'疫情期间您孩子通常一天睡觉时间（包括晚上和白天的总睡眠）：平时{number}小时，周末{number}小时', NULL, 1, 14, N'1')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1112, 4, N'sleephabit', N'穿衣服', N'在疫情期间，您孩子在如下情形时是否经常打瞌睡或入睡？', 1, 15, N'1')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1113, 4, N'sleephabit', N'独自玩耍', NULL, 1, 15, N'2')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1114, 4, N'sleephabit', N'和别人玩耍', NULL, 1, 15, N'3')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1115, 4, N'sleephabit', N'看电视', NULL, 1, 15, N'4')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1116, 4, N'sleephabit', N'坐车', NULL, 1, 15, N'5')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1117, 4, N'sleephabit', N'吃饭', NULL, 1, 15, N'6')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1118, 4, N'sleephabit', N'洗澡', NULL, 1, 15, N'7')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1119, 5, N'action', N'1.某种小功作(如咬指甲,吸手指,拉头发,拉衣服上的布毛)', NULL, 1, 16, N'1')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1120, 5, N'action', N'2.对大人粗鲁无礼', NULL, 1, 16, N'2')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1121, 5, N'action', N'3.在交朋友或保持友谊上存在问题', NULL, 1, 16, N'3')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1122, 5, N'action', N'4.易兴奋,易冲动', NULL, 1, 16, N'4')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1123, 5, N'action', N'5.爱指手划脚', NULL, 1, 16, N'5')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1124, 5, N'action', N'6.吸吮或咬嚼(拇指,衣服,毯子)', NULL, 1, 17, N'1')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1125, 5, N'action', N'7.容易或经常哭叫', NULL, 1, 17, N'2')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1126, 5, N'action', N'8.脾气很大', NULL, 1, 17, N'3')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1127, 5, N'action', N'9.爱做白日梦', NULL, 1, 17, N'4')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1128, 5, N'action', N'10.学习困难', NULL, 1, 17, N'5')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1129, 5, N'action', N'11.扭动不停', NULL, 1, 18, N'1')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1130, 5, N'action', N'12.惧怕(新环境,陌生人,陌生地方,上学)', NULL, 1, 18, N'2')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1131, 5, N'action', N'13.坐立不定,经常"忙碌"', NULL, 1, 18, N'3')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1132, 5, N'action', N'14.具有破坏性', NULL, 1, 18, N'4')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1133, 5, N'action', N'15.撒谎或捏造情节', NULL, 1, 18, N'5')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1134, 5, N'action', N'16.怕羞', NULL, 1, 19, N'1')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1135, 5, N'action', N'17.造成的麻烦比同龄孩子多', NULL, 1, 19, N'2')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1136, 5, N'action', N'18.说话与同龄儿童不同(像婴儿说话,口吃,别人不易听懂)', NULL, 1, 19, N'3')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1137, 5, N'action', N'19.抵赖错误或归罪他人', NULL, 1, 19, N'4')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1138, 5, N'action', N'20.好争吵', NULL, 1, 19, N'5')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1139, 5, N'action', N'21.撅嘴和生气', NULL, 1, 20, N'1')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1140, 5, N'action', N'22.偷窃', NULL, 1, 20, N'2')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1141, 5, N'action', N'23.不服从或勉强服从', NULL, 1, 20, N'3')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1142, 5, N'action', N'24.忧虑比别人多(忧虑,孤独,疾病,死亡)', NULL, 1, 20, N'4')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1143, 5, N'action', N'25.做事有始无终', NULL, 1, 20, N'5')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1144, 5, N'action', N'26.感情易受损害', NULL, 1, 21, N'1')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1145, 5, N'action', N'27.欺凌别人', NULL, 1, 21, N'2')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1146, 5, N'action', N'28.不能停止重夏性活动', NULL, 1, 21, N'3')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1147, 5, N'action', N'29.残忍', NULL, 1, 21, N'4')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1148, 5, N'action', N'30.稚气或不成熟(自己会的事要人帮忙,依缠别人,常需别人鼓励,支持)', NULL, 1, 21, N'5')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1149, 5, N'action', N'31.容易分心或注意不集中成为一个问题', NULL, 1, 22, N'1')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1150, 5, N'action', N'32.儿童感觉头痛', NULL, 1, 22, N'2')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1151, 5, N'action', N'33.情堵交化迅速剧烈', NULL, 1, 22, N'3')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1152, 5, N'action', N'34.不喜欢或不遵从纪律或约束', NULL, 1, 22, N'4')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1153, 5, N'action', N'35.经常打架', NULL, 1, 22, N'5')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1154, 5, N'action', N'36.与兄弟姐妹不能很好相处', NULL, 1, 23, N'1')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1155, 5, N'action', N'37.在努力中容易泄气', NULL, 1, 23, N'2')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1156, 5, N'action', N'38.妨害其他儿童', NULL, 1, 23, N'3')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1157, 5, N'action', N'39.基本上是一个不愉快的小孩', NULL, 1, 23, N'4')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1158, 5, N'action', N'40.有饮食问题(食欲不佳,进食中常跑开)', NULL, 1, 23, N'5')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1159, 5, N'action', N'41.儿童感觉胃痛', NULL, 1, 24, N'1')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1160, 5, N'action', N'42.有睡眠问题(不能入睡,早醒,夜间起床)', NULL, 1, 24, N'2')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1161, 5, N'action', N'43.儿童感觉具有其他疼痛', NULL, 1, 24, N'3')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1162, 5, N'action', N'44.呕吐或恶心', NULL, 1, 24, N'4')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1163, 5, N'action', N'45.感到在家庭圈子中被欺编', NULL, 1, 24, N'5')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1164, 5, N'action', N'46.自夸和吹牛', NULL, 1, 25, N'1')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1165, 5, N'action', N'47.让自己受别人欺骗', NULL, 1, 25, N'2')
GO
INSERT [dbo].[DicItem] ([Id], [MainId], [MainCode], [Name], [GroupName], [IsSingle], [PageNum], [PrintOrder]) VALUES (1166, 5, N'action', N'48.有大便问题(腹泻,排便不规则,便秘)', NULL, 1, 25, N'3')
GO
SET IDENTITY_INSERT [dbo].[DicItem] OFF
GO
SET IDENTITY_INSERT [dbo].[DicMain] ON 
GO
INSERT [dbo].[DicMain] ([Id], [Name], [ShortName], [Version], [Description], [Type], [UniCode]) VALUES (1, N'儿童问卷疫情版', N'基本信息', N'1', N'', 0, N'basic')
GO
INSERT [dbo].[DicMain] ([Id], [Name], [ShortName], [Version], [Description], [Type], [UniCode]) VALUES (3, N'儿童问卷疫情版', N'儿童睡眠', N'1', N'', 0, N'sleep')
GO
INSERT [dbo].[DicMain] ([Id], [Name], [ShortName], [Version], [Description], [Type], [UniCode]) VALUES (4, N'儿童问卷疫情版', N'儿童睡眠习惯', N'1', N'', 0, N'sleephabit')
GO
INSERT [dbo].[DicMain] ([Id], [Name], [ShortName], [Version], [Description], [Type], [UniCode]) VALUES (5, N'儿童问卷疫情版', N'儿童行为问卷（疫情期间）', N'1', N'', 0, N'action')
GO
SET IDENTITY_INSERT [dbo].[DicMain] OFF
GO
SET IDENTITY_INSERT [dbo].[DicOptions] ON 
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (1, N'是', 1, NULL, N'input', N'checkbox', 1, N'（请填写所接触的省市或国家{input}）', N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2, N'否', 1, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3, N'是', 4, NULL, N'input', N'checkbox', 1, N'（{checkbox}确诊  {checkbox}疑似）', N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (4, N'否', 4, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (5, N'是', 5, NULL, N'input', N'checkbox', 1, N'（{checkbox}发热{checkbox}咳嗽{checkbox}气促{checkbox}其他  ）', N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (6, N'否', 5, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (7, N'一点也不', 6, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (8, N'稍有担忧', 6, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (9, N'一般', 6, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (10, N'较为担忧', 6, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (11, N'特别担忧', 6, NULL, N'input', N'checkbox', 1, NULL, N'5')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (1003, N'一点也不', 7, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (1004, N'稍有担忧', 7, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (1005, N'一般', 7, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (1006, N'较为担忧', 7, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (1007, N'特别担忧', 7, NULL, N'input', N'checkbox', 1, NULL, N'5')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (1008, N'没有', 8, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (1009, N'<1次/周', 8, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (1010, N'1-2次/周', 8, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (1011, N'3-4次/周', 8, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (1012, N'>4次/周', 8, NULL, N'input', N'checkbox', 1, NULL, N'5')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (1013, N'是', 9, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (1014, N'否', 9, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (1015, N'是', 10, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (1016, N'否', 10, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (1017, N'父母双方均离家上班，孩子交由他人（如祖辈、保姆）照顾', 11, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (1018, N'父母一方离家上班，另一方单独照顾孩子，或与其他人（如祖辈、保姆）共同照顾孩子', 11, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (1021, N'父母双方均未离家，共同照顾孩子', 11, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (1023, N'其他', 11, NULL, N'input', N'checkbox', 1, N'{input}', N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (1024, N'是', 12, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (1025, N'否', 12, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (1026, N'增加/不变/减少（转轮）', 13, NULL, N'number', NULL, 1, N'{number}小时', N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2024, N'增加/不变/减少（转轮）', 1002, NULL, N'number', NULL, 1, N'{number}小时', N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2025, N'增加/不变/减少（转轮）', 1003, NULL, N'number', NULL, 1, N'{number}小时', N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2026, N'大大降低', 1004, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2027, N'稍有降低', 1004, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2028, N'基本相同', 1004, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2029, N'稍有提升', 1004, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2030, N'大大提升', 1004, NULL, N'input', N'checkbox', 1, NULL, N'5')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2031, N'增多', 1005, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2032, N'无改变', 1005, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2033, N'减少', 1005, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2034, N'不吃早餐', 1006, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2035, N'1-2次', 1006, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2036, N'3-4次', 1006, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2037, N'5-6次', 1006, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2038, N'每天吃早餐', 1006, NULL, N'input', N'checkbox', 1, NULL, N'5')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2039, N'不吃宵夜', 1007, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2040, N'1-2次', 1007, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2041, N'3-4次', 1007, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2042, N'5-6次', 1007, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2043, N'每天吃宵夜', 1007, NULL, N'input', N'checkbox', 1, NULL, N'5')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2047, N'', 1008, NULL, N'input', NULL, 1, N'早餐{checkbox}提前/不变/延后（转轮）{number}小时', N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2048, N'', 1008, NULL, N'input', NULL, 1, N'午餐{checkbox}提前/不变/延后（转轮）{number}小时', N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2049, N'', 1008, NULL, N'input', NULL, 1, N'晚餐{checkbox}提前/不变/延后（转轮）{number}小时', N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2050, N'显著增多', 1009, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2051, N'稍有增多', 1009, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2052, N'无明显变化', 1009, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2053, N'稍有减少', 1009, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2054, N'显著减少', 1009, NULL, N'input', N'checkbox', 1, NULL, N'5')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2055, N'主食（谷类）', 1010, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2056, N'豆类及豆制品', 1010, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2057, N'蔬菜', 1010, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2058, N'水果', 1010, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2059, N'动物性食物（肉类、鱼虾等）  ', 1010, NULL, N'input', N'checkbox', 1, NULL, N'5')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2060, N'奶制品', 1010, NULL, N'input', N'checkbox', 1, NULL, N'6')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2061, N'坚果类', 1010, NULL, N'input', N'checkbox', 1, NULL, N'7')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2062, N'零食', 1010, NULL, N'input', N'checkbox', 1, NULL, N'8')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2064, N'', 1011, NULL, N'input', NULL, 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2065, N'', 1012, NULL, N'input', NULL, 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2066, N'', 1016, NULL, N'input', NULL, 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2067, N'', 1017, NULL, N'input', NULL, 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2068, N'是', 1018, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2069, N'否', 1018, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2070, N'运动量减少', 1019, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2071, N'饮食改变', 1019, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2072, N'面对电子屏幕时间加长', 1019, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2073, N'疫情导致心理负担', 1019, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (2074, N'其它', 1019, NULL, N'input', N'checkbox', 1, N'{input}', N'5')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3076, N'是', 1027, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3077, N'否', 1027, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3078, N'是', 1036, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3079, N'否', 1036, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3080, N'是', 1037, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3081, N'否', 1037, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3082, N'是', 1038, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3083, N'否', 1038, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3084, N'是', 1039, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3085, N'否', 1039, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3086, N'是', 1040, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3087, N'否', 1040, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3088, N'是', 1041, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3089, N'否', 1041, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3090, N'是', 1042, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3091, N'否', 1042, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3092, N'是', 1044, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3093, N'否', 1044, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3094, N'是', 1045, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3095, N'否', 1045, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3096, N'是', 1046, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3097, N'否', 1046, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3098, N'是', 1047, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3099, N'否', 1047, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3100, N'是', 1048, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3101, N'否', 1048, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3102, N'是', 1049, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3103, N'否', 1049, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3104, N'是', 1050, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3105, N'否', 1050, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3106, N'是', 1051, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3107, N'否', 1051, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3108, N'是', 1052, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3109, N'否', 1052, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3110, N'是', 1053, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3111, N'否', 1053, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3112, N'是', 1054, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3113, N'否', 1054, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3114, N'是', 1055, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3115, N'否', 1055, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3116, N'是', 1056, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3117, N'否', 1056, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3118, N'父亲', 1057, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3119, N'母亲', 1057, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3120, N'其它', 1057, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3121, N'20:00-20:30', 1059, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3122, N'20:30-21:00', 1059, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3123, N'21:00-21:30', 1059, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3124, N'21:30-22:00', 1059, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3125, N'22:00-22:30', 1059, NULL, N'input', N'checkbox', 1, NULL, N'5')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3126, N'22:30-23:00', 1059, NULL, N'input', N'checkbox', 1, NULL, N'6')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3127, N'23:00-23:30', 1059, NULL, N'input', N'checkbox', 1, NULL, N'7')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3128, N'23:30-00:00', 1059, NULL, N'input', N'checkbox', 1, NULL, N'8')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3129, N'00:00-00:00后', 1059, NULL, N'input', N'checkbox', 1, NULL, N'9')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3130, N'20:00-20:30', 1060, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3131, N'20:30-21:00', 1060, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3132, N'21:00-21:30', 1060, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3133, N'21:30-22:00', 1060, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3134, N'22:00-22:30', 1060, NULL, N'input', N'checkbox', 1, NULL, N'5')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3135, N'22:30-23:00', 1060, NULL, N'input', N'checkbox', 1, NULL, N'6')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3136, N'23:00-23:30', 1060, NULL, N'input', N'checkbox', 1, NULL, N'7')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3137, N'23:30-00:00', 1060, NULL, N'input', N'checkbox', 1, NULL, N'8')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3138, N'00:00-00:00后', 1060, NULL, N'input', N'checkbox', 1, NULL, N'9')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3139, N'经常（5-7次/周）', 1061, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3140, N'有时（2-4次/周）', 1061, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3141, N'偶尔（0-1次/周）', 1061, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3142, N'经常（5-7次/周）', 1062, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3143, N'有时（2-4次/周）', 1062, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3144, N'偶尔（0-1次/周）', 1062, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3145, N'经常（5-7次/周）', 1063, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3146, N'有时（2-4次/周）', 1063, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3147, N'偶尔（0-1次/周）', 1063, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3148, N'经常（5-7次/周）', 1064, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3149, N'有时（2-4次/周）', 1064, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3150, N'偶尔（0-1次/周）', 1064, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3151, N'经常（5-7次/周）', 1065, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3152, N'有时（2-4次/周）', 1065, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3153, N'偶尔（0-1次/周）', 1065, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3154, N'经常（5-7次/周）', 1066, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3155, N'有时（2-4次/周）', 1066, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3156, N'偶尔（0-1次/周）', 1066, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3157, N'经常（5-7次/周）', 1067, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3158, N'有时（2-4次/周）', 1067, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3159, N'偶尔（0-1次/周）', 1067, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3160, N'经常（5-7次/周）', 1068, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3161, N'有时（2-4次/周）', 1068, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3162, N'偶尔（0-1次/周）', 1068, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3163, N'经常（5-7次/周）', 1069, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3164, N'有时（2-4次/周）', 1069, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3165, N'偶尔（0-1次/周）', 1069, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3166, N'经常（5-7次/周）', 1070, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3167, N'有时（2-4次/周）', 1070, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3168, N'偶尔（0-1次/周）', 1070, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3169, N'经常（5-7次/周）', 1071, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3170, N'有时（2-4次/周）', 1071, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3171, N'偶尔（0-1次/周）', 1071, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3172, N'经常（5-7次/周）', 1072, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3173, N'有时（2-4次/周）', 1072, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3174, N'偶尔（0-1次/周）', 1072, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3175, N'经常（5-7次/周）', 1073, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3176, N'有时（2-4次/周）', 1073, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3177, N'偶尔（0-1次/周）', 1073, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3178, N'经常（5-7次/周）', 1074, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3179, N'有时（2-4次/周）', 1074, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3180, N'偶尔（0-1次/周）', 1074, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3181, N'经常（5-7次/周）', 1075, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3182, N'有时（2-4次/周）', 1075, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3183, N'偶尔（0-1次/周）', 1075, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3184, N'经常（5-7次/周）', 1076, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3185, N'有时（2-4次/周）', 1076, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3186, N'偶尔（0-1次/周）', 1076, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3187, N'经常（5-7次/周）', 1077, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3188, N'有时（2-4次/周）', 1077, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3189, N'偶尔（0-1次/周）', 1077, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3190, N'经常（5-7次/周）', 1078, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3191, N'有时（2-4次/周）', 1078, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3192, N'偶尔（0-1次/周）', 1078, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3193, N'经常（5-7次/周）', 1079, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3194, N'有时（2-4次/周）', 1079, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3195, N'偶尔（0-1次/周）', 1079, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3196, N'经常（5-7次/周）', 1080, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3197, N'有时（2-4次/周）', 1080, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3198, N'偶尔（0-1次/周）', 1080, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3199, N'经常（5-7次/周）', 1081, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3200, N'有时（2-4次/周）', 1081, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3201, N'偶尔（0-1次/周）', 1081, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3202, N'经常（5-7次/周）', 1082, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3203, N'有时（2-4次/周）', 1082, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3204, N'偶尔（0-1次/周）', 1082, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3205, N'经常（5-7次/周）', 1083, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3206, N'有时（2-4次/周）', 1083, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3207, N'偶尔（0-1次/周）', 1083, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3208, N'经常（5-7次/周）', 1084, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3209, N'有时（2-4次/周）', 1084, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3210, N'偶尔（0-1次/周）', 1084, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3211, N'经常（5-7次/周）', 1085, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3212, N'有时（2-4次/周）', 1085, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3213, N'偶尔（0-1次/周）', 1085, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3214, N'经常（5-7次/周）', 1086, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3215, N'有时（2-4次/周）', 1086, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3216, N'偶尔（0-1次/周）', 1086, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3217, N'经常（5-7次/周）', 1087, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3218, N'有时（2-4次/周）', 1087, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3219, N'偶尔（0-1次/周）', 1087, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3220, N'经常（5-7次/周）', 1088, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3221, N'有时（2-4次/周）', 1088, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3222, N'偶尔（0-1次/周）', 1088, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3223, N'经常（5-7次/周）', 1089, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3224, N'有时（2-4次/周）', 1089, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3225, N'偶尔（0-1次/周）', 1089, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3226, N'经常（5-7次/周）', 1090, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3227, N'有时（2-4次/周）', 1090, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3228, N'偶尔（0-1次/周）', 1090, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3229, N'经常（5-7次/周）', 1091, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3230, N'有时（2-4次/周）', 1091, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3231, N'偶尔（0-1次/周）', 1091, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3232, N'经常（5-7次/周）', 1092, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3233, N'有时（2-4次/周）', 1092, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3234, N'偶尔（0-1次/周）', 1092, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3235, N'经常（5-7次/周）', 1093, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3236, N'有时（2-4次/周）', 1093, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3237, N'偶尔（0-1次/周）', 1093, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3238, N'经常（5-7次/周）', 1094, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3239, N'有时（2-4次/周）', 1094, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3240, N'偶尔（0-1次/周）', 1094, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3241, N'经常（5-7次/周）', 1095, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3242, N'有时（2-4次/周）', 1095, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3243, N'偶尔（0-1次/周）', 1095, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3244, N'经常（5-7次/周）', 1096, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3245, N'有时（2-4次/周）', 1096, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3246, N'偶尔（0-1次/周）', 1096, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3247, N'经常（5-7次/周）', 1097, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3248, N'有时（2-4次/周）', 1097, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3249, N'偶尔（0-1次/周）', 1097, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3250, N'经常（5-7次/周）', 1098, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3251, N'有时（2-4次/周）', 1098, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3252, N'偶尔（0-1次/周）', 1098, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3253, N'经常（5-7次/周）', 1099, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3254, N'有时（2-4次/周）', 1099, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3255, N'偶尔（0-1次/周）', 1099, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3256, N'经常（5-7次/周）', 1100, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3257, N'有时（2-4次/周）', 1100, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3258, N'偶尔（0-1次/周）', 1100, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3259, N'经常（5-7次/周）', 1101, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3260, N'有时（2-4次/周）', 1101, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3261, N'偶尔（0-1次/周）', 1101, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3262, N'经常（5-7次/周）', 1102, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3263, N'有时（2-4次/周）', 1102, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3264, N'偶尔（0-1次/周）', 1102, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3265, N'经常（5-7次/周）', 1103, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3266, N'有时（2-4次/周）', 1103, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3267, N'偶尔（0-1次/周）', 1103, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3268, N'经常（5-7次/周）', 1104, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3269, N'有时（2-4次/周）', 1104, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3270, N'偶尔（0-1次/周）', 1104, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3271, N'经常（5-7次/周）', 1105, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3272, N'有时（2-4次/周）', 1105, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3273, N'偶尔（0-1次/周）', 1105, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3274, N'经常（5-7次/周）', 1106, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3275, N'有时（2-4次/周）', 1106, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3276, N'偶尔（0-1次/周）', 1106, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3277, N'经常（5-7次/周）', 1107, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3278, N'有时（2-4次/周）', 1107, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3279, N'偶尔（0-1次/周）', 1107, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3280, N'经常（5-7次/周）', 1108, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3281, N'有时（2-4次/周）', 1108, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3282, N'偶尔（0-1次/周）', 1108, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3283, N'经常（5-7次/周）', 1109, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3284, N'有时（2-4次/周）', 1109, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3285, N'偶尔（0-1次/周）', 1109, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3286, N'经常（5-7次/周）', 1110, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3287, N'有时（2-4次/周）', 1110, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3288, N'偶尔（0-1次/周）', 1110, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3293, N'', 1111, NULL, N'input', NULL, 1, NULL, N'0')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3294, N'不瞌睡', 1112, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3295, N'经常打瞌睡', 1112, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3296, N'入睡', 1112, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3297, N'不瞌睡', 1114, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3298, N'经常打瞌睡', 1114, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3299, N'入睡', 1114, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3300, N'不瞌睡', 1115, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3301, N'经常打瞌睡', 1115, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3302, N'入睡', 1115, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3303, N'不瞌睡', 1116, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3304, N'经常打瞌睡', 1116, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3305, N'入睡', 1116, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3306, N'不瞌睡', 1117, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3307, N'经常打瞌睡', 1117, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3308, N'入睡', 1117, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3309, N'不瞌睡', 1118, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3310, N'经常打瞌睡', 1118, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3311, N'入睡', 1118, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3312, N'不瞌睡', 1113, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3313, N'经常打瞌睡', 1113, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3314, N'入睡', 1113, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3315, N'无', 1119, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3316, N'稍有', 1119, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3317, N'相当多', 1119, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3318, N'很多', 1119, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3319, N'无', 1120, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3320, N'稍有', 1120, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3321, N'相当多', 1120, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3322, N'很多', 1120, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3323, N'无', 1121, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3324, N'稍有', 1121, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3325, N'相当多', 1121, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3326, N'很多', 1121, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3327, N'无', 1122, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3328, N'稍有', 1122, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3329, N'相当多', 1122, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3330, N'很多', 1122, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3331, N'无', 1123, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3332, N'稍有', 1123, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3333, N'相当多', 1123, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3334, N'很多', 1123, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3335, N'无', 1124, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3336, N'稍有', 1124, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3337, N'相当多', 1124, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3338, N'很多', 1124, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3339, N'无', 1125, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3340, N'稍有', 1125, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3341, N'相当多', 1125, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3342, N'很多', 1125, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3343, N'无', 1126, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3344, N'稍有', 1126, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3345, N'相当多', 1126, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3346, N'很多', 1126, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3347, N'无', 1127, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3348, N'稍有', 1127, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3349, N'相当多', 1127, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3350, N'很多', 1127, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3351, N'无', 1128, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3352, N'稍有', 1128, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3353, N'相当多', 1128, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3354, N'很多', 1128, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3355, N'无', 1129, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3356, N'稍有', 1129, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3357, N'相当多', 1129, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3358, N'很多', 1129, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3359, N'无', 1130, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3360, N'稍有', 1130, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3361, N'相当多', 1130, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3362, N'很多', 1130, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3363, N'无', 1131, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3364, N'稍有', 1131, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3365, N'相当多', 1131, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3366, N'很多', 1131, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3367, N'无', 1132, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3368, N'稍有', 1132, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3369, N'相当多', 1132, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3370, N'很多', 1132, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3371, N'无', 1133, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3372, N'稍有', 1133, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3373, N'相当多', 1133, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3374, N'很多', 1133, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3375, N'无', 1134, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3376, N'稍有', 1134, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3377, N'相当多', 1134, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3378, N'很多', 1134, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3379, N'无', 1135, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3380, N'稍有', 1135, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3381, N'相当多', 1135, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3382, N'很多', 1135, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3383, N'无', 1136, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3384, N'稍有', 1136, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3385, N'相当多', 1136, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3386, N'很多', 1136, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3387, N'无', 1137, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3388, N'稍有', 1137, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3389, N'相当多', 1137, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3390, N'很多', 1137, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3391, N'无', 1138, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3392, N'稍有', 1138, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3393, N'相当多', 1138, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3394, N'很多', 1138, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3395, N'无', 1139, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3396, N'稍有', 1139, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3397, N'相当多', 1139, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3398, N'很多', 1139, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3399, N'无', 1140, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3400, N'稍有', 1140, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3401, N'相当多', 1140, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3402, N'很多', 1140, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3403, N'无', 1141, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3404, N'稍有', 1141, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3405, N'相当多', 1141, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3406, N'很多', 1141, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3407, N'无', 1142, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3408, N'稍有', 1142, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3409, N'相当多', 1142, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3410, N'很多', 1142, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3411, N'无', 1143, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3412, N'稍有', 1143, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3413, N'相当多', 1143, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3414, N'很多', 1143, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3415, N'无', 1144, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3416, N'稍有', 1144, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3417, N'相当多', 1144, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3418, N'很多', 1144, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3419, N'无', 1145, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3420, N'稍有', 1145, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3421, N'相当多', 1145, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3422, N'很多', 1145, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3423, N'无', 1146, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3424, N'稍有', 1146, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3425, N'相当多', 1146, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3426, N'很多', 1146, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3427, N'无', 1147, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3428, N'稍有', 1147, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3429, N'相当多', 1147, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3430, N'很多', 1147, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3431, N'无', 1148, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3432, N'稍有', 1148, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3433, N'相当多', 1148, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3434, N'很多', 1148, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3435, N'无', 1149, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3436, N'稍有', 1149, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3437, N'相当多', 1149, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3438, N'很多', 1149, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3439, N'无', 1150, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3440, N'稍有', 1150, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3441, N'相当多', 1150, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3442, N'很多', 1150, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3443, N'无', 1151, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3444, N'稍有', 1151, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3445, N'相当多', 1151, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3446, N'很多', 1151, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3447, N'无', 1152, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3448, N'稍有', 1152, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3449, N'相当多', 1152, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3450, N'很多', 1152, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3451, N'无', 1153, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3452, N'稍有', 1153, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3453, N'相当多', 1153, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3454, N'很多', 1153, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3455, N'无', 1154, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3456, N'稍有', 1154, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3457, N'相当多', 1154, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3458, N'很多', 1154, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3459, N'无', 1155, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3460, N'稍有', 1155, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3461, N'相当多', 1155, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3462, N'很多', 1155, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3463, N'无', 1156, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3464, N'稍有', 1156, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3465, N'相当多', 1156, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3466, N'很多', 1156, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3467, N'无', 1157, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3468, N'稍有', 1157, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3469, N'相当多', 1157, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3470, N'很多', 1157, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3471, N'无', 1158, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3472, N'稍有', 1158, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3473, N'相当多', 1158, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3474, N'很多', 1158, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3475, N'无', 1159, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3476, N'稍有', 1159, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3477, N'相当多', 1159, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3478, N'很多', 1159, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3479, N'无', 1160, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3480, N'稍有', 1160, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3481, N'相当多', 1160, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3482, N'很多', 1160, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3483, N'无', 1161, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3484, N'稍有', 1161, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3485, N'相当多', 1161, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3486, N'很多', 1161, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3487, N'无', 1162, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3488, N'稍有', 1162, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3489, N'相当多', 1162, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3490, N'很多', 1162, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3491, N'无', 1163, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3492, N'稍有', 1163, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3493, N'相当多', 1163, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3494, N'很多', 1163, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3495, N'无', 1164, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3496, N'稍有', 1164, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3497, N'相当多', 1164, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3498, N'很多', 1164, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3499, N'无', 1165, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3500, N'稍有', 1165, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3501, N'相当多', 1165, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3502, N'很多', 1165, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3503, N'无', 1166, NULL, N'input', N'checkbox', 1, NULL, N'1')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3504, N'稍有', 1166, NULL, N'input', N'checkbox', 1, NULL, N'2')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3505, N'相当多', 1166, NULL, N'input', N'checkbox', 1, NULL, N'3')
GO
INSERT [dbo].[DicOptions] ([Id], [Name], [ItemId], [ItemName], [HTMLType], [DomType], [IsNecessary], [ExtendContent], [PrintOrder]) VALUES (3506, N'很多', 1166, NULL, N'input', N'checkbox', 1, NULL, N'4')
GO
SET IDENTITY_INSERT [dbo].[DicOptions] OFF
GO
ALTER TABLE [dbo].[DicItem] ADD  CONSTRAINT [DF_DicItem_IsSingle]  DEFAULT ((1)) FOR [IsSingle]
GO
ALTER TABLE [dbo].[DicItem] ADD  CONSTRAINT [DF_DicItem_PageNum]  DEFAULT ((0)) FOR [PageNum]
GO
ALTER TABLE [dbo].[DicItem] ADD  CONSTRAINT [DF_DicItem_PrintORder]  DEFAULT ((0)) FOR [PrintOrder]
GO
ALTER TABLE [dbo].[DicMain] ADD  CONSTRAINT [DF_DicMain_Version]  DEFAULT ((1)) FOR [Version]
GO
ALTER TABLE [dbo].[DicMain] ADD  CONSTRAINT [DF_DicMain_Type]  DEFAULT ((0)) FOR [Type]
GO
ALTER TABLE [dbo].[DicMain] ADD  CONSTRAINT [DF_DicMain_UniCode]  DEFAULT (N'pinyin') FOR [UniCode]
GO
ALTER TABLE [dbo].[DicOptions] ADD  CONSTRAINT [DF_DicOptions_HTMLType]  DEFAULT (N'input') FOR [HTMLType]
GO
ALTER TABLE [dbo].[DicOptions] ADD  CONSTRAINT [DF_DicOptions_IsNecessary]  DEFAULT ((1)) FOR [IsNecessary]
GO
ALTER TABLE [dbo].[DicOptions] ADD  CONSTRAINT [DF_DicOptions_PrintOrder]  DEFAULT ((0)) FOR [PrintOrder]
GO
