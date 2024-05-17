

/****** Object:  Table [dbo].[Accounts]    Script Date: 2/29/2024 9:41:42 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Accounts](
	[Email] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](100) NULL,
	[Password] [nvarchar](50) NULL,
	[FullName] [nvarchar](50) NULL,
	[Birthday] [datetime] NULL,
	[Status] [nvarchar](10) NULL,
	[RoleID] [int] NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[Stocks]    Script Date: 2/29/2024 9:41:42 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Stocks](
	[StockID] [nvarchar](50) NULL,
	[StockCode] [nvarchar](10) NOT NULL,
	[StockName] [nvarchar](50) NULL,
	[CompanyName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Exchange] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[CurrentPrice] [int] NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[StockCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[StocksHistory]    Script Date: 2/29/2024 9:41:42 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[StocksHistory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ExchangeDate] [datetime] NULL,
	[Price] [int] NULL,
	[OpenPrice] [int] NULL,
	[ClosePrice] [int] NULL,
	[MaxPrice] [int] NULL,
	[MinPrice] [int] NULL,
	[Volume] [int] NULL,
	[StockCode] [nvarchar](10) NULL,
 CONSTRAINT [PK_StocksHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

INSERT [dbo].[Accounts] ([Email], [UserName], [Password], [FullName], [Birthday], [Status], [RoleID]) VALUES (N'admin@ft.com', N'admin', N'@4', N'Admin', CAST(N'1990-09-16T00:00:00.000' AS DateTime), N'active', 1)
INSERT [dbo].[Accounts] ([Email], [UserName], [Password], [FullName], [Birthday], [Status], [RoleID]) VALUES (N'customer@ft.com', N'staff 2', N'@4', N'staff 1', CAST(N'1989-11-11T00:00:00.000' AS DateTime), N'active', 4)
INSERT [dbo].[Accounts] ([Email], [UserName], [Password], [FullName], [Birthday], [Status], [RoleID]) VALUES (N'manager@ft.com', N'manager', N'@4', N'Manager', CAST(N'1980-12-12T00:00:00.000' AS DateTime), N'active', 3)
INSERT [dbo].[Accounts] ([Email], [UserName], [Password], [FullName], [Birthday], [Status], [RoleID]) VALUES (N'staff@ft.com', N'staff', N'@4', N'Staff', CAST(N'1970-10-10T00:00:00.000' AS DateTime), N'active', 2)
INSERT [dbo].[Accounts] ([Email], [UserName], [Password], [FullName], [Birthday], [Status], [RoleID]) VALUES (N'staff1@ft.com', N'staff 1', N'@4', N'staff 1', CAST(N'1989-11-11T00:00:00.000' AS DateTime), N'ban', 2)

INSERT [dbo].[Stocks] ([StockID], [StockCode], [StockName], [CompanyName], [Email], [Exchange], [Address], [CurrentPrice], [CreatedAt], [UpdatedAt]) VALUES (N'3', N'BSR', N'Hóa Dầu Bình Son', N'CTCP Hóa Dầu Bình Son', N'bsr@f.com', N'HOSE', N'Sài gòn', 19900, CAST(N'2024-01-03T00:00:00.000' AS DateTime), CAST(N'2024-02-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Stocks] ([StockID], [StockCode], [StockName], [CompanyName], [Email], [Exchange], [Address], [CurrentPrice], [CreatedAt], [UpdatedAt]) VALUES (N'4', N'EIB', N'Ngân hàng TMCP Xuất Nhập Khẩu Việt Nam', N'Ngân hàng TMCP Xuất Nhập Khẩu Việt Nam', N'eib@f.com', N'HOSE', N'Sài gòn', 18100, CAST(N'2024-01-03T00:00:00.000' AS DateTime), CAST(N'2024-02-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Stocks] ([StockID], [StockCode], [StockName], [CompanyName], [Email], [Exchange], [Address], [CurrentPrice], [CreatedAt], [UpdatedAt]) VALUES (N'1', N'HPG', N'Hòa Phát', N'CTCP Tập đoàn Hòa Phát', N'hoaphat@f.com', N'HOSE', N'Hà Nội', 31000, CAST(N'2024-01-01T00:00:00.000' AS DateTime), CAST(N'2024-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Stocks] ([StockID], [StockCode], [StockName], [CompanyName], [Email], [Exchange], [Address], [CurrentPrice], [CreatedAt], [UpdatedAt]) VALUES (N'2', N'NKG', N'Thép Nam Kim', N'CP Nam Kim', N'nk@f.com', N'HOSE', N'Sài gòn', 23950, CAST(N'2024-01-03T00:00:00.000' AS DateTime), CAST(N'2024-01-01T00:00:00.000' AS DateTime))

SET IDENTITY_INSERT [dbo].[StocksHistory] ON 

INSERT [dbo].[StocksHistory] ([ID], [ExchangeDate], [Price], [OpenPrice], [ClosePrice], [MaxPrice], [MinPrice], [Volume], [StockCode]) VALUES (1, CAST(N'2024-02-26T00:00:00.000' AS DateTime), 28800, 28400, 28800, 28800, 28300, 19221700, N'HPG')
INSERT [dbo].[StocksHistory] ([ID], [ExchangeDate], [Price], [OpenPrice], [ClosePrice], [MaxPrice], [MinPrice], [Volume], [StockCode]) VALUES (2, CAST(N'2024-02-27T00:00:00.000' AS DateTime), 30350, 28900, 30600, 30450, 28800, 86841500, N'HPG')
INSERT [dbo].[StocksHistory] ([ID], [ExchangeDate], [Price], [OpenPrice], [ClosePrice], [MaxPrice], [MinPrice], [Volume], [StockCode]) VALUES (3, CAST(N'2024-02-28T00:00:00.000' AS DateTime), 31000, 30400, 30600, 30950, 30150, 35201800, N'HPG')
INSERT [dbo].[StocksHistory] ([ID], [ExchangeDate], [Price], [OpenPrice], [ClosePrice], [MaxPrice], [MinPrice], [Volume], [StockCode]) VALUES (4, CAST(N'2024-02-26T00:00:00.000' AS DateTime), 18150, 18350, 18150, 18450, 18000, 14075500, N'EIB')
INSERT [dbo].[StocksHistory] ([ID], [ExchangeDate], [Price], [OpenPrice], [ClosePrice], [MaxPrice], [MinPrice], [Volume], [StockCode]) VALUES (5, CAST(N'2024-02-27T00:00:00.000' AS DateTime), 18200, 18200, 18200, 18300, 17950, 18000000, N'EIB')
INSERT [dbo].[StocksHistory] ([ID], [ExchangeDate], [Price], [OpenPrice], [ClosePrice], [MaxPrice], [MinPrice], [Volume], [StockCode]) VALUES (6, CAST(N'2024-02-28T00:00:00.000' AS DateTime), 18300, 18300, 18300, 18400, 18150, 9000000, N'EIB')
INSERT [dbo].[StocksHistory] ([ID], [ExchangeDate], [Price], [OpenPrice], [ClosePrice], [MaxPrice], [MinPrice], [Volume], [StockCode]) VALUES (7, CAST(N'2024-02-26T00:00:00.000' AS DateTime), 23700, 23350, 23700, 23850, 23250, 7000000, N'NKG')
INSERT [dbo].[StocksHistory] ([ID], [ExchangeDate], [Price], [OpenPrice], [ClosePrice], [MaxPrice], [MinPrice], [Volume], [StockCode]) VALUES (8, CAST(N'2024-02-27T00:00:00.000' AS DateTime), 24100, 23850, 24100, 24550, 23800, 11000000, N'NKG')
INSERT [dbo].[StocksHistory] ([ID], [ExchangeDate], [Price], [OpenPrice], [ClosePrice], [MaxPrice], [MinPrice], [Volume], [StockCode]) VALUES (9, CAST(N'2024-02-28T00:00:00.000' AS DateTime), 24150, 24100, 24150, 24300, 23900, 6000000, N'NKG')
INSERT [dbo].[StocksHistory] ([ID], [ExchangeDate], [Price], [OpenPrice], [ClosePrice], [MaxPrice], [MinPrice], [Volume], [StockCode]) VALUES (10, CAST(N'2024-02-26T00:00:00.000' AS DateTime), 19200, 19300, 19200, 19700, 18900, 5000000, N'BSR')
INSERT [dbo].[StocksHistory] ([ID], [ExchangeDate], [Price], [OpenPrice], [ClosePrice], [MaxPrice], [MinPrice], [Volume], [StockCode]) VALUES (11, CAST(N'2024-02-27T00:00:00.000' AS DateTime), 19700, 19200, 19700, 19900, 19100, 10000000, N'BSR')
INSERT [dbo].[StocksHistory] ([ID], [ExchangeDate], [Price], [OpenPrice], [ClosePrice], [MaxPrice], [MinPrice], [Volume], [StockCode]) VALUES (12, CAST(N'2024-02-28T00:00:00.000' AS DateTime), 20200, 19700, 20200, 20500, 19700, 13000000, N'BSR')
SET IDENTITY_INSERT [dbo].[StocksHistory] OFF

ALTER TABLE [dbo].[StocksHistory]  WITH CHECK ADD  CONSTRAINT [FK_StocksHistory_Stocks] FOREIGN KEY([StockCode])
REFERENCES [dbo].[Stocks] ([StockCode])

ALTER TABLE [dbo].[StocksHistory] CHECK CONSTRAINT [FK_StocksHistory_Stocks]

