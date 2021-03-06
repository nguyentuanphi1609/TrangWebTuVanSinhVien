USE [WebTuVanSinhVien]
GO
/****** Object:  Table [dbo].[ADMIN]    Script Date: 1/7/2021 11:23:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMIN](
	[IDSC] [int] IDENTITY(1,1) NOT NULL,
	[ScoreChange] [float] NULL,
	[DateOfSC] [date] NULL,
	[Reason] [nvarchar](max) NULL,
	[IDUser] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDSC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FIELD]    Script Date: 1/7/2021 11:23:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIELD](
	[IDField] [int] NOT NULL,
	[NameOfField] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDField] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MANAGER]    Script Date: 1/7/2021 11:23:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MANAGER](
	[IDManage] [int] IDENTITY(1,1) NOT NULL,
	[Score] [float] NULL,
	[IDUser] [int] NULL,
	[IDField] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDManage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUESTIONANDANSWER]    Script Date: 1/7/2021 11:23:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUESTIONANDANSWER](
	[QuestionID] [int] NOT NULL,
	[Answer] [nvarchar](max) NULL,
	[TimeOut] [time](7) NULL,
	[DateOfAnswer] [date] NULL,
	[IDField] [int] NULL,
	[Question] [nvarchar](max) NULL,
	[Public] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[QuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUESTIONNOTCHECK]    Script Date: 1/7/2021 11:23:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUESTIONNOTCHECK](
	[QuestionID] [int] IDENTITY(1,1) NOT NULL,
	[IDStu] [int] NULL,
	[IDUser] [int] NULL,
	[IDField] [int] NULL,
	[Question] [nvarchar](max) NULL,
	[Checked] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[QuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUESTIONQUEUE]    Script Date: 1/7/2021 11:23:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUESTIONQUEUE](
	[IDField] [int] NOT NULL,
	[QuestionID] [int] NOT NULL,
	[DateOfModeration] [date] NULL,
	[IDUser] [int] NULL,
	[Question] [nvarchar](max) NULL,
 CONSTRAINT [PK_QUESTIONQUEUE] PRIMARY KEY CLUSTERED 
(
	[IDField] ASC,
	[QuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ROLE]    Script Date: 1/7/2021 11:23:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROLE](
	[ID_Role] [int] NOT NULL,
	[Role] [nvarchar](100) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID_Role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STUDENT]    Script Date: 1/7/2021 11:23:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUDENT](
	[IDStu] [int] IDENTITY(1,1) NOT NULL,
	[IDUser] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDStu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEACHER]    Script Date: 1/7/2021 11:23:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEACHER](
	[IDTea] [int] IDENTITY(1,1) NOT NULL,
	[Score] [float] NULL,
	[IDUser] [int] NULL,
	[IDField] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDTea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERS]    Script Date: 1/7/2021 11:23:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[IDUser] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[DateOfBirth] [date] NULL,
	[Sex] [bit] NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Phone] [varchar](11) NULL,
	[Permission] [int] NULL,
	[PassWord] [varchar](300) NULL,
	[Lock] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[FIELD] ([IDField], [NameOfField]) VALUES (1, N'Công nghệ thông tin')
INSERT [dbo].[FIELD] ([IDField], [NameOfField]) VALUES (2, N'Điện - Điện tử')
INSERT [dbo].[FIELD] ([IDField], [NameOfField]) VALUES (3, N'Ngoại ngữ')
INSERT [dbo].[FIELD] ([IDField], [NameOfField]) VALUES (4, N'Sư phạm')
INSERT [dbo].[FIELD] ([IDField], [NameOfField]) VALUES (5, N'Cơ khí - chế tạo máy')
INSERT [dbo].[FIELD] ([IDField], [NameOfField]) VALUES (6, N'May - thời trang')
INSERT [dbo].[FIELD] ([IDField], [NameOfField]) VALUES (7, N'Kỹ thuật nữ công')
INSERT [dbo].[FIELD] ([IDField], [NameOfField]) VALUES (8, N'Kinh tế')
INSERT [dbo].[FIELD] ([IDField], [NameOfField]) VALUES (9, N'Xây dựng')
SET IDENTITY_INSERT [dbo].[MANAGER] ON 

INSERT [dbo].[MANAGER] ([IDManage], [Score], [IDUser], [IDField]) VALUES (1, 0, 2, 1)
INSERT [dbo].[MANAGER] ([IDManage], [Score], [IDUser], [IDField]) VALUES (2, 0, 1004, 3)
SET IDENTITY_INSERT [dbo].[MANAGER] OFF
INSERT [dbo].[QUESTIONANDANSWER] ([QuestionID], [Answer], [TimeOut], [DateOfAnswer], [IDField], [Question], [Public]) VALUES (1, N'Khoa CNTT có 2 ngành: Công nghệ thông tin và Kỹ thuật dữ liệu', NULL, CAST(N'2020-12-20' AS Date), 1, N'Cho em hỏi khoa công nghệ thông tin có bao nhiêu ngành và là những ngành gì ạ?', 0)
INSERT [dbo].[QUESTIONANDANSWER] ([QuestionID], [Answer], [TimeOut], [DateOfAnswer], [IDField], [Question], [Public]) VALUES (2, N'K18 không bắt buộc còn từ k19 trở đi là bắt buộc nhé!', NULL, CAST(N'2020-12-20' AS Date), 1, N'Cho em hỏi ngành kỹ thuật dữ liệu thuộc khoa mình có cần phải đi thực tập không ạ?', 0)
INSERT [dbo].[QUESTIONANDANSWER] ([QuestionID], [Answer], [TimeOut], [DateOfAnswer], [IDField], [Question], [Public]) VALUES (3, N'Tên Quỳnh', NULL, CAST(N'2020-12-20' AS Date), 1, N'Cho em hỏi chị Quỳnh tên gì?', 0)
INSERT [dbo].[QUESTIONANDANSWER] ([QuestionID], [Answer], [TimeOut], [DateOfAnswer], [IDField], [Question], [Public]) VALUES (5, N'Đúng rồi', NULL, CAST(N'2020-12-20' AS Date), 1, N'Cho em hỏi khoa công nghệ thông tin có chị Đào Minh Thy đúng không ạ?', 0)
INSERT [dbo].[QUESTIONANDANSWER] ([QuestionID], [Answer], [TimeOut], [DateOfAnswer], [IDField], [Question], [Public]) VALUES (1007, N'Đúng rồi nha em!', NULL, CAST(N'2020-12-20' AS Date), 3, N'Cho em hỏi sư phạm Anh có phải thuộc khoa mình không ạ?', 0)
INSERT [dbo].[QUESTIONANDANSWER] ([QuestionID], [Answer], [TimeOut], [DateOfAnswer], [IDField], [Question], [Public]) VALUES (1009, N'Khoa ngoại ngữ có ngành ngôn ngữ Anh', NULL, CAST(N'2020-12-21' AS Date), 3, N'Cho em hỏi khoa ngoại ngữ có ngành ngôn ngữ Anh không?', 0)
INSERT [dbo].[QUESTIONANDANSWER] ([QuestionID], [Answer], [TimeOut], [DateOfAnswer], [IDField], [Question], [Public]) VALUES (1010, N'Thôi đừng test nữa năn nỉ', NULL, CAST(N'2020-12-25' AS Date), 1, N'test lần 1', 0)
INSERT [dbo].[QUESTIONANDANSWER] ([QuestionID], [Answer], [TimeOut], [DateOfAnswer], [IDField], [Question], [Public]) VALUES (2010, N'thôi đừng test nữa làm ơn', NULL, CAST(N'2020-12-25' AS Date), 1, N'test lần 2', 0)
SET IDENTITY_INSERT [dbo].[QUESTIONNOTCHECK] ON 

INSERT [dbo].[QUESTIONNOTCHECK] ([QuestionID], [IDStu], [IDUser], [IDField], [Question], [Checked]) VALUES (1, 1, 1, 1, N'Cho em hỏi khoa công nghệ thông tin có bao nhiêu ngành và là những ngành gì ạ?', 1)
INSERT [dbo].[QUESTIONNOTCHECK] ([QuestionID], [IDStu], [IDUser], [IDField], [Question], [Checked]) VALUES (2, 1, 1, 1, N'Cho em hỏi ngành kỹ thuật dữ liệu thuộc khoa mình có cần phải đi thực tập không ạ?', 1)
INSERT [dbo].[QUESTIONNOTCHECK] ([QuestionID], [IDStu], [IDUser], [IDField], [Question], [Checked]) VALUES (3, 1, 1, 1, N'Cho em hỏi chị Quỳnh tên gì?', 1)
INSERT [dbo].[QUESTIONNOTCHECK] ([QuestionID], [IDStu], [IDUser], [IDField], [Question], [Checked]) VALUES (4, 1, 1, 1, N'Cho em hỏi là khoa công nghệ thông tin có các học bổng nào ạ?', 1)
INSERT [dbo].[QUESTIONNOTCHECK] ([QuestionID], [IDStu], [IDUser], [IDField], [Question], [Checked]) VALUES (5, 1, 1, 1, N'Cho em hỏi khoa công nghệ thông tin có chị Đào Minh Thy đúng không ạ?', 1)
INSERT [dbo].[QUESTIONNOTCHECK] ([QuestionID], [IDStu], [IDUser], [IDField], [Question], [Checked]) VALUES (1005, 1, 1, 1, N'Cho em hỏi văn phòng khoa công nghệ thông tin nằm ở đâu ạ', 1)
INSERT [dbo].[QUESTIONNOTCHECK] ([QuestionID], [IDStu], [IDUser], [IDField], [Question], [Checked]) VALUES (1006, 1, 1, 1, N'Test', 1)
INSERT [dbo].[QUESTIONNOTCHECK] ([QuestionID], [IDStu], [IDUser], [IDField], [Question], [Checked]) VALUES (1007, 2, 1003, 3, N'Cho em hỏi sư phạm Anh có phải thuộc khoa mình không ạ?', 1)
INSERT [dbo].[QUESTIONNOTCHECK] ([QuestionID], [IDStu], [IDUser], [IDField], [Question], [Checked]) VALUES (1008, 2, 1003, 3, N'Cho em hỏi Ngành sư phạm Anh khoa mình có phải đóng học phí không ạ?', 0)
INSERT [dbo].[QUESTIONNOTCHECK] ([QuestionID], [IDStu], [IDUser], [IDField], [Question], [Checked]) VALUES (1009, 1, 1, 3, N'Cho em hỏi khoa ngoại ngữ có ngành ngôn ngữ Anh không?', 1)
INSERT [dbo].[QUESTIONNOTCHECK] ([QuestionID], [IDStu], [IDUser], [IDField], [Question], [Checked]) VALUES (1010, 1, 1, 1, N'test lần 1', 1)
INSERT [dbo].[QUESTIONNOTCHECK] ([QuestionID], [IDStu], [IDUser], [IDField], [Question], [Checked]) VALUES (2010, 1, 1, 1, N'test lần 2', 1)
INSERT [dbo].[QUESTIONNOTCHECK] ([QuestionID], [IDStu], [IDUser], [IDField], [Question], [Checked]) VALUES (3010, 1, 1, 1, N'test lần 1', 1)
INSERT [dbo].[QUESTIONNOTCHECK] ([QuestionID], [IDStu], [IDUser], [IDField], [Question], [Checked]) VALUES (3011, 1, 1, 1, N'test lần 2', 0)
INSERT [dbo].[QUESTIONNOTCHECK] ([QuestionID], [IDStu], [IDUser], [IDField], [Question], [Checked]) VALUES (3012, 1, 1, 1, N'test lần 3', 0)
SET IDENTITY_INSERT [dbo].[QUESTIONNOTCHECK] OFF
INSERT [dbo].[QUESTIONQUEUE] ([IDField], [QuestionID], [DateOfModeration], [IDUser], [Question]) VALUES (1, 4, CAST(N'2020-12-17' AS Date), 1, N'Cho em hỏi là khoa công nghệ thông tin có các học bổng nào ạ?')
INSERT [dbo].[QUESTIONQUEUE] ([IDField], [QuestionID], [DateOfModeration], [IDUser], [Question]) VALUES (1, 1005, CAST(N'2020-12-20' AS Date), 1, N'Cho em hỏi văn phòng khoa công nghệ thông tin nằm ở đâu ạ')
INSERT [dbo].[QUESTIONQUEUE] ([IDField], [QuestionID], [DateOfModeration], [IDUser], [Question]) VALUES (1, 1006, CAST(N'2020-12-21' AS Date), 1, N'Test')
INSERT [dbo].[QUESTIONQUEUE] ([IDField], [QuestionID], [DateOfModeration], [IDUser], [Question]) VALUES (1, 3010, CAST(N'2020-12-29' AS Date), 1, N'test lần 1')
INSERT [dbo].[ROLE] ([ID_Role], [Role]) VALUES (0, N'Khách')
INSERT [dbo].[ROLE] ([ID_Role], [Role]) VALUES (1, N'Người đặt câu hỏi')
INSERT [dbo].[ROLE] ([ID_Role], [Role]) VALUES (2, N'Người kiểm duyệt')
INSERT [dbo].[ROLE] ([ID_Role], [Role]) VALUES (3, N'Người trả lời câu hỏi')
INSERT [dbo].[ROLE] ([ID_Role], [Role]) VALUES (4, N'Quản trị viên')
SET IDENTITY_INSERT [dbo].[STUDENT] ON 

INSERT [dbo].[STUDENT] ([IDStu], [IDUser]) VALUES (1, 1)
INSERT [dbo].[STUDENT] ([IDStu], [IDUser]) VALUES (2, 1003)
SET IDENTITY_INSERT [dbo].[STUDENT] OFF
SET IDENTITY_INSERT [dbo].[TEACHER] ON 

INSERT [dbo].[TEACHER] ([IDTea], [Score], [IDUser], [IDField]) VALUES (1, 0, 3, 1)
INSERT [dbo].[TEACHER] ([IDTea], [Score], [IDUser], [IDField]) VALUES (2, 0, 1005, 3)
SET IDENTITY_INSERT [dbo].[TEACHER] OFF
SET IDENTITY_INSERT [dbo].[USERS] ON 

INSERT [dbo].[USERS] ([IDUser], [Name], [DateOfBirth], [Sex], [Address], [Email], [Phone], [Permission], [PassWord], [Lock]) VALUES (1, N'Nguyễn Tuấn Phi', CAST(N'2000-09-16' AS Date), 1, N'Biên Hòa - Đồng Nai', N'18133039@student.hcmute.edu.vn', N'0987650237 ', 1, N'tuanphi1609                                                                                                                                                                                                                                                                                                 ', 0)
INSERT [dbo].[USERS] ([IDUser], [Name], [DateOfBirth], [Sex], [Address], [Email], [Phone], [Permission], [PassWord], [Lock]) VALUES (2, N'Nguyễn Thị Như Quỳnh', CAST(N'2000-02-05' AS Date), 0, N'Quãng Ngải', N'18133044@student.hcmute.edu.vn', NULL, 2, N'nhuquynh0502                                                                                                                                                                                                                                                                                                ', 0)
INSERT [dbo].[USERS] ([IDUser], [Name], [DateOfBirth], [Sex], [Address], [Email], [Phone], [Permission], [PassWord], [Lock]) VALUES (3, N'Nguyễn Minh Sang', CAST(N'2000-04-20' AS Date), 1, N'Tây Ninh', N'18133045@student.hcmute.edu.vn', N'0378573265 ', 3, N'minhsang2004                                                                                                                                                                                                                                                                                                ', 0)
INSERT [dbo].[USERS] ([IDUser], [Name], [DateOfBirth], [Sex], [Address], [Email], [Phone], [Permission], [PassWord], [Lock]) VALUES (1003, N'Đỗ Thị Mỹ Lan', CAST(N'2001-04-06' AS Date), 0, N'Quảng Ngãi', N'20110666@student.hcmute.edu.vn', N'0123456789 ', 1, N'mylan0604                                                                                                                                                                                                                                                                                                   ', 0)
INSERT [dbo].[USERS] ([IDUser], [Name], [DateOfBirth], [Sex], [Address], [Email], [Phone], [Permission], [PassWord], [Lock]) VALUES (1004, N'Nguyễn Huỳnh Phúc Hậu', CAST(N'2000-10-14' AS Date), 1, N'Hà Nội', N'18133011@student.hcmute.edu.vn', N'0987231465 ', 2, N'phuchau1410                                                                                                                                                                                                                                                                                                 ', 0)
INSERT [dbo].[USERS] ([IDUser], [Name], [DateOfBirth], [Sex], [Address], [Email], [Phone], [Permission], [PassWord], [Lock]) VALUES (1005, N'Trần Tiến Đức', CAST(N'2000-07-29' AS Date), 1, N'Thái Bình', N'18133007@student.hcmute.edu.vn', N'0983564899 ', 3, N'tienduc2907                                                                                                                                                                                                                                                                                                 ', 0)
SET IDENTITY_INSERT [dbo].[USERS] OFF
ALTER TABLE [dbo].[ADMIN]  WITH CHECK ADD FOREIGN KEY([IDUser])
REFERENCES [dbo].[USERS] ([IDUser])
GO
ALTER TABLE [dbo].[MANAGER]  WITH CHECK ADD FOREIGN KEY([IDField])
REFERENCES [dbo].[FIELD] ([IDField])
GO
ALTER TABLE [dbo].[MANAGER]  WITH CHECK ADD FOREIGN KEY([IDUser])
REFERENCES [dbo].[USERS] ([IDUser])
GO
ALTER TABLE [dbo].[QUESTIONANDANSWER]  WITH CHECK ADD FOREIGN KEY([IDField])
REFERENCES [dbo].[FIELD] ([IDField])
GO
ALTER TABLE [dbo].[QUESTIONANDANSWER]  WITH CHECK ADD FOREIGN KEY([QuestionID])
REFERENCES [dbo].[QUESTIONNOTCHECK] ([QuestionID])
GO
ALTER TABLE [dbo].[QUESTIONNOTCHECK]  WITH CHECK ADD FOREIGN KEY([IDField])
REFERENCES [dbo].[FIELD] ([IDField])
GO
ALTER TABLE [dbo].[QUESTIONNOTCHECK]  WITH CHECK ADD FOREIGN KEY([IDStu])
REFERENCES [dbo].[STUDENT] ([IDStu])
GO
ALTER TABLE [dbo].[QUESTIONNOTCHECK]  WITH CHECK ADD FOREIGN KEY([IDUser])
REFERENCES [dbo].[USERS] ([IDUser])
GO
ALTER TABLE [dbo].[QUESTIONQUEUE]  WITH CHECK ADD  CONSTRAINT [FK_QUESTIONQUEUE_FIELD] FOREIGN KEY([IDField])
REFERENCES [dbo].[FIELD] ([IDField])
GO
ALTER TABLE [dbo].[QUESTIONQUEUE] CHECK CONSTRAINT [FK_QUESTIONQUEUE_FIELD]
GO
ALTER TABLE [dbo].[QUESTIONQUEUE]  WITH CHECK ADD  CONSTRAINT [FK_QUESTIONQUEUE_QUESTIONNOTCHECK] FOREIGN KEY([QuestionID])
REFERENCES [dbo].[QUESTIONNOTCHECK] ([QuestionID])
GO
ALTER TABLE [dbo].[QUESTIONQUEUE] CHECK CONSTRAINT [FK_QUESTIONQUEUE_QUESTIONNOTCHECK]
GO
ALTER TABLE [dbo].[QUESTIONQUEUE]  WITH CHECK ADD  CONSTRAINT [FK_QUESTIONQUEUE_USERS] FOREIGN KEY([IDUser])
REFERENCES [dbo].[USERS] ([IDUser])
GO
ALTER TABLE [dbo].[QUESTIONQUEUE] CHECK CONSTRAINT [FK_QUESTIONQUEUE_USERS]
GO
ALTER TABLE [dbo].[STUDENT]  WITH CHECK ADD FOREIGN KEY([IDUser])
REFERENCES [dbo].[USERS] ([IDUser])
GO
ALTER TABLE [dbo].[TEACHER]  WITH CHECK ADD FOREIGN KEY([IDField])
REFERENCES [dbo].[FIELD] ([IDField])
GO
ALTER TABLE [dbo].[TEACHER]  WITH CHECK ADD FOREIGN KEY([IDUser])
REFERENCES [dbo].[USERS] ([IDUser])
GO
ALTER TABLE [dbo].[USERS]  WITH CHECK ADD  CONSTRAINT [FK_USERS_ROLE] FOREIGN KEY([Permission])
REFERENCES [dbo].[ROLE] ([ID_Role])
GO
ALTER TABLE [dbo].[USERS] CHECK CONSTRAINT [FK_USERS_ROLE]
GO
