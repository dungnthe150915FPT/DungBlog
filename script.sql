USE [DungBlog]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 6/1/2023 10:29:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[DOB] [date] NOT NULL,
	[Gender] [bit] NOT NULL,
	[Address] [nvarchar](150) NOT NULL,
	[Phone] [varchar](15) NOT NULL,
	[Biography] [varchar](255) NOT NULL,
	[IsAdmin] [bit] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fashion]    Script Date: 6/1/2023 10:29:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fashion](
	[FashionID] [int] IDENTITY(1,1) NOT NULL,
	[FashionName] [varchar](255) NOT NULL,
	[Time] [date] NOT NULL,
	[Tittle] [varchar](255) NOT NULL,
	[Body] [varchar](max) NOT NULL,
	[Image] [varbinary](max) NULL,
	[AccountID] [int] NOT NULL,
 CONSTRAINT [PK_Fashion] PRIMARY KEY CLUSTERED 
(
	[FashionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Food]    Script Date: 6/1/2023 10:29:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food](
	[FoodID] [int] IDENTITY(1,1) NOT NULL,
	[FoodName] [varchar](255) NOT NULL,
	[Time] [date] NOT NULL,
	[Tittle] [varchar](255) NOT NULL,
	[Body] [varchar](max) NOT NULL,
	[Image] [varbinary](max) NULL,
	[AccountID] [int] NOT NULL,
 CONSTRAINT [PK_Food] PRIMARY KEY CLUSTERED 
(
	[FoodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Game]    Script Date: 6/1/2023 10:29:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Game](
	[GameID] [int] IDENTITY(1,1) NOT NULL,
	[GameName] [varchar](255) NOT NULL,
	[Time] [date] NOT NULL,
	[Tittle] [varchar](255) NOT NULL,
	[Body] [varchar](max) NOT NULL,
	[Image] [varbinary](max) NULL,
	[AccountID] [int] NOT NULL,
 CONSTRAINT [PK_Game] PRIMARY KEY CLUSTERED 
(
	[GameID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Life]    Script Date: 6/1/2023 10:29:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Life](
	[LifeID] [int] IDENTITY(1,1) NOT NULL,
	[LifeName] [varchar](255) NOT NULL,
	[Time] [date] NOT NULL,
	[Tittle] [varchar](255) NOT NULL,
	[Body] [varchar](max) NOT NULL,
	[Image] [varbinary](max) NULL,
	[AccountID] [int] NOT NULL,
 CONSTRAINT [PK_Life] PRIMARY KEY CLUSTERED 
(
	[LifeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sport]    Script Date: 6/1/2023 10:29:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sport](
	[SportID] [int] IDENTITY(1,1) NOT NULL,
	[SportName] [varchar](255) NOT NULL,
	[Time] [date] NOT NULL,
	[Tittle] [varchar](255) NOT NULL,
	[Body] [varchar](max) NOT NULL,
	[Image] [varbinary](max) NULL,
	[AccountID] [int] NOT NULL,
 CONSTRAINT [PK_Sport] PRIMARY KEY CLUSTERED 
(
	[SportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 6/1/2023 10:29:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [varchar](max) NOT NULL,
	[Time] [date] NOT NULL,
	[Image] [varbinary](max) NULL,
	[AccountID] [int] NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Technology]    Script Date: 6/1/2023 10:29:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Technology](
	[TechnologyID] [int] IDENTITY(1,1) NOT NULL,
	[TechnologyName] [varchar](255) NOT NULL,
	[Time] [date] NOT NULL,
	[Tittle] [varchar](255) NOT NULL,
	[Body] [varchar](max) NOT NULL,
	[Image] [varbinary](max) NULL,
	[AccountID] [int] NOT NULL,
 CONSTRAINT [PK_Technology] PRIMARY KEY CLUSTERED 
(
	[TechnologyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Travel]    Script Date: 6/1/2023 10:29:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Travel](
	[TravelID] [int] IDENTITY(1,1) NOT NULL,
	[TravelName] [varchar](255) NOT NULL,
	[Time] [date] NOT NULL,
	[Tittle] [varchar](255) NOT NULL,
	[Body] [varchar](max) NOT NULL,
	[Image] [varbinary](max) NULL,
	[AccountID] [int] NOT NULL,
 CONSTRAINT [PK_Travel] PRIMARY KEY CLUSTERED 
(
	[TravelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([AccountID], [Username], [Password], [Fullname], [DOB], [Gender], [Address], [Phone], [Biography], [IsAdmin]) VALUES (1, N'dungnguyentuan@admin', N'admin@2023', N'Nguyễn Tuấn Dũng', CAST(N'2001-04-22' AS Date), 1, N'Bắc Từ Liêm, Hà Nội, Việt Nam', N'0969029221', N'Nothing in here', 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
ALTER TABLE [dbo].[Fashion]  WITH CHECK ADD  CONSTRAINT [FK_Fashion_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Fashion] CHECK CONSTRAINT [FK_Fashion_Account]
GO
ALTER TABLE [dbo].[Food]  WITH CHECK ADD  CONSTRAINT [FK_Food_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Food] CHECK CONSTRAINT [FK_Food_Account]
GO
ALTER TABLE [dbo].[Game]  WITH CHECK ADD  CONSTRAINT [FK_Game_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Game] CHECK CONSTRAINT [FK_Game_Account]
GO
ALTER TABLE [dbo].[Life]  WITH CHECK ADD  CONSTRAINT [FK_Life_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Life] CHECK CONSTRAINT [FK_Life_Account]
GO
ALTER TABLE [dbo].[Sport]  WITH CHECK ADD  CONSTRAINT [FK_Sport_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Sport] CHECK CONSTRAINT [FK_Sport_Account]
GO
ALTER TABLE [dbo].[Status]  WITH CHECK ADD  CONSTRAINT [FK_Status_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Status] CHECK CONSTRAINT [FK_Status_Account]
GO
ALTER TABLE [dbo].[Technology]  WITH CHECK ADD  CONSTRAINT [FK_Technology_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Technology] CHECK CONSTRAINT [FK_Technology_Account]
GO
ALTER TABLE [dbo].[Travel]  WITH CHECK ADD  CONSTRAINT [FK_Travel_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Travel] CHECK CONSTRAINT [FK_Travel_Account]
GO
