CREATE DATABASE QLThuVien
USE [QLThuVien]
GO
/****** Object:  Table [dbo].[tBanSaoSach]    Script Date: 17/10/2024 10:06:55 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tBanSaoSach](
	[MaBanSao] [char](25) NOT NULL,
	[MaSach] [char](25) NULL,
	[TrangThai] [tinyint] NULL,
	[TinhTrangSach] [nvarchar](250) NULL,
	[ViTri] [nvarchar](100) NULL,
	[Anh] [varchar](150) NULL,
 CONSTRAINT [PK_tBanSaoSach] PRIMARY KEY CLUSTERED 
(
	[MaBanSao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tDocGia]    Script Date: 17/10/2024 10:06:55 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tDocGia](
	[MaDG] [char](25) NOT NULL,
	[HoDem] [nvarchar](50) NULL,
	[TenDG] [nvarchar](50) NULL,
	[SoCMND] [varchar](50) NULL,
	[NoiCongTac] [nvarchar](200) NULL,
	[Ngaysinh] [date] NULL,
	[Anh] [varchar](150) NULL,
 CONSTRAINT [PK_tDocGia] PRIMARY KEY CLUSTERED 
(
	[MaDG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tLoaiSach]    Script Date: 17/10/2024 10:06:55 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tLoaiSach](
	[MaLoai] [char](25) NOT NULL,
	[TenLoai] [nvarchar](155) NULL,
 CONSTRAINT [PK_tLoaiSach] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tMuonTra]    Script Date: 17/10/2024 10:06:55 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tMuonTra](
	[MaThe] [char](25) NOT NULL,
	[MaBanSao] [char](25) NOT NULL,
	[DatCoc] [float] NULL,
	[NgayMuon] [datetime] NULL,
	[NgayPhaiTra] [datetime] NULL,
	[NgayTra] [datetime] NULL,
	[TinhTrangSach] [nvarchar](155) NULL,
	[Phat] [float] NULL,
 CONSTRAINT [PK_tMuonTra] PRIMARY KEY CLUSTERED 
(
	[MaThe] ASC,
	[MaBanSao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tNgonNgu]    Script Date: 17/10/2024 10:06:55 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tNgonNgu](
	[MaNgonNgu] [char](25) NOT NULL,
	[TenNgonNgu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tNgonNgu] PRIMARY KEY CLUSTERED 
(
	[MaNgonNgu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tNhaXB]    Script Date: 17/10/2024 10:06:55 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tNhaXB](
	[MaNXB] [char](25) NOT NULL,
	[TenNXB] [nvarchar](155) NULL,
 CONSTRAINT [PK_tNhaXB] PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tSach]    Script Date: 17/10/2024 10:06:55 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tSach](
	[MaSach] [char](25) NOT NULL,
	[TenSach] [nvarchar](155) NULL,
	[MaLoai] [char](25) NULL,
	[MaNgonNgu] [char](25) NULL,
	[MaNXB] [char](25) NULL,
	[TacGia] [nvarchar](150) NULL,
	[NamXB] [char](4) NULL,
	[LanXB] [char](3) NULL,
	[GioiThieu] [text] NULL,
	[TongSoTrang] [char](6) NULL,
	[Tap] [char](4) NULL,
	[TongSoTap] [char](4) NULL,
	[GiaTriSach] [float] NULL,
	[FileAnh] [char](100) NULL,
 CONSTRAINT [PK_tSach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tTheDocGia]    Script Date: 17/10/2024 10:06:55 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tTheDocGia](
	[MaThe] [char](25) NOT NULL,
	[MaDG] [char](25) NULL,
	[NgayBatDau] [datetime2](7) NULL,
	[NgayKhoaThe] [datetime2](7) NULL,
	[Anh] [varchar](150) NULL,
 CONSTRAINT [PK_tTheDocGia] PRIMARY KEY CLUSTERED 
(
	[MaThe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1141400129               ', N'11414                    ', NULL, N'Cũ, đủ trang', N'Kệ 133', N'book (1)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1141400258               ', N'11414                    ', NULL, N'Mới', N'Kệ 262', N'book (2)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1141400302               ', N'11414                    ', NULL, N'Mới', N'Kệ 306', N'book (3)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1141400339               ', N'11414                    ', NULL, N'Cũ, đủ trang', N'Kệ 343', N'book (4)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1227900128               ', N'12279                    ', 1, N'Cũ, đủ trang', N'Kệ 132', N'book (5)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1227900257               ', N'12279                    ', 1, N'Mới', N'Kệ 261', N'book (6)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1227900301               ', N'12279                    ', 1, N'Rách bìa', N'Kệ 305', N'book (7)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1227900338               ', N'12279                    ', 1, N'Cũ, đủ trang', N'Kệ 342', N'book (8)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1235200127               ', N'12352                    ', NULL, N'Cũ, đủ trang', N'Kệ 131', N'book (9)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1235200256               ', N'12352                    ', NULL, N'Mới', N'Kệ 260', N'book (10)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1235200300               ', N'12352                    ', NULL, N'Mới', N'Kệ 304', N'book (11)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1235200337               ', N'12352                    ', NULL, N'Cũ, đủ trang', N'Kệ 341', N'book (12)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1387400126               ', N'13874                    ', NULL, N'Cũ, đủ trang', N'Kệ 130', N'book (13)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1387400255               ', N'13874                    ', 1, N'Rách bìa', N'Kệ 259', N'book (14)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1387400299               ', N'13874                    ', NULL, N'Mất trang 43', N'Kệ 303', N'book (15)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1387400336               ', N'13874                    ', 1, N'Cũ, đủ trang', N'Kệ 340', N'book (16)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1409300125               ', N'14093                    ', 1, N'Cũ, đủ trang', N'Kệ 129', N'book (17)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1409300254               ', N'14093                    ', NULL, N'Mới', N'Kệ 258', N'book (18)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1409300298               ', N'14093                    ', 1, N'Mất trang 42', N'Kệ 302', N'book (19)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1409300335               ', N'14093                    ', NULL, N'Cũ, đủ trang', N'Kệ 339', N'book (20)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1416600124               ', N'14166                    ', 1, N'Mới', N'Kệ 128', N'book (21)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1416600253               ', N'14166                    ', NULL, N'Mất trang 43', N'Kệ 257', N'book (22)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1416600297               ', N'14166                    ', 1, N'Mất trang 41', N'Kệ 301', N'book (23)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1416600334               ', N'14166                    ', NULL, N'Cũ, đủ trang', N'Kệ 338', N'book (24)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'14196200123              ', N'141962                   ', NULL, N'Mới', N'Kệ 127', N'book (25)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'14196200252              ', N'141962                   ', 1, N'Mất trang 42', N'Kệ 256', N'book (26)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1461800122               ', N'14618                    ', 1, N'Mới', N'Kệ 126', N'book (27)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1461800251               ', N'14618                    ', 1, N'Mất trang 41', N'Kệ 255', N'book (28)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1463100121               ', N'14631                    ', NULL, N'Mới', N'Kệ 125', N'book (29)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1463100250               ', N'14631                    ', 1, N'Mất trang 40', N'Kệ 254', N'book (30)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1463400120               ', N'14634                    ', 1, N'Mới', N'Kệ 124', N'book (31)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1463400249               ', N'14634                    ', NULL, N'Mất trang 39', N'Kệ 253', N'book (32)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1473900119               ', N'14739                    ', NULL, N'Mới', N'Kệ 123', N'book (33)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1473900248               ', N'14739                    ', NULL, N'Cũ, đủ trang', N'Kệ 252', N'book (34)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1491300118               ', N'14913                    ', NULL, N'Mới', N'Kệ 122', N'book (35)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1491300247               ', N'14913                    ', 1, N'Cũ, đủ trang', N'Kệ 251', N'book (36)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1491400117               ', N'14914                    ', 1, N'Rách bìa', N'Kệ 121', N'book (37)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1491400246               ', N'14914                    ', NULL, N'Cũ, đủ trang', N'Kệ 250', N'book (38)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1513800116               ', N'15138                    ', 1, N'Mới', N'Kệ 120', N'book (39)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1513800245               ', N'15138                    ', NULL, N'Cũ, đủ trang', N'Kệ 249', N'book (40)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1515600115               ', N'15156                    ', 1, N'Mất trang 43', N'Kệ 119', N'book (41)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1515600244               ', N'15156                    ', 1, N'Cũ, đủ trang', N'Kệ 248', N'book (42)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'15225400114              ', N'152254                   ', NULL, N'Mất trang 42', N'Kệ 118', N'book (43)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'15225400243              ', N'152254                   ', 1, N'Cũ, đủ trang', N'Kệ 247', N'book (44)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'15225600113              ', N'152256                   ', NULL, N'Mất trang 41', N'Kệ 117', N'book (45)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'15225600242              ', N'152256                   ', NULL, N'Cũ, đủ trang', N'Kệ 246', N'book (46)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1553100112               ', N'15531                    ', 1, N'Mất trang 40', N'Kệ 116', N'book (47)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1553100241               ', N'15531                    ', NULL, N'Cũ, đủ trang', N'Kệ 245', N'book (48)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'15554100111              ', N'155541                   ', NULL, N'Mất trang 39', N'Kệ 115', N'book (49)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'15554100240              ', N'155541                   ', 1, N'Cũ, đủ trang', N'Kệ 244', N'book (50)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1556000110               ', N'15560                    ', NULL, N'Cũ, đủ trang', N'Kệ 114', N'book (51)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1556000239               ', N'15560                    ', 1, N'Mới', N'Kệ 243', N'book (52)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'15596700109              ', N'155967                   ', 1, N'Cũ, đủ trang', N'Kệ 113', N'book (53)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'15596700238              ', N'155967                   ', NULL, N'Mới', N'Kệ 242', N'book (54)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'15717000108              ', N'157170                   ', 1, N'Cũ, đủ trang', N'Kệ 112', N'book (55)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'15717000237              ', N'157170                   ', NULL, N'Mới', N'Kệ 241', N'book (56)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1695400107               ', N'16954                    ', NULL, N'Cũ, đủ trang', N'Kệ 111', N'book (57)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1695400236               ', N'16954                    ', 1, N'Mới', N'Kệ 240', N'book (58)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1695900106               ', N'16959                    ', NULL, N'Cũ, đủ trang', N'Kệ 110', N'book (59)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1695900235               ', N'16959                    ', NULL, N'Mới', N'Kệ 239', N'book (60)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1696000105               ', N'16960                    ', 1, N'Cũ, đủ trang', N'Kệ 109', N'book (61)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1696000234               ', N'16960                    ', NULL, N'Mới', N'Kệ 238', N'book (62)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1696600104               ', N'16966                    ', 1, N'Cũ, đủ trang', N'Kệ 108', N'book (63)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1696600233               ', N'16966                    ', 1, N'Mới', N'Kệ 237', N'book (64)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1704400103               ', N'17044                    ', NULL, N'Cũ, đủ trang', N'Kệ 107', N'book (65)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1704400232               ', N'17044                    ', 1, N'Rách bìa', N'Kệ 236', N'book (66)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1714200102               ', N'17142                    ', NULL, N'Cũ, đủ trang', N'Kệ 106', N'book (67)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1714200231               ', N'17142                    ', NULL, N'Mới', N'Kệ 235', N'book (68)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1714300101               ', N'17143                    ', 1, N'Mới', N'Kệ 105', N'book (69)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1714300230               ', N'17143                    ', 1, N'Mất trang 43', N'Kệ 234', N'book (70)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1714400100               ', N'17144                    ', NULL, N'Mới', N'Kệ 104', N'book (71)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1714400229               ', N'17144                    ', NULL, N'Mất trang 42', N'Kệ 233', N'book (72)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1714600099               ', N'17146                    ', NULL, N'Mới', N'Kệ 103', N'book (73)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1714600228               ', N'17146                    ', 1, N'Mất trang 41', N'Kệ 232', N'book (74)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1715000098               ', N'17150                    ', 1, N'Mới', N'Kệ 102', N'book (75)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1715000227               ', N'17150                    ', NULL, N'Mất trang 40', N'Kệ 231', N'book (76)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1719300097               ', N'17193                    ', 1, N'Mới', N'Kệ 101', N'book (77)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1719300226               ', N'17193                    ', NULL, N'Mất trang 39', N'Kệ 230', N'book (78)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1722300096               ', N'17223                    ', NULL, N'Mới', N'Kệ 100', N'book (79)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1722300225               ', N'17223                    ', 1, N'Cũ, đủ trang', N'Kệ 229', N'book (80)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1726300095               ', N'17263                    ', 1, N'Mới', N'Kệ 99', N'book (81)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1726300224               ', N'17263                    ', 1, N'Cũ, đủ trang', N'Kệ 228', N'book (82)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1757100094               ', N'17571                    ', NULL, N'Rách bìa', N'Kệ 98', N'book (83)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1757100223               ', N'17571                    ', 1, N'Cũ, đủ trang', N'Kệ 227', N'book (84)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1757200093               ', N'17572                    ', 1, N'Mới', N'Kệ 97', N'book (85)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1757200222               ', N'17572                    ', NULL, N'Cũ, đủ trang', N'Kệ 226', N'book (86)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1757400092               ', N'17574                    ', NULL, N'Mất trang 43', N'Kệ 96', N'book (87)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1757400221               ', N'17574                    ', NULL, N'Cũ, đủ trang', N'Kệ 225', N'book (88)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1758000091               ', N'17580                    ', NULL, N'Mất trang 42', N'Kệ 95', N'book (89)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1758000220               ', N'17580                    ', 1, N'Cũ, đủ trang', N'Kệ 224', N'book (90)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1760700090               ', N'17607                    ', 1, N'Mất trang 41', N'Kệ 94', N'book (91)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1760700219               ', N'17607                    ', NULL, N'Cũ, đủ trang', N'Kệ 223', N'book (92)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1763300089               ', N'17633                    ', 1, N'Mất trang 40', N'Kệ 93', N'book (93)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1763300218               ', N'17633                    ', NULL, N'Cũ, đủ trang', N'Kệ 222', N'book (94)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1772200088               ', N'17722                    ', 1, N'Mất trang 39', N'Kệ 92', N'book (95)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1772200217               ', N'17722                    ', 1, N'Cũ, đủ trang', N'Kệ 221', N'book (96)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1826100087               ', N'18261                    ', NULL, N'Cũ, đủ trang', N'Kệ 91', N'book (97)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'1826100216               ', N'18261                    ', 1, N'Mới', N'Kệ 220', N'book (98)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'20666800086              ', N'206668                   ', NULL, N'Cũ, đủ trang', N'Kệ 90', N'book (99)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'20666800215              ', N'206668                   ', NULL, N'Mới', N'Kệ 219', N'book (100)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'21248300085              ', N'212483                   ', 1, N'Cũ, đủ trang', N'Kệ 89', N'book (101)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'21248300214              ', N'212483                   ', NULL, N'Mới', N'Kệ 218', N'book (102)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'22222700084              ', N'222227                   ', NULL, N'Cũ, đủ trang', N'Kệ 88', N'book (103)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'22222700213              ', N'222227                   ', 1, N'Mới', N'Kệ 217', N'book (104)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'22249000083              ', N'222490                   ', NULL, N'Cũ, đủ trang', N'Kệ 87', N'book (105)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'22249000212              ', N'222490                   ', 1, N'Mới', N'Kệ 216', N'book (106)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'22340500082              ', N'223405                   ', 1, N'Cũ, đủ trang', N'Kệ 86', N'book (107)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'22340500211              ', N'223405                   ', NULL, N'Mới', N'Kệ 215', N'book (108)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'22586500081              ', N'225865                   ', 1, N'Cũ, đủ trang', N'Kệ 85', N'book (109)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'22586500210              ', N'225865                   ', NULL, N'Mới', N'Kệ 214', N'book (110)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'22620000080              ', N'226200                   ', NULL, N'Cũ, đủ trang', N'Kệ 84', N'book (111)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'22620000209              ', N'226200                   ', 1, N'Rách bìa', N'Kệ 213', N'book (112)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'22668500079              ', N'226685                   ', NULL, N'Cũ, đủ trang', N'Kệ 83', N'book (113)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'22668500208              ', N'226685                   ', NULL, N'Mới', N'Kệ 212', N'book (114)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'22706300078              ', N'227063                   ', 1, N'Mới', N'Kệ 82', N'book (115)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'22706300207              ', N'227063                   ', NULL, N'Mất trang 43', N'Kệ 211', N'book (116)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'2278000077               ', N'22780                    ', 1, N'Mới', N'Kệ 81', N'book (117)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'2278000206               ', N'22780                    ', 1, N'Mất trang 42', N'Kệ 210', N'book (118)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'22863700076              ', N'228637                   ', NULL, N'Mới', N'Kệ 80', N'book (119)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'22863700205              ', N'228637                   ', 1, N'Mất trang 41', N'Kệ 209', N'book (120)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'22864500075              ', N'228645                   ', NULL, N'Mới', N'Kệ 79', N'book (121)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'22864500204              ', N'228645                   ', NULL, N'Mất trang 40', N'Kệ 208', N'book (122)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'22864500277              ', N'228645                   ', 1, N'Mới', N'Kệ 281', N'book (123)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'22864500296              ', N'228645                   ', NULL, N'Mất trang 40', N'Kệ 300', N'book (124)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'23030800074              ', N'230308                   ', 1, N'Mới', N'Kệ 78', N'book (125)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'23030800203              ', N'230308                   ', 1, N'Mất trang 39', N'Kệ 207', N'book (126)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'23030800276              ', N'230308                   ', NULL, N'Mất trang 43', N'Kệ 280', N'book (127)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'23030800295              ', N'230308                   ', NULL, N'Mất trang 39', N'Kệ 299', N'book (128)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'23410900073              ', N'234109                   ', NULL, N'Mới', N'Kệ 77', N'book (129)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'23410900202              ', N'234109                   ', NULL, N'Cũ, đủ trang', N'Kệ 206', N'book (130)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'23410900275              ', N'234109                   ', NULL, N'Mất trang 42', N'Kệ 279', N'book (131)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'23410900294              ', N'234109                   ', 1, N'Cũ, đủ trang', N'Kệ 298', N'book (132)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'23645900072              ', N'236459                   ', NULL, N'Mới', N'Kệ 76', N'book (133)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'23645900201              ', N'236459                   ', 1, N'Cũ, đủ trang', N'Kệ 205', N'book (134)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'23645900274              ', N'236459                   ', 1, N'Mất trang 41', N'Kệ 278', N'book (135)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'23645900293              ', N'236459                   ', 1, N'Cũ, đủ trang', N'Kệ 297', N'book (136)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'23736900071              ', N'237369                   ', 1, N'Rách bìa', N'Kệ 75', N'book (137)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'23736900200              ', N'237369                   ', NULL, N'Cũ, đủ trang', N'Kệ 204', N'book (138)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'23736900273              ', N'237369                   ', NULL, N'Mất trang 40', N'Kệ 277', N'book (139)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'23736900292              ', N'237369                   ', NULL, N'Cũ, đủ trang', N'Kệ 296', N'book (140)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'2386200070               ', N'23862                    ', 1, N'Mới', N'Kệ 74', N'book (141)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'2386200199               ', N'23862                    ', NULL, N'Cũ, đủ trang', N'Kệ 203', N'book (142)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'2386200272               ', N'23862                    ', NULL, N'Mất trang 39', N'Kệ 276', N'book (143)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'2386200291               ', N'23862                    ', NULL, N'Cũ, đủ trang', N'Kệ 295', N'book (144)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'23897700069              ', N'238977                   ', NULL, N'Mất trang 43', N'Kệ 73', N'book (145)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'23897700198              ', N'238977                   ', 1, N'Cũ, đủ trang', N'Kệ 202', N'book (146)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'23897700271              ', N'238977                   ', 1, N'Cũ, đủ trang', N'Kệ 275', N'book (147)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'23897700290              ', N'238977                   ', 1, N'Cũ, đủ trang', N'Kệ 294', N'book (148)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'24352600068              ', N'243526                   ', 1, N'Mất trang 42', N'Kệ 72', N'book (149)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'24352600197              ', N'243526                   ', 1, N'Cũ, đủ trang', N'Kệ 201', N'book (150)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'24352600270              ', N'243526                   ', 1, N'Cũ, đủ trang', N'Kệ 274', N'book (151)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'24352600289              ', N'243526                   ', NULL, N'Cũ, đủ trang', N'Kệ 293', N'book (152)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'24545300067              ', N'245453                   ', NULL, N'Mất trang 41', N'Kệ 71', N'book (153)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'24545300196              ', N'245453                   ', 1, N'Cũ, đủ trang', N'Kệ 200', N'book (154)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'24545300269              ', N'245453                   ', NULL, N'Cũ, đủ trang', N'Kệ 273', N'book (155)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'24545300288              ', N'245453                   ', NULL, N'Cũ, đủ trang', N'Kệ 292', N'book (156)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'24616600066              ', N'246166                   ', 1, N'Mất trang 40', N'Kệ 70', N'book (157)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'24616600195              ', N'246166                   ', NULL, N'Cũ, đủ trang', N'Kệ 199', N'book (158)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'24616600268              ', N'246166                   ', NULL, N'Cũ, đủ trang', N'Kệ 272', N'book (159)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'24616600287              ', N'246166                   ', 1, N'Cũ, đủ trang', N'Kệ 291', N'book (160)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'24814200065              ', N'248142                   ', NULL, N'Mất trang 39', N'Kệ 69', N'book (161)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'24814200194              ', N'248142                   ', NULL, N'Cũ, đủ trang', N'Kệ 198', N'book (162)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'24814200267              ', N'248142                   ', 1, N'Cũ, đủ trang', N'Kệ 271', N'book (163)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'24814200286              ', N'248142                   ', 1, N'Cũ, đủ trang', N'Kệ 290', N'book (164)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'25178500064              ', N'251785                   ', NULL, N'Cũ, đủ trang', N'Kệ 68', N'book (165)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'25178500193              ', N'251785                   ', 1, N'Mới', N'Kệ 197', N'book (166)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'25178500266              ', N'251785                   ', 1, N'Cũ, đủ trang', N'Kệ 270', N'book (167)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'25178500285              ', N'251785                   ', NULL, N'Mới', N'Kệ 289', N'book (168)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'25430400063              ', N'254304                   ', 1, N'Cũ, đủ trang', N'Kệ 67', N'book (169)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'25430400192              ', N'254304                   ', NULL, N'Mới', N'Kệ 196', N'book (170)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'25430400265              ', N'254304                   ', NULL, N'Cũ, đủ trang', N'Kệ 269', N'book (171)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'25430400284              ', N'254304                   ', 1, N'Mới', N'Kệ 288', N'book (172)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'25686200062              ', N'256862                   ', 1, N'Cũ, đủ trang', N'Kệ 66', N'book (173)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'25686200191              ', N'256862                   ', NULL, N'Mới', N'Kệ 195', N'book (174)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'25686200264              ', N'256862                   ', NULL, N'Cũ, đủ trang', N'Kệ 268', N'book (175)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'25686200283              ', N'256862                   ', NULL, N'Mới', N'Kệ 287', N'book (176)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'25820400061              ', N'258204                   ', 1, N'Cũ, đủ trang', N'Kệ 65', N'book (177)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'25820400190              ', N'258204                   ', 1, N'Mới', N'Kệ 194', N'book (178)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'25820400263              ', N'258204                   ', 1, N'Cũ, đủ trang', N'Kệ 267', N'book (179)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'25820400282              ', N'258204                   ', 1, N'Mới', N'Kệ 286', N'book (180)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27044500060              ', N'270445                   ', NULL, N'Cũ, đủ trang', N'Kệ 64', N'book (181)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27044500189              ', N'270445                   ', 1, N'Mới', N'Kệ 193', N'book (182)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27044500262              ', N'270445                   ', NULL, N'Mới', N'Kệ 266', N'book (183)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27044500281              ', N'270445                   ', NULL, N'Mới', N'Kệ 285', N'book (184)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27045400059              ', N'270454                   ', NULL, N'Cũ, đủ trang', N'Kệ 63', N'book (185)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27045400188              ', N'270454                   ', NULL, N'Mới', N'Kệ 192', N'book (186)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27045400261              ', N'270454                   ', NULL, N'Mới', N'Kệ 265', N'book (187)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27045400280              ', N'270454                   ', NULL, N'Mới', N'Kệ 284', N'book (188)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27079600058              ', N'270796                   ', 1, N'Cũ, đủ trang', N'Kệ 62', N'book (189)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27079600187              ', N'270796                   ', NULL, N'Mới', N'Kệ 191', N'book (190)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27079600260              ', N'270796                   ', 1, N'Mới', N'Kệ 264', N'book (191)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27079600279              ', N'270796                   ', 1, N'Mới', N'Kệ 283', N'book (192)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27145600057              ', N'271456                   ', NULL, N'Cũ, đủ trang', N'Kệ 61', N'book (193)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27145600186              ', N'271456                   ', 1, N'Rách bìa', N'Kệ 190', N'book (194)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27145600259              ', N'271456                   ', 1, N'Mới', N'Kệ 263', N'book (195)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27145600278              ', N'271456                   ', 1, N'Rách bìa', N'Kệ 282', N'book (196)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27147100056              ', N'271471                   ', NULL, N'Cũ, đủ trang', N'Kệ 60', N'book (197)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27147100185              ', N'271471                   ', 1, N'Mới', N'Kệ 189', N'book (198)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27169700055              ', N'271697                   ', 1, N'Mới', N'Kệ 59', N'book (199)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27169700184              ', N'271697                   ', NULL, N'Mất trang 43', N'Kệ 188', N'book (200)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27175100054              ', N'271751                   ', 1, N'Mới', N'Kệ 58', N'book (201)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27175100183              ', N'271751                   ', NULL, N'Mất trang 42', N'Kệ 187', N'book (202)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27184200053              ', N'271842                   ', NULL, N'Mới', N'Kệ 57', N'book (203)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27184200182              ', N'271842                   ', 1, N'Mất trang 41', N'Kệ 186', N'book (204)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27194000052              ', N'271940                   ', NULL, N'Mới', N'Kệ 56', N'book (205)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27194000181              ', N'271940                   ', NULL, N'Mất trang 40', N'Kệ 185', N'book (206)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27194900051              ', N'271949                   ', 1, N'Mới', N'Kệ 55', N'book (207)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27194900180              ', N'271949                   ', NULL, N'Mất trang 39', N'Kệ 184', N'book (208)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27195800050              ', N'271958                   ', 1, N'Mới', N'Kệ 54', N'book (209)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27195800179              ', N'271958                   ', 1, N'Cũ, đủ trang', N'Kệ 183', N'book (210)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27196900049              ', N'271969                   ', NULL, N'Mới', N'Kệ 53', N'book (211)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27196900178              ', N'271969                   ', 1, N'Cũ, đủ trang', N'Kệ 182', N'book (212)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27208000048              ', N'272080                   ', NULL, N'Rách bìa', N'Kệ 52', N'book (213)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27208000177              ', N'272080                   ', NULL, N'Cũ, đủ trang', N'Kệ 181', N'book (214)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27227000047              ', N'272270                   ', 1, N'Mới', N'Kệ 51', N'book (215)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27227000176              ', N'272270                   ', 1, N'Cũ, đủ trang', N'Kệ 180', N'book (216)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27227900046              ', N'272279                   ', NULL, N'Mất trang 43', N'Kệ 50', N'book (217)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27227900175              ', N'272279                   ', NULL, N'Cũ, đủ trang', N'Kệ 179', N'book (218)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27230200045              ', N'272302                   ', NULL, N'Mất trang 42', N'Kệ 49', N'book (219)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27230200174              ', N'272302                   ', 1, N'Cũ, đủ trang', N'Kệ 178', N'book (220)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27230400044              ', N'272304                   ', 1, N'Mất trang 41', N'Kệ 48', N'book (221)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27230400173              ', N'272304                   ', NULL, N'Cũ, đủ trang', N'Kệ 177', N'book (222)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27351300043              ', N'273513                   ', 1, N'Mất trang 40', N'Kệ 47', N'book (223)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27351300172              ', N'273513                   ', NULL, N'Cũ, đủ trang', N'Kệ 176', N'book (224)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27434100042              ', N'274341                   ', NULL, N'Mất trang 39', N'Kệ 46', N'book (225)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27434100171              ', N'274341                   ', 1, N'Cũ, đủ trang', N'Kệ 175', N'book (226)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27435000041              ', N'274350                   ', 1, N'Cũ, đủ trang', N'Kệ 45', N'book (227)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27435000170              ', N'274350                   ', 1, N'Mới', N'Kệ 174', N'book (228)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27435900040              ', N'274359                   ', NULL, N'Cũ, đủ trang', N'Kệ 44', N'book (229)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27435900169              ', N'274359                   ', 1, N'Mới', N'Kệ 173', N'book (230)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27437900039              ', N'274379                   ', 1, N'Cũ, đủ trang', N'Kệ 43', N'book (231)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27437900168              ', N'274379                   ', NULL, N'Mới', N'Kệ 172', N'book (232)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27461100038              ', N'274611                   ', NULL, N'Cũ, đủ trang', N'Kệ 42', N'book (233)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27461100167              ', N'274611                   ', NULL, N'Mới', N'Kệ 171', N'book (234)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27461600037              ', N'274616                   ', NULL, N'Cũ, đủ trang', N'Kệ 41', N'book (235)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27461600166              ', N'274616                   ', 1, N'Mới', N'Kệ 170', N'book (236)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27461800036              ', N'274618                   ', 1, N'Cũ, đủ trang', N'Kệ 40', N'book (237)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27461800165              ', N'274618                   ', NULL, N'Mới', N'Kệ 169', N'book (238)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27463600035              ', N'274636                   ', 1, N'Cũ, đủ trang', N'Kệ 39', N'book (239)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27463600164              ', N'274636                   ', NULL, N'Mới', N'Kệ 168', N'book (240)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27501800034              ', N'275018                   ', 1, N'Cũ, đủ trang', N'Kệ 38', N'book (241)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27501800163              ', N'275018                   ', 1, N'Rách bìa', N'Kệ 167', N'book (242)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27518500033              ', N'275185                   ', NULL, N'Cũ, đủ trang', N'Kệ 37', N'book (243)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27518500162              ', N'275185                   ', 1, N'Mới', N'Kệ 166', N'book (244)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27518700032              ', N'275187                   ', NULL, N'Mới', N'Kệ 36', N'book (245)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27518700161              ', N'275187                   ', NULL, N'Mất trang 43', N'Kệ 165', N'book (246)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27524600031              ', N'275246                   ', 1, N'Mới', N'Kệ 35', N'book (247)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27524600160              ', N'275246                   ', NULL, N'Mất trang 42', N'Kệ 164', N'book (248)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27524600333              ', N'275246                   ', 1, N'Cũ, đủ trang', N'Kệ 337', N'book (249)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27524600370              ', N'275246                   ', NULL, N'Rách bìa', N'Kệ 374', N'book (250)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27558900030              ', N'275589                   ', NULL, N'Mới', N'Kệ 34', N'book (251)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27558900159              ', N'275589                   ', 1, N'Mất trang 41', N'Kệ 163', N'book (252)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27558900332              ', N'275589                   ', 1, N'Cũ, đủ trang', N'Kệ 336', N'book (253)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27558900369              ', N'275589                   ', NULL, N'Mới', N'Kệ 373', N'book (254)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27571300029              ', N'275713                   ', NULL, N'Mới', N'Kệ 33', N'book (255)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27571300158              ', N'275713                   ', 1, N'Mất trang 40', N'Kệ 162', N'book (256)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27571300331              ', N'275713                   ', 1, N'Mới', N'Kệ 335', N'book (257)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27571300368              ', N'275713                   ', 1, N'Mất trang 43', N'Kệ 372', N'book (258)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27576400028              ', N'275764                   ', 1, N'Mới', N'Kệ 32', N'book (259)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27576400157              ', N'275764                   ', NULL, N'Mất trang 39', N'Kệ 161', N'book (260)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27576400330              ', N'275764                   ', NULL, N'Mới', N'Kệ 334', N'book (261)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27576400367              ', N'275764                   ', 1, N'Mất trang 42', N'Kệ 371', N'book (262)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27580700027              ', N'275807                   ', 1, N'Mới', N'Kệ 31', N'book (263)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27580700156              ', N'275807                   ', NULL, N'Cũ, đủ trang', N'Kệ 160', N'book (264)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27580700329              ', N'275807                   ', NULL, N'Mới', N'Kệ 333', N'book (265)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27580700366              ', N'275807                   ', NULL, N'Mất trang 41', N'Kệ 370', N'book (266)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27585700026              ', N'275857                   ', NULL, N'Mới', N'Kệ 30', N'book (267)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27585700155              ', N'275857                   ', 1, N'Cũ, đủ trang', N'Kệ 159', N'book (268)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27585700328              ', N'275857                   ', 1, N'Mới', N'Kệ 332', N'book (269)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27585700365              ', N'275857                   ', 1, N'Mất trang 40', N'Kệ 369', N'book (270)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27598600025              ', N'275986                   ', NULL, N'Rách bìa', N'Kệ 29', N'book (271)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27598600154              ', N'275986                   ', NULL, N'Cũ, đủ trang', N'Kệ 158', N'book (272)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27598600327              ', N'275986                   ', NULL, N'Mới', N'Kệ 331', N'book (273)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27598600364              ', N'275986                   ', NULL, N'Mất trang 39', N'Kệ 368', N'book (274)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27601900024              ', N'276019                   ', 1, N'Mới', N'Kệ 28', N'book (275)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27601900153              ', N'276019                   ', NULL, N'Cũ, đủ trang', N'Kệ 157', N'book (276)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27601900326              ', N'276019                   ', NULL, N'Mới', N'Kệ 330', N'book (277)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27601900363              ', N'276019                   ', 1, N'Cũ, đủ trang', N'Kệ 367', N'book (278)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27603000023              ', N'276030                   ', 1, N'Mất trang 43', N'Kệ 27', N'book (279)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27603000152              ', N'276030                   ', 1, N'Cũ, đủ trang', N'Kệ 156', N'book (280)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27603000325              ', N'276030                   ', 1, N'Mới', N'Kệ 329', N'book (281)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27603000362              ', N'276030                   ', NULL, N'Cũ, đủ trang', N'Kệ 366', N'book (282)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27609100022              ', N'276091                   ', NULL, N'Mất trang 42', N'Kệ 26', N'book (283)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27609100151              ', N'276091                   ', 1, N'Cũ, đủ trang', N'Kệ 155', N'book (284)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27609100324              ', N'276091                   ', 1, N'Rách bìa', N'Kệ 328', N'book (285)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27609100361              ', N'276091                   ', NULL, N'Cũ, đủ trang', N'Kệ 365', N'book (286)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27610300021              ', N'276103                   ', NULL, N'Mất trang 41', N'Kệ 25', N'book (287)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27610300150              ', N'276103                   ', NULL, N'Cũ, đủ trang', N'Kệ 154', N'book (288)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27610300323              ', N'276103                   ', NULL, N'Mới', N'Kệ 327', N'book (289)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27610300360              ', N'276103                   ', 1, N'Cũ, đủ trang', N'Kệ 364', N'book (290)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27619100020              ', N'276191                   ', 1, N'Mất trang 40', N'Kệ 24', N'book (291)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27619100149              ', N'276191                   ', 1, N'Cũ, đủ trang', N'Kệ 153', N'book (292)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27619100322              ', N'276191                   ', NULL, N'Mất trang 43', N'Kệ 326', N'book (293)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27619100359              ', N'276191                   ', 1, N'Cũ, đủ trang', N'Kệ 363', N'book (294)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27624500019              ', N'276245                   ', NULL, N'Mất trang 39', N'Kệ 23', N'book (295)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27624500148              ', N'276245                   ', NULL, N'Cũ, đủ trang', N'Kệ 152', N'book (296)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27624500321              ', N'276245                   ', 1, N'Mất trang 42', N'Kệ 325', N'book (297)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27624500358              ', N'276245                   ', 1, N'Cũ, đủ trang', N'Kệ 362', N'book (298)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27625900018              ', N'276259                   ', NULL, N'Cũ, đủ trang', N'Kệ 22', N'book (299)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27625900147              ', N'276259                   ', 1, N'Mới', N'Kệ 151', N'book (300)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27625900320              ', N'276259                   ', 1, N'Mất trang 41', N'Kệ 324', N'book (301)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27625900357              ', N'276259                   ', NULL, N'Cũ, đủ trang', N'Kệ 361', N'book (302)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27626800017              ', N'276268                   ', 1, N'Cũ, đủ trang', N'Kệ 21', N'book (303)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27626800146              ', N'276268                   ', NULL, N'Mới', N'Kệ 150', N'book (304)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27626800319              ', N'276268                   ', NULL, N'Mất trang 40', N'Kệ 323', N'book (305)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27626800356              ', N'276268                   ', NULL, N'Cũ, đủ trang', N'Kệ 360', N'book (306)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27628400016              ', N'276284                   ', 1, N'Cũ, đủ trang', N'Kệ 20', N'book (307)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27628400145              ', N'276284                   ', NULL, N'Mới', N'Kệ 149', N'book (308)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27628400318              ', N'276284                   ', NULL, N'Mất trang 39', N'Kệ 322', N'book (309)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27628400355              ', N'276284                   ', 1, N'Cũ, đủ trang', N'Kệ 359', N'book (310)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27632000015              ', N'276320                   ', NULL, N'Cũ, đủ trang', N'Kệ 19', N'book (311)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27632000144              ', N'276320                   ', 1, N'Mới', N'Kệ 148', N'book (312)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27632000317              ', N'276320                   ', 1, N'Cũ, đủ trang', N'Kệ 321', N'book (313)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27632000354              ', N'276320                   ', NULL, N'Mới', N'Kệ 358', N'book (314)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27632100014              ', N'276321                   ', 1, N'Cũ, đủ trang', N'Kệ 18', N'book (315)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27632100143              ', N'276321                   ', 1, N'Mới', N'Kệ 147', N'book (316)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27632100316              ', N'276321                   ', NULL, N'Cũ, đủ trang', N'Kệ 320', N'book (317)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27632100353              ', N'276321                   ', NULL, N'Mới', N'Kệ 357', N'book (318)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27633800013              ', N'276338                   ', NULL, N'Cũ, đủ trang', N'Kệ 17', N'book (319)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27633800142              ', N'276338                   ', 1, N'Mới', N'Kệ 146', N'book (320)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27633800315              ', N'276338                   ', NULL, N'Cũ, đủ trang', N'Kệ 319', N'book (321)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27633800352              ', N'276338                   ', 1, N'Mới', N'Kệ 356', N'book (322)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27634000012              ', N'276340                   ', 1, N'Cũ, đủ trang', N'Kệ 16', N'book (323)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27634000141              ', N'276340                   ', NULL, N'Mới', N'Kệ 145', N'book (324)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27634000314              ', N'276340                   ', 1, N'Cũ, đủ trang', N'Kệ 318', N'book (325)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27634000351              ', N'276340                   ', 1, N'Mới', N'Kệ 355', N'book (326)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27634200011              ', N'276342                   ', NULL, N'Cũ, đủ trang', N'Kệ 15', N'book (327)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27634200140              ', N'276342                   ', NULL, N'Rách bìa', N'Kệ 144', N'book (328)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27634200313              ', N'276342                   ', 1, N'Cũ, đủ trang', N'Kệ 317', N'book (329)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'27634200350              ', N'276342                   ', NULL, N'Mới', N'Kệ 354', N'book (330)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'3123100010               ', N'31231                    ', NULL, N'Cũ, đủ trang', N'Kệ 14', N'book (331)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'3123100139               ', N'31231                    ', 1, N'Mới', N'Kệ 143', N'book (332)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'3123100312               ', N'31231                    ', NULL, N'Cũ, đủ trang', N'Kệ 316', N'book (333)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'3123100349               ', N'31231                    ', NULL, N'Mới', N'Kệ 353', N'book (334)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'3123200009               ', N'31232                    ', 1, N'Mới', N'Kệ 13', N'book (335)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'3123200138               ', N'31232                    ', NULL, N'Mất trang 43', N'Kệ 142', N'book (336)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'3123200311               ', N'31232                    ', 1, N'Cũ, đủ trang', N'Kệ 315', N'book (337)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'3123200348               ', N'31232                    ', 1, N'Mới', N'Kệ 352', N'book (338)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'3149800008               ', N'31498                    ', 1, N'Mới', N'Kệ 12', N'book (339)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'3149800137               ', N'31498                    ', NULL, N'Mất trang 42', N'Kệ 141', N'book (340)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'3149800310               ', N'31498                    ', NULL, N'Cũ, đủ trang', N'Kệ 314', N'book (341)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'3149800347               ', N'31498                    ', 1, N'Rách bìa', N'Kệ 351', N'book (342)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'3150100007               ', N'31501                    ', 1, N'Mới', N'Kệ 11', N'book (343)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'3150100136               ', N'31501                    ', 1, N'Mất trang 41', N'Kệ 140', N'book (344)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'3150100309               ', N'31501                    ', 1, N'Cũ, đủ trang', N'Kệ 313', N'book (345)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'3150100346               ', N'31501                    ', NULL, N'Mới', N'Kệ 350', N'book (346)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'3310200006               ', N'33102                    ', NULL, N'Mới', N'Kệ 10', N'book (347)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'3310200135               ', N'33102                    ', 1, N'Mất trang 40', N'Kệ 139', N'book (348)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'3310200308               ', N'33102                    ', NULL, N'Mới', N'Kệ 312', N'book (349)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'3310200345               ', N'33102                    ', NULL, N'Mất trang 43', N'Kệ 349', N'book (350)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'3310600005               ', N'33106                    ', NULL, N'Mới', N'Kệ 9', N'book (351)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'3310600134               ', N'33106                    ', NULL, N'Mất trang 39', N'Kệ 138', N'book (352)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'3310600307               ', N'33106                    ', NULL, N'Mới', N'Kệ 311', N'book (353)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'3310600344               ', N'33106                    ', 1, N'Mất trang 42', N'Kệ 348', N'book (354)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'3344700004               ', N'33447                    ', 1, N'Mới', N'Kệ 8', N'book (355)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'3344700133               ', N'33447                    ', NULL, N'Cũ, đủ trang', N'Kệ 137', N'book (356)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'3344700306               ', N'33447                    ', 1, N'Mới', N'Kệ 310', N'book (357)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'3344700343               ', N'33447                    ', NULL, N'Mất trang 41', N'Kệ 347', N'book (358)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'3541900003               ', N'35419                    ', NULL, N'Mới', N'Kệ 7', N'book (359)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'3541900132               ', N'35419                    ', 1, N'Cũ, đủ trang', N'Kệ 136', N'book (360)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'3541900305               ', N'35419                    ', 1, N'Mới', N'Kệ 309', N'book (361)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'3541900342               ', N'35419                    ', NULL, N'Mất trang 40', N'Kệ 346', N'book (362)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'4455100002               ', N'44551                    ', NULL, N'Rách bìa', N'Kệ 6', N'book (363)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'4455100131               ', N'44551                    ', 1, N'Cũ, đủ trang', N'Kệ 135', N'book (364)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'4455100304               ', N'44551                    ', 1, N'Mới', N'Kệ 308', N'book (365)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'4455100341               ', N'44551                    ', 1, N'Mất trang 39', N'Kệ 345', N'book (366)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'4920600001               ', N'49206                    ', 1, N'Mới', N'Kệ 5', N'book (367)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'4920600130               ', N'49206                    ', NULL, N'Cũ, đủ trang', N'Kệ 134', N'book (368)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'4920600303               ', N'49206                    ', NULL, N'Mới', N'Kệ 307', N'book (369)')
GO
INSERT [dbo].[tBanSaoSach] ([MaBanSao], [MaSach], [TrangThai], [TinhTrangSach], [ViTri], [Anh]) VALUES (N'4920600340               ', N'49206                    ', 1, N'Cũ, đủ trang', N'Kệ 344', N'book (370)')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1200253                  ', N'Nguyễn Thị ', N'Hồng', N'121392292', NULL, NULL, N'Reader (11).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1200781                  ', N'Vũ Thị Thu ', N'Huyền', N'121392293', NULL, NULL, N'Reader (21).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1200996                  ', N'Vương Sỹ ', N'Khải', N'121392294', NULL, NULL, N'Reader (31).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1201782                  ', N'Nguyễn Thế ', N'Linh', N'121392295', NULL, NULL, N'Reader (41).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1202213                  ', N'Nguyễn Đức ', N'Luân', N'121392297', NULL, NULL, N'Reader (51).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1202465                  ', N'Nguyễn Thị Thanh ', N'Mai', N'121392298', NULL, NULL, N'Reader (61).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1203937                  ', N'Nguyễn Thị ', N'Oanh', N'121392299', NULL, NULL, N'Reader (71).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1204073                  ', N'Mai Thị ', N'Trang', N'121392300', NULL, NULL, N'Reader (81).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1206325                  ', N'Hoàng Thùy ', N'Dung', N'121392288', NULL, NULL, N'Reader (91).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1209718                  ', N'Đàm Thị ', N'Hương', N'121392291', NULL, NULL, N'Reader (101).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1215163                  ', N'Nguyễn Hoàng ', N'Sơn', N'121392301', NULL, NULL, N'Reader (111).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1216112                  ', N'Vũ Quốc ', N'Phong', N'121392302', NULL, NULL, N'Reader (121).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1216294                  ', N'Lưu Đức ', N'Thắng', N'121392303', NULL, NULL, N'Reader (131).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1217509                  ', N'Ngô Bá ', N'Thế', N'121392304', NULL, NULL, N'Reader (141).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1217681                  ', N'Phạm Quốc ', N'Triệu', N'121392305', NULL, NULL, N'Reader (151).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1218618                  ', N'An Văn ', N'Tùng', N'121392306', NULL, NULL, N'Reader (161).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1218753                  ', N'Ngô Thanh ', N'Tùng', N'121392307', NULL, NULL, N'Reader (171).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1219631                  ', N'Phạm Thế ', N'Vượng', N'121392308', NULL, NULL, N'Reader (181).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1219726                  ', N'Phạm Thị ', N'Xuân', N'121392309', NULL, NULL, N'Reader (191).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1225009                  ', N'Trần Thị ', N'Hảo', N'121392289', NULL, NULL, N'Reader (201).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1225185                  ', N'Lê Đinh Thế ', N'Hoạch', N'121392290', NULL, NULL, N'Reader (211).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1225498                  ', N'Lê Hồng ', N'Lĩnh', N'121392296', NULL, NULL, N'Reader (221).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1300452                  ', N'Lê Khánh ', N'Linh', N'121392342', NULL, NULL, N'Reader (231).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1300594                  ', N'Trần Thị ', N'Linh', N'121392343', NULL, NULL, N'Reader (241).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1300634                  ', N'Phạm Quang ', N'Toàn', N'121391951', NULL, NULL, N'Reader (251).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1300844                  ', N'Nguyễn Tiến ', N'Lợi', N'121392344', NULL, NULL, N'Reader (261).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1300953                  ', N'Nguyễn Tuấn ', N'Anh', N'121391905', NULL, NULL, N'Reader (271).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1301048                  ', N'Lê Quang ', N'Trung', N'121391955', NULL, NULL, N'Reader (281).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1301242                  ', N'Đỗ Văn ', N'Bạo', N'121391907', NULL, NULL, N'Reader (291).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1301939                  ', N'Hoàng Xuân ', N'Chương', N'121391910', NULL, NULL, N'Reader (301).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1302790                  ', N'Phạm Văn ', N'Đạo', N'121391916', NULL, NULL, N'Reader (311).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1304038                  ', N'Nguyễn Minh ', N'Hoàng', N'121391860', NULL, NULL, N'Reader (321).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1304769                  ', N'Đỗ Việt ', N'Anh', N'121392310', NULL, NULL, N'Reader (331).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1304915                  ', N'Nguyễn Hồng Lan ', N'Anh', N'121392311', NULL, NULL, N'Reader (341).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1304999                  ', N'Đào Văn ', N'Huy', N'121391928', NULL, NULL, N'Reader (351).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1305024                  ', N'Nguyễn Tuấn ', N'Anh', N'121392312', NULL, NULL, N'Reader (361).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1305203                  ', N'Vương Duy Tuấn ', N'Anh', N'121392313', NULL, NULL, N'Reader (371).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1305312                  ', N'Đỗ Văn ', N'Bạo', N'121392314', NULL, NULL, N'Reader (381).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1305562                  ', N'Vũ Thị ', N'Chi', N'121392317', NULL, NULL, N'Reader (391).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1305760                  ', N'Nguyễn Thị ', N'Công', N'121392315', NULL, NULL, N'Reader (401).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1306019                  ', N'Hoàng Xuân ', N'Chương', N'121392318', NULL, NULL, N'Reader (411).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1306129                  ', N'Nguyễn Công ', N'Doanh', N'121392319', NULL, NULL, N'Reader (421).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1306235                  ', N'Bùi Quang ', N'Duy', N'121392321', NULL, NULL, N'Reader (431).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1306324                  ', N'Phạm Khánh ', N'Duy', N'121392322', NULL, NULL, N'Reader (441).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1306382                  ', N'Cao Văn ', N'Dũng', N'121392320', NULL, NULL, N'Reader (451).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1306651                  ', N'Bùi Văn ', N'Dư', N'121392323', NULL, NULL, N'Reader (461).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1306870                  ', N'Phạm Văn ', N'Đạo', N'121392324', NULL, NULL, N'Reader (471).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1307048                  ', N'Trương Quốc ', N'Đạt', N'121392325', NULL, NULL, N'Reader (481).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1307408                  ', N'Phan Trung ', N'Đức', N'121392327', NULL, NULL, N'Reader (491).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1307959                  ', N'Trần Viết ', N'Hải', N'121392328', NULL, NULL, N'Reader (501).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1308129                  ', N'Phạm Đức ', N'Mạnh', N'121392040', NULL, NULL, N'Reader (511).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1308242                  ', N'Nguyễn Minh ', N'Hiển', N'121392329', NULL, NULL, N'Reader (521).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1308251                  ', N'Nguyễn Tuấn ', N'Minh', N'121392042', NULL, NULL, N'Reader (531).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1308480                  ', N'Nguyễn Tấn ', N'Hiệp', N'121392330', NULL, NULL, N'Reader (541).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1308571                  ', N'Phan Thị ', N'Hoa', N'121392331', NULL, NULL, N'Reader (551).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1308643                  ', N'Nguyễn Thị Thu ', N'Hoài', N'121392332', NULL, NULL, N'Reader (561).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1309069                  ', N'Đào Văn ', N'Huy', N'121392335', NULL, NULL, N'Reader (571).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1309109                  ', N'Vũ Đình ', N'Phán', N'121392046', NULL, NULL, N'Reader (581).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1309137                  ', N'Nguyễn Đức ', N'Huy', N'121392336', NULL, NULL, N'Reader (591).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1309204                  ', N'Phạm Quốc ', N'Huy', N'121392337', NULL, NULL, N'Reader (601).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1309362                  ', N'Trình Hải ', N'Huỳnh', N'121392338', NULL, NULL, N'Reader (611).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1309514                  ', N'Vũ Văn ', N'Hùng', N'121392334', NULL, NULL, N'Reader (621).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1309713                  ', N'Lương Hồng ', N'Hưởng', N'121392340', NULL, NULL, N'Reader (631).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1309769                  ', N'Nguyễn Thi ', N'Hương', N'121392339', NULL, NULL, N'Reader (641).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1311888                  ', N'Phạm Ngọc ', N'Tùng', N'121391962', NULL, NULL, N'Reader (651).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1322904                  ', N'Ngô Hải ', N'Đoàn', N'121392326', NULL, NULL, N'Reader (661).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1324887                  ', N'Nguyễn Bá ', N'Cường', N'121392316', NULL, NULL, N'Reader (671).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1325458                  ', N'Võ Thị ', N'Huệ', N'121392333', NULL, NULL, N'Reader (681).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1325688                  ', N'Đậu Công ', N'Linh', N'121392341', NULL, NULL, N'Reader (691).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1400028                  ', N'Đoàn Văn ', N'Tuyến', N'121391963', NULL, NULL, N'Reader (701).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1400133                  ', N'Tống Thị Hải ', N'Yến', N'121391903', NULL, NULL, N'Reader (711).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1400142                  ', N'Nguyễn Thanh ', N'Tùng', N'121391961', NULL, NULL, N'Reader (721).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1400156                  ', N'Lê Đức ', N'Anh', N'121391845', NULL, NULL, N'Reader (731).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1400259                  ', N'Nguyễn Ngọc ', N'Anh', N'121391846', NULL, NULL, N'Reader (741).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1400264                  ', N'Tạ Quang ', N'Tú', N'121391958', NULL, NULL, N'Reader (751).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1400376                  ', N'Nguyễn Xuân ', N'Anh', N'121391847', NULL, NULL, N'Reader (761).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1400570                  ', N'Đinh Đức ', N'Bảo', N'121391848', NULL, NULL, N'Reader (771).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1400599                  ', N'Đinh Ngọc ', N'Vũ', N'121391964', NULL, NULL, N'Reader (781).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1400709                  ', N'Phạm Thanh ', N'Bình', N'121391849', NULL, NULL, N'Reader (791).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1400796                  ', N'Ngô Văn ', N'Anh', N'121391904', NULL, NULL, N'Reader (801).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1400820                  ', N'Lưu Thị ', N'Chiên', N'121391850', NULL, NULL, N'Reader (811).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1400884                  ', N'Bùi Thị Tuyết ', N'Chinh', N'121391851', NULL, NULL, N'Reader (821).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1400931                  ', N'Nguyễn Tuấn ', N'Anh', N'121391906', NULL, NULL, N'Reader (831).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1401191                  ', N'Phạm Tuấn ', N'Vũ', N'121392020', NULL, NULL, N'Reader (841).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1401278                  ', N'Trần Văn ', N'Diện', N'121391852', NULL, NULL, N'Reader (851).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1401342                  ', N'Trần Quốc ', N'Bộ', N'121391908', NULL, NULL, N'Reader (861).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1401388                  ', N'Bùi Quang ', N'Duy', N'121391853', NULL, NULL, N'Reader (871).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1401437                  ', N'Lê Xuân ', N'Chiến', N'121391909', NULL, NULL, N'Reader (881).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1401481                  ', N'Trần Lê ', N'Duy', N'121391854', NULL, NULL, N'Reader (891).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1401814                  ', N'Hoàng Văn ', N'Cương', N'121391911', NULL, NULL, N'Reader (901).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1401887                  ', N'Lê Quang ', N'Đạo', N'121391855', NULL, NULL, N'Reader (911).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1401908                  ', N'Vũ Quốc ', N'Doanh', N'121391912', NULL, NULL, N'Reader (921).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1402040                  ', N'Trần Tiến ', N'Đạt', N'121391856', NULL, NULL, N'Reader (931).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1402041                  ', N'Nguyễn Thành ', N'Duy', N'121391913', NULL, NULL, N'Reader (941).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1402097                  ', N'Lê Thị ', N'Duyên', N'121391914', NULL, NULL, N'Reader (951).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1402446                  ', N'Lê Thị ', N'Đào', N'121391915', NULL, NULL, N'Reader (961).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1402583                  ', N'Nguyễn Quang ', N'Đạt', N'121391917', NULL, NULL, N'Reader (971).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1402737                  ', N'Hoàng Thị ', N'Định', N'121391918', NULL, NULL, N'Reader (981).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1402739                  ', N'Nguyễn Hoàng ', N'Hải', N'121391858', NULL, NULL, N'Reader (991).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1402802                  ', N'Nguyễn Bá ', N'Dũng', N'121391975', NULL, NULL, N'Reader (1001).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1402914                  ', N'Nguyễn Mạnh ', N'Đức', N'121391919', NULL, NULL, N'Reader (1011).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1402998                  ', N'Nguyễn Thị Thu ', N'Hiền', N'121391859', NULL, NULL, N'Reader (1021).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1403109                  ', N'Phạm Thị Hương ', N'Giang', N'121391920', NULL, NULL, N'Reader (1031).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1403221                  ', N'Nguyễn Thị ', N'Hà', N'121391921', NULL, NULL, N'Reader (1041).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1403550                  ', N'Nguyễn Thái ', N'Học', N'121391861', NULL, NULL, N'Reader (1051).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1403596                  ', N'Phạm Văn ', N'Hậu', N'121391923', NULL, NULL, N'Reader (1061).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1403678                  ', N'Vũ Thị Thu ', N'Huệ', N'121391862', NULL, NULL, N'Reader (1071).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1403693                  ', N'Đặng Ngọc ', N'Hiến', N'121391924', NULL, NULL, N'Reader (1081).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1403776                  ', N'Nguyễn Bá ', N'Huy', N'121391865', NULL, NULL, N'Reader (1091).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1403790                  ', N'Lê Minh ', N'Hà', N'121391981', NULL, NULL, N'Reader (1101).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1403841                  ', N'Vũ Xuân ', N'Hiếu', N'121391925', NULL, NULL, N'Reader (1111).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1403917                  ', N'Lưu Thị Kim ', N'Huyền', N'121391866', NULL, NULL, N'Reader (1121).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1403983                  ', N'Nguyễn Thị ', N'Hoà', N'121391926', NULL, NULL, N'Reader (1131).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1404112                  ', N'Trần Mạnh ', N'Hùng', N'121391864', NULL, NULL, N'Reader (1141).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1404277                  ', N'Từ Tất ', N'Huân', N'121391927', NULL, NULL, N'Reader (1151).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1404386                  ', N'Phạm Văn ', N'Khang', N'121391867', NULL, NULL, N'Reader (1161).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1404399                  ', N'Lê Thế ', N'Huy', N'121391929', NULL, NULL, N'Reader (1171).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1404453                  ', N'Nguyễn Quang ', N'Huy', N'121391930', NULL, NULL, N'Reader (1181).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1404593                  ', N'Đỗ Đặng Trung ', N'Kiên', N'121391868', NULL, NULL, N'Reader (1191).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1404730                  ', N'Nguyễn Thị ', N'Là', N'121391870', NULL, NULL, N'Reader (1201).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1404924                  ', N'Lương Tuấn ', N'Linh', N'121391871', NULL, NULL, N'Reader (1211).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1404969                  ', N'Nguyễn Thị ', N'Hương', N'121391931', NULL, NULL, N'Reader (1221).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1405111                  ', N'Nguyễn Ngọc ', N'Khánh', N'121391932', NULL, NULL, N'Reader (1231).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1405136                  ', N'Nguyễn Hoàn ', N'Long', N'121391872', NULL, NULL, N'Reader (1241).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1405347                  ', N'Nguyễn Trọng ', N'Lực', N'121391873', NULL, NULL, N'Reader (1251).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1405401                  ', N'Lê Thị ', N'Mai', N'121391874', NULL, NULL, N'Reader (1261).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1405402                  ', N'Nguyễn Tùng ', N'Lâm', N'121391933', NULL, NULL, N'Reader (1271).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1405503                  ', N'Phan Văn ', N'Mạnh', N'121391875', NULL, NULL, N'Reader (1281).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1405612                  ', N'Nguyễn Quang ', N'Minh', N'121391876', NULL, NULL, N'Reader (1291).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1405620                  ', N'Nguyễn Văn ', N'Linh', N'121391934', NULL, NULL, N'Reader (1301).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1405741                  ', N'Nguyễn Đức ', N'Khôi', N'121391988', NULL, NULL, N'Reader (1311).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1405806                  ', N'Nguyễn Đức ', N'Nam', N'121391877', NULL, NULL, N'Reader (1321).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1405972                  ', N'Tạ Quang ', N'Lực', N'121391935', NULL, NULL, N'Reader (1331).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1405990                  ', N'Nguyễn Thị ', N'Ngân', N'121391878', NULL, NULL, N'Reader (1341).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1406149                  ', N'Đào Trần ', N'Minh', N'121391936', NULL, NULL, N'Reader (1351).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1406179                  ', N'Nguyễn Thị ', N'Nhàn', N'121391879', NULL, NULL, N'Reader (1361).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1406273                  ', N'Phạm Thị ', N'Nhung', N'121391880', NULL, NULL, N'Reader (1371).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1406409                  ', N'Nguyễn Quốc ', N'Phong', N'121391881', NULL, NULL, N'Reader (1381).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1406554                  ', N'Phan Thị Thu ', N'Nga', N'121391938', NULL, NULL, N'Reader (1391).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1406637                  ', N'Chu Văn ', N'Quang', N'121391882', NULL, NULL, N'Reader (1401).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1406970                  ', N'Đỗ Minh ', N'Phong', N'121391939', NULL, NULL, N'Reader (1411).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1406984                  ', N'Nguyễn Văn ', N'Quý', N'121391883', NULL, NULL, N'Reader (1421).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1407103                  ', N'Đỗ Hồng ', N'Sơn', N'121391885', NULL, NULL, N'Reader (1431).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1407144                  ', N'Mai Thị ', N'Phương', N'121391940', NULL, NULL, N'Reader (1441).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1407296                  ', N'Trần Hồng ', N'Quang', N'121391941', NULL, NULL, N'Reader (1451).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1407425                  ', N'Phạm Duy ', N'Thanh', N'121391886', NULL, NULL, N'Reader (1461).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1407448                  ', N'Đồng Viết ', N'Quyền', N'121391942', NULL, NULL, N'Reader (1471).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1407558                  ', N'Phạm Tiến ', N'Thành', N'121391887', NULL, NULL, N'Reader (1481).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1407833                  ', N'Vũ Hồng ', N'Sơn', N'121391943', NULL, NULL, N'Reader (1491).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1407837                  ', N'Nguyễn Huy ', N'Thắng', N'121391888', NULL, NULL, N'Reader (1501).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1407965                  ', N'Nguyễn Văn ', N'Thế', N'121391890', NULL, NULL, N'Reader (1511).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1407974                  ', N'Đào Kỳ ', N'Thanh', N'121391945', NULL, NULL, N'Reader (1521).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1408062                  ', N'Đỗ Hữu ', N'Thịnh', N'121391891', NULL, NULL, N'Reader (1531).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1408079                  ', N'Lê Tất ', N'Thành', N'121391946', NULL, NULL, N'Reader (1541).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1408177                  ', N'Nguyễn Thị Hoài ', N'Thu', N'121391892', NULL, NULL, N'Reader (1551).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1408258                  ', N'Lê Bá ', N'Thái', N'121391944', NULL, NULL, N'Reader (1561).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1408350                  ', N'Quách Anh ', N'Thư', N'121391893', NULL, NULL, N'Reader (1571).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1408605                  ', N'Từ Tất ', N'Thiện', N'121391947', NULL, NULL, N'Reader (1581).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1408686                  ', N'Nguyễn Thị ', N'Trang', N'121391894', NULL, NULL, N'Reader (1591).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1408727                  ', N'Mạc Thị ', N'Thu', N'121391948', NULL, NULL, N'Reader (1601).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1408778                  ', N'Vương Thị ', N'Trang', N'121391896', NULL, NULL, N'Reader (1611).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1408922                  ', N'Nguyễn Đức ', N'Trung', N'121391897', NULL, NULL, N'Reader (1621).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1408991                  ', N'Trịnh Thị ', N'Trung', N'121391898', NULL, NULL, N'Reader (1631).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1409015                  ', N'Lương Hoàng ', N'Tiến', N'121391950', NULL, NULL, N'Reader (1641).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1409052                  ', N'Nguyễn Viết ', N'Thắng', N'121392006', NULL, NULL, N'Reader (1651).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1409163                  ', N'Đỗ Đức ', N'Tuấn', N'121391899', NULL, NULL, N'Reader (1661).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1409229                  ', N'Đỗ Thị Huyền ', N'Trang', N'121391952', NULL, NULL, N'Reader (1671).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1409259                  ', N'Nguyễn Quang ', N'Tuấn', N'121391900', NULL, NULL, N'Reader (1681).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1409314                  ', N'Nguyễn Thùy ', N'Trang', N'121391953', NULL, NULL, N'Reader (1691).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1409365                  ', N'Dương Công ', N'Tráng', N'121391954', NULL, NULL, N'Reader (1701).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1409537                  ', N'Nguyễn Văn ', N'Trung', N'121391956', NULL, NULL, N'Reader (1711).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1409612                  ', N'Vũ Mạnh ', N'Tùng', N'121391901', NULL, NULL, N'Reader (1721).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1409626                  ', N'Nguyễn Ngọc ', N'Tiến', N'121392009', NULL, NULL, N'Reader (1731).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1409669                  ', N'Trần Văn ', N'Trường', N'121391957', NULL, NULL, N'Reader (1741).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1409788                  ', N'Đỗ Trung ', N'Văn', N'121391902', NULL, NULL, N'Reader (1751).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1409846                  ', N'Nguyễn Quang ', N'Tuấn', N'121391959', NULL, NULL, N'Reader (1761).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1409875                  ', N'Nguyễn Văn ', N'Tuấn', N'121391960', NULL, NULL, N'Reader (1771).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1420644                  ', N'Nguyễn Văn ', N'Hùng', N'121391863', NULL, NULL, N'Reader (1781).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1421083                  ', N'Lê Văn ', N'Hải', N'121391922', NULL, NULL, N'Reader (1791).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1421160                  ', N'Nguyễn Hữu ', N'Quỳnh', N'121391884', NULL, NULL, N'Reader (1801).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1421334                  ', N'Nguyễn Thế ', N'Thắng', N'121391889', NULL, NULL, N'Reader (1811).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1421497                  ', N'Nguyễn Thị ', N'Trang', N'121391895', NULL, NULL, N'Reader (1821).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1421562                  ', N'Nguyễn Thị ', N'Nga', N'121391937', NULL, NULL, N'Reader (1831).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1421996                  ', N'Hồ Sỹ ', N'Thức', N'121391949', NULL, NULL, N'Reader (1841).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1428442                  ', N'Trần Trung ', N'Kiên', N'121391869', NULL, NULL, N'Reader (1851).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1429615                  ', N'Trần Quang ', N'Vũ', N'121391965', NULL, NULL, N'Reader (1861).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'1429789                  ', N'Nguyễn Hoàng Minh ', N'Quang', N'121391995', NULL, NULL, N'Reader (1871).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151288685                ', N'Lã Văn ', N'Đức', N'121392031', NULL, NULL, N'Reader (1881).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151325051                ', N'Nguyễn Hữu ', N'Bằng', N'121391969', NULL, NULL, N'Reader (1891).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151325272                ', N'Nguyễn Tiến ', N'Anh', N'121391967', NULL, NULL, N'Reader (1901).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151327130                ', N'Vũ Viết ', N'Bắc', N'121391968', NULL, NULL, N'Reader (1911).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151327953                ', N'Nguyễn Văn ', N'Công', N'121391970', NULL, NULL, N'Reader (1921).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151328506                ', N'Trần Đức ', N'Cừ', N'121391971', NULL, NULL, N'Reader (1931).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151330753                ', N'Phạm Hữu ', N'Duân', N'121391973', NULL, NULL, N'Reader (1941).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151330955                ', N'Bùi Mạnh ', N'Cường', N'121391972', NULL, NULL, N'Reader (1951).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151331741                ', N'Đinh Việt ', N'Dũng', N'121391974', NULL, NULL, N'Reader (1961).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151334459                ', N'Bùi Đức ', N'Anh', N'121391966', NULL, NULL, N'Reader (1971).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151334864                ', N'Trần Đức ', N'Duy', N'121391977', NULL, NULL, N'Reader (1981).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151336716                ', N'Nguyễn Minh ', N'Đạt', N'121391978', NULL, NULL, N'Reader (1991).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151338752                ', N'Nguyễn Công ', N'Giang', N'121391980', NULL, NULL, N'Reader (2001).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151340150                ', N'Nguyễn Văn ', N'Hải', N'121391982', NULL, NULL, N'Reader (2011).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151340527                ', N'Nguyễn Văn ', N'Hòa', N'121391984', NULL, NULL, N'Reader (2021).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151341055                ', N'Đoàn Đình ', N'Hiệp', N'121391983', NULL, NULL, N'Reader (2031).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151343382                ', N'Nguyễn Bá ', N'Dũng', N'121391976', NULL, NULL, N'Reader (2041).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151343513                ', N'Trần Văn ', N'Hoàn', N'121391985', NULL, NULL, N'Reader (2051).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151345236                ', N'Đỗ Thị ', N'Huệ', N'121391986', NULL, NULL, N'Reader (2061).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151347334                ', N'Nguyễn Hữu ', N'Đăng', N'121391979', NULL, NULL, N'Reader (2071).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151347531                ', N'Hoàng Ngọc Bảo ', N'Kim', N'121391989', NULL, NULL, N'Reader (2081).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151347683                ', N'Lê Văn ', N'Lương', N'121391990', NULL, NULL, N'Reader (2091).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151349028                ', N'Nguyễn Đức ', N'Nam', N'121391991', NULL, NULL, N'Reader (2101).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151349759                ', N'Nguyễn Thành ', N'Nam', N'121391992', NULL, NULL, N'Reader (2111).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151350108                ', N'Phạm Văn ', N'Phát', N'121391994', NULL, NULL, N'Reader (2121).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151351852                ', N'Hồ Thị Minh ', N'Nguyệt', N'121391993', NULL, NULL, N'Reader (2131).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151353664                ', N'Nguyễn Văn ', N'Quang', N'121391996', NULL, NULL, N'Reader (2141).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151354102                ', N'Phí Thành ', N'Quang', N'121391997', NULL, NULL, N'Reader (2151).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151355677                ', N'Nguyễn Hữu ', N'Sáng', N'121391999', NULL, NULL, N'Reader (2161).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151355911                ', N'Nguyễn Mạnh ', N'Hưng', N'121391987', NULL, NULL, N'Reader (2171).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151356186                ', N'Cần Trung ', N'Quyết', N'121391998', NULL, NULL, N'Reader (2181).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151358423                ', N'Đặng Văn ', N'Tăng', N'121392001', NULL, NULL, N'Reader (2191).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151359458                ', N'Đỗ Văn ', N'Sơn', N'121392000', NULL, NULL, N'Reader (2201).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151359944                ', N'Nguyễn Hữu ', N'Thái', N'121392002', NULL, NULL, N'Reader (2211).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151361566                ', N'Vũ Văn ', N'Thành', N'121392004', NULL, NULL, N'Reader (2221).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151362088                ', N'Đào Văn ', N'Thành', N'121392003', NULL, NULL, N'Reader (2231).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151362645                ', N'Vũ Đức ', N'Thao', N'121392005', NULL, NULL, N'Reader (2241).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151364888                ', N'Hồ Hữu ', N'Tiến', N'121392007', NULL, NULL, N'Reader (2251).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151366882                ', N'Nguyễn Mạnh ', N'Tiến', N'121392008', NULL, NULL, N'Reader (2261).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151368701                ', N'Nguyễn Tiến ', N'Trường', N'121392011', NULL, NULL, N'Reader (2271).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151369206                ', N'Nguyễn Văn ', N'Tiến', N'121392010', NULL, NULL, N'Reader (2281).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151369274                ', N'Đỗ Văn ', N'Tuấn', N'121392012', NULL, NULL, N'Reader (2291).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151371461                ', N'Đinh Công ', N'Tùng', N'121392014', NULL, NULL, N'Reader (2301).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151373249                ', N'Đỗ Hoành ', N'Tùng', N'121392015', NULL, NULL, N'Reader (2311).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151373995                ', N'Phạm Hồng ', N'Văn', N'121392017', NULL, NULL, N'Reader (2321).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151374813                ', N'Nguyễn Văn ', N'Vĩnh', N'121392018', NULL, NULL, N'Reader (2331).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151375014                ', N'Hà Lê ', N'Tuyến', N'121392016', NULL, NULL, N'Reader (2341).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151376385                ', N'Kiều Long ', N'Vũ', N'121392019', NULL, NULL, N'Reader (2351).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151377171                ', N'Đặng Thế ', N'Anh', N'121392021', NULL, NULL, N'Reader (2361).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151379359                ', N'Nguyễn Đình ', N'Tuấn', N'121392013', NULL, NULL, N'Reader (2371).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151381062                ', N'Đỗ Phú ', N'Cường', N'121392024', NULL, NULL, N'Reader (2381).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151381868                ', N'Đào Văn ', N'Cường', N'121392023', NULL, NULL, N'Reader (2391).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151384063                ', N'Nguyễn Văn ', N'Duy', N'121392028', NULL, NULL, N'Reader (2401).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151384796                ', N'Nguyễn Công ', N'Duy', N'121392027', NULL, NULL, N'Reader (2411).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151385101                ', N'Lưu Thị Thùy ', N'Dung', N'121392026', NULL, NULL, N'Reader (2421).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151388283                ', N'Nguyễn Thị ', N'Duyên', N'121392029', NULL, NULL, N'Reader (2431).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151388485                ', N'Trần Cảnh ', N'Dưỡng', N'121392030', NULL, NULL, N'Reader (2441).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151389889                ', N'Nguyễn Lê Thục ', N'Anh', N'121392022', NULL, NULL, N'Reader (2451).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151391560                ', N'Nguyễn Thị ', N'Hòa', N'121392034', NULL, NULL, N'Reader (2461).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151391731                ', N'Mai Thị ', N'Hảo', N'121392033', NULL, NULL, N'Reader (2471).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151394033                ', N'Nguyễn Thị ', N'Lượng', N'121392038', NULL, NULL, N'Reader (2481).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151398446                ', N'Đặng Tiến ', N'Mạnh', N'121392039', NULL, NULL, N'Reader (2491).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151400647                ', N'Trần Văn ', N'Hải', N'121392032', NULL, NULL, N'Reader (2501).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151402303                ', N'Vũ Thị ', N'Hòa', N'121392035', NULL, NULL, N'Reader (2511).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151402547                ', N'Nguyễn Văn ', N'Nhật', N'121392044', NULL, NULL, N'Reader (2521).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151402950                ', N'Vũ Thị Kiều ', N'Oanh', N'121392045', NULL, NULL, N'Reader (2531).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151403946                ', N'Nguyễn Huy ', N'Hoàng', N'121392036', NULL, NULL, N'Reader (2541).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151405297                ', N'Phạm Võ ', N'Lân', N'121392037', NULL, NULL, N'Reader (2551).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151405364                ', N'Đào Thị Mai ', N'Quỳnh', N'121392048', NULL, NULL, N'Reader (2561).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151406412                ', N'Trần Thế ', N'Tài', N'121392050', NULL, NULL, N'Reader (2571).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151407034                ', N'Vương Sỹ ', N'Sơn', N'121392049', NULL, NULL, N'Reader (2581).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151408132                ', N'Ngô Minh ', N'Thành', N'121392051', NULL, NULL, N'Reader (2591).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151408994                ', N'Lưu Tuấn ', N'Minh', N'121392041', NULL, NULL, N'Reader (2601).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151409583                ', N'Bùi Thị Thanh ', N'Nga', N'121392043', NULL, NULL, N'Reader (2611).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151410243                ', N'Trần Văn ', N'Thành', N'121392052', NULL, NULL, N'Reader (2621).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151412335                ', N'Hoàng Anh ', N'Tiến', N'121392054', NULL, NULL, N'Reader (2631).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151412876                ', N'Mai Quyết ', N'Tiến', N'121392055', NULL, NULL, N'Reader (2641).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151414754                ', N'Nguyễn Thị ', N'Quyên', N'121392047', NULL, NULL, N'Reader (2651).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151414835                ', N'Trần Mạnh ', N'Tiến', N'121392056', NULL, NULL, N'Reader (2661).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151416132                ', N'Nguyễn Thiên ', N'Toản', N'121392057', NULL, NULL, N'Reader (2671).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151416830                ', N'Vũ Đức ', N'Trọng', N'121392058', NULL, NULL, N'Reader (2681).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151417464                ', N'Nguyễn Minh ', N'Tuấn', N'121392060', NULL, NULL, N'Reader (2691).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151418049                ', N'Nguyễn Văn ', N'Tú', N'121392059', NULL, NULL, N'Reader (2701).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151420110                ', N'Nguyễn Thế ', N'Vinh', N'121392064', NULL, NULL, N'Reader (2711).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151420303                ', N'Đỗ Văn ', N'Tùng', N'121392061', NULL, NULL, N'Reader (2721).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151421964                ', N'Nguyễn Văn ', N'Thảo', N'121392053', NULL, NULL, N'Reader (2731).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151428202                ', N'Nguyễn Văn ', N'Viện', N'121392062', NULL, NULL, N'Reader (2741).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151431154                ', N'Bùi Tuấn ', N'Việt', N'121392063', NULL, NULL, N'Reader (2751).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151553690                ', N'Trần Việt ', N'Anh', N'121392196', NULL, NULL, N'Reader (2761).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'151602414                ', N'Đinh Ngọc ', N'Sơn', N'121392246', NULL, NULL, N'Reader (2771).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160000141                ', N'Đặng Công ', N'Duy', N'121392142', NULL, NULL, N'Reader (2781).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160001120                ', N'Nguyễn Sơn ', N'Dương', N'121392143', NULL, NULL, N'Reader (2791).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160001519                ', N'Nguyễn Mạnh ', N'Cường', N'121392141', NULL, NULL, N'Reader (2801).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160002259                ', N'Mai Thanh ', N'Đạt', N'121392144', NULL, NULL, N'Reader (2811).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160004217                ', N'Trịnh Tiến ', N'Đạt', N'121392146', NULL, NULL, N'Reader (2821).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160005201                ', N'Nguyễn Minh ', N'Đoàn', N'121392147', NULL, NULL, N'Reader (2831).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160006133                ', N'Phan Anh ', N'Đức', N'121392148', NULL, NULL, N'Reader (2841).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160007289                ', N'Trịnh Công ', N'Đức', N'121392149', NULL, NULL, N'Reader (2851).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160007701                ', N'Bùi Huy ', N'Chiến', N'121392138', NULL, NULL, N'Reader (2861).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160009168                ', N'Trần Trường ', N'Giang', N'121392151', NULL, NULL, N'Reader (2871).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160010495                ', N'Trịnh Duy ', N'Đức', N'121392150', NULL, NULL, N'Reader (2881).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160011238                ', N'Trịnh Thị ', N'Hằng', N'121392153', NULL, NULL, N'Reader (2891).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160012225                ', N'Trần Minh ', N'Hiển', N'121392154', NULL, NULL, N'Reader (2901).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160012531                ', N'Nguyễn Thị Thu ', N'Hà', N'121392152', NULL, NULL, N'Reader (2911).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160013147                ', N'Nguyễn Trọng ', N'Hiệp', N'121392155', NULL, NULL, N'Reader (2921).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160014205                ', N'Nguyễn Minh ', N'Hiếu', N'121392156', NULL, NULL, N'Reader (2931).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160014704                ', N'Phạm Tiến ', N'Đạt', N'121392145', NULL, NULL, N'Reader (2941).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160015276                ', N'Vũ Ngọc ', N'Hiếu', N'121392157', NULL, NULL, N'Reader (2951).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160016127                ', N'Nguyễn Thế ', N'Hoàng', N'121392158', NULL, NULL, N'Reader (2961).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160017308                ', N'Bùi Anh ', N'Huấn', N'121392159', NULL, NULL, N'Reader (2971).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160022507                ', N'Hà Văn ', N'Khánh', N'121392162', NULL, NULL, N'Reader (2981).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160024280                ', N'Trần Đăng ', N'Kiên', N'121392166', NULL, NULL, N'Reader (2991).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160025563                ', N'Nguyễn Trung ', N'Kiên', N'121392165', NULL, NULL, N'Reader (3001).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160026188                ', N'Nguyễn Tùng ', N'Lâm', N'121392168', NULL, NULL, N'Reader (3011).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160027242                ', N'Đặng Duy ', N'Linh', N'121392169', NULL, NULL, N'Reader (3021).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160027558                ', N'Trần ', N'Lãm', N'121392167', NULL, NULL, N'Reader (3031).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160029233                ', N'Đào Thị ', N'Lý', N'121392171', NULL, NULL, N'Reader (3041).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160029717                ', N'Đỗ Mạnh ', N'Hùng', N'121392160', NULL, NULL, N'Reader (3051).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160030175                ', N'Vũ Đức ', N'Mạnh', N'121392172', NULL, NULL, N'Reader (3061).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160030543                ', N'Đỗ Thị Thùy ', N'Linh', N'121392170', NULL, NULL, N'Reader (3071).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160030696                ', N'Bùi Quang ', N'Hưng', N'121392161', NULL, NULL, N'Reader (3081).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160031252                ', N'Hà Văn ', N'Nam', N'121392173', NULL, NULL, N'Reader (3091).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160032686                ', N'Đinh Trung ', N'Kiên', N'121392163', NULL, NULL, N'Reader (3101).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160033667                ', N'Nguyễn Thế ', N'Kiên', N'121392164', NULL, NULL, N'Reader (3111).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160034545                ', N'Phạm Phương ', N'Nam', N'121392174', NULL, NULL, N'Reader (3121).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160036512                ', N'Lê Văn ', N'Nghĩa', N'121392176', NULL, NULL, N'Reader (3131).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160038185                ', N'Đào Văn ', N'Quang', N'121392180', NULL, NULL, N'Reader (3141).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160038506                ', N'Phạm Thị Lan ', N'Oanh', N'121392178', NULL, NULL, N'Reader (3151).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160040270                ', N'Đào Quang ', N'Quận', N'121392182', NULL, NULL, N'Reader (3161).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160041179                ', N'Lê Thanh ', N'Sơn', N'121392183', NULL, NULL, N'Reader (3171).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160041569                ', N'Bùi Văn ', N'Quân', N'121392181', NULL, NULL, N'Reader (3181).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160044554                ', N'Nguyễn Hoàng ', N'Sơn', N'121392184', NULL, NULL, N'Reader (3191).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160044708                ', N'Lê Minh ', N'Nghĩa', N'121392175', NULL, NULL, N'Reader (3201).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160045229                ', N'Lưu Văn ', N'Thư', N'121392187', NULL, NULL, N'Reader (3211).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160045490                ', N'Trần Huy ', N'Sơn', N'121392185', NULL, NULL, N'Reader (3221).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160046711                ', N'Nguyễn Hữu ', N'Nghĩa', N'121392177', NULL, NULL, N'Reader (3231).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160047157                ', N'Nguyễn Duy ', N'Toản', N'121392189', NULL, NULL, N'Reader (3241).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160048165                ', N'Phạm Thị Thu ', N'Trang', N'121392190', NULL, NULL, N'Reader (3251).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160048524                ', N'Phạm Văn ', N'Thưởng', N'121392188', NULL, NULL, N'Reader (3261).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160048692                ', N'Nguyễn Tuấn ', N'Phong', N'121392179', NULL, NULL, N'Reader (3271).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160049295                ', N'Lý Xuân ', N'Tú', N'121392191', NULL, NULL, N'Reader (3281).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160053503                ', N'Ôn Văn ', N'Vũ', N'121392193', NULL, NULL, N'Reader (3291).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160055674                ', N'Nguyễn Chính ', N'Thọ', N'121392186', NULL, NULL, N'Reader (3301).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160058169                ', N'Đỗ Quốc ', N'Cường', N'121392200', NULL, NULL, N'Reader (3311).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160059293                ', N'Đỗ Văn ', N'Cường', N'121392201', NULL, NULL, N'Reader (3321).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160061226                ', N'Nguyễn Thế ', N'Duy', N'121392203', NULL, NULL, N'Reader (3331).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160061678                ', N'Đặng Trọng ', N'Tuấn', N'121392192', NULL, NULL, N'Reader (3341).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160062271                ', N'Mai Tất ', N'Duyệt', N'121392204', NULL, NULL, N'Reader (3351).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160062520                ', N'Vi Tiến ', N'Dũng', N'121392202', NULL, NULL, N'Reader (3361).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160063260                ', N'Đỗ Đăng ', N'Đại', N'121392205', NULL, NULL, N'Reader (3371).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160063693                ', N'Nguyễn Hải ', N'Anh', N'121392194', NULL, NULL, N'Reader (3381).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160064215                ', N'Nguyễn Hữu ', N'Đạt', N'121392206', NULL, NULL, N'Reader (3391).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160064702                ', N'Nguyễn Tuấn ', N'Anh', N'121392195', NULL, NULL, N'Reader (3401).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160065277                ', N'Nguyễn Thành ', N'Đông', N'121392207', NULL, NULL, N'Reader (3411).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160066254                ', N'Lê Minh ', N'Đức', N'121392208', NULL, NULL, N'Reader (3421).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160066681                ', N'Nguyễn Việt ', N'Bách', N'121392197', NULL, NULL, N'Reader (3431).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160067676                ', N'Đặng Việt ', N'Bắc', N'121392198', NULL, NULL, N'Reader (3441).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160068698                ', N'Trần Thanh ', N'Cương', N'121392199', NULL, NULL, N'Reader (3451).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160069504                ', N'Nguyễn Minh ', N'Đức', N'121392209', NULL, NULL, N'Reader (3461).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160070508                ', N'Lê Thị ', N'Hà', N'121392210', NULL, NULL, N'Reader (3471).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160071549                ', N'Bùi Hoàng ', N'Hải', N'121392211', NULL, NULL, N'Reader (3481).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160073565                ', N'Hoàng Minh ', N'Hiếu', N'121392213', NULL, NULL, N'Reader (3491).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160074177                ', N'Đỗ Huy ', N'Hoàng', N'121392216', NULL, NULL, N'Reader (3501).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160074528                ', N'Nguyễn Duy ', N'Hiếu', N'121392214', NULL, NULL, N'Reader (3511).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160075542                ', N'Dương Nguyễn Hồng ', N'Hoan', N'121392215', NULL, NULL, N'Reader (3521).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160076143                ', N'Võ Minh ', N'Hoàng', N'121392218', NULL, NULL, N'Reader (3531).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160079525                ', N'Nguyễn Mạnh ', N'Hùng', N'121392219', NULL, NULL, N'Reader (3541).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160080206                ', N'Nguyễn Quang ', N'Huy', N'121392222', NULL, NULL, N'Reader (3551).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160080559                ', N'Phạm Xuân ', N'Hùng', N'121392220', NULL, NULL, N'Reader (3561).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160081189                ', N'Nguyễn Vi ', N'Kiên', N'121392223', NULL, NULL, N'Reader (3571).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160081496                ', N'Bùi Đình ', N'Huy', N'121392221', NULL, NULL, N'Reader (3581).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160081687                ', N'Đỗ Duy ', N'Hiếu', N'121392212', NULL, NULL, N'Reader (3591).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160082186                ', N'Phạm Thị Thùy ', N'Linh', N'121392224', NULL, NULL, N'Reader (3601).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160083309                ', N'Hồ Thành ', N'Long', N'121392225', NULL, NULL, N'Reader (3611).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160086249                ', N'Mạnh Thành ', N'Lợi', N'121392228', NULL, NULL, N'Reader (3621).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160086571                ', N'Nguyễn Văn ', N'Long', N'121392226', NULL, NULL, N'Reader (3631).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160086655                ', N'Nguyễn Duy ', N'Hoàng', N'121392217', NULL, NULL, N'Reader (3641).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160087210                ', N'Vi Quang ', N'Lưu', N'121392229', NULL, NULL, N'Reader (3651).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160090230                ', N'Trần Công ', N'Minh', N'121392232', NULL, NULL, N'Reader (3661).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160091500                ', N'Nguyễn Đức ', N'Minh', N'121392231', NULL, NULL, N'Reader (3671).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160092121                ', N'Bùi Thanh ', N'Nam', N'121392234', NULL, NULL, N'Reader (3681).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160093267                ', N'Đoàn Quốc ', N'Nam', N'121392235', NULL, NULL, N'Reader (3691).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160095264                ', N'Nguyễn Thị ', N'Ngọc', N'121392237', NULL, NULL, N'Reader (3701).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160096302                ', N'Trần Thị ', N'Ngọc', N'121392238', NULL, NULL, N'Reader (3711).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160096669                ', N'Vũ Thành ', N'Long', N'121392227', NULL, NULL, N'Reader (3721).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160097125                ', N'Trần Thị ', N'Nhẫn', N'121392239', NULL, NULL, N'Reader (3731).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160098192                ', N'Phạm Ngọc Việt ', N'Pháp', N'121392240', NULL, NULL, N'Reader (3741).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160099290                ', N'Lã Tiến ', N'Phong', N'121392241', NULL, NULL, N'Reader (3751).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160099718                ', N'Nguyễn Công ', N'Minh', N'121392230', NULL, NULL, N'Reader (3761).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160102150                ', N'Mai Xuân ', N'Quang', N'121392244', NULL, NULL, N'Reader (3771).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160102556                ', N'Đỗ Trần ', N'Phương', N'121392242', NULL, NULL, N'Reader (3781).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160102683                ', N'Nguyễn Thảo ', N'My', N'121392233', NULL, NULL, N'Reader (3791).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160103234                ', N'Nguyễn Văn ', N'Quân', N'121392245', NULL, NULL, N'Reader (3801).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160105661                ', N'Nguyễn Trung ', N'Nghĩa', N'121392236', NULL, NULL, N'Reader (3811).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160106180                ', N'Lâm Văn ', N'Tâm', N'121392248', NULL, NULL, N'Reader (3821).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160107154                ', N'Hoàng Văn ', N'Thái', N'121392249', NULL, NULL, N'Reader (3831).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160107492                ', N'Phạm Hoàng ', N'Sơn', N'121392247', NULL, NULL, N'Reader (3841).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160109284                ', N'Phạm Nguyên ', N'Thành', N'121392251', NULL, NULL, N'Reader (3851).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160110159                ', N'Vũ Quang ', N'Thiện', N'121392252', NULL, NULL, N'Reader (3861).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160110517                ', N'Hoàng Hoa ', N'Thám', N'121392250', NULL, NULL, N'Reader (3871).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160111239                ', N'Nguyễn Đăng ', N'Thịnh', N'121392253', NULL, NULL, N'Reader (3881).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160112709                ', N'Đào Mạnh ', N'Quang', N'121392243', NULL, NULL, N'Reader (3891).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160113305                ', N'Thiều Chí ', N'Thông', N'121392255', NULL, NULL, N'Reader (3901).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160115202                ', N'Lê Anh ', N'Tiến', N'121392257', NULL, NULL, N'Reader (3911).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160116246                ', N'Khương Văn ', N'Toán', N'121392258', NULL, NULL, N'Reader (3921).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160117297                ', N'Trịnh Xuân ', N'Trí', N'121392259', NULL, NULL, N'Reader (3931).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160118220                ', N'Ngô Thế ', N'Tú', N'121392260', NULL, NULL, N'Reader (3941).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160119274                ', N'Đinh Châu ', N'Tuấn', N'121392261', NULL, NULL, N'Reader (3951).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160123705                ', N'Nguyễn Thế ', N'Thông', N'121392254', NULL, NULL, N'Reader (3961).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160125712                ', N'Mầu Thị ', N'Thúy', N'121392256', NULL, NULL, N'Reader (3971).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160925194                ', N'Nguyễn Quang ', N'Anh', N'121392067', NULL, NULL, N'Reader (3981).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160926272                ', N'Trương Trọng Tiến ', N'Anh', N'121392068', NULL, NULL, N'Reader (3991).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160926557                ', N'Lê Duy ', N'Anh', N'121392066', NULL, NULL, N'Reader (4001).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160927269                ', N'Ninh Quang ', N'Chính', N'121392069', NULL, NULL, N'Reader (4011).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160930275                ', N'Lưu Tiến ', N'Dũng', N'121392072', NULL, NULL, N'Reader (4021).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160930527                ', N'Đinh Văn ', N'Cường', N'121392070', NULL, NULL, N'Reader (4031).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160931572                ', N'Nguyễn Văn ', N'Cường', N'121392071', NULL, NULL, N'Reader (4041).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160933204                ', N'Doãn Đình ', N'Duy', N'121392075', NULL, NULL, N'Reader (4051).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160934688                ', N'Đào Mai ', N'Anh', N'121392065', NULL, NULL, N'Reader (4061).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160936265                ', N'Lê Thành ', N'Đạt', N'121392078', NULL, NULL, N'Reader (4071).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160936522                ', N'Nguyễn Quang ', N'Duy', N'121392076', NULL, NULL, N'Reader (4081).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160937122                ', N'Nguyễn Tiến ', N'Đạt', N'121392079', NULL, NULL, N'Reader (4091).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160938298                ', N'Hoàng Nguyên ', N'Đức', N'121392080', NULL, NULL, N'Reader (4101).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160942303                ', N'Nguyễn Văn ', N'Hảo', N'121392084', NULL, NULL, N'Reader (4111).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160942514                ', N'Nguyễn Minh ', N'Đức', N'121392082', NULL, NULL, N'Reader (4121).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160942685                ', N'Ngô Anh ', N'Dũng', N'121392073', NULL, NULL, N'Reader (4131).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160943649                ', N'Nguyễn Minh ', N'Dũng', N'121392074', NULL, NULL, N'Reader (4141).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160944251                ', N'Trần Văn ', N'Hiện', N'121392086', NULL, NULL, N'Reader (4151).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160945285                ', N'Đào Ngọc ', N'Hiển', N'121392085', NULL, NULL, N'Reader (4161).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160946190                ', N'Bùi Văn ', N'Hiếu', N'121392088', NULL, NULL, N'Reader (4171).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160946700                ', N'Phạm Ngọc ', N'Duy', N'121392077', NULL, NULL, N'Reader (4181).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160947493                ', N'Trần Minh ', N'Hiệp', N'121392087', NULL, NULL, N'Reader (4191).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160948306                ', N'Nguyễn Trung ', N'Hiếu', N'121392090', NULL, NULL, N'Reader (4201).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160949232                ', N'Lương Thị Thu ', N'Hòa', N'121392091', NULL, NULL, N'Reader (4211).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160949499                ', N'Đỗ Minh ', N'Hiếu', N'121392089', NULL, NULL, N'Reader (4221).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160950256                ', N'Đỗ Mạnh ', N'Hoàn', N'121392092', NULL, NULL, N'Reader (4231).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160950677                ', N'Nguyễn Anh ', N'Đức', N'121392081', NULL, NULL, N'Reader (4241).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160951241                ', N'Lù Văn ', N'Hoàn', N'121392093', NULL, NULL, N'Reader (4251).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160952656                ', N'Vũ Tuấn ', N'Giang', N'121392083', NULL, NULL, N'Reader (4261).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160954163                ', N'Nguyễn Quang ', N'Huy', N'121392096', NULL, NULL, N'Reader (4271).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160955182                ', N'Đàm Thị Khánh ', N'Huyền', N'121392097', NULL, NULL, N'Reader (4281).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160955561                ', N'Nguyễn Minh ', N'Hoàng', N'121392095', NULL, NULL, N'Reader (4291).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160956262                ', N'Ngô Gia ', N'Hưng', N'121392098', NULL, NULL, N'Reader (4301).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160959566                ', N'Lê Trọng ', N'Khôi', N'121392099', NULL, NULL, N'Reader (4311).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160960278                ', N'Đỗ Ngọc ', N'Long', N'121392102', NULL, NULL, N'Reader (4321).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160962167                ', N'Hoàng Văn ', N'Nam', N'121392104', NULL, NULL, N'Reader (4331).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160963115                ', N'Vũ Hải ', N'Nam', N'121392105', NULL, NULL, N'Reader (4341).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160963694                ', N'Nguyễn Huy ', N'Hoàng', N'121392094', NULL, NULL, N'Reader (4351).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160964247                ', N'Nguyễn Tiến ', N'Nghiệp', N'121392106', NULL, NULL, N'Reader (4361).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160965228                ', N'Phạm Gia ', N'Phong', N'121392107', NULL, NULL, N'Reader (4371).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160966151                ', N'Phan Ngô ', N'Phước', N'121392108', NULL, NULL, N'Reader (4381).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160967140                ', N'Lưu Thu ', N'Phương', N'121392109', NULL, NULL, N'Reader (4391).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160969211                ', N'Nguyễn Tiến ', N'Quân', N'121392111', NULL, NULL, N'Reader (4401).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160969682                ', N'Nguyễn Huy ', N'Khôi', N'121392100', NULL, NULL, N'Reader (4411).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160970237                ', N'Phạm Văn ', N'Quyết', N'121392112', NULL, NULL, N'Reader (4421).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160970710                ', N'Nguyễn Tùng ', N'Lâm', N'121392101', NULL, NULL, N'Reader (4431).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160972156                ', N'Đoàn Ngọc ', N'Tài', N'121392114', NULL, NULL, N'Reader (4441).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160972664                ', N'Hoàng Thị Khánh ', N'Ly', N'121392103', NULL, NULL, N'Reader (4451).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160973510                ', N'Nguyễn Hoài ', N'Sơn', N'121392113', NULL, NULL, N'Reader (4461).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160974178                ', N'Lê Văn ', N'Thái', N'121392116', NULL, NULL, N'Reader (4471).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160975287                ', N'Dương Đức ', N'Thắng', N'121392117', NULL, NULL, N'Reader (4481).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160975538                ', N'Phạm Văn ', N'Tấn', N'121392115', NULL, NULL, N'Reader (4491).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160976126                ', N'Nguyễn Hữu ', N'Thắng', N'121392118', NULL, NULL, N'Reader (4501).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160979518                ', N'Trần Xuân ', N'Thắng', N'121392119', NULL, NULL, N'Reader (4511).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160979714                ', N'Phan Hồng ', N'Quang', N'121392110', NULL, NULL, N'Reader (4521).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160980130                ', N'Nguyễn Thị ', N'Tính', N'121392122', NULL, NULL, N'Reader (4531).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160981172                ', N'Nguyễn Bá ', N'Trường', N'121392123', NULL, NULL, N'Reader (4541).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160982187                ', N'Vũ Huy ', N'Trưởng', N'121392124', NULL, NULL, N'Reader (4551).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160983291                ', N'Nguyễn Tiến ', N'Tú', N'121392125', NULL, NULL, N'Reader (4561).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160984216                ', N'Nguyễn Nhật ', N'Tùng', N'121392126', NULL, NULL, N'Reader (4571).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160985207                ', N'Đỗ Thị ', N'Yến', N'121392127', NULL, NULL, N'Reader (4581).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160986208                ', N'Cù Tuấn ', N'Anh', N'121392128', NULL, NULL, N'Reader (4591).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160987263                ', N'Đặng Trung ', N'Anh', N'121392129', NULL, NULL, N'Reader (4601).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160989266                ', N'Nguyễn Quang ', N'Anh', N'121392131', NULL, NULL, N'Reader (4611).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160989703                ', N'Nguyễn Thanh ', N'Thịnh', N'121392120', NULL, NULL, N'Reader (4621).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160990152                ', N'Nguyễn Việt ', N'Anh', N'121392132', NULL, NULL, N'Reader (4631).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160990706                ', N'Đặng Trần ', N'Tiến', N'121392121', NULL, NULL, N'Reader (4641).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160991273                ', N'Vũ Tuấn ', N'Anh', N'121392133', NULL, NULL, N'Reader (4651).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160993304                ', N'Nguyễn Chí ', N'Bảo', N'121392135', NULL, NULL, N'Reader (4661).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160994124                ', N'Phạm Văn ', N'Bằng', N'121392136', NULL, NULL, N'Reader (4671).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160994515                ', N'Lê Xuân ', N'Bảo', N'121392134', NULL, NULL, N'Reader (4681).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160995191                ', N'Lê Quý ', N'Cần', N'121392137', NULL, NULL, N'Reader (4691).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160997292                ', N'Đỗ Duy ', N'Chiến', N'121392139', NULL, NULL, N'Reader (4701).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160998301                ', N'Lê Minh ', N'Chính', N'121392140', NULL, NULL, N'Reader (4711).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'160999684                ', N'Hàn Việt ', N'Anh', N'121392130', NULL, NULL, N'Reader (4721).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'5155260                  ', N'Đinh Thị ', N'Hải', N'121392269', NULL, NULL, N'Reader (4731).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'5155271                  ', N'Nguyễn Thị Lệ  ', N'Hằng', N'121392270', NULL, NULL, N'Reader (4741).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'5155283                  ', N'Nguyễn Văn  ', N'Hiển', N'121392271', NULL, NULL, N'Reader (4751).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'5155294                  ', N'Vũ Công  ', N'Hoan', N'121392272', NULL, NULL, N'Reader (4761).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'5155305                  ', N'Bùi Thế ', N'Hoàn', N'121392273', NULL, NULL, N'Reader (4771).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'5155317                  ', N'Phạm Thị   ', N'Hương', N'121392274', NULL, NULL, N'Reader (4781).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'5155328                  ', N'Nguyễn Quốc  ', N'Huy', N'121392275', NULL, NULL, N'Reader (4791).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'5155339                  ', N'Nguyễn Quốc  ', N'Huy', N'121392276', NULL, NULL, N'Reader (4801).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'5155350                  ', N'Bùi Văn  ', N'Khánh', N'121392277', NULL, NULL, N'Reader (4811).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'5155362                  ', N'Trần Thị Diệu ', N'Linh', N'121392278', NULL, NULL, N'Reader (4821).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'5155374                  ', N'Đỗ Thị ', N'Nga', N'121392279', NULL, NULL, N'Reader (4831).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'5155386                  ', N'Phạm Văn ', N'Ninh', N'121392280', NULL, NULL, N'Reader (4841).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'5155397                  ', N'Phạm Ngọc Thanh  ', N'Quang', N'121392281', NULL, NULL, N'Reader (4851).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'5155408                  ', N'Đào Thị ', N'Quyên', N'121392282', NULL, NULL, N'Reader (4861).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'5155419                  ', N'Lê Văn ', N'Tiến', N'121392283', NULL, NULL, N'Reader (4871).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'5155430                  ', N'Mai Xuân ', N'Tính', N'121392284', NULL, NULL, N'Reader (4881).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'5155441                  ', N'Nguyễn Hoài ', N'Trang', N'121392285', NULL, NULL, N'Reader (4891).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'5155452                  ', N'Đào Xuân  ', N'Trường', N'121392286', NULL, NULL, N'Reader (4901).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'5155463                  ', N'Đỗ Tuấn ', N'Tú', N'121392287', NULL, NULL, N'Reader (4911).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'5155681                  ', N'Nguyễn Đức ', N'Anh', N'121392262', NULL, NULL, N'Reader (4921).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'5155692                  ', N'Nguyễn Tuấn ', N'Anh', N'121392263', NULL, NULL, N'Reader (4931).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'5155703                  ', N'Phạm Thị Kim ', N'Anh', N'121392264', NULL, NULL, N'Reader (4941).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'5155714                  ', N'Nguyễn Thu ', N'Chà', N'121392265', NULL, NULL, N'Reader (4951).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'5155725                  ', N'Nguyễn Thị Việt ', N'Chinh', N'121392266', NULL, NULL, N'Reader (4961).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'5155736                  ', N'Trần Mạnh ', N'Cường', N'121392267', NULL, NULL, N'Reader (4971).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'5155748                  ', N'Nguyễn Ngọc ', N'Đức  ', N'121392268', NULL, NULL, N'Reader (4981).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'8814159                  ', N'Hoàng Thị ', N'Giang', N'121391857', NULL, NULL, N'Reader (4991).jpg')
GO
INSERT [dbo].[tDocGia] ([MaDG], [HoDem], [TenDG], [SoCMND], [NoiCongTac], [Ngaysinh], [Anh]) VALUES (N'881771043                ', N'Hoàng Thị ', N'Danh', N'121392025', NULL, NULL, N'Reader (5001).jpg')
GO
INSERT [dbo].[tLoaiSach] ([MaLoai], [TenLoai]) VALUES (N'00001                    ', N'Sách văn học')
GO
INSERT [dbo].[tLoaiSach] ([MaLoai], [TenLoai]) VALUES (N'00002                    ', N'Sách kinh tế')
GO
INSERT [dbo].[tLoaiSach] ([MaLoai], [TenLoai]) VALUES (N'00003                    ', N'Sách thiếu nhi')
GO
INSERT [dbo].[tLoaiSach] ([MaLoai], [TenLoai]) VALUES (N'00004                    ', N'Sách kỹ năng - Sống đẹp')
GO
INSERT [dbo].[tLoaiSach] ([MaLoai], [TenLoai]) VALUES (N'00005                    ', N'Sách Bà mẹ - Em bé')
GO
INSERT [dbo].[tLoaiSach] ([MaLoai], [TenLoai]) VALUES (N'00006                    ', N'Sách Tham Khảo')
GO
INSERT [dbo].[tLoaiSach] ([MaLoai], [TenLoai]) VALUES (N'00007                    ', N'Sách Học Ngoại Ngữ')
GO
INSERT [dbo].[tLoaiSach] ([MaLoai], [TenLoai]) VALUES (N'00008                    ', N'Từ ĐiểnTruyện Tranh, Manga, Comic')
GO
INSERT [dbo].[tLoaiSach] ([MaLoai], [TenLoai]) VALUES (N'00009                    ', N'Giáo Trình Đại Học - Cao Đẳng')
GO
INSERT [dbo].[tLoaiSach] ([MaLoai], [TenLoai]) VALUES (N'00010                    ', N'Sách Kiến Thức Tổng Hợp')
GO
INSERT [dbo].[tLoaiSach] ([MaLoai], [TenLoai]) VALUES (N'00011                    ', N'Sách Lịch sử')
GO
INSERT [dbo].[tLoaiSach] ([MaLoai], [TenLoai]) VALUES (N'00012                    ', N'Sách Khoa Học - Kỹ Thuật')
GO
INSERT [dbo].[tLoaiSach] ([MaLoai], [TenLoai]) VALUES (N'00013                    ', N'Điện Ảnh - Nhạc - Họa')
GO
INSERT [dbo].[tLoaiSach] ([MaLoai], [TenLoai]) VALUES (N'00014                    ', N'Sách Tôn Giáo - Tâm Linh')
GO
INSERT [dbo].[tLoaiSach] ([MaLoai], [TenLoai]) VALUES (N'00015                    ', N'Sách Văn Hoá - Du Lịch')
GO
INSERT [dbo].[tLoaiSach] ([MaLoai], [TenLoai]) VALUES (N'00016                    ', N'Sách Chính Trị - Pháp Lý')
GO
INSERT [dbo].[tLoaiSach] ([MaLoai], [TenLoai]) VALUES (N'00017                    ', N'Sách Nông - Lâm - Ngư Nghiệp')
GO
INSERT [dbo].[tLoaiSach] ([MaLoai], [TenLoai]) VALUES (N'00018                    ', N'Sách Công Nghệ Thông Tin')
GO
INSERT [dbo].[tLoaiSach] ([MaLoai], [TenLoai]) VALUES (N'00019                    ', N'Sách Y HọcTạp Chí - Catalogue')
GO
INSERT [dbo].[tLoaiSach] ([MaLoai], [TenLoai]) VALUES (N'00020                    ', N'Sách Tâm lý - Giới tính')
GO
INSERT [dbo].[tLoaiSach] ([MaLoai], [TenLoai]) VALUES (N'00021                    ', N'Sách Thường Thức - Đời Sống')
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'130063400107             ', N'1695400107               ', NULL, CAST(N'2015-04-17T00:00:00.000' AS DateTime), CAST(N'2015-10-17T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'130063400107             ', N'27524600370              ', NULL, CAST(N'2016-01-05T00:00:00.000' AS DateTime), CAST(N'2016-07-05T00:00:00.000' AS DateTime), CAST(N'2016-07-05T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'130063400107             ', N'27634200350              ', NULL, CAST(N'2015-12-16T00:00:00.000' AS DateTime), CAST(N'2016-06-16T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'130095300061             ', N'25820400061              ', NULL, CAST(N'2015-03-02T00:00:00.000' AS DateTime), CAST(N'2015-09-02T00:00:00.000' AS DateTime), CAST(N'2015-09-02T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'130104800111             ', N'15554100111              ', NULL, CAST(N'2015-04-21T00:00:00.000' AS DateTime), CAST(N'2015-10-21T00:00:00.000' AS DateTime), CAST(N'2015-10-21T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'130104800111             ', N'27632000354              ', NULL, CAST(N'2015-12-20T00:00:00.000' AS DateTime), CAST(N'2016-06-20T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'130124200063             ', N'25430400063              ', NULL, CAST(N'2015-03-04T00:00:00.000' AS DateTime), CAST(N'2015-09-04T00:00:00.000' AS DateTime), CAST(N'2015-09-04T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'130193900066             ', N'24616600066              ', NULL, CAST(N'2015-03-07T00:00:00.000' AS DateTime), CAST(N'2015-09-07T00:00:00.000' AS DateTime), CAST(N'2015-09-07T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'130279000072             ', N'23645900072              ', NULL, CAST(N'2015-03-13T00:00:00.000' AS DateTime), CAST(N'2015-09-13T00:00:00.000' AS DateTime), CAST(N'2015-09-13T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'130403800016             ', N'27628400016              ', NULL, CAST(N'2015-01-16T00:00:00.000' AS DateTime), CAST(N'2015-07-16T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'130499900084             ', N'22222700084              ', NULL, CAST(N'2015-03-25T00:00:00.000' AS DateTime), CAST(N'2015-09-25T00:00:00.000' AS DateTime), CAST(N'2015-09-25T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'130812900196             ', N'27585700155              ', NULL, CAST(N'2015-06-04T00:00:00.000' AS DateTime), CAST(N'2015-12-04T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'130825100198             ', N'27576400157              ', NULL, CAST(N'2015-06-06T00:00:00.000' AS DateTime), CAST(N'2015-12-06T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'130910900202             ', N'27518700161              ', NULL, CAST(N'2015-06-10T00:00:00.000' AS DateTime), CAST(N'2015-12-10T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'131188800118             ', N'1491300118               ', NULL, CAST(N'2015-04-28T00:00:00.000' AS DateTime), CAST(N'2015-10-28T00:00:00.000' AS DateTime), CAST(N'2015-10-28T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'131188800118             ', N'27609100361              ', NULL, CAST(N'2015-12-27T00:00:00.000' AS DateTime), CAST(N'2016-06-27T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140002800119             ', N'1473900119               ', NULL, CAST(N'2015-04-29T00:00:00.000' AS DateTime), CAST(N'2015-10-29T00:00:00.000' AS DateTime), CAST(N'2015-10-29T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140002800119             ', N'27603000362              ', NULL, CAST(N'2015-12-28T00:00:00.000' AS DateTime), CAST(N'2016-06-28T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140013300059             ', N'27045400059              ', NULL, CAST(N'2015-02-28T00:00:00.000' AS DateTime), CAST(N'2015-08-28T00:00:00.000' AS DateTime), CAST(N'2015-08-28T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140014200117             ', N'1491400117               ', NULL, CAST(N'2015-04-27T00:00:00.000' AS DateTime), CAST(N'2015-10-27T00:00:00.000' AS DateTime), CAST(N'2015-10-27T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140014200117             ', N'27610300360              ', NULL, CAST(N'2015-12-26T00:00:00.000' AS DateTime), CAST(N'2016-06-26T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140015600001             ', N'4920600001               ', NULL, CAST(N'2015-01-01T00:00:00.000' AS DateTime), CAST(N'2015-07-01T00:00:00.000' AS DateTime), CAST(N'2015-07-01T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140025900002             ', N'4455100002               ', NULL, CAST(N'2015-01-02T00:00:00.000' AS DateTime), CAST(N'2015-07-02T00:00:00.000' AS DateTime), CAST(N'2015-07-02T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140026400114             ', N'15225400114              ', NULL, CAST(N'2015-04-24T00:00:00.000' AS DateTime), CAST(N'2015-10-24T00:00:00.000' AS DateTime), CAST(N'2015-10-24T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140026400114             ', N'27625900357              ', NULL, CAST(N'2015-12-23T00:00:00.000' AS DateTime), CAST(N'2016-06-23T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140037600003             ', N'3541900003               ', NULL, CAST(N'2015-01-03T00:00:00.000' AS DateTime), CAST(N'2015-07-03T00:00:00.000' AS DateTime), CAST(N'2015-07-03T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140057000004             ', N'3344700004               ', NULL, CAST(N'2015-01-04T00:00:00.000' AS DateTime), CAST(N'2015-07-04T00:00:00.000' AS DateTime), CAST(N'2015-07-04T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140059900120             ', N'1463400120               ', NULL, CAST(N'2015-04-30T00:00:00.000' AS DateTime), CAST(N'2015-10-30T00:00:00.000' AS DateTime), CAST(N'2015-10-30T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140059900120             ', N'27601900363              ', NULL, CAST(N'2015-12-29T00:00:00.000' AS DateTime), CAST(N'2016-06-29T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140070900005             ', N'3310600005               ', NULL, CAST(N'2015-01-05T00:00:00.000' AS DateTime), CAST(N'2015-07-05T00:00:00.000' AS DateTime), CAST(N'2015-07-05T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140079600060             ', N'27044500060              ', NULL, CAST(N'2015-03-01T00:00:00.000' AS DateTime), CAST(N'2015-09-01T00:00:00.000' AS DateTime), CAST(N'2015-09-01T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140082000006             ', N'3310200006               ', NULL, CAST(N'2015-01-06T00:00:00.000' AS DateTime), CAST(N'2015-07-06T00:00:00.000' AS DateTime), CAST(N'2015-07-06T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140088400007             ', N'3150100007               ', NULL, CAST(N'2015-01-07T00:00:00.000' AS DateTime), CAST(N'2015-07-07T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140093100062             ', N'25686200062              ', NULL, CAST(N'2015-03-03T00:00:00.000' AS DateTime), CAST(N'2015-09-03T00:00:00.000' AS DateTime), CAST(N'2015-09-03T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140119100176             ', N'3310200135               ', NULL, CAST(N'2015-05-15T00:00:00.000' AS DateTime), CAST(N'2015-11-15T00:00:00.000' AS DateTime), CAST(N'2015-11-15T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140127800008             ', N'3149800008               ', NULL, CAST(N'2015-01-08T00:00:00.000' AS DateTime), CAST(N'2015-07-08T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140134200064             ', N'25178500064              ', NULL, CAST(N'2015-03-05T00:00:00.000' AS DateTime), CAST(N'2015-09-05T00:00:00.000' AS DateTime), CAST(N'2015-09-05T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140138800009             ', N'3123200009               ', NULL, CAST(N'2015-01-09T00:00:00.000' AS DateTime), CAST(N'2015-07-09T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140143700065             ', N'24814200065              ', NULL, CAST(N'2015-03-06T00:00:00.000' AS DateTime), CAST(N'2015-09-06T00:00:00.000' AS DateTime), CAST(N'2015-09-06T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140148100010             ', N'3123100010               ', NULL, CAST(N'2015-01-10T00:00:00.000' AS DateTime), CAST(N'2015-07-10T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140181400067             ', N'24545300067              ', NULL, CAST(N'2015-03-08T00:00:00.000' AS DateTime), CAST(N'2015-09-08T00:00:00.000' AS DateTime), CAST(N'2015-09-08T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140188700011             ', N'27634200011              ', NULL, CAST(N'2015-01-11T00:00:00.000' AS DateTime), CAST(N'2015-07-11T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140190800068             ', N'24352600068              ', NULL, CAST(N'2015-03-09T00:00:00.000' AS DateTime), CAST(N'2015-09-09T00:00:00.000' AS DateTime), CAST(N'2015-09-09T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140204000012             ', N'27634000012              ', NULL, CAST(N'2015-01-12T00:00:00.000' AS DateTime), CAST(N'2015-07-12T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140204100069             ', N'23897700069              ', NULL, CAST(N'2015-03-10T00:00:00.000' AS DateTime), CAST(N'2015-09-10T00:00:00.000' AS DateTime), CAST(N'2015-09-10T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140209700070             ', N'2386200070               ', NULL, CAST(N'2015-03-11T00:00:00.000' AS DateTime), CAST(N'2015-09-11T00:00:00.000' AS DateTime), CAST(N'2015-09-11T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140244600071             ', N'23736900071              ', NULL, CAST(N'2015-03-12T00:00:00.000' AS DateTime), CAST(N'2015-09-12T00:00:00.000' AS DateTime), CAST(N'2015-09-12T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140258300073             ', N'23410900073              ', NULL, CAST(N'2015-03-14T00:00:00.000' AS DateTime), CAST(N'2015-09-14T00:00:00.000' AS DateTime), CAST(N'2015-09-14T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140273700074             ', N'23030800074              ', NULL, CAST(N'2015-03-15T00:00:00.000' AS DateTime), CAST(N'2015-09-15T00:00:00.000' AS DateTime), CAST(N'2015-09-15T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140273900014             ', N'27632100014              ', NULL, CAST(N'2015-01-14T00:00:00.000' AS DateTime), CAST(N'2015-07-14T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140291400075             ', N'22864500075              ', NULL, CAST(N'2015-03-16T00:00:00.000' AS DateTime), CAST(N'2015-09-16T00:00:00.000' AS DateTime), CAST(N'2015-09-16T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140299800015             ', N'27632000015              ', NULL, CAST(N'2015-01-15T00:00:00.000' AS DateTime), CAST(N'2015-07-15T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140310900076             ', N'22863700076              ', NULL, CAST(N'2015-03-17T00:00:00.000' AS DateTime), CAST(N'2015-09-17T00:00:00.000' AS DateTime), CAST(N'2015-09-17T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140322100077             ', N'2278000077               ', NULL, CAST(N'2015-03-18T00:00:00.000' AS DateTime), CAST(N'2015-09-18T00:00:00.000' AS DateTime), CAST(N'2015-09-18T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140355000017             ', N'27626800017              ', NULL, CAST(N'2015-01-17T00:00:00.000' AS DateTime), CAST(N'2015-07-17T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140359600079             ', N'22668500079              ', NULL, CAST(N'2015-03-20T00:00:00.000' AS DateTime), CAST(N'2015-09-20T00:00:00.000' AS DateTime), CAST(N'2015-09-20T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140367800018             ', N'27625900018              ', NULL, CAST(N'2015-01-18T00:00:00.000' AS DateTime), CAST(N'2015-07-18T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140369300080             ', N'22620000080              ', NULL, CAST(N'2015-03-21T00:00:00.000' AS DateTime), CAST(N'2015-09-21T00:00:00.000' AS DateTime), CAST(N'2015-09-21T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140377600021             ', N'27610300021              ', NULL, CAST(N'2015-01-21T00:00:00.000' AS DateTime), CAST(N'2015-07-21T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140384100081             ', N'22586500081              ', NULL, CAST(N'2015-03-22T00:00:00.000' AS DateTime), CAST(N'2015-09-22T00:00:00.000' AS DateTime), CAST(N'2015-09-22T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140391700022             ', N'27609100022              ', NULL, CAST(N'2015-01-22T00:00:00.000' AS DateTime), CAST(N'2015-07-22T00:00:00.000' AS DateTime), CAST(N'2015-07-22T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140398300082             ', N'22340500082              ', NULL, CAST(N'2015-03-23T00:00:00.000' AS DateTime), CAST(N'2015-09-23T00:00:00.000' AS DateTime), CAST(N'2015-09-23T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140411200020             ', N'27619100020              ', NULL, CAST(N'2015-01-20T00:00:00.000' AS DateTime), CAST(N'2015-07-20T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140427700083             ', N'22249000083              ', NULL, CAST(N'2015-03-24T00:00:00.000' AS DateTime), CAST(N'2015-09-24T00:00:00.000' AS DateTime), CAST(N'2015-09-24T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140438600023             ', N'27603000023              ', NULL, CAST(N'2015-01-23T00:00:00.000' AS DateTime), CAST(N'2015-07-23T00:00:00.000' AS DateTime), CAST(N'2015-07-23T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140439900085             ', N'21248300085              ', NULL, CAST(N'2015-03-26T00:00:00.000' AS DateTime), CAST(N'2015-09-26T00:00:00.000' AS DateTime), CAST(N'2015-09-26T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140445300086             ', N'20666800086              ', NULL, CAST(N'2015-03-27T00:00:00.000' AS DateTime), CAST(N'2015-09-27T00:00:00.000' AS DateTime), CAST(N'2015-09-27T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140459300024             ', N'27601900024              ', NULL, CAST(N'2015-01-24T00:00:00.000' AS DateTime), CAST(N'2015-07-24T00:00:00.000' AS DateTime), CAST(N'2015-07-24T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140473000026             ', N'27585700026              ', NULL, CAST(N'2015-01-26T00:00:00.000' AS DateTime), CAST(N'2015-07-26T00:00:00.000' AS DateTime), CAST(N'2015-07-26T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140492400027             ', N'27580700027              ', NULL, CAST(N'2015-01-27T00:00:00.000' AS DateTime), CAST(N'2015-07-27T00:00:00.000' AS DateTime), CAST(N'2015-07-27T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140496900087             ', N'1826100087               ', NULL, CAST(N'2015-03-28T00:00:00.000' AS DateTime), CAST(N'2015-09-28T00:00:00.000' AS DateTime), CAST(N'2015-09-28T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140511100088             ', N'1772200088               ', NULL, CAST(N'2015-03-29T00:00:00.000' AS DateTime), CAST(N'2015-09-29T00:00:00.000' AS DateTime), CAST(N'2015-09-29T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140513600028             ', N'27576400028              ', NULL, CAST(N'2015-01-28T00:00:00.000' AS DateTime), CAST(N'2015-07-28T00:00:00.000' AS DateTime), CAST(N'2015-07-28T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140534700029             ', N'27571300029              ', NULL, CAST(N'2015-01-29T00:00:00.000' AS DateTime), CAST(N'2015-07-29T00:00:00.000' AS DateTime), CAST(N'2015-07-29T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140540100030             ', N'27558900030              ', NULL, CAST(N'2015-01-30T00:00:00.000' AS DateTime), CAST(N'2015-07-30T00:00:00.000' AS DateTime), CAST(N'2015-07-30T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140540200089             ', N'1763300089               ', NULL, CAST(N'2015-03-30T00:00:00.000' AS DateTime), CAST(N'2015-09-30T00:00:00.000' AS DateTime), CAST(N'2015-09-30T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140550300031             ', N'27524600031              ', NULL, CAST(N'2015-01-31T00:00:00.000' AS DateTime), CAST(N'2015-07-31T00:00:00.000' AS DateTime), CAST(N'2015-07-31T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140561200032             ', N'27518700032              ', NULL, CAST(N'2015-02-01T00:00:00.000' AS DateTime), CAST(N'2015-08-01T00:00:00.000' AS DateTime), CAST(N'2015-08-01T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140562000090             ', N'1760700090               ', NULL, CAST(N'2015-03-31T00:00:00.000' AS DateTime), CAST(N'2015-09-30T00:00:00.000' AS DateTime), CAST(N'2015-09-30T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140580600033             ', N'27518500033              ', NULL, CAST(N'2015-02-02T00:00:00.000' AS DateTime), CAST(N'2015-08-02T00:00:00.000' AS DateTime), CAST(N'2015-08-02T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140597200091             ', N'1758000091               ', NULL, CAST(N'2015-04-01T00:00:00.000' AS DateTime), CAST(N'2015-10-01T00:00:00.000' AS DateTime), CAST(N'2015-10-01T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140599000034             ', N'27501800034              ', NULL, CAST(N'2015-02-03T00:00:00.000' AS DateTime), CAST(N'2015-08-03T00:00:00.000' AS DateTime), CAST(N'2015-08-03T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140614900092             ', N'1757400092               ', NULL, CAST(N'2015-04-02T00:00:00.000' AS DateTime), CAST(N'2015-10-02T00:00:00.000' AS DateTime), CAST(N'2015-10-02T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140617900035             ', N'27463600035              ', NULL, CAST(N'2015-02-04T00:00:00.000' AS DateTime), CAST(N'2015-08-04T00:00:00.000' AS DateTime), CAST(N'2015-08-04T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140627300036             ', N'27461800036              ', NULL, CAST(N'2015-02-05T00:00:00.000' AS DateTime), CAST(N'2015-08-05T00:00:00.000' AS DateTime), CAST(N'2015-08-05T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140640900037             ', N'27461600037              ', NULL, CAST(N'2015-02-06T00:00:00.000' AS DateTime), CAST(N'2015-08-06T00:00:00.000' AS DateTime), CAST(N'2015-08-06T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140655400094             ', N'1757100094               ', NULL, CAST(N'2015-04-04T00:00:00.000' AS DateTime), CAST(N'2015-10-04T00:00:00.000' AS DateTime), CAST(N'2015-10-04T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140663700038             ', N'27461100038              ', NULL, CAST(N'2015-02-07T00:00:00.000' AS DateTime), CAST(N'2015-08-07T00:00:00.000' AS DateTime), CAST(N'2015-08-07T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140697000095             ', N'1726300095               ', NULL, CAST(N'2015-04-05T00:00:00.000' AS DateTime), CAST(N'2015-10-05T00:00:00.000' AS DateTime), CAST(N'2015-10-05T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140698400039             ', N'27437900039              ', NULL, CAST(N'2015-02-08T00:00:00.000' AS DateTime), CAST(N'2015-08-08T00:00:00.000' AS DateTime), CAST(N'2015-08-08T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140710300041             ', N'27435000041              ', NULL, CAST(N'2015-02-10T00:00:00.000' AS DateTime), CAST(N'2015-08-10T00:00:00.000' AS DateTime), CAST(N'2015-08-10T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140714400096             ', N'1722300096               ', NULL, CAST(N'2015-04-06T00:00:00.000' AS DateTime), CAST(N'2015-10-06T00:00:00.000' AS DateTime), CAST(N'2015-10-06T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140729600097             ', N'1719300097               ', NULL, CAST(N'2015-04-07T00:00:00.000' AS DateTime), CAST(N'2015-10-07T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140742500042             ', N'27434100042              ', NULL, CAST(N'2015-02-11T00:00:00.000' AS DateTime), CAST(N'2015-08-11T00:00:00.000' AS DateTime), CAST(N'2015-08-11T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140744800098             ', N'1715000098               ', NULL, CAST(N'2015-04-08T00:00:00.000' AS DateTime), CAST(N'2015-10-08T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140755800043             ', N'27351300043              ', NULL, CAST(N'2015-02-12T00:00:00.000' AS DateTime), CAST(N'2015-08-12T00:00:00.000' AS DateTime), CAST(N'2015-08-12T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140783300099             ', N'1714600099               ', NULL, CAST(N'2015-04-09T00:00:00.000' AS DateTime), CAST(N'2015-10-09T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140783700044             ', N'27230400044              ', NULL, CAST(N'2015-02-13T00:00:00.000' AS DateTime), CAST(N'2015-08-13T00:00:00.000' AS DateTime), CAST(N'2015-08-13T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140796500046             ', N'27227900046              ', NULL, CAST(N'2015-02-15T00:00:00.000' AS DateTime), CAST(N'2015-08-15T00:00:00.000' AS DateTime), CAST(N'2015-08-15T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140797400101             ', N'1714300101               ', NULL, CAST(N'2015-04-11T00:00:00.000' AS DateTime), CAST(N'2015-10-11T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140806200047             ', N'27227000047              ', NULL, CAST(N'2015-02-16T00:00:00.000' AS DateTime), CAST(N'2015-08-16T00:00:00.000' AS DateTime), CAST(N'2015-08-16T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140807900102             ', N'1714200102               ', NULL, CAST(N'2015-04-12T00:00:00.000' AS DateTime), CAST(N'2015-10-12T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140817700048             ', N'27208000048              ', NULL, CAST(N'2015-02-17T00:00:00.000' AS DateTime), CAST(N'2015-08-17T00:00:00.000' AS DateTime), CAST(N'2015-08-17T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140825800100             ', N'1714400100               ', NULL, CAST(N'2015-04-10T00:00:00.000' AS DateTime), CAST(N'2015-10-10T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140835000049             ', N'27196900049              ', NULL, CAST(N'2015-02-18T00:00:00.000' AS DateTime), CAST(N'2015-08-18T00:00:00.000' AS DateTime), CAST(N'2015-08-18T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140860500103             ', N'1704400103               ', NULL, CAST(N'2015-04-13T00:00:00.000' AS DateTime), CAST(N'2015-10-13T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140860500103             ', N'27580700366              ', NULL, CAST(N'2016-01-01T00:00:00.000' AS DateTime), CAST(N'2016-07-01T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140860500103             ', N'3150100346               ', NULL, CAST(N'2015-12-12T00:00:00.000' AS DateTime), CAST(N'2016-06-12T00:00:00.000' AS DateTime), CAST(N'2016-06-12T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140868600050             ', N'27195800050              ', NULL, CAST(N'2015-02-19T00:00:00.000' AS DateTime), CAST(N'2015-08-19T00:00:00.000' AS DateTime), CAST(N'2015-08-19T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140872700104             ', N'1696600104               ', NULL, CAST(N'2015-04-14T00:00:00.000' AS DateTime), CAST(N'2015-10-14T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140872700104             ', N'27576400367              ', NULL, CAST(N'2016-01-02T00:00:00.000' AS DateTime), CAST(N'2016-07-02T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140872700104             ', N'3149800347               ', NULL, CAST(N'2015-12-13T00:00:00.000' AS DateTime), CAST(N'2016-06-13T00:00:00.000' AS DateTime), CAST(N'2016-06-13T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140877800052             ', N'27194000052              ', NULL, CAST(N'2015-02-21T00:00:00.000' AS DateTime), CAST(N'2015-08-21T00:00:00.000' AS DateTime), CAST(N'2015-08-21T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140892200053             ', N'27184200053              ', NULL, CAST(N'2015-02-22T00:00:00.000' AS DateTime), CAST(N'2015-08-22T00:00:00.000' AS DateTime), CAST(N'2015-08-22T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140899100054             ', N'27175100054              ', NULL, CAST(N'2015-02-23T00:00:00.000' AS DateTime), CAST(N'2015-08-23T00:00:00.000' AS DateTime), CAST(N'2015-08-23T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140901500106             ', N'1695900106               ', NULL, CAST(N'2015-04-16T00:00:00.000' AS DateTime), CAST(N'2015-10-16T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140901500106             ', N'27558900369              ', NULL, CAST(N'2016-01-04T00:00:00.000' AS DateTime), CAST(N'2016-07-04T00:00:00.000' AS DateTime), CAST(N'2016-07-04T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140901500106             ', N'3123100349               ', NULL, CAST(N'2015-12-15T00:00:00.000' AS DateTime), CAST(N'2016-06-15T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140916300055             ', N'27169700055              ', NULL, CAST(N'2015-02-24T00:00:00.000' AS DateTime), CAST(N'2015-08-24T00:00:00.000' AS DateTime), CAST(N'2015-08-24T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140922900108             ', N'15717000108              ', NULL, CAST(N'2015-04-18T00:00:00.000' AS DateTime), CAST(N'2015-10-18T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140922900108             ', N'27634000351              ', NULL, CAST(N'2015-12-17T00:00:00.000' AS DateTime), CAST(N'2016-06-17T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140925900056             ', N'27147100056              ', NULL, CAST(N'2015-02-25T00:00:00.000' AS DateTime), CAST(N'2015-08-25T00:00:00.000' AS DateTime), CAST(N'2015-08-25T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140931400109             ', N'15596700109              ', NULL, CAST(N'2015-04-19T00:00:00.000' AS DateTime), CAST(N'2015-10-19T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140931400109             ', N'27633800352              ', NULL, CAST(N'2015-12-18T00:00:00.000' AS DateTime), CAST(N'2016-06-18T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140936500110             ', N'1556000110               ', NULL, CAST(N'2015-04-20T00:00:00.000' AS DateTime), CAST(N'2015-10-20T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140936500110             ', N'27632100353              ', NULL, CAST(N'2015-12-19T00:00:00.000' AS DateTime), CAST(N'2016-06-19T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140953700112             ', N'1553100112               ', NULL, CAST(N'2015-04-22T00:00:00.000' AS DateTime), CAST(N'2015-10-22T00:00:00.000' AS DateTime), CAST(N'2015-10-22T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140953700112             ', N'27628400355              ', NULL, CAST(N'2015-12-21T00:00:00.000' AS DateTime), CAST(N'2016-06-21T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140961200057             ', N'27145600057              ', NULL, CAST(N'2015-02-26T00:00:00.000' AS DateTime), CAST(N'2015-08-26T00:00:00.000' AS DateTime), CAST(N'2015-08-26T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140962600165             ', N'1416600124               ', NULL, CAST(N'2015-05-04T00:00:00.000' AS DateTime), CAST(N'2015-11-04T00:00:00.000' AS DateTime), CAST(N'2015-11-04T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140966900113             ', N'15225600113              ', NULL, CAST(N'2015-04-23T00:00:00.000' AS DateTime), CAST(N'2015-10-23T00:00:00.000' AS DateTime), CAST(N'2015-10-23T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140966900113             ', N'27626800356              ', NULL, CAST(N'2015-12-22T00:00:00.000' AS DateTime), CAST(N'2016-06-22T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140978800058             ', N'27079600058              ', NULL, CAST(N'2015-02-27T00:00:00.000' AS DateTime), CAST(N'2015-08-27T00:00:00.000' AS DateTime), CAST(N'2015-08-27T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140984600115             ', N'1515600115               ', NULL, CAST(N'2015-04-25T00:00:00.000' AS DateTime), CAST(N'2015-10-25T00:00:00.000' AS DateTime), CAST(N'2015-10-25T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140984600115             ', N'27624500358              ', NULL, CAST(N'2015-12-24T00:00:00.000' AS DateTime), CAST(N'2016-06-24T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140987500116             ', N'1513800116               ', NULL, CAST(N'2015-04-26T00:00:00.000' AS DateTime), CAST(N'2015-10-26T00:00:00.000' AS DateTime), CAST(N'2015-10-26T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'140987500116             ', N'27619100359              ', NULL, CAST(N'2015-12-25T00:00:00.000' AS DateTime), CAST(N'2016-06-25T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'142064400019             ', N'27624500019              ', NULL, CAST(N'2015-01-19T00:00:00.000' AS DateTime), CAST(N'2015-07-19T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'142108300078             ', N'22706300078              ', NULL, CAST(N'2015-03-19T00:00:00.000' AS DateTime), CAST(N'2015-09-19T00:00:00.000' AS DateTime), CAST(N'2015-09-19T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'142116000040             ', N'27435900040              ', NULL, CAST(N'2015-02-09T00:00:00.000' AS DateTime), CAST(N'2015-08-09T00:00:00.000' AS DateTime), CAST(N'2015-08-09T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'142133400045             ', N'27230200045              ', NULL, CAST(N'2015-02-14T00:00:00.000' AS DateTime), CAST(N'2015-08-14T00:00:00.000' AS DateTime), CAST(N'2015-08-14T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'142149700051             ', N'27194900051              ', NULL, CAST(N'2015-02-20T00:00:00.000' AS DateTime), CAST(N'2015-08-20T00:00:00.000' AS DateTime), CAST(N'2015-08-20T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'142156200093             ', N'1757200093               ', NULL, CAST(N'2015-04-03T00:00:00.000' AS DateTime), CAST(N'2015-10-03T00:00:00.000' AS DateTime), CAST(N'2015-10-03T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'142199600105             ', N'1696000105               ', NULL, CAST(N'2015-04-15T00:00:00.000' AS DateTime), CAST(N'2015-10-15T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'142199600105             ', N'27571300368              ', NULL, CAST(N'2016-01-03T00:00:00.000' AS DateTime), CAST(N'2016-07-03T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'142199600105             ', N'3123200348               ', NULL, CAST(N'2015-12-14T00:00:00.000' AS DateTime), CAST(N'2016-06-14T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'142844200025             ', N'27598600025              ', NULL, CAST(N'2015-01-25T00:00:00.000' AS DateTime), CAST(N'2015-07-25T00:00:00.000' AS DateTime), CAST(N'2015-07-25T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'142961500121             ', N'1463100121               ', NULL, CAST(N'2015-05-01T00:00:00.000' AS DateTime), CAST(N'2015-11-01T00:00:00.000' AS DateTime), CAST(N'2015-11-01T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'142961500121             ', N'27598600364              ', NULL, CAST(N'2015-12-30T00:00:00.000' AS DateTime), CAST(N'2016-06-30T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15128868500187           ', N'27626800146              ', NULL, CAST(N'2015-05-26T00:00:00.000' AS DateTime), CAST(N'2015-11-26T00:00:00.000' AS DateTime), CAST(N'2015-11-26T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15132527200123           ', N'14196200123              ', NULL, CAST(N'2015-05-03T00:00:00.000' AS DateTime), CAST(N'2015-11-03T00:00:00.000' AS DateTime), CAST(N'2015-11-03T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15133445900122           ', N'1461800122               ', NULL, CAST(N'2015-05-02T00:00:00.000' AS DateTime), CAST(N'2015-11-02T00:00:00.000' AS DateTime), CAST(N'2015-11-02T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15133445900122           ', N'27585700365              ', NULL, CAST(N'2015-12-31T00:00:00.000' AS DateTime), CAST(N'2016-06-30T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15136870100167           ', N'1387400126               ', NULL, CAST(N'2015-05-06T00:00:00.000' AS DateTime), CAST(N'2015-11-06T00:00:00.000' AS DateTime), CAST(N'2015-11-06T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15136920600166           ', N'1409300125               ', NULL, CAST(N'2015-05-05T00:00:00.000' AS DateTime), CAST(N'2015-11-05T00:00:00.000' AS DateTime), CAST(N'2015-11-05T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15136927400168           ', N'1235200127               ', NULL, CAST(N'2015-05-07T00:00:00.000' AS DateTime), CAST(N'2015-11-07T00:00:00.000' AS DateTime), CAST(N'2015-11-07T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15137146100170           ', N'1141400129               ', NULL, CAST(N'2015-05-09T00:00:00.000' AS DateTime), CAST(N'2015-11-09T00:00:00.000' AS DateTime), CAST(N'2015-11-09T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15137324900171           ', N'4920600130               ', NULL, CAST(N'2015-05-10T00:00:00.000' AS DateTime), CAST(N'2015-11-10T00:00:00.000' AS DateTime), CAST(N'2015-11-10T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15137399500173           ', N'3541900132               ', NULL, CAST(N'2015-05-12T00:00:00.000' AS DateTime), CAST(N'2015-11-12T00:00:00.000' AS DateTime), CAST(N'2015-11-12T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15137481300174           ', N'3344700133               ', NULL, CAST(N'2015-05-13T00:00:00.000' AS DateTime), CAST(N'2015-11-13T00:00:00.000' AS DateTime), CAST(N'2015-11-13T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15137501400172           ', N'4455100131               ', NULL, CAST(N'2015-05-11T00:00:00.000' AS DateTime), CAST(N'2015-11-11T00:00:00.000' AS DateTime), CAST(N'2015-11-11T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15137638500175           ', N'3310600134               ', NULL, CAST(N'2015-05-14T00:00:00.000' AS DateTime), CAST(N'2015-11-14T00:00:00.000' AS DateTime), CAST(N'2015-11-14T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15137717100177           ', N'3150100136               ', NULL, CAST(N'2015-05-16T00:00:00.000' AS DateTime), CAST(N'2015-11-16T00:00:00.000' AS DateTime), CAST(N'2015-11-16T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15137935900169           ', N'1227900128               ', NULL, CAST(N'2015-05-08T00:00:00.000' AS DateTime), CAST(N'2015-11-08T00:00:00.000' AS DateTime), CAST(N'2015-11-08T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15138106200180           ', N'3123100139               ', NULL, CAST(N'2015-05-19T00:00:00.000' AS DateTime), CAST(N'2015-11-19T00:00:00.000' AS DateTime), CAST(N'2015-11-19T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15138186800179           ', N'3123200138               ', NULL, CAST(N'2015-05-18T00:00:00.000' AS DateTime), CAST(N'2015-11-18T00:00:00.000' AS DateTime), CAST(N'2015-11-18T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15138406300184           ', N'27632100143              ', NULL, CAST(N'2015-05-23T00:00:00.000' AS DateTime), CAST(N'2015-11-23T00:00:00.000' AS DateTime), CAST(N'2015-11-23T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15138479600183           ', N'27633800142              ', NULL, CAST(N'2015-05-22T00:00:00.000' AS DateTime), CAST(N'2015-11-22T00:00:00.000' AS DateTime), CAST(N'2015-11-22T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15138510100182           ', N'27634000141              ', NULL, CAST(N'2015-05-21T00:00:00.000' AS DateTime), CAST(N'2015-11-21T00:00:00.000' AS DateTime), CAST(N'2015-11-21T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15138828300185           ', N'27632000144              ', NULL, CAST(N'2015-05-24T00:00:00.000' AS DateTime), CAST(N'2015-11-24T00:00:00.000' AS DateTime), CAST(N'2015-11-24T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15138848500186           ', N'27628400145              ', NULL, CAST(N'2015-05-25T00:00:00.000' AS DateTime), CAST(N'2015-11-25T00:00:00.000' AS DateTime), CAST(N'2015-11-25T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15138988900178           ', N'3149800137               ', NULL, CAST(N'2015-05-17T00:00:00.000' AS DateTime), CAST(N'2015-11-17T00:00:00.000' AS DateTime), CAST(N'2015-11-17T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15139156000190           ', N'27619100149              ', NULL, CAST(N'2015-05-29T00:00:00.000' AS DateTime), CAST(N'2015-11-29T00:00:00.000' AS DateTime), CAST(N'2015-11-29T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15139173100189           ', N'27624500148              ', NULL, CAST(N'2015-05-28T00:00:00.000' AS DateTime), CAST(N'2015-11-28T00:00:00.000' AS DateTime), CAST(N'2015-11-28T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15139403300194           ', N'27601900153              ', NULL, CAST(N'2015-06-02T00:00:00.000' AS DateTime), CAST(N'2015-12-02T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15139844600195           ', N'27598600154              ', NULL, CAST(N'2015-06-03T00:00:00.000' AS DateTime), CAST(N'2015-12-03T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15140064700188           ', N'27625900147              ', NULL, CAST(N'2015-05-27T00:00:00.000' AS DateTime), CAST(N'2015-11-27T00:00:00.000' AS DateTime), CAST(N'2015-11-27T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15140230300191           ', N'27610300150              ', NULL, CAST(N'2015-05-30T00:00:00.000' AS DateTime), CAST(N'2015-11-30T00:00:00.000' AS DateTime), CAST(N'2015-11-30T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15140254700200           ', N'27558900159              ', NULL, CAST(N'2015-06-08T00:00:00.000' AS DateTime), CAST(N'2015-12-08T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15140295000201           ', N'27524600160              ', NULL, CAST(N'2015-06-09T00:00:00.000' AS DateTime), CAST(N'2015-12-09T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15140394600192           ', N'27609100151              ', NULL, CAST(N'2015-05-31T00:00:00.000' AS DateTime), CAST(N'2015-11-30T00:00:00.000' AS DateTime), CAST(N'2015-11-30T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15140529700193           ', N'27603000152              ', NULL, CAST(N'2015-06-01T00:00:00.000' AS DateTime), CAST(N'2015-12-01T00:00:00.000' AS DateTime), CAST(N'2015-12-01T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15140536400204           ', N'27501800163              ', NULL, CAST(N'2015-06-12T00:00:00.000' AS DateTime), CAST(N'2015-12-12T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15140641200206           ', N'27461800165              ', NULL, CAST(N'2015-06-14T00:00:00.000' AS DateTime), CAST(N'2015-12-14T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15140703400205           ', N'27463600164              ', NULL, CAST(N'2015-06-13T00:00:00.000' AS DateTime), CAST(N'2015-12-13T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15140813200207           ', N'27461600166              ', NULL, CAST(N'2015-06-15T00:00:00.000' AS DateTime), CAST(N'2015-12-15T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15140899400197           ', N'27580700156              ', NULL, CAST(N'2015-06-05T00:00:00.000' AS DateTime), CAST(N'2015-12-05T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15140958300199           ', N'27571300158              ', NULL, CAST(N'2015-06-07T00:00:00.000' AS DateTime), CAST(N'2015-12-07T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15141024300208           ', N'27461100167              ', NULL, CAST(N'2015-06-16T00:00:00.000' AS DateTime), CAST(N'2015-12-16T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15141233500210           ', N'27435900169              ', NULL, CAST(N'2015-06-18T00:00:00.000' AS DateTime), CAST(N'2015-12-18T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15141287600211           ', N'27435000170              ', NULL, CAST(N'2015-06-19T00:00:00.000' AS DateTime), CAST(N'2015-12-19T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15141475400203           ', N'27518500162              ', NULL, CAST(N'2015-06-11T00:00:00.000' AS DateTime), CAST(N'2015-12-11T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15141483500212           ', N'27434100171              ', NULL, CAST(N'2015-06-20T00:00:00.000' AS DateTime), CAST(N'2015-12-20T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15141613200213           ', N'27351300172              ', NULL, CAST(N'2015-06-21T00:00:00.000' AS DateTime), CAST(N'2015-12-21T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15141683000214           ', N'27230400173              ', NULL, CAST(N'2015-06-22T00:00:00.000' AS DateTime), CAST(N'2015-12-22T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15141746400216           ', N'27227900175              ', NULL, CAST(N'2015-06-24T00:00:00.000' AS DateTime), CAST(N'2015-12-24T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15141804900215           ', N'27230200174              ', NULL, CAST(N'2015-06-23T00:00:00.000' AS DateTime), CAST(N'2015-12-23T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15142011000220           ', N'27195800179              ', NULL, CAST(N'2015-06-28T00:00:00.000' AS DateTime), CAST(N'2015-12-28T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15142030300217           ', N'27227000176              ', NULL, CAST(N'2015-06-25T00:00:00.000' AS DateTime), CAST(N'2015-12-25T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15142196400209           ', N'27437900168              ', NULL, CAST(N'2015-06-17T00:00:00.000' AS DateTime), CAST(N'2015-12-17T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15142820200218           ', N'27208000177              ', NULL, CAST(N'2015-06-26T00:00:00.000' AS DateTime), CAST(N'2015-12-26T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15143115400219           ', N'27196900178              ', NULL, CAST(N'2015-06-27T00:00:00.000' AS DateTime), CAST(N'2015-12-27T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'15155369000352           ', N'3123200311               ', NULL, CAST(N'2015-11-07T00:00:00.000' AS DateTime), CAST(N'2016-05-07T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16000014100298           ', N'1227900257               ', NULL, CAST(N'2015-09-14T00:00:00.000' AS DateTime), CAST(N'2016-03-14T00:00:00.000' AS DateTime), CAST(N'2016-03-14T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16000112000299           ', N'1141400258               ', NULL, CAST(N'2015-09-15T00:00:00.000' AS DateTime), CAST(N'2016-03-15T00:00:00.000' AS DateTime), CAST(N'2016-03-15T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16000151900297           ', N'1235200256               ', NULL, CAST(N'2015-09-13T00:00:00.000' AS DateTime), CAST(N'2016-03-13T00:00:00.000' AS DateTime), CAST(N'2016-03-13T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16000225900300           ', N'27145600259              ', NULL, CAST(N'2015-09-16T00:00:00.000' AS DateTime), CAST(N'2016-03-16T00:00:00.000' AS DateTime), CAST(N'2016-03-16T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16000421700302           ', N'27045400261              ', NULL, CAST(N'2015-09-18T00:00:00.000' AS DateTime), CAST(N'2016-03-18T00:00:00.000' AS DateTime), CAST(N'2016-03-18T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16000520100303           ', N'27044500262              ', NULL, CAST(N'2015-09-19T00:00:00.000' AS DateTime), CAST(N'2016-03-19T00:00:00.000' AS DateTime), CAST(N'2016-03-19T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16000613300304           ', N'25820400263              ', NULL, CAST(N'2015-09-20T00:00:00.000' AS DateTime), CAST(N'2016-03-20T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16000728900305           ', N'25686200264              ', NULL, CAST(N'2015-09-21T00:00:00.000' AS DateTime), CAST(N'2016-03-21T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16000770100294           ', N'1416600253               ', NULL, CAST(N'2015-09-10T00:00:00.000' AS DateTime), CAST(N'2016-03-10T00:00:00.000' AS DateTime), CAST(N'2016-03-10T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16000916800307           ', N'25178500266              ', NULL, CAST(N'2015-09-23T00:00:00.000' AS DateTime), CAST(N'2016-03-23T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16001049500306           ', N'25430400265              ', NULL, CAST(N'2015-09-22T00:00:00.000' AS DateTime), CAST(N'2016-03-22T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16001123800309           ', N'24616600268              ', NULL, CAST(N'2015-09-25T00:00:00.000' AS DateTime), CAST(N'2016-03-25T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16001222500310           ', N'24545300269              ', NULL, CAST(N'2015-09-26T00:00:00.000' AS DateTime), CAST(N'2016-03-26T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16001253100308           ', N'24814200267              ', NULL, CAST(N'2015-09-24T00:00:00.000' AS DateTime), CAST(N'2016-03-24T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16001314700311           ', N'24352600270              ', NULL, CAST(N'2015-09-27T00:00:00.000' AS DateTime), CAST(N'2016-03-27T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16001420500312           ', N'23897700271              ', NULL, CAST(N'2015-09-28T00:00:00.000' AS DateTime), CAST(N'2016-03-28T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16001470400301           ', N'27079600260              ', NULL, CAST(N'2015-09-17T00:00:00.000' AS DateTime), CAST(N'2016-03-17T00:00:00.000' AS DateTime), CAST(N'2016-03-17T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16001527600313           ', N'2386200272               ', NULL, CAST(N'2015-09-29T00:00:00.000' AS DateTime), CAST(N'2016-03-29T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16001612700314           ', N'23736900273              ', NULL, CAST(N'2015-09-30T00:00:00.000' AS DateTime), CAST(N'2016-03-30T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16001730800315           ', N'23645900274              ', NULL, CAST(N'2015-10-01T00:00:00.000' AS DateTime), CAST(N'2016-04-01T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16002250700318           ', N'22864500277              ', NULL, CAST(N'2015-10-04T00:00:00.000' AS DateTime), CAST(N'2016-04-04T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16002428000322           ', N'27044500281              ', NULL, CAST(N'2015-10-08T00:00:00.000' AS DateTime), CAST(N'2016-04-08T00:00:00.000' AS DateTime), CAST(N'2016-04-08T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16002556300321           ', N'27045400280              ', NULL, CAST(N'2015-10-07T00:00:00.000' AS DateTime), CAST(N'2016-04-07T00:00:00.000' AS DateTime), CAST(N'2016-04-07T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16002618800324           ', N'25686200283              ', NULL, CAST(N'2015-10-10T00:00:00.000' AS DateTime), CAST(N'2016-04-10T00:00:00.000' AS DateTime), CAST(N'2016-04-10T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16002724200325           ', N'25430400284              ', NULL, CAST(N'2015-10-11T00:00:00.000' AS DateTime), CAST(N'2016-04-11T00:00:00.000' AS DateTime), CAST(N'2016-04-11T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16002755800323           ', N'25820400282              ', NULL, CAST(N'2015-10-09T00:00:00.000' AS DateTime), CAST(N'2016-04-09T00:00:00.000' AS DateTime), CAST(N'2016-04-09T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16002923300327           ', N'24814200286              ', NULL, CAST(N'2015-10-13T00:00:00.000' AS DateTime), CAST(N'2016-04-13T00:00:00.000' AS DateTime), CAST(N'2016-04-13T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16002971700316           ', N'23410900275              ', NULL, CAST(N'2015-10-02T00:00:00.000' AS DateTime), CAST(N'2016-04-02T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16003017500328           ', N'24616600287              ', NULL, CAST(N'2015-10-14T00:00:00.000' AS DateTime), CAST(N'2016-04-14T00:00:00.000' AS DateTime), CAST(N'2016-04-14T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16003054300326           ', N'25178500285              ', NULL, CAST(N'2015-10-12T00:00:00.000' AS DateTime), CAST(N'2016-04-12T00:00:00.000' AS DateTime), CAST(N'2016-04-12T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16003069600317           ', N'23030800276              ', NULL, CAST(N'2015-10-03T00:00:00.000' AS DateTime), CAST(N'2016-04-03T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16003125200329           ', N'24545300288              ', NULL, CAST(N'2015-10-15T00:00:00.000' AS DateTime), CAST(N'2016-04-15T00:00:00.000' AS DateTime), CAST(N'2016-04-15T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16003268600319           ', N'27145600278              ', NULL, CAST(N'2015-10-05T00:00:00.000' AS DateTime), CAST(N'2016-04-05T00:00:00.000' AS DateTime), CAST(N'2016-04-05T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16003366700320           ', N'27079600279              ', NULL, CAST(N'2015-10-06T00:00:00.000' AS DateTime), CAST(N'2016-04-06T00:00:00.000' AS DateTime), CAST(N'2016-04-06T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16003454500330           ', N'24352600289              ', NULL, CAST(N'2015-10-16T00:00:00.000' AS DateTime), CAST(N'2016-04-16T00:00:00.000' AS DateTime), CAST(N'2016-04-16T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16003651200332           ', N'2386200291               ', NULL, CAST(N'2015-10-18T00:00:00.000' AS DateTime), CAST(N'2016-04-18T00:00:00.000' AS DateTime), CAST(N'2016-04-18T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16003818500336           ', N'23030800295              ', NULL, CAST(N'2015-10-22T00:00:00.000' AS DateTime), CAST(N'2016-04-22T00:00:00.000' AS DateTime), CAST(N'2016-04-22T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16003850600334           ', N'23645900293              ', NULL, CAST(N'2015-10-20T00:00:00.000' AS DateTime), CAST(N'2016-04-20T00:00:00.000' AS DateTime), CAST(N'2016-04-20T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16004027000338           ', N'1416600297               ', NULL, CAST(N'2015-10-24T00:00:00.000' AS DateTime), CAST(N'2016-04-24T00:00:00.000' AS DateTime), CAST(N'2016-04-24T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16004117900339           ', N'1409300298               ', NULL, CAST(N'2015-10-25T00:00:00.000' AS DateTime), CAST(N'2016-04-25T00:00:00.000' AS DateTime), CAST(N'2016-04-25T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16004156900337           ', N'22864500296              ', NULL, CAST(N'2015-10-23T00:00:00.000' AS DateTime), CAST(N'2016-04-23T00:00:00.000' AS DateTime), CAST(N'2016-04-23T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16004455400340           ', N'1387400299               ', NULL, CAST(N'2015-10-26T00:00:00.000' AS DateTime), CAST(N'2016-04-26T00:00:00.000' AS DateTime), CAST(N'2016-04-26T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16004470800331           ', N'23897700290              ', NULL, CAST(N'2015-10-17T00:00:00.000' AS DateTime), CAST(N'2016-04-17T00:00:00.000' AS DateTime), CAST(N'2016-04-17T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16004522900343           ', N'1141400302               ', NULL, CAST(N'2015-10-29T00:00:00.000' AS DateTime), CAST(N'2016-04-29T00:00:00.000' AS DateTime), CAST(N'2016-04-29T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16004549000341           ', N'1235200300               ', NULL, CAST(N'2015-10-27T00:00:00.000' AS DateTime), CAST(N'2016-04-27T00:00:00.000' AS DateTime), CAST(N'2016-04-27T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16004671100333           ', N'23736900292              ', NULL, CAST(N'2015-10-19T00:00:00.000' AS DateTime), CAST(N'2016-04-19T00:00:00.000' AS DateTime), CAST(N'2016-04-19T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16004715700345           ', N'4455100304               ', NULL, CAST(N'2015-10-31T00:00:00.000' AS DateTime), CAST(N'2016-04-30T00:00:00.000' AS DateTime), CAST(N'2016-04-30T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16004816500346           ', N'3541900305               ', NULL, CAST(N'2015-11-01T00:00:00.000' AS DateTime), CAST(N'2016-05-01T00:00:00.000' AS DateTime), CAST(N'2016-05-01T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16004852400344           ', N'4920600303               ', NULL, CAST(N'2015-10-30T00:00:00.000' AS DateTime), CAST(N'2016-04-30T00:00:00.000' AS DateTime), CAST(N'2016-04-30T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16004869200335           ', N'23410900294              ', NULL, CAST(N'2015-10-21T00:00:00.000' AS DateTime), CAST(N'2016-04-21T00:00:00.000' AS DateTime), CAST(N'2016-04-21T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16004929500347           ', N'3344700306               ', NULL, CAST(N'2015-11-02T00:00:00.000' AS DateTime), CAST(N'2016-05-02T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16005350300349           ', N'3310200308               ', NULL, CAST(N'2015-11-04T00:00:00.000' AS DateTime), CAST(N'2016-05-04T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16005567400342           ', N'1227900301               ', NULL, CAST(N'2015-10-28T00:00:00.000' AS DateTime), CAST(N'2016-04-28T00:00:00.000' AS DateTime), CAST(N'2016-04-28T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16005816900356           ', N'27633800315              ', NULL, CAST(N'2015-11-11T00:00:00.000' AS DateTime), CAST(N'2016-05-11T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16005929300357           ', N'27632100316              ', NULL, CAST(N'2015-11-12T00:00:00.000' AS DateTime), CAST(N'2016-05-12T00:00:00.000' AS DateTime), CAST(N'2016-05-12T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16006122600359           ', N'27628400318              ', NULL, CAST(N'2015-11-14T00:00:00.000' AS DateTime), CAST(N'2016-05-14T00:00:00.000' AS DateTime), CAST(N'2016-05-14T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16006167800348           ', N'3310600307               ', NULL, CAST(N'2015-11-03T00:00:00.000' AS DateTime), CAST(N'2016-05-03T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16006227100360           ', N'27626800319              ', NULL, CAST(N'2015-11-15T00:00:00.000' AS DateTime), CAST(N'2016-05-15T00:00:00.000' AS DateTime), CAST(N'2016-05-15T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16006252000358           ', N'27632000317              ', NULL, CAST(N'2015-11-13T00:00:00.000' AS DateTime), CAST(N'2016-05-13T00:00:00.000' AS DateTime), CAST(N'2016-05-13T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16006326000361           ', N'27625900320              ', NULL, CAST(N'2015-11-16T00:00:00.000' AS DateTime), CAST(N'2016-05-16T00:00:00.000' AS DateTime), CAST(N'2016-05-16T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16006369300350           ', N'3150100309               ', NULL, CAST(N'2015-11-05T00:00:00.000' AS DateTime), CAST(N'2016-05-05T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16006421500362           ', N'27624500321              ', NULL, CAST(N'2015-11-17T00:00:00.000' AS DateTime), CAST(N'2016-05-17T00:00:00.000' AS DateTime), CAST(N'2016-05-17T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16006470200351           ', N'3149800310               ', NULL, CAST(N'2015-11-06T00:00:00.000' AS DateTime), CAST(N'2016-05-06T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16006527700363           ', N'27619100322              ', NULL, CAST(N'2015-11-18T00:00:00.000' AS DateTime), CAST(N'2016-05-18T00:00:00.000' AS DateTime), CAST(N'2016-05-18T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16006625400364           ', N'27610300323              ', NULL, CAST(N'2015-11-19T00:00:00.000' AS DateTime), CAST(N'2016-05-19T00:00:00.000' AS DateTime), CAST(N'2016-05-19T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16006668100353           ', N'3123100312               ', NULL, CAST(N'2015-11-08T00:00:00.000' AS DateTime), CAST(N'2016-05-08T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16006767600354           ', N'27634200313              ', NULL, CAST(N'2015-11-09T00:00:00.000' AS DateTime), CAST(N'2016-05-09T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16006869800355           ', N'27634000314              ', NULL, CAST(N'2015-11-10T00:00:00.000' AS DateTime), CAST(N'2016-05-10T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16006950400365           ', N'27609100324              ', NULL, CAST(N'2015-11-20T00:00:00.000' AS DateTime), CAST(N'2016-05-20T00:00:00.000' AS DateTime), CAST(N'2016-05-20T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16007050800366           ', N'27603000325              ', NULL, CAST(N'2015-11-21T00:00:00.000' AS DateTime), CAST(N'2016-05-21T00:00:00.000' AS DateTime), CAST(N'2016-05-21T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16007154900367           ', N'27601900326              ', NULL, CAST(N'2015-11-22T00:00:00.000' AS DateTime), CAST(N'2016-05-22T00:00:00.000' AS DateTime), CAST(N'2016-05-22T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16007356500369           ', N'27585700328              ', NULL, CAST(N'2015-11-24T00:00:00.000' AS DateTime), CAST(N'2016-05-24T00:00:00.000' AS DateTime), CAST(N'2016-05-24T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16007417700372           ', N'27571300331              ', NULL, CAST(N'2015-11-27T00:00:00.000' AS DateTime), CAST(N'2016-05-27T00:00:00.000' AS DateTime), CAST(N'2016-05-27T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16007452800370           ', N'27580700329              ', NULL, CAST(N'2015-11-25T00:00:00.000' AS DateTime), CAST(N'2016-05-25T00:00:00.000' AS DateTime), CAST(N'2016-05-25T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16007554200371           ', N'27576400330              ', NULL, CAST(N'2015-11-26T00:00:00.000' AS DateTime), CAST(N'2016-05-26T00:00:00.000' AS DateTime), CAST(N'2016-05-26T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16007614300374           ', N'27524600333              ', NULL, CAST(N'2015-11-29T00:00:00.000' AS DateTime), CAST(N'2016-05-29T00:00:00.000' AS DateTime), CAST(N'2016-05-29T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16007952500375           ', N'1416600334               ', NULL, CAST(N'2015-11-30T00:00:00.000' AS DateTime), CAST(N'2016-05-30T00:00:00.000' AS DateTime), CAST(N'2016-05-30T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16008020600378           ', N'1235200337               ', NULL, CAST(N'2015-12-03T00:00:00.000' AS DateTime), CAST(N'2016-06-03T00:00:00.000' AS DateTime), CAST(N'2016-06-03T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16008055900376           ', N'1409300335               ', NULL, CAST(N'2015-12-01T00:00:00.000' AS DateTime), CAST(N'2016-06-01T00:00:00.000' AS DateTime), CAST(N'2016-06-01T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16008118900379           ', N'1227900338               ', NULL, CAST(N'2015-12-04T00:00:00.000' AS DateTime), CAST(N'2016-06-04T00:00:00.000' AS DateTime), CAST(N'2016-06-04T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16008149600377           ', N'1387400336               ', NULL, CAST(N'2015-12-02T00:00:00.000' AS DateTime), CAST(N'2016-06-02T00:00:00.000' AS DateTime), CAST(N'2016-06-02T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16008168700368           ', N'27598600327              ', NULL, CAST(N'2015-11-23T00:00:00.000' AS DateTime), CAST(N'2016-05-23T00:00:00.000' AS DateTime), CAST(N'2016-05-23T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16008218600380           ', N'1141400339               ', NULL, CAST(N'2015-12-05T00:00:00.000' AS DateTime), CAST(N'2016-06-05T00:00:00.000' AS DateTime), CAST(N'2016-06-05T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16008330900381           ', N'4920600340               ', NULL, CAST(N'2015-12-06T00:00:00.000' AS DateTime), CAST(N'2016-06-06T00:00:00.000' AS DateTime), CAST(N'2016-06-06T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16008624900384           ', N'3344700343               ', NULL, CAST(N'2015-12-09T00:00:00.000' AS DateTime), CAST(N'2016-06-09T00:00:00.000' AS DateTime), CAST(N'2016-06-09T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16008657100382           ', N'4455100341               ', NULL, CAST(N'2015-12-07T00:00:00.000' AS DateTime), CAST(N'2016-06-07T00:00:00.000' AS DateTime), CAST(N'2016-06-07T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16008665500373           ', N'27558900332              ', NULL, CAST(N'2015-11-28T00:00:00.000' AS DateTime), CAST(N'2016-05-28T00:00:00.000' AS DateTime), CAST(N'2016-05-28T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16008721000385           ', N'3310600344               ', NULL, CAST(N'2015-12-10T00:00:00.000' AS DateTime), CAST(N'2016-06-10T00:00:00.000' AS DateTime), CAST(N'2016-06-10T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16009666900383           ', N'3541900342               ', NULL, CAST(N'2015-12-08T00:00:00.000' AS DateTime), CAST(N'2016-06-08T00:00:00.000' AS DateTime), CAST(N'2016-06-08T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16009971800386           ', N'3310200345               ', NULL, CAST(N'2015-12-11T00:00:00.000' AS DateTime), CAST(N'2016-06-11T00:00:00.000' AS DateTime), CAST(N'2016-06-11T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16092519400223           ', N'27184200182              ', NULL, CAST(N'2015-07-01T00:00:00.000' AS DateTime), CAST(N'2016-01-01T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16092627200224           ', N'27175100183              ', NULL, CAST(N'2015-07-02T00:00:00.000' AS DateTime), CAST(N'2016-01-02T00:00:00.000' AS DateTime), CAST(N'2016-01-02T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16092655700222           ', N'27194000181              ', NULL, CAST(N'2015-06-30T00:00:00.000' AS DateTime), CAST(N'2015-12-30T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16092726900225           ', N'27169700184              ', NULL, CAST(N'2015-07-03T00:00:00.000' AS DateTime), CAST(N'2016-01-03T00:00:00.000' AS DateTime), CAST(N'2016-01-03T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16093027500228           ', N'27079600187              ', NULL, CAST(N'2015-07-06T00:00:00.000' AS DateTime), CAST(N'2016-01-06T00:00:00.000' AS DateTime), CAST(N'2016-01-06T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16093052700226           ', N'27147100185              ', NULL, CAST(N'2015-07-04T00:00:00.000' AS DateTime), CAST(N'2016-01-04T00:00:00.000' AS DateTime), CAST(N'2016-01-04T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16093157200227           ', N'27145600186              ', NULL, CAST(N'2015-07-05T00:00:00.000' AS DateTime), CAST(N'2016-01-05T00:00:00.000' AS DateTime), CAST(N'2016-01-05T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16093320400231           ', N'25820400190              ', NULL, CAST(N'2015-07-09T00:00:00.000' AS DateTime), CAST(N'2016-01-09T00:00:00.000' AS DateTime), CAST(N'2016-01-09T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16093468800221           ', N'27194900180              ', NULL, CAST(N'2015-06-29T00:00:00.000' AS DateTime), CAST(N'2015-12-29T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16093626500234           ', N'25178500193              ', NULL, CAST(N'2015-07-12T00:00:00.000' AS DateTime), CAST(N'2016-01-12T00:00:00.000' AS DateTime), CAST(N'2016-01-12T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16093652200232           ', N'25686200191              ', NULL, CAST(N'2015-07-10T00:00:00.000' AS DateTime), CAST(N'2016-01-10T00:00:00.000' AS DateTime), CAST(N'2016-01-10T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16093712200235           ', N'24814200194              ', NULL, CAST(N'2015-07-13T00:00:00.000' AS DateTime), CAST(N'2016-01-13T00:00:00.000' AS DateTime), CAST(N'2016-01-13T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16093829800236           ', N'24616600195              ', NULL, CAST(N'2015-07-14T00:00:00.000' AS DateTime), CAST(N'2016-01-14T00:00:00.000' AS DateTime), CAST(N'2016-01-14T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16094230300240           ', N'2386200199               ', NULL, CAST(N'2015-07-18T00:00:00.000' AS DateTime), CAST(N'2016-01-18T00:00:00.000' AS DateTime), CAST(N'2016-01-18T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16094251400238           ', N'24352600197              ', NULL, CAST(N'2015-07-16T00:00:00.000' AS DateTime), CAST(N'2016-01-16T00:00:00.000' AS DateTime), CAST(N'2016-01-16T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16094268500229           ', N'27045400188              ', NULL, CAST(N'2015-07-07T00:00:00.000' AS DateTime), CAST(N'2016-01-07T00:00:00.000' AS DateTime), CAST(N'2016-01-07T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16094364900230           ', N'27044500189              ', NULL, CAST(N'2015-07-08T00:00:00.000' AS DateTime), CAST(N'2016-01-08T00:00:00.000' AS DateTime), CAST(N'2016-01-08T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16094425100242           ', N'23645900201              ', NULL, CAST(N'2015-07-20T00:00:00.000' AS DateTime), CAST(N'2016-01-20T00:00:00.000' AS DateTime), CAST(N'2016-01-20T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16094528500241           ', N'23736900200              ', NULL, CAST(N'2015-07-19T00:00:00.000' AS DateTime), CAST(N'2016-01-19T00:00:00.000' AS DateTime), CAST(N'2016-01-19T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16094619000244           ', N'23030800203              ', NULL, CAST(N'2015-07-22T00:00:00.000' AS DateTime), CAST(N'2016-01-22T00:00:00.000' AS DateTime), CAST(N'2016-01-22T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16094670000233           ', N'25430400192              ', NULL, CAST(N'2015-07-11T00:00:00.000' AS DateTime), CAST(N'2016-01-11T00:00:00.000' AS DateTime), CAST(N'2016-01-11T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16094749300243           ', N'23410900202              ', NULL, CAST(N'2015-07-21T00:00:00.000' AS DateTime), CAST(N'2016-01-21T00:00:00.000' AS DateTime), CAST(N'2016-01-21T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16094830600246           ', N'22863700205              ', NULL, CAST(N'2015-07-24T00:00:00.000' AS DateTime), CAST(N'2016-01-24T00:00:00.000' AS DateTime), CAST(N'2016-01-24T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16094923200247           ', N'2278000206               ', NULL, CAST(N'2015-07-25T00:00:00.000' AS DateTime), CAST(N'2016-01-25T00:00:00.000' AS DateTime), CAST(N'2016-01-25T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16094949900245           ', N'22864500204              ', NULL, CAST(N'2015-07-23T00:00:00.000' AS DateTime), CAST(N'2016-01-23T00:00:00.000' AS DateTime), CAST(N'2016-01-23T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16095025600248           ', N'22706300207              ', NULL, CAST(N'2015-07-26T00:00:00.000' AS DateTime), CAST(N'2016-01-26T00:00:00.000' AS DateTime), CAST(N'2016-01-26T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16095067700237           ', N'24545300196              ', NULL, CAST(N'2015-07-15T00:00:00.000' AS DateTime), CAST(N'2016-01-15T00:00:00.000' AS DateTime), CAST(N'2016-01-15T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16095124100249           ', N'22668500208              ', NULL, CAST(N'2015-07-27T00:00:00.000' AS DateTime), CAST(N'2016-01-27T00:00:00.000' AS DateTime), CAST(N'2016-01-27T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16095265600239           ', N'23897700198              ', NULL, CAST(N'2015-07-17T00:00:00.000' AS DateTime), CAST(N'2016-01-17T00:00:00.000' AS DateTime), CAST(N'2016-01-17T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16095416300252           ', N'22340500211              ', NULL, CAST(N'2015-07-30T00:00:00.000' AS DateTime), CAST(N'2016-01-30T00:00:00.000' AS DateTime), CAST(N'2016-01-30T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16095518200253           ', N'22249000212              ', NULL, CAST(N'2015-07-31T00:00:00.000' AS DateTime), CAST(N'2016-01-31T00:00:00.000' AS DateTime), CAST(N'2016-01-31T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16095556100251           ', N'22586500210              ', NULL, CAST(N'2015-07-29T00:00:00.000' AS DateTime), CAST(N'2016-01-29T00:00:00.000' AS DateTime), CAST(N'2016-01-29T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16095626200254           ', N'22222700213              ', NULL, CAST(N'2015-08-01T00:00:00.000' AS DateTime), CAST(N'2016-02-01T00:00:00.000' AS DateTime), CAST(N'2016-02-01T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16095956600255           ', N'21248300214              ', NULL, CAST(N'2015-08-02T00:00:00.000' AS DateTime), CAST(N'2016-02-02T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16096027800258           ', N'1772200217               ', NULL, CAST(N'2015-08-05T00:00:00.000' AS DateTime), CAST(N'2016-02-05T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16096216700260           ', N'1760700219               ', NULL, CAST(N'2015-08-07T00:00:00.000' AS DateTime), CAST(N'2016-02-07T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16096311500261           ', N'1758000220               ', NULL, CAST(N'2015-08-08T00:00:00.000' AS DateTime), CAST(N'2016-02-08T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16096369400250           ', N'22620000209              ', NULL, CAST(N'2015-07-28T00:00:00.000' AS DateTime), CAST(N'2016-01-28T00:00:00.000' AS DateTime), CAST(N'2016-01-28T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16096424700262           ', N'1757400221               ', NULL, CAST(N'2015-08-09T00:00:00.000' AS DateTime), CAST(N'2016-02-09T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16096522800263           ', N'1757200222               ', NULL, CAST(N'2015-08-10T00:00:00.000' AS DateTime), CAST(N'2016-02-10T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16096615100264           ', N'1757100223               ', NULL, CAST(N'2015-08-11T00:00:00.000' AS DateTime), CAST(N'2016-02-11T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16096714000265           ', N'1726300224               ', NULL, CAST(N'2015-08-12T00:00:00.000' AS DateTime), CAST(N'2016-02-12T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16096921100267           ', N'1719300226               ', NULL, CAST(N'2015-08-14T00:00:00.000' AS DateTime), CAST(N'2016-02-14T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16096968200256           ', N'20666800215              ', NULL, CAST(N'2015-08-03T00:00:00.000' AS DateTime), CAST(N'2016-02-03T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16097023700268           ', N'1715000227               ', NULL, CAST(N'2015-08-15T00:00:00.000' AS DateTime), CAST(N'2016-02-15T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16097071000257           ', N'1826100216               ', NULL, CAST(N'2015-08-04T00:00:00.000' AS DateTime), CAST(N'2016-02-04T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16097215600270           ', N'1714400229               ', NULL, CAST(N'2015-08-17T00:00:00.000' AS DateTime), CAST(N'2016-02-17T00:00:00.000' AS DateTime), CAST(N'2016-02-17T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16097266400259           ', N'1763300218               ', NULL, CAST(N'2015-08-06T00:00:00.000' AS DateTime), CAST(N'2016-02-06T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16097351000269           ', N'1714600228               ', NULL, CAST(N'2015-08-16T00:00:00.000' AS DateTime), CAST(N'2016-02-16T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16097417800272           ', N'1714200231               ', NULL, CAST(N'2015-08-19T00:00:00.000' AS DateTime), CAST(N'2016-02-19T00:00:00.000' AS DateTime), CAST(N'2016-02-19T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16097528700273           ', N'1704400232               ', NULL, CAST(N'2015-08-20T00:00:00.000' AS DateTime), CAST(N'2016-02-20T00:00:00.000' AS DateTime), CAST(N'2016-02-20T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16097553800271           ', N'1714300230               ', NULL, CAST(N'2015-08-18T00:00:00.000' AS DateTime), CAST(N'2016-02-18T00:00:00.000' AS DateTime), CAST(N'2016-02-18T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16097612600274           ', N'1696600233               ', NULL, CAST(N'2015-08-21T00:00:00.000' AS DateTime), CAST(N'2016-02-21T00:00:00.000' AS DateTime), CAST(N'2016-02-21T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16097951800275           ', N'1696000234               ', NULL, CAST(N'2015-08-22T00:00:00.000' AS DateTime), CAST(N'2016-02-22T00:00:00.000' AS DateTime), CAST(N'2016-02-22T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16097971400266           ', N'1722300225               ', NULL, CAST(N'2015-08-13T00:00:00.000' AS DateTime), CAST(N'2016-02-13T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16098013000278           ', N'15717000237              ', NULL, CAST(N'2015-08-25T00:00:00.000' AS DateTime), CAST(N'2016-02-25T00:00:00.000' AS DateTime), CAST(N'2016-02-25T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16098117200279           ', N'15596700238              ', NULL, CAST(N'2015-08-26T00:00:00.000' AS DateTime), CAST(N'2016-02-26T00:00:00.000' AS DateTime), CAST(N'2016-02-26T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16098218700280           ', N'1556000239               ', NULL, CAST(N'2015-08-27T00:00:00.000' AS DateTime), CAST(N'2016-02-27T00:00:00.000' AS DateTime), CAST(N'2016-02-27T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16098329100281           ', N'15554100240              ', NULL, CAST(N'2015-08-28T00:00:00.000' AS DateTime), CAST(N'2016-02-28T00:00:00.000' AS DateTime), CAST(N'2016-02-28T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16098421600282           ', N'1553100241               ', NULL, CAST(N'2015-08-29T00:00:00.000' AS DateTime), CAST(N'2016-02-29T00:00:00.000' AS DateTime), CAST(N'2016-02-29T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16098520700283           ', N'15225600242              ', NULL, CAST(N'2015-08-30T00:00:00.000' AS DateTime), CAST(N'2016-02-29T00:00:00.000' AS DateTime), CAST(N'2016-02-29T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16098620800284           ', N'15225400243              ', NULL, CAST(N'2015-08-31T00:00:00.000' AS DateTime), CAST(N'2016-02-29T00:00:00.000' AS DateTime), CAST(N'2016-02-29T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16098726300285           ', N'1515600244               ', NULL, CAST(N'2015-09-01T00:00:00.000' AS DateTime), CAST(N'2016-03-01T00:00:00.000' AS DateTime), CAST(N'2016-03-01T00:00:00.000' AS DateTime), N'Mất trang 12', 5000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16098926600287           ', N'1491400246               ', NULL, CAST(N'2015-09-03T00:00:00.000' AS DateTime), CAST(N'2016-03-03T00:00:00.000' AS DateTime), CAST(N'2016-03-03T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16098970300276           ', N'1695900235               ', NULL, CAST(N'2015-08-23T00:00:00.000' AS DateTime), CAST(N'2016-02-23T00:00:00.000' AS DateTime), CAST(N'2016-02-23T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16099015200288           ', N'1491300247               ', NULL, CAST(N'2015-09-04T00:00:00.000' AS DateTime), CAST(N'2016-03-04T00:00:00.000' AS DateTime), CAST(N'2016-03-04T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16099070600277           ', N'1695400236               ', NULL, CAST(N'2015-08-24T00:00:00.000' AS DateTime), CAST(N'2016-02-24T00:00:00.000' AS DateTime), CAST(N'2016-02-24T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16099127300289           ', N'1473900248               ', NULL, CAST(N'2015-09-05T00:00:00.000' AS DateTime), CAST(N'2016-03-05T00:00:00.000' AS DateTime), CAST(N'2016-03-05T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16099330400291           ', N'1463100250               ', NULL, CAST(N'2015-09-07T00:00:00.000' AS DateTime), CAST(N'2016-03-07T00:00:00.000' AS DateTime), CAST(N'2016-03-07T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16099412400292           ', N'1461800251               ', NULL, CAST(N'2015-09-08T00:00:00.000' AS DateTime), CAST(N'2016-03-08T00:00:00.000' AS DateTime), CAST(N'2016-03-08T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16099451500290           ', N'1463400249               ', NULL, CAST(N'2015-09-06T00:00:00.000' AS DateTime), CAST(N'2016-03-06T00:00:00.000' AS DateTime), CAST(N'2016-03-06T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16099519100293           ', N'14196200252              ', NULL, CAST(N'2015-09-09T00:00:00.000' AS DateTime), CAST(N'2016-03-09T00:00:00.000' AS DateTime), CAST(N'2016-03-09T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16099729200295           ', N'1409300254               ', NULL, CAST(N'2015-09-11T00:00:00.000' AS DateTime), CAST(N'2016-03-11T00:00:00.000' AS DateTime), CAST(N'2016-03-11T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16099830100296           ', N'1387400255               ', NULL, CAST(N'2015-09-12T00:00:00.000' AS DateTime), CAST(N'2016-03-12T00:00:00.000' AS DateTime), CAST(N'2016-03-12T00:00:00.000' AS DateTime), N'Cũ, đầy đủ trang', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'16099968400286           ', N'1513800245               ', NULL, CAST(N'2015-09-02T00:00:00.000' AS DateTime), CAST(N'2016-03-02T00:00:00.000' AS DateTime), CAST(N'2016-03-02T00:00:00.000' AS DateTime), N'Mới', NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'881415900013             ', N'27633800013              ', NULL, CAST(N'2015-01-13T00:00:00.000' AS DateTime), CAST(N'2015-07-13T00:00:00.000' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[tMuonTra] ([MaThe], [MaBanSao], [DatCoc], [NgayMuon], [NgayPhaiTra], [NgayTra], [TinhTrangSach], [Phat]) VALUES (N'88177104300181           ', N'27634200140              ', NULL, CAST(N'2015-05-20T00:00:00.000' AS DateTime), CAST(N'2015-11-20T00:00:00.000' AS DateTime), CAST(N'2015-11-20T00:00:00.000' AS DateTime), N'Rách bìa', 2000)
GO
INSERT [dbo].[tNgonNgu] ([MaNgonNgu], [TenNgonNgu]) VALUES (N'001                      ', N'Tiếng Việt')
GO
INSERT [dbo].[tNgonNgu] ([MaNgonNgu], [TenNgonNgu]) VALUES (N'002                      ', N'Tiếng Anh')
GO
INSERT [dbo].[tNgonNgu] ([MaNgonNgu], [TenNgonNgu]) VALUES (N'003                      ', N'Tiếng Pháp')
GO
INSERT [dbo].[tNgonNgu] ([MaNgonNgu], [TenNgonNgu]) VALUES (N'004                      ', N'Tiếng Đức')
GO
INSERT [dbo].[tNgonNgu] ([MaNgonNgu], [TenNgonNgu]) VALUES (N'005                      ', N'Tiếng Hàn')
GO
INSERT [dbo].[tNgonNgu] ([MaNgonNgu], [TenNgonNgu]) VALUES (N'006                      ', N'Tiếng Trung')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00001                    ', N'NXB Giáo Dục')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00002                    ', N'NXB Giáo Dục Việt Nam')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00003                    ', N'NXB Giao Thông Vận Tải')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00004                    ', N'NXB Hà Nội')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00005                    ', N'NXB Hải Phòng')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00006                    ', N'NXB Hội Nhà Văn')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00007                    ', N'NXB Hồng Bàng')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00008                    ', N'123Vietnamese')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00009                    ', N'1980Books')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00010                    ', N'30 Hàn Thuyên')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00011                    ', N'45 Đinh Tiên Hoàng')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00012                    ', N'Abrams')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00013                    ', N'ADCOM Software')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00014                    ', N'Against All Odds Productions')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00015                    ', N'Alpha books')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00016                    ', N'Amak')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00017                    ', N'Amulet Books')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00018                    ', N'An Dương Vương')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00019                    ', N'Anbooks')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00020                    ', N'Anchor')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00021                    ', N'Andrews McMeel Publishing')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00022                    ', N'Ánh Bình Minh')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00023                    ', N'Arrow')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00024                    ', N'Arrow Books')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00025                    ', N'Arrow/Children''s (a Division of Random House)')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00026                    ', N'Art Media Resources Ltd')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00027                    ', N'ArtBook')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00028                    ', N'Arteco')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00029                    ', N'ArtSign')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00030                    ', N'Audiobooks')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00031                    ', N'Avon')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00032                    ', N'baby online')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00033                    ', N'Bắc Hà')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00034                    ', N'BachvietBooks')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00035                    ', N'Báo SVVN - Hoa Học Trò')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00036                    ', N'Bảo Thắng')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00037                    ', N'Barron''s Educational Series')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00038                    ', N'Bến Thành Audio')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00039                    ', N'Berkley Trade')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00040                    ', N'Berlitz Publishing')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00041                    ', N'Best Fortune')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00042                    ', N'Big C An Lạc')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00043                    ', N'Bimemo')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00044                    ', N'Black Swan')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00045                    ', N'Bluemoon')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00046                    ', N'Blueway')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00047                    ', N'Books')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00048                    ', N'Bookshop-Loc')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00049                    ', N'Bridget A.M. March')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00050                    ', N'British English')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00051                    ', N'Broadway Books')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00052                    ', N'CADASA')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00053                    ', N'Cadasa.vn')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00054                    ', N'Cẩm Phong Books')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00055                    ', N'Cambridge University Press')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00056                    ', N'Campap')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00057                    ', N'CDIMex')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00058                    ', N'Cengage')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00059                    ', N'Cengage ELT BRE')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00060                    ', N'Cengage Learning')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00061                    ', N'Cengage Learning Australia')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00062                    ', N'CENGAGE Learning Custom Publishing')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00063                    ', N'CENGAGE LEARNING EDITORES, S.A. DE C.V.')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00064                    ', N'Cengage Learning EMEA')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00065                    ', N'Cengage Learning, Inc')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00066                    ', N'CEO Việt Nam')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00067                    ', N'ChiBooks')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00068                    ', N'CLARKE IRWIN')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00069                    ', N'Collins')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00070                    ', N'Comicola')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00071                    ', N'Cơn Bão Triệu Phú')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00072                    ', N'Công Nghệ Giáo Dục VN')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00073                    ', N'CÔNG TY CP TRÒ CHƠI EMOBI')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00074                    ', N'Công ty Nam Hương')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00075                    ', N'Cong Ty Ringier')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00076                    ', N'công ty Starmesas')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00077                    ', N'Công Ty TNHH Hoàng Sỹ Thu')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00078                    ', N'Công ty TNHH Máy Tính Minh Quân')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00079                    ', N'Công Ty TNHH MTV Phân phối Sài Gòn Co.op')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00080                    ', N'Công Ty TNHH MTV TT Việt MÃ')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00081                    ', N'Công Ty TNHH TM DV Phương Nga')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00082                    ', N'Công ty TNHH TM DV VHP')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00083                    ', N'Công ty TNNHH SXTMDV Nguyên Đạt')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00084                    ', N'Công ty Trong Tấn')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00085                    ', N'Công ty Truyền Đăng')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00086                    ', N'Corgi Books')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00087                    ', N'Corgi Childrens')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00088                    ', N'Covit')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00089                    ', N'Creative Photo')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00090                    ', N'CTCN Tin Học Nhà Trường')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00091                    ', N'CTCP Quang Minh')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00092                    ', N'CTCP Sách An Tiêm')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00093                    ', N'CTCP Sách Dịch')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00094                    ', N'CTCP Tinh Văn')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00095                    ', N'CTCP Truyền Thông Gia Phúc')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00096                    ', N'CTCPPP Nam Trường Sơn')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00097                    ', N'CTPHS Miền Nam')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00098                    ', N'CTTNHH PHần Mềm Tin Học Anh Ngọc')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00099                    ', N'Cty Cổ Phần Mạng Trực Tuyến Vietsin')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00100                    ', N'Cty CP An Ninh An Toàn Thông Tin CMC')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00101                    ', N'Cty CP Giải Pháp Tin Học Ánh Dương')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00102                    ', N'Cty CP Truyền Thông Viettrend')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00103                    ', N'Cty CP Đại Lý Xuất Bản VNN')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00104                    ', N'Cty Giáo dục toàn cầu')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00105                    ', N'Cty Sách Lạc Hồng')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00106                    ', N'Cty TNHH DV Truyền Thông - TM Gia Việt')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00107                    ', N'Cty Đinh Thái Phong')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00108                    ', N'Cửa hàng 652 CMT8')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00109                    ', N'Cửa hàng Thịnh Phong')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00110                    ', N'Definitions')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00111                    ', N'Delta Publishing')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00112                    ', N'Disney-Hyperion')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00113                    ', N'DNTN Việt Nét')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00114                    ', N'Doanh nhân cuối tuần')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00115                    ', N'DOMINO')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00116                    ', N'Dương Quang Thiện')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00117                    ', N'Edition Panorama GmbH')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00118                    ', N'EQuest')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00119                    ', N'Fahasa')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00120                    ', N'Fatima Company')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00121                    ', N'Footprint Handbooks')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00122                    ', N'Forbes Vietnam')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00123                    ', N'Fortis Publishing')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00124                    ', N'FranklinCovey Việt Nam')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00125                    ', N'Fujibooks')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00126                    ', N'G.I.S')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00127                    ', N'Gallery Books')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00128                    ', N'gamibook')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00129                    ', N'Garnet Education')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00130                    ', N'Gia Lai CTC')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00131                    ', N'Gia Định')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00132                    ', N'Giáo Dục Á Châu')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00133                    ', N'Giáo Dục Sài Gòn')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00134                    ', N'Grand Central Publishing')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00135                    ', N'Hà Minh Phương')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00136                    ', N'Hà Thế')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00137                    ', N'Hachette Book Group USA')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00138                    ', N'Hải Hà')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00139                    ', N'Hal Leonard Corp')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00140                    ', N'Happy Live')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00141                    ', N'Hardie Grant Books')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00142                    ', N'HARFANG')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00143                    ', N'Harper')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00144                    ', N'Harper Collins')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00145                    ', N'Harper Perennial')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00146                    ', N'Harper Voyager')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00147                    ', N'HarperCollins Children''s Books')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00148                    ', N'HarperCollins Publishers Ltd')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00149                    ', N'HarperCollins UK')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00150                    ', N'Harry N. Abrams')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00151                    ', N'Heinle')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00152                    ', N'Heinle & Heinle Publishers')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00153                    ', N'Heinle Cengage Learning')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00154                    ', N'Heinle ELT')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00155                    ', N'Hiệu Sách 38')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00156                    ', N'Hiệu Sách Vân')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00157                    ', N'Hoa Gấu Bông')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00158                    ', N'Hoa Học Trò')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00159                    ', N'Hoa Mặt trời')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00160                    ', N'Hoa Niên')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00161                    ', N'Hoàng Long')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00162                    ', N'Hoàng Mai')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00163                    ', N'Hoàng Ngọc Kỷ')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00164                    ', N'Hoàng Thư')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00165                    ', N'Hoàng Yến')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00166                    ', N'Hội nhà văn')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00167                    ', N'Hòn Tàu Việt')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00168                    ', N'Hồng Ân')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00169                    ', N'Hồng Lam Vũ Đình Hệ')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00170                    ', N'Houghton Mifflin')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00171                    ', N'HRnavi')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00172                    ', N'HS Minh Trí')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00173                    ', N'Huy Hoàng')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00174                    ', N'Hyperion')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00175                    ', N'iBook')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00176                    ', N'ICS')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00177                    ', N'Insight Guides')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00178                    ', N'IPM')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00179                    ', N'IRED')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00180                    ', N'Khai Trí')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00181                    ', N'Khang Việt')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00182                    ', N'Khánh Thủy')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00183                    ', N'Khóa Vàng Trí Tuệ')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00184                    ', N'KHP Nam')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00185                    ', N'Kiến Vàng')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00186                    ', N'Kinh Tế')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00187                    ', N'Kinh Đô 2')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00188                    ', N'Knowledge Link')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00189                    ', N'KT Tuấn Minh')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00190                    ', N'Kỳ Thư')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00191                    ', N'Kỳ Vân Phong')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00192                    ', N'L''Officiel Vietnam')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00193                    ', N'Lá Bối')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00194                    ', N'Lạc Việt')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00195                    ', N'Lại Văn Long')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00196                    ', N'Lâm Gia')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00197                    ', N'LamSoftCorp')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00198                    ', N'Lantabra')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00199                    ', N'Lao dong')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00200                    ', N'Le Media')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00201                    ', N'Lê Thiếu Nhơn')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00202                    ', N'Let''s Go Publications')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00203                    ', N'Libroclub')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00204                    ', N'Lịch Phương Nam')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00205                    ', N'Limbooks')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00206                    ', N'Little, Brown and Company')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00207                    ', N'Little, Brown Books')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00208                    ', N'London: Minerva/Mandarin Paperbacks')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00209                    ', N'Long Minh')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00210                    ', N'Longman')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00211                    ', N'Longman Asia Ltd ,Hong Kong')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00212                    ', N'Longman Publishing Group')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00213                    ', N'Longman UK')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00214                    ', N'Mạc Quang Huy - VinaPress')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00215                    ', N'Macmillan')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00216                    ', N'Macmillan Education')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00217                    ', N'Macmillan Education Australia')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00218                    ', N'Macmillan Hellas')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00219                    ', N'MACMILLAN PUBLISHERS, SA DE CV')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00220                    ', N'MacMillan/A. & C. Black')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00221                    ', N'Macmillan/McGraw-Hill')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00222                    ', N'Mariner Books')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00223                    ', N'Marshall Cavendish')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00224                    ', N'Marshall Cavendish Cuisine')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00225                    ', N'Marshall Cavendish International (Asia) Pte Ltd')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00226                    ', N'Marvy')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00227                    ', N'Mary Glasgow Magazines')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00228                    ', N'Maxbooks')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00229                    ', N'Maxxus')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00230                    ', N'MC/Summertown ELT')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00231                    ', N'Mcbooks')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00232                    ', N'McGraw-Hill')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00233                    ', N'McGraw-Hill Education')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00234                    ', N'McGraw-Hill Education Singapore')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00235                    ', N'McGraw-Hill Europe')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00236                    ', N'McGraw-Hill Higher Education')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00237                    ', N'Mediaz')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00238                    ', N'Megabook')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00239                    ', N'Minh Châu')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00240                    ', N'Minh khai')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00241                    ', N'Minh Lâm')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00242                    ', N'Minh Long')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00243                    ', N'Minh Tâm')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00244                    ', N'Minh Thắng')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00245                    ', N'Minh Triết')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00246                    ', N'Mốt cuộc sống')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00247                    ', N'Museum Fine Arts Houston')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00248                    ', N'Music faces')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00249                    ', N'n/a')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00250                    ', N'Nam Anh Túc Co. Ltd')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00251                    ', N'Nam Hoa')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00252                    ', N'Nam Long')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00253                    ', N'Nan A. Talese')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00254                    ', N'National Geographic')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00255                    ', N'NCC BEACARD')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00256                    ', N'NCC Smartcom')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00257                    ', N'Ne ukazan')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00258                    ', N'New Holland Publishers Ltd')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00259                    ', N'NewStarBooks')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00260                    ', N'Nghệ Sỹ Trẻ')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00261                    ', N'Nghiêm Bích Hoan')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00262                    ', N'Ngọc Mai')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00263                    ', N'Ngọc Trâm')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00264                    ', N'Ngòi Bút Việt')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00265                    ', N'Người Trẻ Việt')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00266                    ', N'Nguyen Huu Loc')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00267                    ', N'Nguyễn Lợi')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00268                    ', N'Nguyễn Thanh Châu')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00269                    ', N'Nguyễn Văn Lân')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00270                    ', N'Nguyệt Hồng')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00271                    ', N'Nhà cung cấp khác')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00272                    ', N'Nhã Nam')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00273                    ', N'Nhà Sách Doanh Trí')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00274                    ', N'Nhà sách Hoa Sen')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00275                    ', N'Nhà Sách Hoàng Long')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00276                    ', N'Nhà sách Mỹ Đình')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00277                    ', N'nhà sách Thúy Vũ')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00278                    ', N'Nhà sách Tư Pháp')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00279                    ', N'Nhà Vịt')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00280                    ', N'Nhân Văn')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00281                    ', N'Nhịp cầu Đầu Tư')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00282                    ', N'NPTPM Sinh viên Học Sinh')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00283                    ', N'NS Kiến Thức')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00284                    ', N'NS Nguyễn Oanh')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00285                    ', N'Nxb Âm nhạc')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00286                    ', N'Nxb Bách khoa Hà Nội')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00287                    ', N'Nxb Bản đồ')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00288                    ', N'Nxb Bloomsbury')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00289                    ', N'NXB Bưu Điện')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00290                    ', N'Nxb Cengage Learning')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00291                    ', N'NXB Chính Trị - Hành Chính')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00292                    ', N'NXB Chính Trị Quốc Gia')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00293                    ', N'NXB Công An Nhân Dân')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00294                    ', N'NXB Dân Trí')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00295                    ', N'NXB Hồng Đức')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00296                    ', N'NXB KHKT')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00297                    ', N'NXB Khoa học xã hội')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00298                    ', N'NXB Kim Đồng')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00299                    ', N'NXB Kinh Tế TP.HCM')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00300                    ', N'NXB Lao Động')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00301                    ', N'NXB Lao Động Xã Hội')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00302                    ', N'Nxb Lý Luận Chính Trị')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00303                    ', N'Nxb Medimedia Asia')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00304                    ', N'Nxb Mũi Cà Mau')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00305                    ', N'NXB Mỹ Thuật')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00306                    ', N'Nxb Nghệ An')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00307                    ', N'Nxb Nông Nghiệp')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00308                    ', N'NXB Phụ Nữ')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00309                    ', N'Nxb Phương Đông')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00310                    ', N'NXB Quân Đội Nhân Dân')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00311                    ', N'Nxb Sân Khấu')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00312                    ', N'NXB Tài Chính')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00313                    ', N'NXB Tài Nguyên Môi Trường & Bản Đồ Việt Nam')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00314                    ', N'NXB Thanh Hóa')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00315                    ', N'NXB Thanh Niên')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00316                    ', N'Nxb Thành phố Hồ Chí Minh')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00317                    ', N'NXB Thể Dục Thể Thao')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00318                    ', N'NXB Thế Giới')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00319                    ', N'NXB Thời Đại')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00320                    ', N'Nxb Thomson')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00321                    ', N'Nxb Thống kê')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00322                    ', N'Nxb Thông Tấn')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00323                    ', N'NXB Thông Tin và Truyền Thông')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00324                    ', N'NXB Thuận Hóa')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00325                    ', N'Nxb Tôn Giáo')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00326                    ', N'NXB Tổng hợp TP.HCM')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00327                    ', N'NXB Tổng Hợp Đồng Nai')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00328                    ', N'Nxb Tổng hợp Đồng Tháp')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00329                    ', N'NXB Trẻ')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00330                    ', N'NXB Tri thức')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00331                    ', N'Nxb Tư pháp')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00332                    ', N'Nxb Từ điển Bách khoa')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00333                    ', N'Nxb Văn Hóa')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00334                    ', N'Nxb Văn hoá Dân tộc')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00335                    ', N'Nxb Văn Hoá Sài Gòn')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00336                    ', N'NXB Văn Hoá Thông Tin')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00337                    ', N'NXB Văn Hóa Văn Nghệ')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00338                    ', N'NXB Văn Học')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00339                    ', N'Nxb Văn học nghệ thuật')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00340                    ', N'Nxb Văn Nghệ TP.HCM')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00341                    ', N'Nxb VHTT')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00342                    ', N'NXB Vina Publishing House')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00343                    ', N'Nxb Xây dựng')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00344                    ', N'Nxb Y học')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00345                    ', N'NXB Đà Nẵng')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00346                    ', N'NXB Đại Học Quốc Gia Hà Nội')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00347                    ', N'NXB Đại Học Quốc Gia TP.HCM')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00348                    ', N'Nxb Đại học Quốc gia TPHCM')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00349                    ', N'NXB Đại Học Sư Phạm')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00350                    ', N'NXB Đại Học Sư Phạm TPHCM')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00351                    ', N'NXB ĐH Công Nghiệp TPHCM')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00352                    ', N'NXB Đồng Nai')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00353                    ', N'NXBTH TPHCM')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00354                    ', N'OLIZANE')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00355                    ', N'Omega Việt Nam')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00356                    ', N'OTB')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00357                    ', N'Owlbooks')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00358                    ', N'Oxford University')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00359                    ', N'Oxford University Press')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00360                    ', N'PandaBooks')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00361                    ', N'Pantheon')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00362                    ', N'Pavico')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00363                    ', N'PC world')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00364                    ', N'Pearson')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00365                    ', N'Pearson Education (US)')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00366                    ', N'Pearson Education ESL')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00367                    ', N'Pearson Education Ltd.')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00368                    ', N'Pearson Education North Asia Ltd')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00369                    ', N'Pearson Longman')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00370                    ', N'Pearson Longman, ELT')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00371                    ', N'Penguin')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00372                    ', N'Penguin Books, Limited (UK)')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00373                    ', N'Periplus Editions')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00374                    ', N'Periplus Editions (HK) ltd.')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00375                    ', N'Phaidon Press')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00376                    ', N'Phaidon Press Ltd')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00377                    ', N'Phan Thị')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00378                    ', N'Pháp Luật')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00379                    ', N'Phát Quang')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00380                    ', N'Phoenix Rouge Ltd')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00381                    ', N'Phúc Minh')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00382                    ', N'Phúc Thịnh')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00383                    ', N'Phương Nam')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00384                    ', N'Phương Nam Brands Corp')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00385                    ', N'Phương Nam Film')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00386                    ', N'Phuong Quynh')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00387                    ', N'Phương Đông')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00388                    ', N'Plume')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00389                    ', N'Pocket Books')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00390                    ', N'PRENTICE HALL')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00391                    ', N'PublicAffairs')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00392                    ', N'Putnam Adult')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00393                    ', N'Quang Huy')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00394                    ', N'Quang Minh')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00395                    ', N'Quảng Văn')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00396                    ', N'Quỳnh Mai')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00397                    ', N'Quỳnh Trang')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00398                    ', N'Random House')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00399                    ', N'Random House Large Print')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00400                    ', N'Random House UK')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00401                    ', N'Renaissance Publishing')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00402                    ', N'RENO')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00403                    ', N'Rider')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00404                    ', N'Rider & Co')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00405                    ', N'RIO Creative')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00406                    ', N'RIO Việt Nam')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00407                    ', N'River Books Press Dist A C')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00408                    ', N'Riverhead Trade')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00409                    ', N'RSVP')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00410                    ', N'Ryland Peters & Small')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00411                    ', N'Sách Dân Trí')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00412                    ', N'Sách Hạnh Phúc')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00413                    ', N'Sách Hoa Hồng')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00414                    ', N'Sách Hương Giang')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00415                    ', N'Sách Khai Tâm')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00416                    ', N'Sách Phú Hà')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00417                    ', N'Sách Thái Uyên')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00418                    ', N'Sách Trẻ')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00419                    ', N'Sách Việt')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00420                    ', N'SahaBook')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00421                    ', N'Sahara')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00422                    ', N'Saigon Books')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00423                    ', N'Saigon Media')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00424                    ', N'Sake')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00425                    ', N'Savina')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00426                    ', N'Scholastic Teaching Resources')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00427                    ', N'Scribner')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00428                    ', N'Signet')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00429                    ', N'Signet Book')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00430                    ', N'Simon & Schuster')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00431                    ', N'Skybooks')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00432                    ', N'SM Ngòi Bút')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00433                    ', N'Smithsonia')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00434                    ', N'Sống Hạnh Phúc')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00435                    ', N'Sông Hương')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00436                    ', N'SPBook')
GO
INSERT [dbo].[tNhaXB] ([MaNXB], [TenNXB]) VALUES (N'00437                    ', N'Speak')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'11414                    ', N'Chuyên đề thiết kế Web với Photoshop CS', N'00018                    ', N'003                      ', N'00003                    ', N'Hoàng Tuyết Trân', N'2012', N'3  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'35    ', N'3   ', N'60  ', 153000, N'11414_chuyen-de-thiet-ke-web-voi-photoshop-cs.jpg                                                   ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'12279                    ', N'Hướng dẫn sử dụng Viusual Lisp co người mới bắt đầu', N'00018                    ', N'002                      ', N'00002                    ', N'Hoàng Tuyết Mai', N'2010', N'1  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'345   ', NULL, NULL, 152000, N'12279_huong-dan-su-dung-visual-lisp-2007-danh-cho-nguoi-moi-bat-dau-.jpg                            ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'12352                    ', N'Lập trình Java nâng cao', N'00018                    ', N'001                      ', N'00001                    ', N'Hoàng Tụy', N'2011', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'45    ', NULL, NULL, 151000, N'12352_lap-trinh-java-nang-cao.jpg                                                                   ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'13874                    ', N'Tự học Frontpage 2003 trong 10 tiếng', N'00018                    ', N'006                      ', N'00007                    ', N'Hà Phương', N'2012', N'1  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'908   ', NULL, NULL, 150000, N'13874_tu-hoc-frontpage2003-trong-10-tieng.jpg                                                       ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'14093                    ', N'101 bước thiết kế trang Web trong 10 tiếng', N'00018                    ', N'005                      ', N'00006                    ', N'KS Công Tuân PC, Nguyễn Thanh Hải ', N'2013', N'1  ', N'WWW hay Web là m?t d?ch v? thông tin; m?t ph?n c?a Internet bao g?m nhi?u máy ch? web server trên kh?p th? gi?i. Các web server này ch?a thông tin mà ngu?i dùng ? b?t k? dâu c?ng có th? truy c?p. WWW d?a trên m?t k? thu?t bi?u di?n thông tin có tên g?i là siêu van b?n.', N'89    ', N'1   ', N'1   ', 149000, N'14093_101-buoc-thiet-ke-trang-web-trong-10-tieng.jpg                                                ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'14166                    ', N'95 Bài toán và giải pháp gỡ rối Java', N'00018                    ', N'004                      ', N'00005                    ', N'Hà Phạm', N'2014', N'2  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'56    ', NULL, NULL, 148000, N'14166_95-bai-toan-va-giai-phap-go-roi-java.jpg                                                      ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'141962                   ', N'Bí quyết học nhanh nhớ lâu', N'00004                    ', N'003                      ', N'00004                    ', N'Hà Ninh', N'2015', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'24    ', NULL, NULL, 147000, N'141962_bi-quyet-hoc-nhanh-nho-lau.jpg                                                               ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'14618                    ', N'Học nhanh Flash 8 (có CD kèm sách)', N'00018                    ', N'002                      ', N'00003                    ', N'Hà Nhím', N'2017', N'2  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'125   ', N'2   ', N'34  ', 146000, N'14618_hoc-nhanh-flash-8-co-cd-rom-kem-theo-sach.jpg                                                 ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'14631                    ', N'Các thủ thuật HTML và thiết kế Web', N'00017                    ', N'001                      ', N'00002                    ', N'Bill Zanker', N'2016', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'57    ', NULL, NULL, 145000, N'14631_cac-thu-thuat-trong-html-va-thiet-ke-web.jpg                                                  ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'14634                    ', N'xml nen tang ung dung', N'00015                    ', N'006                      ', N'00001                    ', N'Bill Slavin', N'2010', N'2  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'89    ', NULL, NULL, 144000, N'14634_xml-nen-tang-ung-dung.jpg                                                                     ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'14739                    ', N'su dung dhtml va css thiet ke web dong', N'00014                    ', N'005                      ', N'00007                    ', N'Bill Sammon', N'2011', N'2  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'76    ', NULL, NULL, 143000, N'14739_su-dung-dhtml-va-css-thiet-ke-web-dong.jpg                                                    ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'14913                    ', N'macromedia dreamweaver 8 phan co ban tap 2', N'00013                    ', N'004                      ', N'00006                    ', N'Bill McGuire', N'2012', N'1  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'45    ', NULL, NULL, 142000, N'14913_macromedia-dreamweaver-8-phan-co-ban-tap-2.jpg                                                ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'14914                    ', N'macromedia dreamweaver 8 phan co ban tap 1', N'00012                    ', N'003                      ', N'00005                    ', N'Bill McFarlan', N'2013', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'234   ', N'1   ', N'5   ', 141000, N'14914_macromedia-dreamweaver-8-phan-co-ban-tap-1.jpg                                                ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'15138                    ', N'tu hoc lap trinh web voi php trong 10 tieng', N'00011                    ', N'002                      ', N'00004                    ', N'Akutagawa Ryunosuke', N'2014', N'4  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'35    ', N'4   ', N'25  ', 140000, N'15138_tu-hoc-lap-trinh-web-voi-php-trong-10-tieng.jpg                                               ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'15156                    ', N'tu hoc javascript trong 10 tieng', N'00010                    ', N'001                      ', N'00003                    ', N'Akiyoshi Torii', N'2015', N'3  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'345   ', N'7   ', N'20  ', 139000, N'15156_tu-hoc-javascript-trong-10-tieng.jpg                                                          ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'152254                   ', N'huong dan thuc hanh khac phuc su co va toi uu hoa microsoft windows 8', N'00009                    ', N'006                      ', N'00002                    ', N'Akira Toriyama', N'2017', N'2  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'45    ', N'4   ', N'10  ', 138000, N'152254_huong-dan-thuc-hanh-khac-phuc-su-co-va-toi-uu-hoa-microsoft-windows-8.jpg                    ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'152256                   ', N'huong dan thuc hanh microsoft windows 8 don gian va de hieu', N'00008                    ', N'005                      ', N'00001                    ', N'Akira Ikegawa', N'2016', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'908   ', N'23  ', N'60  ', 137000, N'152256_huong-dan-thuc-hanh-microsoft-windows-8-don-gian-va-de-hieu.jpg                              ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'15531                    ', N'thuc hanh thiet ke web chuyen nghiep bang microsoft frontpage 2003', N'00007                    ', N'004                      ', N'00007                    ', N'Ajahn Chan', N'2010', N'1  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'89    ', NULL, NULL, 136000, N'15531_thuc-hanh-thiet-ke-web-chuyen-nghiep-bang-microsoft-frontpage-2003.jpg                        ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'155541                   ', N'doc vi bat ky ai', N'00006                    ', N'003                      ', N'00006                    ', N'Hoàng Vân', N'2011', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'56    ', NULL, NULL, 135000, N'155541_doc-vi-bat-ky-ai.jpg                                                                         ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'15560                    ', N'kham pha windows xp danh cho nguoi moi bat dau', N'00005                    ', N'002                      ', N'00005                    ', N'Hoàng Văn', N'2012', N'1  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'24    ', NULL, NULL, 134000, N'15560_kham-pha-windows-xp-danh-cho-nguoi-moi-bat-dau.jpg                                            ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'155967                   ', N'huan luyen ki nang ban hang', N'00004                    ', N'001                      ', N'00004                    ', N'Hoàng Ưng', N'2013', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'125   ', N'1   ', NULL, 133000, N'155967_huan-luyen-ki-nang-ban-hang.jpg                                                              ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'157170                   ', N'nuoi con khong phai la cuoc chien', N'00003                    ', N'006                      ', N'00003                    ', N'Hoàng Tuyết Trân', N'2014', N'2  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'57    ', NULL, NULL, 132000, N'157170_nuoi-con-khong-phai-la-cuoc-chien.jpg                                                        ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'16954                    ', N'cac giai phap lap trinh aspnet 20 tap 1', N'00002                    ', N'005                      ', N'00002                    ', N'Hoàng Tuyết Mai', N'2015', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'89    ', NULL, NULL, 131000, N'16954_cac-giai-phap-lap-trinh-aspnet-20-tap-1.jpg                                                   ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'16959                    ', N'cac giai phap lap trinh visual basic net tap 1 dung kem dia', N'00001                    ', N'004                      ', N'00001                    ', N'Hoàng Tụy', N'2017', N'2  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'76    ', NULL, NULL, 130000, N'16959_cac-giai-phap-lap-trinh-visual-basic-net-tap-1-dung-kem-dia.jpg                               ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'16960                    ', N'cac giai phap lap trinh visual basic net tap 2 dung kem dia', N'00021                    ', N'003                      ', N'00007                    ', N'Hà Phương', N'2016', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'45    ', NULL, NULL, 129000, N'16960_cac-giai-phap-lap-trinh-visual-basic-net-tap-2-dung-kem-dia.jpg                               ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'16966                    ', N'cac giai phap lap trinh c dung kem dia', N'00020                    ', N'002                      ', N'00006                    ', N'Hà Phi Nhi', N'2010', N'2  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'234   ', NULL, NULL, 128000, N'16966_cac-giai-phap-lap-trinh-c-dung-kem-dia.jpg                                                    ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'17044                    ', N'thu thuat lap trinh java dung kem dia', N'00019                    ', N'001                      ', N'00005                    ', N'Hà Phạm', N'2011', N'2  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'35    ', NULL, NULL, 127000, N'17044_thu-thuat-lap-trinh-java-dung-kem-dia.jpg                                                     ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'17142                    ', N'C# 2005 Tập 5 Lập trình ASP.NET Quyển 3 Điều khiển kết nối CSDL (có CD kèm sách)', N'00018                    ', N'006                      ', N'00004                    ', N'Hà Ninh', N'2012', N'1  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'345   ', NULL, NULL, 126000, N'17142_-2005-tap-5-lap-trinh-aspnet-20-quyen-3-dieu-khien-ket-noi-co-so-du-lieu-co-cd.jpg            ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'17143                    ', N'Tuyển tập thủ thuật Javascript Tập 2', N'00018                    ', N'005                      ', N'00003                    ', N'Hà Nhím', N'2013', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'45    ', N'12  ', N'50  ', 125000, N'17143_tuyen-tap-thu-thuat-javascript-tap-2.jpg                                                      ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'17144                    ', N'Tuyển tập thủ thuật Javascript Tập 1', N'00018                    ', N'004                      ', N'00002                    ', N'Bill Zanker', N'2014', N'4  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'908   ', N'3   ', N'60  ', 124000, N'17144_tuyen-tap-thu-thuat-javascript-tap-1.jpg                                                      ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'17146                    ', N'visual basic 2005 tap 3 quyen 2 lap trinh web voi co so du lieu kem cd bai tap', N'00015                    ', N'003                      ', N'00001                    ', N'Bill Slavin', N'2015', N'3  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'89    ', NULL, NULL, 123000, N'17146_visual-basic-2005-tap-3-quyen-2-lap-trinh-web-voi-co-so-du-lieu-kem-cd-bai-tap.jpg            ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'17150                    ', N'Tự học thiết kế Web tập 2', N'00018                    ', N'002                      ', N'00007                    ', N'Bill Sammon', N'2017', N'2  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'56    ', NULL, NULL, 122000, N'17150_tu-hoc-thiet-ke-web-tap-2.jpg                                                                 ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'17193                    ', N'php va ung dung web nguon mo tap 1 blog', N'00013                    ', N'001                      ', N'00006                    ', N'Bill McGuire', N'2016', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'24    ', NULL, NULL, 121000, N'17193_php-va-ung-dung-web-nguon-mo-tap-1-blog.jpg                                                   ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'17223                    ', N'thiet ke website voi cong cu ho tro truc tuyen', N'00012                    ', N'006                      ', N'00005                    ', N'Bill McFarlan', N'2010', N'1  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'125   ', NULL, NULL, 120000, N'17223_thiet-ke-website-voi-cong-cu-ho-tro-truc-tuyen.jpg                                            ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'17263                    ', N'Xây dựng Website với Dreamwaver 8', N'00018                    ', N'005                      ', N'00004                    ', N'Akutagawa Ryunosuke', N'2011', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'57    ', NULL, NULL, 119000, N'17263_xay-dung-website-voi-dreamwaver-8.jpg                                                         ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'17571                    ', N'macromedia dreamweaver 8 phan nang cao', N'00010                    ', N'004                      ', N'00003                    ', N'Akiyoshi Torii', N'2012', N'1  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'89    ', NULL, NULL, 118000, N'17571_macromedia-dreamweaver-8-phan-nang-cao.jpg                                                    ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'17572                    ', N'C# 2005 Tập 5 Lập trình ASP.NET Quyển 4 đối tượng ADO.NET 2.0 và XML (có CD kèm theo)', N'00009                    ', N'003                      ', N'00002                    ', N'Akira Toriyama', N'2013', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'76    ', N'2   ', N'34  ', 117000, N'17572_c-2005-tap-5-lap-trinh-aspnet-quyen-4-doi-tuong-adonet-20-va-xml-co-cd-kem-theo.jpg           ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'17574                    ', N'tu hoc thiet ke web tap 1 dung kem dia cd', N'00008                    ', N'002                      ', N'00001                    ', N'Akira Ikegawa', N'2014', N'2  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'45    ', NULL, NULL, 116000, N'17574_tu-hoc-thiet-ke-web-tap-1-dung-kem-dia-cd.jpg                                                 ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'17580                    ', N'C# 2005 Tập 5 Lập trình ASP.NET Quyển 3 Điều khiển kết nối CSDL (có CD kèm sách)', N'00007                    ', N'001                      ', N'00007                    ', N'Ajahn Chan', N'2015', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'234   ', NULL, NULL, 115000, N'17580_c-2005-tap-5-lap-trinh-aspnet-20-quyen-3-dieu-khien-ket-noi-co-so-du-lieu-co-cd.jpg           ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'17607                    ', N'xay dung forum voi webwizforum', N'00006                    ', N'006                      ', N'00006                    ', N'Hoàng Vân', N'2017', N'2  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'35    ', NULL, NULL, 114000, N'17607_xay-dung-forum-voi-webwizforum.jpg                                                            ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'17633                    ', N'tu hoc thiet ke web', N'00005                    ', N'005                      ', N'00005                    ', N'Hoàng Văn', N'2016', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'345   ', NULL, NULL, 113000, N'17633_tu-hoc-thiet-ke-web.jpg                                                                       ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'17722                    ', N'hoc thiet ke web bang hinh minh hoa tap 2', N'00004                    ', N'004                      ', N'00004                    ', N'Hoàng Ưng', N'2010', N'2  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'45    ', N'1   ', N'5   ', 112000, N'17722_hoc-thiet-ke-web-bang-hinh-minh-hoa-tap-2.jpg                                                 ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'18261                    ', N'thu thuat windows xp', N'00003                    ', N'003                      ', N'00003                    ', N'Hoàng Tuyết Trân', N'2011', N'2  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'908   ', N'4   ', N'25  ', 111000, N'18261_thu-thuat-windows-xp.jpg                                                                      ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'206668                   ', N'thuong kinh ky su', N'00002                    ', N'002                      ', N'00002                    ', N'Hoàng Tuyết Mai', N'2012', N'1  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'89    ', N'7   ', N'20  ', 110000, N'206668_thuong-kinh-ky-su.jpg                                                                        ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'212483                   ', N'mong kinh su', N'00001                    ', N'001                      ', N'00001                    ', N'Hoàng Tụy', N'2013', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'56    ', N'4   ', N'10  ', 109000, N'212483_mong-kinh-su.jpg                                                                             ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'222227                   ', N'cau chuyen ben noi lau', N'00021                    ', N'006                      ', N'00007                    ', N'Hà Phương', N'2014', N'4  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'24    ', N'23  ', N'60  ', 108000, N'222227_cau-chuyen-ben-noi-lau.jpg                                                                   ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'222490                   ', N'combo hillary clinton bi mat quoc gia va su hoi sinh donald j trump da den luc', N'00020                    ', N'005                      ', N'00006                    ', N'Hà Phi Nhi', N'2015', N'3  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'125   ', NULL, NULL, 107000, N'222490_combo-hillary-clinton-bi-mat-quoc-gia-va-su-hoi-sinh-donald-j-trump-da-den-luc.jpg           ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'223405                   ', N'donald trump tro lo truyen thong hay bo oc vi dai', N'00019                    ', N'004                      ', N'00005                    ', N'Hà Phạm', N'2017', N'2  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'57    ', NULL, NULL, 106000, N'223405_donald-trump-tro-lo-truyen-thong-hay-bo-oc-vi-dai.jpg                                        ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'225865                   ', N'nui xanh nay van do', N'00001                    ', N'003                      ', N'00004                    ', N'Hà Ninh', N'2016', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'89    ', NULL, NULL, 105000, N'225865_nui-xanh-nay-van-do.jpg                                                                      ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'226200                   ', N'loi tua mot tinh yeu', N'00001                    ', N'002                      ', N'00003                    ', N'Hà Nhím', N'2010', N'1  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'76    ', N'1   ', NULL, 104000, N'226200_loi-tua-mot-tinh-yeu.jpg                                                                     ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'226685                   ', N'chuyen nha bong bom bach', N'00001                    ', N'001                      ', N'00002                    ', N'Bill Zanker', N'2011', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'45    ', NULL, NULL, 103000, N'226685_chuyen-nha-bong-bom-bach.jpg                                                                 ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'227063                   ', N'yeu con nhu nang xuan', N'00001                    ', N'006                      ', N'00001                    ', N'Bill Slavin', N'2012', N'1  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'234   ', NULL, NULL, 102000, N'227063_yeu-con-nhu-nang-xuan.jpg                                                                    ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'22780                    ', N'108 thu thuat tu lam chu windows vista', N'00014                    ', N'005                      ', N'00007                    ', N'Bill Sammon', N'2013', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'35    ', NULL, NULL, 101000, N'22780_108-thu-thuat-tu-lam-chu-windows-vista.jpg                                                    ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'228637                   ', N'dac nhan tam tai ban 2016', N'00013                    ', N'004                      ', N'00006                    ', N'Bill McGuire', N'2014', N'2  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'345   ', NULL, NULL, 100000, N'228637_dac-nhan-tam-tai-ban-2016.jpg                                                                ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'228645                   ', N'ngay xua co mot chuyen tinh bia mem kem qua tang', N'00012                    ', N'003                      ', N'00005                    ', N'Bill McFarlan', N'2015', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'45    ', NULL, NULL, 99000, N'228645_ngay-xua-co-mot-chuyen-tinh-bia-mem-kem-qua-tang.jpg                                         ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'230308                   ', N'mua he nam ay', N'00011                    ', N'002                      ', N'00004                    ', N'Akutagawa Ryunosuke', N'2017', N'2  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'908   ', NULL, NULL, 98000, N'230308_mua-he-nam-ay.jpg                                                                            ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'234109                   ', N'tuoi tre dang gia bao nhieu', N'00010                    ', N'001                      ', N'00003                    ', N'Akiyoshi Torii', N'2016', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'89    ', NULL, NULL, 97000, N'234109_tuoi-tre-dang-gia-bao-nhieu.jpg                                                              ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'236459                   ', N'cuoc song thuong luu cua hoang de meo', N'00009                    ', N'006                      ', N'00002                    ', N'Akira Toriyama', N'2010', N'2  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'56    ', N'12  ', N'50  ', 96000, N'236459_cuoc-song-thuong-luu-cua-hoang-de-meo.jpg                                                    ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'237369                   ', N'dan ba hu ao', N'00008                    ', N'005                      ', N'00001                    ', N'Akira Ikegawa', N'2011', N'2  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'24    ', N'3   ', N'60  ', 95000, N'237369_dan-ba-hu-ao.jpg                                                                             ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'23862                    ', N'huong dan hoc windows xp can ban', N'00007                    ', N'004                      ', N'00007                    ', N'Ajahn Chan', N'2012', N'1  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'125   ', NULL, NULL, 94000, N'23862_huong-dan-hoc-windows-xp-can-ban.jpg                                                          ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'238977                   ', N've dau nhung vet thuong', N'00001                    ', N'003                      ', N'00006                    ', N'Hoàng Vân', N'2013', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'57    ', NULL, NULL, 93000, N'238977_ve-dau-nhung-vet-thuong.jpg                                                                  ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'243526                   ', N'ngoai bo dong la mat troi', N'00001                    ', N'002                      ', N'00005                    ', N'Hoàng Văn', N'2014', N'4  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'89    ', NULL, NULL, 92000, N'243526_ngoai-bo-dong-la-mat-troi.jpg                                                                ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'245453                   ', N'hoang le nhat thong chi dien nghia', N'00004                    ', N'001                      ', N'00004                    ', N'Hoàng Ưng', N'2015', N'3  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'76    ', NULL, NULL, 91000, N'245453_hoang-le-nhat-thong-chi-dien-nghia.jpg                                                       ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'246166                   ', N'loi song toi gian cua nguoi nhat', N'00003                    ', N'006                      ', N'00003                    ', N'Hoàng Tuyết Trân', N'2017', N'2  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'45    ', NULL, NULL, 90000, N'246166_loi-song-toi-gian-cua-nguoi-nhat.jpg                                                         ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'248142                   ', N'leu chong', N'00002                    ', N'005                      ', N'00002                    ', N'Hoàng Tuyết Mai', N'2016', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'234   ', NULL, NULL, 89000, N'248142_leu-chong.jpg                                                                                ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'251785                   ', N'guong sang nguoi xua bien cuong vung chac xa tac dai lau', N'00011                    ', N'004                      ', N'00001                    ', N'Hoàng Tụy', N'2010', N'1  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'35    ', N'2   ', N'34  ', 88000, N'251785_guong-sang-nguoi-xua-bien-cuong-vung-chac-xa-tac-dai-lau.jpg                                 ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'254304                   ', N'thanh tong di thao', N'00021                    ', N'003                      ', N'00007                    ', N'Hà Phương', N'2011', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'345   ', NULL, NULL, 87000, N'254304_thanh-tong-di-thao.jpg                                                                       ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'256862                   ', N'viet su nhung guong mat phan dien', N'00020                    ', N'002                      ', N'00006                    ', N'Hà Phi Nhi', N'2012', N'1  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'45    ', NULL, NULL, 86000, N'256862_viet-su-nhung-guong-mat-phan-dien.jpg                                                        ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'258204                   ', N'nguoi quan tuong cua vua quang trung', N'00019                    ', N'001                      ', N'00005                    ', N'Hà Phạm', N'2013', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'908   ', NULL, NULL, 85000, N'258204_nguoi-quan-tuong-cua-vua-quang-trung.jpg                                                     ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'270445                   ', N'thien ha chi vuong', N'00011                    ', N'006                      ', N'00004                    ', N'Hà Ninh', N'2014', N'2  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'89    ', NULL, NULL, 84000, N'270445_thien-ha-chi-vuong.jpg                                                                       ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'270454                   ', N'vu tich', N'00017                    ', N'005                      ', N'00003                    ', N'Hà Nhím', N'2015', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'56    ', N'1   ', N'5   ', 83000, N'270454_vu-tich.jpg                                                                                  ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'270796                   ', N'power course english in 4 weeks thong thao tieng anh chi trong 4 tuan kem 1 cd', N'00016                    ', N'004                      ', N'00002                    ', N'Bill Zanker', N'2017', N'2  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'24    ', N'4   ', N'25  ', 82000, N'270796_power-course-english-in-4-weeks-thong-thao-tieng-anh-chi-trong-4-tuan-kem-1-cd.jpg           ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'271456                   ', N'ho duong tap 1 ngay ve gia dinh', N'00015                    ', N'003                      ', N'00001                    ', N'Bill Slavin', N'2016', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'125   ', N'7   ', N'20  ', 81000, N'271456_ho-duong-tap-1-ngay-ve-gia-dinh.jpg                                                          ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'271471                   ', N'ho duong tap 2 nam bac dai thong', N'00014                    ', N'002                      ', N'00007                    ', N'Bill Sammon', N'2010', N'2  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'57    ', N'4   ', N'10  ', 80000, N'271471_ho-duong-tap-2-nam-bac-dai-thong.jpg                                                         ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'271697                   ', N'cu hich tai ban 2017', N'00013                    ', N'001                      ', N'00006                    ', N'Bill McGuire', N'2011', N'2  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'89    ', N'23  ', N'60  ', 79000, N'271697_cu-hich-tai-ban-2017.jpg                                                                     ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'271751                   ', N'barrons 600 essential words for the toeic kem 2 cd tai ban 2016', N'00012                    ', N'006                      ', N'00005                    ', N'Bill McFarlan', N'2012', N'1  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'76    ', NULL, NULL, 78000, N'271751_barrons-600-essential-words-for-the-toeic-kem-2-cd-tai-ban-2016.jpg                          ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'271842                   ', N'bo flashcards 600 essential words for the toeic tai ban 2017', N'00011                    ', N'005                      ', N'00004                    ', N'Akutagawa Ryunosuke', N'2013', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'45    ', NULL, NULL, 77000, N'271842_bo-flashcards-600-essential-words-for-the-toeic-tai-ban-2017.jpg                             ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'271940                   ', N'bai tap ngu phap tieng anh co ban danh cho hoc sinh quyen 5', N'00010                    ', N'004                      ', N'00003                    ', N'Akiyoshi Torii', N'2014', N'4  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'234   ', NULL, NULL, 76000, N'271940_bai-tap-ngu-phap-tieng-anh-co-ban-danh-cho-hoc-sinh-quyen-5.jpg                              ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'271949                   ', N'bai tap ngu phap tieng anh co ban danh cho hoc sinh quyen 6', N'00009                    ', N'003                      ', N'00002                    ', N'Akira Toriyama', N'2015', N'3  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'35    ', N'1   ', NULL, 75000, N'271949_bai-tap-ngu-phap-tieng-anh-co-ban-danh-cho-hoc-sinh-quyen-6.jpg                              ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'271958                   ', N'bai tap ngu phap tieng anh co ban danh cho hoc sinh quyen 2', N'00008                    ', N'002                      ', N'00001                    ', N'Akira Ikegawa', N'2017', N'2  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'345   ', NULL, NULL, 74000, N'271958_bai-tap-ngu-phap-tieng-anh-co-ban-danh-cho-hoc-sinh-quyen-2.jpg                              ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'271969                   ', N'bai tap ngu phap tieng anh co ban danh cho hoc sinh quyen 3', N'00007                    ', N'001                      ', N'00007                    ', N'Ajahn Chan', N'2016', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'45    ', NULL, NULL, 73000, N'271969_bai-tap-ngu-phap-tieng-anh-co-ban-danh-cho-hoc-sinh-quyen-3.jpg                              ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'272080                   ', N'con khong ngoc con chi thong minh theo mot cach khac tai ban 2017', N'00006                    ', N'006                      ', N'00006                    ', N'Hoàng Vân', N'2010', N'1  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'908   ', NULL, NULL, 72000, N'272080_con-khong-ngoc-con-chi-thong-minh-theo-mot-cach-khac-tai-ban-2017.jpg                        ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'272270                   ', N'listening strategies for the ielts test book 2 kem 1 cd', N'00005                    ', N'005                      ', N'00005                    ', N'Hoàng Văn', N'2011', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'89    ', NULL, NULL, 71000, N'272270_listening-strategies-for-the-ielts-test-book-2-kem-1-cd.jpg                                  ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'272279                   ', N'listening strategies for the ielts test book 1 kem 1 cd', N'00004                    ', N'004                      ', N'00004                    ', N'Hoàng Ưng', N'2012', N'1  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'56    ', NULL, NULL, 70000, N'272279_listening-strategies-for-the-ielts-test-book-1-kem-1-cd.jpg                                  ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'272302                   ', N'bai tap ngu phap tieng anh co ban danh cho hoc sinh quyen 1', N'00003                    ', N'003                      ', N'00003                    ', N'Hoàng Tuyết Trân', N'2013', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'24    ', NULL, NULL, 69000, N'272302_bai-tap-ngu-phap-tieng-anh-co-ban-danh-cho-hoc-sinh-quyen-1.jpg                              ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'272304                   ', N'bai tap ngu phap tieng anh co ban danh cho hoc sinh quyen 4', N'00002                    ', N'002                      ', N'00002                    ', N'Hoàng Tuyết Mai', N'2014', N'2  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'125   ', NULL, NULL, 68000, N'272304_bai-tap-ngu-phap-tieng-anh-co-ban-danh-cho-hoc-sinh-quyen-4.jpg                              ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'273513                   ', N'cham soc suc khoe tre em tap 1 sua me sua cong thuc', N'00003                    ', N'001                      ', N'00001                    ', N'Hoàng Tụy', N'2015', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'57    ', N'12  ', N'50  ', 67000, N'273513_cham-soc-suc-khoe-tre-em-tap-1-sua-me-sua-cong-thuc.jpg                                      ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'274341                   ', N'bai tap bo tro ky nang viet tieng anh', N'00021                    ', N'006                      ', N'00007                    ', N'Hà Phương', N'2017', N'2  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'89    ', N'3   ', N'60  ', 66000, N'274341_bai-tap-bo-tro-ky-nang-viet-tieng-anh.jpg                                                    ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'274350                   ', N'cac dang bai tap chua loi sai tieng anh', N'00020                    ', N'005                      ', N'00006                    ', N'Hà Phi Nhi', N'2016', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'76    ', NULL, NULL, 65000, N'274350_cac-dang-bai-tap-chua-loi-sai-tieng-anh.jpg                                                  ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'274359                   ', N'120 bai luan tieng anh', N'00019                    ', N'004                      ', N'00005                    ', N'Hà Phạm', N'2010', N'2  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'45    ', NULL, NULL, 64000, N'274359_120-bai-luan-tieng-anh.jpg                                                                   ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'274379                   ', N'hoan thien ky nang phat am va danh dau trong am tieng anh', N'00007                    ', N'003                      ', N'00004                    ', N'Hà Ninh', N'2011', N'2  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'234   ', NULL, NULL, 63000, N'274379_hoan-thien-ky-nang-phat-am-va-danh-dau-trong-am-tieng-anh.jpg                                ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'274611                   ', N'3 nguoi thay vi dai', N'00017                    ', N'002                      ', N'00003                    ', N'Hà Nhím', N'2012', N'1  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'35    ', NULL, NULL, 62000, N'274611_3-nguoi-thay-vi-dai.jpg                                                                      ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'274616                   ', N'mind map english hoc tieng anh theo so do tu duy kem 1 cd', N'00016                    ', N'001                      ', N'00002                    ', N'Bill Zanker', N'2013', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'345   ', NULL, NULL, 61000, N'274616_mind-map-english-hoc-tieng-anh-theo-so-do-tu-duy-kem-1-cd.jpg                                ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'274618                   ', N'forgotten english conversation tieng anh ngoai lop hoc kem 1 cd', N'00015                    ', N'006                      ', N'00001                    ', N'Bill Slavin', N'2014', N'4  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'45    ', NULL, NULL, 60000, N'274618_forgotten-english-conversation-tieng-anh-ngoai-lop-hoc-kem-1-cd.jpg                          ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'274636                   ', N'luyen thi toeic 750 reading tai ban 2017', N'00014                    ', N'005                      ', N'00007                    ', N'Bill Sammon', N'2015', N'3  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'908   ', N'2   ', N'34  ', 59000, N'274636_luyen-thi-toeic-750-reading-tai-ban-2017.jpg                                                 ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'275018                   ', N'ba me oi con bi bat nat', N'00013                    ', N'004                      ', N'00006                    ', N'Bill McGuire', N'2017', N'2  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'89    ', NULL, NULL, 58000, N'275018_ba-me-oi-con-bi-bat-nat.jpg                                                                  ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'275185                   ', N'con gai cua me', N'00012                    ', N'003                      ', N'00005                    ', N'Bill McFarlan', N'2016', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'56    ', NULL, NULL, 57000, N'275185_con-gai-cua-me.jpg                                                                           ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'275187                   ', N'nu hon tu than phan 4 series tho san dem', N'00011                    ', N'002                      ', N'00004                    ', N'Akutagawa Ryunosuke', N'2010', N'1  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'24    ', NULL, NULL, 56000, N'275187_nu-hon-tu-than-phan-4-series-tho-san-dem.jpg                                                 ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'275246                   ', N'tren duong bang tai ban 2017', N'00010                    ', N'001                      ', N'00003                    ', N'Akiyoshi Torii', N'2011', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'125   ', NULL, NULL, 55000, N'275246_tren-duong-bang-tai-ban-2017.jpg                                                             ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'275589                   ', N'khien nguoi khac thay doi suy nghi', N'00009                    ', N'006                      ', N'00002                    ', N'Akira Toriyama', N'2012', N'1  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'57    ', N'1   ', N'5   ', 54000, N'275589_khien-nguoi-khac-thay-doi-suy-nghi.jpg                                                       ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'275713                   ', N'cung con chao lop 1', N'00008                    ', N'005                      ', N'00001                    ', N'Akira Ikegawa', N'2013', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'89    ', N'4   ', N'25  ', 53000, N'275713_cung-con-chao-lop-1.jpg                                                                      ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'275764                   ', N'toeic analyst second edition kem 3 cd tai ban 2015', N'00007                    ', N'004                      ', N'00007                    ', N'Ajahn Chan', N'2014', N'2  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'76    ', N'7   ', N'20  ', 52000, N'275764_toeic-analyst-second-edition-kem-3-cd-tai-ban-2015.jpg                                       ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'275807                   ', N'bi quyet luyen thi ielts kem 1 cd tai ban 92017', N'00006                    ', N'003                      ', N'00006                    ', N'Hoàng Vân', N'2015', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'45    ', N'4   ', N'10  ', 51000, N'275807_bi-quyet-luyen-thi-ielts-kem-1-cd-tai-ban-92017.jpg                                          ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'275857                   ', N'outlander chuon chuon ho phach tap 2', N'00005                    ', N'002                      ', N'00005                    ', N'Hoàng Văn', N'2017', N'2  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'234   ', N'23  ', N'60  ', 50000, N'275857_outlander-chuon-chuon-ho-phach-tap-2.jpg                                                     ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'275986                   ', N'Cô gái vượt thời gian', N'00001                    ', N'001                      ', N'00004                    ', N'Hoàng Ưng', N'2016', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'35    ', NULL, NULL, 49000, N'275986_co-gai-vuot-thoi-gian-tang-kem-so-tay.jpg                                                    ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'276019                   ', N'den thuong de cung phai dong y', N'00003                    ', N'006                      ', N'00003                    ', N'Hoàng Tuyết Trân', N'2010', N'2  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'345   ', NULL, NULL, 48000, N'276019_den-thuong-de-cung-phai-dong-y.jpg                                                           ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'276030                   ', N'grammar is not boring ngu phap khong te nhat', N'00002                    ', N'005                      ', N'00002                    ', N'Hoàng Tuyết Mai', N'2011', N'2  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'45    ', NULL, NULL, 47000, N'276030_grammar-is-not-boring-ngu-phap-khong-te-nhat.jpg                                             ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'276091                   ', N'Con bò tía (tái bản 2017)', N'00001                    ', N'004                      ', N'00001                    ', N'Hoàng Tụy', N'2012', N'1  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'908   ', N'1   ', NULL, 46000, N'276091_con-bo-tia-tai-ban-2017.jpg                                                                  ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'276103                   ', N'me binh thuong day con uu tu', N'00021                    ', N'003                      ', N'00007                    ', N'Hà Phương', N'2013', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'89    ', NULL, NULL, 45000, N'276103_me-binh-thuong-day-con-uu-tu.jpg                                                             ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'276191                   ', N'ibosses thu linh so the he y', N'00020                    ', N'002                      ', N'00006                    ', N'Hà Phi Nhi', N'2014', N'4  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'56    ', NULL, NULL, 44000, N'276191_ibosses-thu-linh-so-the-he-y.jpg                                                             ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'276245                   ', N'do the math lam toan trinh do 1 tap 2 kem 1 cd', N'00019                    ', N'001                      ', N'00005                    ', N'Hà Phạm', N'2015', N'3  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'24    ', NULL, NULL, 43000, N'276245_do-the-math-lam-toan-trinh-do-1-tap-2-kem-1-cd.jpg                                           ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'276259                   ', N'Đảo ngược', N'00004                    ', N'006                      ', N'00004                    ', N'Hà Ninh', N'2017', N'2  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'125   ', NULL, NULL, 42000, N'276259_dao-nguoc.jpg                                                                                ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'276268                   ', N'days and nights ngay va dem trinh do 1 tap 1 kem 1 cd', N'00017                    ', N'005                      ', N'00003                    ', N'Hà Nhím', N'2016', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'57    ', NULL, NULL, 41000, N'276268_days-and-nights-ngay-va-dem-trinh-do-1-tap-1-kem-1-cd.jpg                                    ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'276284                   ', N'khoi nghiep doi moi sang tao tu duy cong cu', N'00016                    ', N'004                      ', N'00002                    ', N'Bill Zanker', N'2010', N'1  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'89    ', NULL, NULL, 40000, N'276284_khoi-nghiep-doi-moi-sang-tao-tu-duy-cong-cu.jpg                                              ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'276320                   ', N'tam trieu vua ly hop 4 cuon tai ban 2017', N'00015                    ', N'003                      ', N'00001                    ', N'Bill Slavin', N'2011', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'76    ', NULL, NULL, 39000, N'276320_tam-trieu-vua-ly-hop-4-cuon-tai-ban-2017.jpg                                                 ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'276321                   ', N'biet doi blockbusters bi an buc tranh cua picasso', N'00014                    ', N'002                      ', N'00007                    ', N'Bill Sammon', N'2012', N'1  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'45    ', N'12  ', N'50  ', 38000, N'276321_biet-doi-blockbusters-bi-an-buc-tranh-cua-picasso.jpg                                        ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'276338                   ', N'khong noi nuong tua tai ban 2017', N'00001                    ', N'001                      ', N'00006                    ', N'Bill McGuire', N'2013', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'234   ', N'3   ', N'60  ', 37000, N'276338_khong-noi-nuong-tua-tai-ban-2017.jpg                                                         ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'276340                   ', N'fujiko f fujio dai tuyen tap doraemon truyen dai tap 2', N'00012                    ', N'006                      ', N'00005                    ', N'Bill McFarlan', N'2014', N'2  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'35    ', NULL, NULL, 36000, N'276340_fujiko-f-fujio-dai-tuyen-tap-doraemon-truyen-dai-tap-2.jpg                                   ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'276342                   ', N'yu gi oh tap 26', N'00011                    ', N'005                      ', N'00004                    ', N'Akutagawa Ryunosuke', N'2015', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'345   ', NULL, NULL, 35000, N'276342_yu-gi-oh-tap-26.jpg                                                                          ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'31231                    ', N'huong dan mua linh kien cach su dung may laptop tap 2', N'00010                    ', N'004                      ', N'00003                    ', N'Akiyoshi Torii', N'2017', N'2  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'45    ', NULL, NULL, 34000, N'31231_huong-dan-mua-linh-kien-cach-su-dung-may-laptop-tap-2.jpg                                     ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'31232                    ', N'huong dan mua linh kien cach su dung may laptop tap 1', N'00009                    ', N'003                      ', N'00002                    ', N'Akira Toriyama', N'2016', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'908   ', NULL, NULL, 33000, N'31232_huong-dan-mua-linh-kien-cach-su-dung-may-laptop-tap-1.jpg                                     ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'31498                    ', N'tu khac phuc may tinh khi bi vi rut tan cong', N'00008                    ', N'002                      ', N'00001                    ', N'Akira Ikegawa', N'2010', N'2  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'89    ', NULL, NULL, 32000, N'31498_tu-khac-phuc-may-tinh-khi-bi-vi-rut-tan-cong.jpg                                              ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'31501                    ', N'tu hoc nhanh windows xp', N'00007                    ', N'001                      ', N'00007                    ', N'Ajahn Chan', N'2011', N'2  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'56    ', NULL, NULL, 31000, N'31501_tu-hoc-nhanh-windows-xp.jpg                                                                   ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'33102                    ', N'180 thu thuat va meo hay trong window 7', N'00006                    ', N'006                      ', N'00006                    ', N'Hoàng Vân', N'2012', N'1  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'24    ', N'2   ', N'34  ', 30000, N'33102_180-thu-thuat-va-meo-hay-trong-window-7.jpg                                                   ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'33106                    ', N'cach cai dat va su dung can ban nhat windows 7', N'00005                    ', N'005                      ', N'00005                    ', N'Hoàng Văn', N'2013', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'125   ', NULL, NULL, 29000, N'33106_cach-cai-dat-va-su-dung-can-ban-nhat-windows-7.jpg                                            ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'33447                    ', N'tu hoc lap rap va sua chua may tinh', N'00004                    ', N'004                      ', N'00004                    ', N'Hoàng Ưng', N'2014', N'4  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'57    ', NULL, NULL, 28000, N'33447_tu-hoc-lap-rap-va-sua-chua-may-tinh.jpg                                                       ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'35419                    ', N'tu hoc xu ly su co thuong gap tren may vi tinh', N'00003                    ', N'003                      ', N'00003                    ', N'Hoàng Tuyết Trân', N'2015', N'3  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'89    ', NULL, NULL, 27000, N'35419_tu-hoc-xu-ly-su-co-thuong-gap-tren-may-vi-tinh.jpg                                            ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'44551                    ', N'huong dan su dung microsoft windows 7 professional toan tap', N'00002                    ', N'002                      ', N'00002                    ', N'Hoàng Tuyết Mai', N'2017', N'2  ', N'Java là ngôn ng? l?p tr?nh m?i do m?t nhóm nh? các nhà khoa h?c c?a h?ng Sun Microsystems sáng t?o nên. Theo nhu truy?n thuy?t c?a nh?ng ngu?i t?o ra ngôn ng? này, tho?t tiên Java du?c g?i là Oak và ngu?i ta d?nh dùng nó d? l?p tr?nh cho b? TV (set-top box). T?t c? các kh? nang hi?n t?i c?ng nhu l?i dao to búa l?n ch? m?i có sau này. T? n?n t?ng Oak lúc dó, h?ng Sun d? phát tri?n c? m?t chi nhánh tên là JavaSoft.', N'76    ', NULL, NULL, 26000, N'44551_huong-dan-su-dung-microsoft-windows-7-professional-toan-tap.jpg                               ')
GO
INSERT [dbo].[tSach] ([MaSach], [TenSach], [MaLoai], [MaNgonNgu], [MaNXB], [TacGia], [NamXB], [LanXB], [GioiThieu], [TongSoTrang], [Tap], [TongSoTap], [GiaTriSach], [FileAnh]) VALUES (N'49206                    ', N'comptia a huong dan ve phan cung quan ly bao tri va xu ly su co phien ban lan 5', N'00001                    ', N'001                      ', N'00001                    ', N'Hoàng Tụy', N'2016', N'1  ', N'K? nang dàm phán và thuy?t ph?c có vai tr? r?t l?n trong công vi?c c?a chúng ta. Trao d?i v?i c?p trên, ch? d?o c?p du?i ho?c giao d?ch v?i khách hàng, t?t c? d?u c?n ph?i s? d?ng d?n hai k? nang này.', N'45    ', N'1   ', N'5   ', 25000, N'49206_comptia-a-huong-dan-ve-phan-cung-quan-ly-bao-tri-va-xu-ly-su-co-phien-ban-lan-5.jpg           ')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'120025300448             ', N'1200253                  ', CAST(N'2016-03-23T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-23T00:00:00.0000000' AS DateTime2), N'card (1)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'120078100449             ', N'1200781                  ', CAST(N'2016-03-24T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-24T00:00:00.0000000' AS DateTime2), N'card (2)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'120099600450             ', N'1200996                  ', CAST(N'2016-03-25T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-25T00:00:00.0000000' AS DateTime2), N'card (3)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'120178200451             ', N'1201782                  ', CAST(N'2016-03-26T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-26T00:00:00.0000000' AS DateTime2), N'card (4)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'120221300453             ', N'1202213                  ', CAST(N'2016-03-28T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-28T00:00:00.0000000' AS DateTime2), N'card (5)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'120246500454             ', N'1202465                  ', CAST(N'2016-03-29T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-29T00:00:00.0000000' AS DateTime2), N'card (6)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'120393700455             ', N'1203937                  ', CAST(N'2016-03-30T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-30T00:00:00.0000000' AS DateTime2), N'card (7)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'120407300456             ', N'1204073                  ', CAST(N'2016-03-31T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-31T00:00:00.0000000' AS DateTime2), N'card (8)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'120632500444             ', N'1206325                  ', CAST(N'2016-03-19T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-19T00:00:00.0000000' AS DateTime2), N'card (9)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'120971800447             ', N'1209718                  ', CAST(N'2016-03-22T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-22T00:00:00.0000000' AS DateTime2), N'card (10)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'121516300457             ', N'1215163                  ', CAST(N'2016-04-01T00:00:00.0000000' AS DateTime2), CAST(N'2021-04-01T00:00:00.0000000' AS DateTime2), N'card (11)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'121611200458             ', N'1216112                  ', CAST(N'2016-04-02T00:00:00.0000000' AS DateTime2), CAST(N'2021-04-02T00:00:00.0000000' AS DateTime2), N'card (12)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'121629400459             ', N'1216294                  ', CAST(N'2016-04-03T00:00:00.0000000' AS DateTime2), CAST(N'2021-04-03T00:00:00.0000000' AS DateTime2), N'card (13)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'121750900460             ', N'1217509                  ', CAST(N'2016-04-04T00:00:00.0000000' AS DateTime2), CAST(N'2021-04-04T00:00:00.0000000' AS DateTime2), N'card (14)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'121768100461             ', N'1217681                  ', CAST(N'2016-04-05T00:00:00.0000000' AS DateTime2), CAST(N'2021-04-05T00:00:00.0000000' AS DateTime2), N'card (15)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'121861800462             ', N'1218618                  ', CAST(N'2016-04-06T00:00:00.0000000' AS DateTime2), CAST(N'2021-04-06T00:00:00.0000000' AS DateTime2), N'card (16)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'121875300463             ', N'1218753                  ', CAST(N'2016-04-07T00:00:00.0000000' AS DateTime2), CAST(N'2021-04-07T00:00:00.0000000' AS DateTime2), N'card (17)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'121963100464             ', N'1219631                  ', CAST(N'2016-04-08T00:00:00.0000000' AS DateTime2), CAST(N'2021-04-08T00:00:00.0000000' AS DateTime2), N'card (18)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'121972600465             ', N'1219726                  ', CAST(N'2016-04-09T00:00:00.0000000' AS DateTime2), CAST(N'2021-04-09T00:00:00.0000000' AS DateTime2), N'card (19)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'122500900445             ', N'1225009                  ', CAST(N'2016-03-20T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-20T00:00:00.0000000' AS DateTime2), N'card (20)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'122518500446             ', N'1225185                  ', CAST(N'2016-03-21T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-21T00:00:00.0000000' AS DateTime2), N'card (21)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'122549800452             ', N'1225498                  ', CAST(N'2016-03-27T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-27T00:00:00.0000000' AS DateTime2), N'card (22)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130045200498             ', N'1300452                  ', CAST(N'2016-05-12T00:00:00.0000000' AS DateTime2), CAST(N'2021-05-12T00:00:00.0000000' AS DateTime2), N'card (23)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130059400499             ', N'1300594                  ', CAST(N'2016-05-13T00:00:00.0000000' AS DateTime2), CAST(N'2021-05-13T00:00:00.0000000' AS DateTime2), N'card (24)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130063400107             ', N'1300634                  ', CAST(N'2015-04-17T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-17T00:00:00.0000000' AS DateTime2), N'card (25)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130084400500             ', N'1300844                  ', CAST(N'2016-05-14T00:00:00.0000000' AS DateTime2), CAST(N'2021-05-14T00:00:00.0000000' AS DateTime2), N'card (26)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130095300061             ', N'1300953                  ', CAST(N'2015-03-02T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-02T00:00:00.0000000' AS DateTime2), N'card (27)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130104800111             ', N'1301048                  ', CAST(N'2015-04-21T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-21T00:00:00.0000000' AS DateTime2), N'card (28)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130124200063             ', N'1301242                  ', CAST(N'2015-03-04T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-04T00:00:00.0000000' AS DateTime2), N'card (29)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130193900066             ', N'1301939                  ', CAST(N'2015-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-07T00:00:00.0000000' AS DateTime2), N'card (30)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130279000072             ', N'1302790                  ', CAST(N'2015-03-13T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-13T00:00:00.0000000' AS DateTime2), N'card (31)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130403800016             ', N'1304038                  ', CAST(N'2015-01-16T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-16T00:00:00.0000000' AS DateTime2), N'card (32)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130476900466             ', N'1304769                  ', CAST(N'2016-04-10T00:00:00.0000000' AS DateTime2), CAST(N'2021-04-10T00:00:00.0000000' AS DateTime2), N'card (33)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130491500467             ', N'1304915                  ', CAST(N'2016-04-11T00:00:00.0000000' AS DateTime2), CAST(N'2021-04-11T00:00:00.0000000' AS DateTime2), N'card (34)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130499900084             ', N'1304999                  ', CAST(N'2015-03-25T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-25T00:00:00.0000000' AS DateTime2), N'card (35)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130502400468             ', N'1305024                  ', CAST(N'2016-04-12T00:00:00.0000000' AS DateTime2), CAST(N'2021-04-12T00:00:00.0000000' AS DateTime2), N'card (36)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130520300469             ', N'1305203                  ', CAST(N'2016-04-13T00:00:00.0000000' AS DateTime2), CAST(N'2021-04-13T00:00:00.0000000' AS DateTime2), N'card (37)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130531200470             ', N'1305312                  ', CAST(N'2016-04-14T00:00:00.0000000' AS DateTime2), CAST(N'2021-04-14T00:00:00.0000000' AS DateTime2), N'card (38)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130556200473             ', N'1305562                  ', CAST(N'2016-04-17T00:00:00.0000000' AS DateTime2), CAST(N'2021-04-17T00:00:00.0000000' AS DateTime2), N'card (39)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130576000471             ', N'1305760                  ', CAST(N'2016-04-15T00:00:00.0000000' AS DateTime2), CAST(N'2021-04-15T00:00:00.0000000' AS DateTime2), N'card (40)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130601900474             ', N'1306019                  ', CAST(N'2016-04-18T00:00:00.0000000' AS DateTime2), CAST(N'2021-04-18T00:00:00.0000000' AS DateTime2), N'card (41)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130612900475             ', N'1306129                  ', CAST(N'2016-04-19T00:00:00.0000000' AS DateTime2), CAST(N'2021-04-19T00:00:00.0000000' AS DateTime2), N'card (42)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130623500477             ', N'1306235                  ', CAST(N'2016-04-21T00:00:00.0000000' AS DateTime2), CAST(N'2021-04-21T00:00:00.0000000' AS DateTime2), N'card (43)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130632400478             ', N'1306324                  ', CAST(N'2016-04-22T00:00:00.0000000' AS DateTime2), CAST(N'2021-04-22T00:00:00.0000000' AS DateTime2), N'card (44)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130638200476             ', N'1306382                  ', CAST(N'2016-04-20T00:00:00.0000000' AS DateTime2), CAST(N'2021-04-20T00:00:00.0000000' AS DateTime2), N'card (45)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130665100479             ', N'1306651                  ', CAST(N'2016-04-23T00:00:00.0000000' AS DateTime2), CAST(N'2021-04-23T00:00:00.0000000' AS DateTime2), N'card (46)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130687000480             ', N'1306870                  ', CAST(N'2016-04-24T00:00:00.0000000' AS DateTime2), CAST(N'2021-04-24T00:00:00.0000000' AS DateTime2), N'card (47)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130704800481             ', N'1307048                  ', CAST(N'2016-04-25T00:00:00.0000000' AS DateTime2), CAST(N'2021-04-25T00:00:00.0000000' AS DateTime2), N'card (48)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130740800483             ', N'1307408                  ', CAST(N'2016-04-27T00:00:00.0000000' AS DateTime2), CAST(N'2021-04-27T00:00:00.0000000' AS DateTime2), N'card (49)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130795900484             ', N'1307959                  ', CAST(N'2016-04-28T00:00:00.0000000' AS DateTime2), CAST(N'2021-04-28T00:00:00.0000000' AS DateTime2), N'card (50)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130812900196             ', N'1308129                  ', CAST(N'2015-07-15T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-15T00:00:00.0000000' AS DateTime2), N'card (51)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130824200485             ', N'1308242                  ', CAST(N'2016-04-29T00:00:00.0000000' AS DateTime2), CAST(N'2021-04-29T00:00:00.0000000' AS DateTime2), N'card (52)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130825100198             ', N'1308251                  ', CAST(N'2015-07-17T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-17T00:00:00.0000000' AS DateTime2), N'card (53)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130848000486             ', N'1308480                  ', CAST(N'2016-04-30T00:00:00.0000000' AS DateTime2), CAST(N'2021-04-30T00:00:00.0000000' AS DateTime2), N'card (54)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130857100487             ', N'1308571                  ', CAST(N'2016-05-01T00:00:00.0000000' AS DateTime2), CAST(N'2021-05-01T00:00:00.0000000' AS DateTime2), N'card (55)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130864300488             ', N'1308643                  ', CAST(N'2016-05-02T00:00:00.0000000' AS DateTime2), CAST(N'2021-05-02T00:00:00.0000000' AS DateTime2), N'card (56)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130906900491             ', N'1309069                  ', CAST(N'2016-05-05T00:00:00.0000000' AS DateTime2), CAST(N'2021-05-05T00:00:00.0000000' AS DateTime2), N'card (57)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130910900202             ', N'1309109                  ', CAST(N'2015-07-21T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-21T00:00:00.0000000' AS DateTime2), N'card (58)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130913700492             ', N'1309137                  ', CAST(N'2016-05-06T00:00:00.0000000' AS DateTime2), CAST(N'2021-05-06T00:00:00.0000000' AS DateTime2), N'card (59)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130920400493             ', N'1309204                  ', CAST(N'2016-05-07T00:00:00.0000000' AS DateTime2), CAST(N'2021-05-07T00:00:00.0000000' AS DateTime2), N'card (60)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130936200494             ', N'1309362                  ', CAST(N'2016-05-08T00:00:00.0000000' AS DateTime2), CAST(N'2021-05-08T00:00:00.0000000' AS DateTime2), N'card (61)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130951400490             ', N'1309514                  ', CAST(N'2016-05-04T00:00:00.0000000' AS DateTime2), CAST(N'2021-05-04T00:00:00.0000000' AS DateTime2), N'card (62)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130971300496             ', N'1309713                  ', CAST(N'2016-05-10T00:00:00.0000000' AS DateTime2), CAST(N'2021-05-10T00:00:00.0000000' AS DateTime2), N'card (63)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'130976900495             ', N'1309769                  ', CAST(N'2016-05-09T00:00:00.0000000' AS DateTime2), CAST(N'2021-05-09T00:00:00.0000000' AS DateTime2), N'card (64)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'131188800118             ', N'1311888                  ', CAST(N'2015-04-28T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-28T00:00:00.0000000' AS DateTime2), N'card (65)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'132290400482             ', N'1322904                  ', CAST(N'2016-04-26T00:00:00.0000000' AS DateTime2), CAST(N'2021-04-26T00:00:00.0000000' AS DateTime2), N'card (66)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'132488700472             ', N'1324887                  ', CAST(N'2016-04-16T00:00:00.0000000' AS DateTime2), CAST(N'2021-04-16T00:00:00.0000000' AS DateTime2), N'card (67)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'132545800489             ', N'1325458                  ', CAST(N'2016-05-03T00:00:00.0000000' AS DateTime2), CAST(N'2021-05-03T00:00:00.0000000' AS DateTime2), N'card (68)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'132568800497             ', N'1325688                  ', CAST(N'2016-05-11T00:00:00.0000000' AS DateTime2), CAST(N'2021-05-11T00:00:00.0000000' AS DateTime2), N'card (69)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140002800119             ', N'1400028                  ', CAST(N'2015-04-29T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-29T00:00:00.0000000' AS DateTime2), N'card (70)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140013300059             ', N'1400133                  ', CAST(N'2015-02-28T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-28T00:00:00.0000000' AS DateTime2), N'card (71)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140014200117             ', N'1400142                  ', CAST(N'2015-04-27T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-27T00:00:00.0000000' AS DateTime2), N'card (72)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140015600001             ', N'1400156                  ', CAST(N'2015-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-01T00:00:00.0000000' AS DateTime2), N'card (73)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140025900002             ', N'1400259                  ', CAST(N'2015-01-02T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-02T00:00:00.0000000' AS DateTime2), N'card (74)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140026400114             ', N'1400264                  ', CAST(N'2015-04-24T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-24T00:00:00.0000000' AS DateTime2), N'card (75)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140037600003             ', N'1400376                  ', CAST(N'2015-01-03T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-03T00:00:00.0000000' AS DateTime2), N'card (76)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140057000004             ', N'1400570                  ', CAST(N'2015-01-04T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-04T00:00:00.0000000' AS DateTime2), N'card (77)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140059900120             ', N'1400599                  ', CAST(N'2015-04-30T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-30T00:00:00.0000000' AS DateTime2), N'card (78)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140070900005             ', N'1400709                  ', CAST(N'2015-01-05T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-05T00:00:00.0000000' AS DateTime2), N'card (79)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140079600060             ', N'1400796                  ', CAST(N'2015-03-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-01T00:00:00.0000000' AS DateTime2), N'card (80)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140082000006             ', N'1400820                  ', CAST(N'2015-01-06T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-06T00:00:00.0000000' AS DateTime2), N'card (81)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140088400007             ', N'1400884                  ', CAST(N'2015-01-07T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-07T00:00:00.0000000' AS DateTime2), N'card (82)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140093100062             ', N'1400931                  ', CAST(N'2015-03-03T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-03T00:00:00.0000000' AS DateTime2), N'card (83)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140119100176             ', N'1401191                  ', CAST(N'2015-06-25T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-25T00:00:00.0000000' AS DateTime2), N'card (84)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140127800008             ', N'1401278                  ', CAST(N'2015-01-08T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-08T00:00:00.0000000' AS DateTime2), N'card (85)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140134200064             ', N'1401342                  ', CAST(N'2015-03-05T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-05T00:00:00.0000000' AS DateTime2), N'card (86)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140138800009             ', N'1401388                  ', CAST(N'2015-01-09T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-09T00:00:00.0000000' AS DateTime2), N'card (87)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140143700065             ', N'1401437                  ', CAST(N'2015-03-06T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-06T00:00:00.0000000' AS DateTime2), N'card (88)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140148100010             ', N'1401481                  ', CAST(N'2015-01-10T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-10T00:00:00.0000000' AS DateTime2), N'card (89)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140181400067             ', N'1401814                  ', CAST(N'2015-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-08T00:00:00.0000000' AS DateTime2), N'card (90)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140188700011             ', N'1401887                  ', CAST(N'2015-01-11T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-11T00:00:00.0000000' AS DateTime2), N'card (91)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140190800068             ', N'1401908                  ', CAST(N'2015-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-09T00:00:00.0000000' AS DateTime2), N'card (92)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140204000012             ', N'1402040                  ', CAST(N'2015-01-12T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-12T00:00:00.0000000' AS DateTime2), N'card (93)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140204100069             ', N'1402041                  ', CAST(N'2015-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-10T00:00:00.0000000' AS DateTime2), N'card (94)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140209700070             ', N'1402097                  ', CAST(N'2015-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-11T00:00:00.0000000' AS DateTime2), N'card (95)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140244600071             ', N'1402446                  ', CAST(N'2015-03-12T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-12T00:00:00.0000000' AS DateTime2), N'card (96)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140258300073             ', N'1402583                  ', CAST(N'2015-03-14T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-14T00:00:00.0000000' AS DateTime2), N'card (97)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140273700074             ', N'1402737                  ', CAST(N'2015-03-15T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-15T00:00:00.0000000' AS DateTime2), N'card (98)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140273900014             ', N'1402739                  ', CAST(N'2015-01-14T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-14T00:00:00.0000000' AS DateTime2), N'card (99)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140280200131             ', N'1402802                  ', CAST(N'2015-05-11T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-11T00:00:00.0000000' AS DateTime2), N'card (100)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140291400075             ', N'1402914                  ', CAST(N'2015-03-16T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-16T00:00:00.0000000' AS DateTime2), N'card (101)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140299800015             ', N'1402998                  ', CAST(N'2015-01-15T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-15T00:00:00.0000000' AS DateTime2), N'card (102)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140310900076             ', N'1403109                  ', CAST(N'2015-03-17T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-17T00:00:00.0000000' AS DateTime2), N'card (103)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140322100077             ', N'1403221                  ', CAST(N'2015-03-18T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-18T00:00:00.0000000' AS DateTime2), N'card (104)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140355000017             ', N'1403550                  ', CAST(N'2015-01-17T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-17T00:00:00.0000000' AS DateTime2), N'card (105)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140359600079             ', N'1403596                  ', CAST(N'2015-03-20T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-20T00:00:00.0000000' AS DateTime2), N'card (106)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140367800018             ', N'1403678                  ', CAST(N'2015-01-18T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-18T00:00:00.0000000' AS DateTime2), N'card (107)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140369300080             ', N'1403693                  ', CAST(N'2015-03-21T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-21T00:00:00.0000000' AS DateTime2), N'card (108)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140377600021             ', N'1403776                  ', CAST(N'2015-01-21T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-21T00:00:00.0000000' AS DateTime2), N'card (109)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140379000137             ', N'1403790                  ', CAST(N'2015-05-17T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-17T00:00:00.0000000' AS DateTime2), N'card (110)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140384100081             ', N'1403841                  ', CAST(N'2015-03-22T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-22T00:00:00.0000000' AS DateTime2), N'card (111)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140391700022             ', N'1403917                  ', CAST(N'2015-01-22T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-22T00:00:00.0000000' AS DateTime2), N'card (112)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140398300082             ', N'1403983                  ', CAST(N'2015-03-23T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-23T00:00:00.0000000' AS DateTime2), N'card (113)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140411200020             ', N'1404112                  ', CAST(N'2015-01-20T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-20T00:00:00.0000000' AS DateTime2), N'card (114)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140427700083             ', N'1404277                  ', CAST(N'2015-03-24T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-24T00:00:00.0000000' AS DateTime2), N'card (115)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140438600023             ', N'1404386                  ', CAST(N'2015-01-23T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-23T00:00:00.0000000' AS DateTime2), N'card (116)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140439900085             ', N'1404399                  ', CAST(N'2015-03-26T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-26T00:00:00.0000000' AS DateTime2), N'card (117)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140445300086             ', N'1404453                  ', CAST(N'2015-03-27T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-27T00:00:00.0000000' AS DateTime2), N'card (118)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140459300024             ', N'1404593                  ', CAST(N'2015-01-24T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-24T00:00:00.0000000' AS DateTime2), N'card (119)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140473000026             ', N'1404730                  ', CAST(N'2015-01-26T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-26T00:00:00.0000000' AS DateTime2), N'card (120)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140492400027             ', N'1404924                  ', CAST(N'2015-01-27T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-27T00:00:00.0000000' AS DateTime2), N'card (121)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140496900087             ', N'1404969                  ', CAST(N'2015-03-28T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-28T00:00:00.0000000' AS DateTime2), N'card (122)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140511100088             ', N'1405111                  ', CAST(N'2015-03-29T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-29T00:00:00.0000000' AS DateTime2), N'card (123)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140513600028             ', N'1405136                  ', CAST(N'2015-01-28T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-28T00:00:00.0000000' AS DateTime2), N'card (124)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140534700029             ', N'1405347                  ', CAST(N'2015-01-29T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-29T00:00:00.0000000' AS DateTime2), N'card (125)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140540100030             ', N'1405401                  ', CAST(N'2015-01-30T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-30T00:00:00.0000000' AS DateTime2), N'card (126)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140540200089             ', N'1405402                  ', CAST(N'2015-03-30T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-30T00:00:00.0000000' AS DateTime2), N'card (127)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140550300031             ', N'1405503                  ', CAST(N'2015-01-31T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-31T00:00:00.0000000' AS DateTime2), N'card (128)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140561200032             ', N'1405612                  ', CAST(N'2015-02-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-01T00:00:00.0000000' AS DateTime2), N'card (129)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140562000090             ', N'1405620                  ', CAST(N'2015-03-31T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-31T00:00:00.0000000' AS DateTime2), N'card (130)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140574100144             ', N'1405741                  ', CAST(N'2015-05-24T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-24T00:00:00.0000000' AS DateTime2), N'card (131)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140580600033             ', N'1405806                  ', CAST(N'2015-02-02T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-02T00:00:00.0000000' AS DateTime2), N'card (132)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140597200091             ', N'1405972                  ', CAST(N'2015-04-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-01T00:00:00.0000000' AS DateTime2), N'card (133)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140599000034             ', N'1405990                  ', CAST(N'2015-02-03T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-03T00:00:00.0000000' AS DateTime2), N'card (134)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140614900092             ', N'1406149                  ', CAST(N'2015-04-02T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-02T00:00:00.0000000' AS DateTime2), N'card (135)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140617900035             ', N'1406179                  ', CAST(N'2015-02-04T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-04T00:00:00.0000000' AS DateTime2), N'card (136)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140627300036             ', N'1406273                  ', CAST(N'2015-02-05T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-05T00:00:00.0000000' AS DateTime2), N'card (137)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140640900037             ', N'1406409                  ', CAST(N'2015-02-06T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-06T00:00:00.0000000' AS DateTime2), N'card (138)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140655400094             ', N'1406554                  ', CAST(N'2015-04-04T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-04T00:00:00.0000000' AS DateTime2), N'card (139)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140663700038             ', N'1406637                  ', CAST(N'2015-02-07T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-07T00:00:00.0000000' AS DateTime2), N'card (140)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140697000095             ', N'1406970                  ', CAST(N'2015-04-05T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-05T00:00:00.0000000' AS DateTime2), N'card (141)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140698400039             ', N'1406984                  ', CAST(N'2015-02-08T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-08T00:00:00.0000000' AS DateTime2), N'card (142)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140710300041             ', N'1407103                  ', CAST(N'2015-02-10T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-10T00:00:00.0000000' AS DateTime2), N'card (143)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140714400096             ', N'1407144                  ', CAST(N'2015-04-06T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-06T00:00:00.0000000' AS DateTime2), N'card (144)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140729600097             ', N'1407296                  ', CAST(N'2015-04-07T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-07T00:00:00.0000000' AS DateTime2), N'card (145)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140742500042             ', N'1407425                  ', CAST(N'2015-02-11T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-11T00:00:00.0000000' AS DateTime2), N'card (146)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140744800098             ', N'1407448                  ', CAST(N'2015-04-08T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-08T00:00:00.0000000' AS DateTime2), N'card (147)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140755800043             ', N'1407558                  ', CAST(N'2015-02-12T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-12T00:00:00.0000000' AS DateTime2), N'card (148)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140783300099             ', N'1407833                  ', CAST(N'2015-04-09T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-09T00:00:00.0000000' AS DateTime2), N'card (149)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140783700044             ', N'1407837                  ', CAST(N'2015-02-13T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-13T00:00:00.0000000' AS DateTime2), N'card (150)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140796500046             ', N'1407965                  ', CAST(N'2015-02-15T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-15T00:00:00.0000000' AS DateTime2), N'card (151)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140797400101             ', N'1407974                  ', CAST(N'2015-04-11T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-11T00:00:00.0000000' AS DateTime2), N'card (152)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140806200047             ', N'1408062                  ', CAST(N'2015-02-16T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-16T00:00:00.0000000' AS DateTime2), N'card (153)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140807900102             ', N'1408079                  ', CAST(N'2015-04-12T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-12T00:00:00.0000000' AS DateTime2), N'card (154)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140817700048             ', N'1408177                  ', CAST(N'2015-02-17T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-17T00:00:00.0000000' AS DateTime2), N'card (155)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140825800100             ', N'1408258                  ', CAST(N'2015-04-10T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-10T00:00:00.0000000' AS DateTime2), N'card (156)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140835000049             ', N'1408350                  ', CAST(N'2015-02-18T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-18T00:00:00.0000000' AS DateTime2), N'card (157)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140860500103             ', N'1408605                  ', CAST(N'2015-04-13T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-13T00:00:00.0000000' AS DateTime2), N'card (158)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140868600050             ', N'1408686                  ', CAST(N'2015-02-19T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-19T00:00:00.0000000' AS DateTime2), N'card (159)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140872700104             ', N'1408727                  ', CAST(N'2015-04-14T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-14T00:00:00.0000000' AS DateTime2), N'card (160)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140877800052             ', N'1408778                  ', CAST(N'2015-02-21T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-21T00:00:00.0000000' AS DateTime2), N'card (161)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140892200053             ', N'1408922                  ', CAST(N'2015-02-22T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-22T00:00:00.0000000' AS DateTime2), N'card (162)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140899100054             ', N'1408991                  ', CAST(N'2015-02-23T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-23T00:00:00.0000000' AS DateTime2), N'card (163)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140901500106             ', N'1409015                  ', CAST(N'2015-04-16T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-16T00:00:00.0000000' AS DateTime2), N'card (164)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140905200162             ', N'1409052                  ', CAST(N'2015-06-11T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-11T00:00:00.0000000' AS DateTime2), N'card (165)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140916300055             ', N'1409163                  ', CAST(N'2015-02-24T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-24T00:00:00.0000000' AS DateTime2), N'card (166)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140922900108             ', N'1409229                  ', CAST(N'2015-04-18T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-18T00:00:00.0000000' AS DateTime2), N'card (167)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140925900056             ', N'1409259                  ', CAST(N'2015-02-25T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-25T00:00:00.0000000' AS DateTime2), N'card (168)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140931400109             ', N'1409314                  ', CAST(N'2015-04-19T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-19T00:00:00.0000000' AS DateTime2), N'card (169)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140936500110             ', N'1409365                  ', CAST(N'2015-04-20T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-20T00:00:00.0000000' AS DateTime2), N'card (170)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140953700112             ', N'1409537                  ', CAST(N'2015-04-22T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-22T00:00:00.0000000' AS DateTime2), N'card (171)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140961200057             ', N'1409612                  ', CAST(N'2015-02-26T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-26T00:00:00.0000000' AS DateTime2), N'card (172)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140962600165             ', N'1409626                  ', CAST(N'2015-06-14T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-14T00:00:00.0000000' AS DateTime2), N'card (173)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140966900113             ', N'1409669                  ', CAST(N'2015-04-23T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-23T00:00:00.0000000' AS DateTime2), N'card (174)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140978800058             ', N'1409788                  ', CAST(N'2015-02-27T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-27T00:00:00.0000000' AS DateTime2), N'card (175)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140984600115             ', N'1409846                  ', CAST(N'2015-04-25T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-25T00:00:00.0000000' AS DateTime2), N'card (176)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'140987500116             ', N'1409875                  ', CAST(N'2015-04-26T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-26T00:00:00.0000000' AS DateTime2), N'card (177)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'142064400019             ', N'1420644                  ', CAST(N'2015-01-19T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-19T00:00:00.0000000' AS DateTime2), N'card (178)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'142108300078             ', N'1421083                  ', CAST(N'2015-03-19T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-19T00:00:00.0000000' AS DateTime2), N'card (179)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'142116000040             ', N'1421160                  ', CAST(N'2015-02-09T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-09T00:00:00.0000000' AS DateTime2), N'card (180)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'142133400045             ', N'1421334                  ', CAST(N'2015-02-14T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-14T00:00:00.0000000' AS DateTime2), N'card (181)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'142149700051             ', N'1421497                  ', CAST(N'2015-02-20T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-20T00:00:00.0000000' AS DateTime2), N'card (182)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'142156200093             ', N'1421562                  ', CAST(N'2015-04-03T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-03T00:00:00.0000000' AS DateTime2), N'card (183)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'142199600105             ', N'1421996                  ', CAST(N'2015-04-15T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-15T00:00:00.0000000' AS DateTime2), N'card (184)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'142844200025             ', N'1428442                  ', CAST(N'2015-01-25T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-25T00:00:00.0000000' AS DateTime2), N'card (185)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'142961500121             ', N'1429615                  ', CAST(N'2015-05-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-01T00:00:00.0000000' AS DateTime2), N'card (186)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'142978900151             ', N'1429789                  ', CAST(N'2015-05-31T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-31T00:00:00.0000000' AS DateTime2), N'card (187)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15128868500187           ', N'151288685                ', CAST(N'2015-07-06T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-06T00:00:00.0000000' AS DateTime2), N'card (188)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15132505100125           ', N'151325051                ', CAST(N'2015-05-05T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-05T00:00:00.0000000' AS DateTime2), N'card (189)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15132527200123           ', N'151325272                ', CAST(N'2015-05-03T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-03T00:00:00.0000000' AS DateTime2), N'card (190)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15132713000124           ', N'151327130                ', CAST(N'2015-05-04T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-04T00:00:00.0000000' AS DateTime2), N'card (191)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15132795300126           ', N'151327953                ', CAST(N'2015-05-06T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-06T00:00:00.0000000' AS DateTime2), N'card (192)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15132850600127           ', N'151328506                ', CAST(N'2015-05-07T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-07T00:00:00.0000000' AS DateTime2), N'card (193)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15133075300129           ', N'151330753                ', CAST(N'2015-05-09T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-09T00:00:00.0000000' AS DateTime2), N'card (194)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15133095500128           ', N'151330955                ', CAST(N'2015-05-08T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-08T00:00:00.0000000' AS DateTime2), N'card (195)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15133174100130           ', N'151331741                ', CAST(N'2015-05-10T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-10T00:00:00.0000000' AS DateTime2), N'card (196)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15133445900122           ', N'151334459                ', CAST(N'2015-05-02T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-02T00:00:00.0000000' AS DateTime2), N'card (197)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15133486400133           ', N'151334864                ', CAST(N'2015-05-13T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-13T00:00:00.0000000' AS DateTime2), N'card (198)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15133671600134           ', N'151336716                ', CAST(N'2015-05-14T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-14T00:00:00.0000000' AS DateTime2), N'card (199)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15133875200136           ', N'151338752                ', CAST(N'2015-05-16T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-16T00:00:00.0000000' AS DateTime2), N'card (200)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15134015000138           ', N'151340150                ', CAST(N'2015-05-18T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-18T00:00:00.0000000' AS DateTime2), N'card (201)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15134052700140           ', N'151340527                ', CAST(N'2015-05-20T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-20T00:00:00.0000000' AS DateTime2), N'card (202)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15134105500139           ', N'151341055                ', CAST(N'2015-05-19T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-19T00:00:00.0000000' AS DateTime2), N'card (203)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15134338200132           ', N'151343382                ', CAST(N'2015-05-12T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-12T00:00:00.0000000' AS DateTime2), N'card (204)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15134351300141           ', N'151343513                ', CAST(N'2015-05-21T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-21T00:00:00.0000000' AS DateTime2), N'card (205)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15134523600142           ', N'151345236                ', CAST(N'2015-05-22T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-22T00:00:00.0000000' AS DateTime2), N'card (206)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15134733400135           ', N'151347334                ', CAST(N'2015-05-15T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-15T00:00:00.0000000' AS DateTime2), N'card (207)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15134753100145           ', N'151347531                ', CAST(N'2015-05-25T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-25T00:00:00.0000000' AS DateTime2), N'card (208)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15134768300146           ', N'151347683                ', CAST(N'2015-05-26T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-26T00:00:00.0000000' AS DateTime2), N'card (209)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15134902800147           ', N'151349028                ', CAST(N'2015-05-27T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-27T00:00:00.0000000' AS DateTime2), N'card (210)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15134975900148           ', N'151349759                ', CAST(N'2015-05-28T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-28T00:00:00.0000000' AS DateTime2), N'card (211)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15135010800150           ', N'151350108                ', CAST(N'2015-05-30T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-30T00:00:00.0000000' AS DateTime2), N'card (212)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15135185200149           ', N'151351852                ', CAST(N'2015-05-29T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-29T00:00:00.0000000' AS DateTime2), N'card (213)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15135366400152           ', N'151353664                ', CAST(N'2015-06-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-01T00:00:00.0000000' AS DateTime2), N'card (214)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15135410200153           ', N'151354102                ', CAST(N'2015-06-02T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-02T00:00:00.0000000' AS DateTime2), N'card (215)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15135567700155           ', N'151355677                ', CAST(N'2015-06-04T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-04T00:00:00.0000000' AS DateTime2), N'card (216)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15135591100143           ', N'151355911                ', CAST(N'2015-05-23T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-23T00:00:00.0000000' AS DateTime2), N'card (217)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15135618600154           ', N'151356186                ', CAST(N'2015-06-03T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-03T00:00:00.0000000' AS DateTime2), N'card (218)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15135842300157           ', N'151358423                ', CAST(N'2015-06-06T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-06T00:00:00.0000000' AS DateTime2), N'card (219)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15135945800156           ', N'151359458                ', CAST(N'2015-06-05T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-05T00:00:00.0000000' AS DateTime2), N'card (220)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15135994400158           ', N'151359944                ', CAST(N'2015-06-07T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-07T00:00:00.0000000' AS DateTime2), N'card (221)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15136156600160           ', N'151361566                ', CAST(N'2015-06-09T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-09T00:00:00.0000000' AS DateTime2), N'card (222)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15136208800159           ', N'151362088                ', CAST(N'2015-06-08T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-08T00:00:00.0000000' AS DateTime2), N'card (223)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15136264500161           ', N'151362645                ', CAST(N'2015-06-10T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-10T00:00:00.0000000' AS DateTime2), N'card (224)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15136488800163           ', N'151364888                ', CAST(N'2015-06-12T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-12T00:00:00.0000000' AS DateTime2), N'card (225)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15136688200164           ', N'151366882                ', CAST(N'2015-06-13T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-13T00:00:00.0000000' AS DateTime2), N'card (226)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15136870100167           ', N'151368701                ', CAST(N'2015-06-16T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-16T00:00:00.0000000' AS DateTime2), N'card (227)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15136920600166           ', N'151369206                ', CAST(N'2015-06-15T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-15T00:00:00.0000000' AS DateTime2), N'card (228)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15136927400168           ', N'151369274                ', CAST(N'2015-06-17T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-17T00:00:00.0000000' AS DateTime2), N'card (229)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15137146100170           ', N'151371461                ', CAST(N'2015-06-19T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-19T00:00:00.0000000' AS DateTime2), N'card (230)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15137324900171           ', N'151373249                ', CAST(N'2015-06-20T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-20T00:00:00.0000000' AS DateTime2), N'card (231)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15137399500173           ', N'151373995                ', CAST(N'2015-06-22T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-22T00:00:00.0000000' AS DateTime2), N'card (232)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15137481300174           ', N'151374813                ', CAST(N'2015-06-23T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-23T00:00:00.0000000' AS DateTime2), N'card (233)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15137501400172           ', N'151375014                ', CAST(N'2015-06-21T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-21T00:00:00.0000000' AS DateTime2), N'card (234)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15137638500175           ', N'151376385                ', CAST(N'2015-06-24T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-24T00:00:00.0000000' AS DateTime2), N'card (235)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15137717100177           ', N'151377171                ', CAST(N'2015-06-26T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-26T00:00:00.0000000' AS DateTime2), N'card (236)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15137935900169           ', N'151379359                ', CAST(N'2015-06-18T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-18T00:00:00.0000000' AS DateTime2), N'card (237)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15138106200180           ', N'151381062                ', CAST(N'2015-06-29T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-29T00:00:00.0000000' AS DateTime2), N'card (238)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15138186800179           ', N'151381868                ', CAST(N'2015-06-28T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-28T00:00:00.0000000' AS DateTime2), N'card (239)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15138406300184           ', N'151384063                ', CAST(N'2015-07-03T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-03T00:00:00.0000000' AS DateTime2), N'card (240)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15138479600183           ', N'151384796                ', CAST(N'2015-07-02T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-02T00:00:00.0000000' AS DateTime2), N'card (241)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15138510100182           ', N'151385101                ', CAST(N'2015-07-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-01T00:00:00.0000000' AS DateTime2), N'card (242)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15138828300185           ', N'151388283                ', CAST(N'2015-07-04T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-04T00:00:00.0000000' AS DateTime2), N'card (243)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15138848500186           ', N'151388485                ', CAST(N'2015-07-05T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-05T00:00:00.0000000' AS DateTime2), N'card (244)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15138988900178           ', N'151389889                ', CAST(N'2015-06-27T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-27T00:00:00.0000000' AS DateTime2), N'card (245)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15139156000190           ', N'151391560                ', CAST(N'2015-07-09T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-09T00:00:00.0000000' AS DateTime2), N'card (246)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15139173100189           ', N'151391731                ', CAST(N'2015-07-08T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-08T00:00:00.0000000' AS DateTime2), N'card (247)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15139403300194           ', N'151394033                ', CAST(N'2015-07-13T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-13T00:00:00.0000000' AS DateTime2), N'card (248)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15139844600195           ', N'151398446                ', CAST(N'2015-07-14T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-14T00:00:00.0000000' AS DateTime2), N'card (249)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15140064700188           ', N'151400647                ', CAST(N'2015-07-07T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-07T00:00:00.0000000' AS DateTime2), N'card (250)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15140230300191           ', N'151402303                ', CAST(N'2015-07-10T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-10T00:00:00.0000000' AS DateTime2), N'card (251)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15140254700200           ', N'151402547                ', CAST(N'2015-07-19T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-19T00:00:00.0000000' AS DateTime2), N'card (252)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15140295000201           ', N'151402950                ', CAST(N'2015-07-20T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-20T00:00:00.0000000' AS DateTime2), N'card (253)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15140394600192           ', N'151403946                ', CAST(N'2015-07-11T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-11T00:00:00.0000000' AS DateTime2), N'card (254)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15140529700193           ', N'151405297                ', CAST(N'2015-07-12T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-12T00:00:00.0000000' AS DateTime2), N'card (255)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15140536400204           ', N'151405364                ', CAST(N'2015-07-23T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-23T00:00:00.0000000' AS DateTime2), N'card (256)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15140641200206           ', N'151406412                ', CAST(N'2015-07-25T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-25T00:00:00.0000000' AS DateTime2), N'card (257)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15140703400205           ', N'151407034                ', CAST(N'2015-07-24T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-24T00:00:00.0000000' AS DateTime2), N'card (258)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15140813200207           ', N'151408132                ', CAST(N'2015-07-26T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-26T00:00:00.0000000' AS DateTime2), N'card (259)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15140899400197           ', N'151408994                ', CAST(N'2015-07-16T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-16T00:00:00.0000000' AS DateTime2), N'card (260)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15140958300199           ', N'151409583                ', CAST(N'2015-07-18T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-18T00:00:00.0000000' AS DateTime2), N'card (261)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15141024300208           ', N'151410243                ', CAST(N'2015-07-27T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-27T00:00:00.0000000' AS DateTime2), N'card (262)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15141233500210           ', N'151412335                ', CAST(N'2015-07-29T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-29T00:00:00.0000000' AS DateTime2), N'card (263)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15141287600211           ', N'151412876                ', CAST(N'2015-07-30T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-30T00:00:00.0000000' AS DateTime2), N'card (264)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15141475400203           ', N'151414754                ', CAST(N'2015-07-22T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-22T00:00:00.0000000' AS DateTime2), N'card (265)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15141483500212           ', N'151414835                ', CAST(N'2015-07-31T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-31T00:00:00.0000000' AS DateTime2), N'card (266)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15141613200213           ', N'151416132                ', CAST(N'2015-08-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-01T00:00:00.0000000' AS DateTime2), N'card (267)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15141683000214           ', N'151416830                ', CAST(N'2015-08-02T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-02T00:00:00.0000000' AS DateTime2), N'card (268)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15141746400216           ', N'151417464                ', CAST(N'2015-08-04T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-04T00:00:00.0000000' AS DateTime2), N'card (269)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15141804900215           ', N'151418049                ', CAST(N'2015-08-03T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-03T00:00:00.0000000' AS DateTime2), N'card (270)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15142011000220           ', N'151420110                ', CAST(N'2015-08-08T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-08T00:00:00.0000000' AS DateTime2), N'card (271)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15142030300217           ', N'151420303                ', CAST(N'2015-08-05T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-05T00:00:00.0000000' AS DateTime2), N'card (272)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15142196400209           ', N'151421964                ', CAST(N'2015-07-28T00:00:00.0000000' AS DateTime2), CAST(N'2020-07-28T00:00:00.0000000' AS DateTime2), N'card (273)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15142820200218           ', N'151428202                ', CAST(N'2015-08-06T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-06T00:00:00.0000000' AS DateTime2), N'card (274)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15143115400219           ', N'151431154                ', CAST(N'2015-08-07T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-07T00:00:00.0000000' AS DateTime2), N'card (275)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15155369000352           ', N'151553690                ', CAST(N'2015-12-18T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-18T00:00:00.0000000' AS DateTime2), N'card (276)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'15160241400402           ', N'151602414                ', CAST(N'2016-02-06T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-06T00:00:00.0000000' AS DateTime2), N'card (277)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16000014100298           ', N'160000141                ', CAST(N'2015-10-25T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-25T00:00:00.0000000' AS DateTime2), N'card (278)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16000112000299           ', N'160001120                ', CAST(N'2015-10-26T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-26T00:00:00.0000000' AS DateTime2), N'card (279)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16000151900297           ', N'160001519                ', CAST(N'2015-10-24T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-24T00:00:00.0000000' AS DateTime2), N'card (280)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16000225900300           ', N'160002259                ', CAST(N'2015-10-27T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-27T00:00:00.0000000' AS DateTime2), N'card (281)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16000421700302           ', N'160004217                ', CAST(N'2015-10-29T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-29T00:00:00.0000000' AS DateTime2), N'card (282)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16000520100303           ', N'160005201                ', CAST(N'2015-10-30T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-30T00:00:00.0000000' AS DateTime2), N'card (283)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16000613300304           ', N'160006133                ', CAST(N'2015-10-31T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-31T00:00:00.0000000' AS DateTime2), N'card (284)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16000728900305           ', N'160007289                ', CAST(N'2015-11-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-01T00:00:00.0000000' AS DateTime2), N'card (285)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16000770100294           ', N'160007701                ', CAST(N'2015-10-21T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-21T00:00:00.0000000' AS DateTime2), N'card (286)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16000916800307           ', N'160009168                ', CAST(N'2015-11-03T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-03T00:00:00.0000000' AS DateTime2), N'card (287)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16001049500306           ', N'160010495                ', CAST(N'2015-11-02T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-02T00:00:00.0000000' AS DateTime2), N'card (288)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16001123800309           ', N'160011238                ', CAST(N'2015-11-05T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-05T00:00:00.0000000' AS DateTime2), N'card (289)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16001222500310           ', N'160012225                ', CAST(N'2015-11-06T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-06T00:00:00.0000000' AS DateTime2), N'card (290)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16001253100308           ', N'160012531                ', CAST(N'2015-11-04T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-04T00:00:00.0000000' AS DateTime2), N'card (291)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16001314700311           ', N'160013147                ', CAST(N'2015-11-07T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-07T00:00:00.0000000' AS DateTime2), N'card (292)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16001420500312           ', N'160014205                ', CAST(N'2015-11-08T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-08T00:00:00.0000000' AS DateTime2), N'card (293)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16001470400301           ', N'160014704                ', CAST(N'2015-10-28T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-28T00:00:00.0000000' AS DateTime2), N'card (294)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16001527600313           ', N'160015276                ', CAST(N'2015-11-09T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-09T00:00:00.0000000' AS DateTime2), N'card (295)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16001612700314           ', N'160016127                ', CAST(N'2015-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-10T00:00:00.0000000' AS DateTime2), N'card (296)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16001730800315           ', N'160017308                ', CAST(N'2015-11-11T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-11T00:00:00.0000000' AS DateTime2), N'card (297)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16002250700318           ', N'160022507                ', CAST(N'2015-11-14T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-14T00:00:00.0000000' AS DateTime2), N'card (298)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16002428000322           ', N'160024280                ', CAST(N'2015-11-18T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-18T00:00:00.0000000' AS DateTime2), N'card (299)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16002556300321           ', N'160025563                ', CAST(N'2015-11-17T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-17T00:00:00.0000000' AS DateTime2), N'card (300)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16002618800324           ', N'160026188                ', CAST(N'2015-11-20T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-20T00:00:00.0000000' AS DateTime2), N'card (301)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16002724200325           ', N'160027242                ', CAST(N'2015-11-21T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-21T00:00:00.0000000' AS DateTime2), N'card (302)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16002755800323           ', N'160027558                ', CAST(N'2015-11-19T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-19T00:00:00.0000000' AS DateTime2), N'card (303)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16002923300327           ', N'160029233                ', CAST(N'2015-11-23T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-23T00:00:00.0000000' AS DateTime2), N'card (304)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16002971700316           ', N'160029717                ', CAST(N'2015-11-12T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-12T00:00:00.0000000' AS DateTime2), N'card (305)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16003017500328           ', N'160030175                ', CAST(N'2015-11-24T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-24T00:00:00.0000000' AS DateTime2), N'card (306)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16003054300326           ', N'160030543                ', CAST(N'2015-11-22T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-22T00:00:00.0000000' AS DateTime2), N'card (307)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16003069600317           ', N'160030696                ', CAST(N'2015-11-13T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-13T00:00:00.0000000' AS DateTime2), N'card (308)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16003125200329           ', N'160031252                ', CAST(N'2015-11-25T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-25T00:00:00.0000000' AS DateTime2), N'card (309)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16003268600319           ', N'160032686                ', CAST(N'2015-11-15T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-15T00:00:00.0000000' AS DateTime2), N'card (310)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16003366700320           ', N'160033667                ', CAST(N'2015-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-16T00:00:00.0000000' AS DateTime2), N'card (311)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16003454500330           ', N'160034545                ', CAST(N'2015-11-26T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-26T00:00:00.0000000' AS DateTime2), N'card (312)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16003651200332           ', N'160036512                ', CAST(N'2015-11-28T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-28T00:00:00.0000000' AS DateTime2), N'card (313)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16003818500336           ', N'160038185                ', CAST(N'2015-12-02T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-02T00:00:00.0000000' AS DateTime2), N'card (314)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16003850600334           ', N'160038506                ', CAST(N'2015-11-30T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-30T00:00:00.0000000' AS DateTime2), N'card (315)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16004027000338           ', N'160040270                ', CAST(N'2015-12-04T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-04T00:00:00.0000000' AS DateTime2), N'card (316)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16004117900339           ', N'160041179                ', CAST(N'2015-12-05T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-05T00:00:00.0000000' AS DateTime2), N'card (317)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16004156900337           ', N'160041569                ', CAST(N'2015-12-03T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-03T00:00:00.0000000' AS DateTime2), N'card (318)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16004455400340           ', N'160044554                ', CAST(N'2015-12-06T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-06T00:00:00.0000000' AS DateTime2), N'card (319)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16004470800331           ', N'160044708                ', CAST(N'2015-11-27T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-27T00:00:00.0000000' AS DateTime2), N'card (320)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16004522900343           ', N'160045229                ', CAST(N'2015-12-09T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-09T00:00:00.0000000' AS DateTime2), N'card (321)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16004549000341           ', N'160045490                ', CAST(N'2015-12-07T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-07T00:00:00.0000000' AS DateTime2), N'card (322)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16004671100333           ', N'160046711                ', CAST(N'2015-11-29T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-29T00:00:00.0000000' AS DateTime2), N'card (323)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16004715700345           ', N'160047157                ', CAST(N'2015-12-11T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-11T00:00:00.0000000' AS DateTime2), N'card (324)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16004816500346           ', N'160048165                ', CAST(N'2015-12-12T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-12T00:00:00.0000000' AS DateTime2), N'card (325)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16004852400344           ', N'160048524                ', CAST(N'2015-12-10T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-10T00:00:00.0000000' AS DateTime2), N'card (326)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16004869200335           ', N'160048692                ', CAST(N'2015-12-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-01T00:00:00.0000000' AS DateTime2), N'card (327)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16004929500347           ', N'160049295                ', CAST(N'2015-12-13T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-13T00:00:00.0000000' AS DateTime2), N'card (328)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16005350300349           ', N'160053503                ', CAST(N'2015-12-15T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-15T00:00:00.0000000' AS DateTime2), N'card (329)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16005567400342           ', N'160055674                ', CAST(N'2015-12-08T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-08T00:00:00.0000000' AS DateTime2), N'card (330)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16005816900356           ', N'160058169                ', CAST(N'2015-12-22T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-22T00:00:00.0000000' AS DateTime2), N'card (331)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16005929300357           ', N'160059293                ', CAST(N'2015-12-23T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-23T00:00:00.0000000' AS DateTime2), N'card (332)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16006122600359           ', N'160061226                ', CAST(N'2015-12-25T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-25T00:00:00.0000000' AS DateTime2), N'card (333)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16006167800348           ', N'160061678                ', CAST(N'2015-12-14T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-14T00:00:00.0000000' AS DateTime2), N'card (334)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16006227100360           ', N'160062271                ', CAST(N'2015-12-26T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-26T00:00:00.0000000' AS DateTime2), N'card (335)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16006252000358           ', N'160062520                ', CAST(N'2015-12-24T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-24T00:00:00.0000000' AS DateTime2), N'card (336)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16006326000361           ', N'160063260                ', CAST(N'2015-12-27T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-27T00:00:00.0000000' AS DateTime2), N'card (337)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16006369300350           ', N'160063693                ', CAST(N'2015-12-16T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-16T00:00:00.0000000' AS DateTime2), N'card (338)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16006421500362           ', N'160064215                ', CAST(N'2015-12-28T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-28T00:00:00.0000000' AS DateTime2), N'card (339)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16006470200351           ', N'160064702                ', CAST(N'2015-12-17T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-17T00:00:00.0000000' AS DateTime2), N'card (340)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16006527700363           ', N'160065277                ', CAST(N'2015-12-29T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-29T00:00:00.0000000' AS DateTime2), N'card (341)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16006625400364           ', N'160066254                ', CAST(N'2015-12-30T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-30T00:00:00.0000000' AS DateTime2), N'card (342)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16006668100353           ', N'160066681                ', CAST(N'2015-12-19T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-19T00:00:00.0000000' AS DateTime2), N'card (343)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16006767600354           ', N'160067676                ', CAST(N'2015-12-20T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-20T00:00:00.0000000' AS DateTime2), N'card (344)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16006869800355           ', N'160068698                ', CAST(N'2015-12-21T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-21T00:00:00.0000000' AS DateTime2), N'card (345)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16006950400365           ', N'160069504                ', CAST(N'2015-12-31T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-31T00:00:00.0000000' AS DateTime2), N'card (346)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16007050800366           ', N'160070508                ', CAST(N'2016-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-01T00:00:00.0000000' AS DateTime2), N'card (347)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16007154900367           ', N'160071549                ', CAST(N'2016-01-02T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-02T00:00:00.0000000' AS DateTime2), N'card (348)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16007356500369           ', N'160073565                ', CAST(N'2016-01-04T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-04T00:00:00.0000000' AS DateTime2), N'card (349)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16007417700372           ', N'160074177                ', CAST(N'2016-01-07T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-07T00:00:00.0000000' AS DateTime2), N'card (350)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16007452800370           ', N'160074528                ', CAST(N'2016-01-05T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-05T00:00:00.0000000' AS DateTime2), N'card (351)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16007554200371           ', N'160075542                ', CAST(N'2016-01-06T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-06T00:00:00.0000000' AS DateTime2), N'card (352)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16007614300374           ', N'160076143                ', CAST(N'2016-01-09T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-09T00:00:00.0000000' AS DateTime2), N'card (353)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16007952500375           ', N'160079525                ', CAST(N'2016-01-10T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-10T00:00:00.0000000' AS DateTime2), N'card (354)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16008020600378           ', N'160080206                ', CAST(N'2016-01-13T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-13T00:00:00.0000000' AS DateTime2), N'card (355)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16008055900376           ', N'160080559                ', CAST(N'2016-01-11T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-11T00:00:00.0000000' AS DateTime2), N'card (356)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16008118900379           ', N'160081189                ', CAST(N'2016-01-14T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-14T00:00:00.0000000' AS DateTime2), N'card (357)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16008149600377           ', N'160081496                ', CAST(N'2016-01-12T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-12T00:00:00.0000000' AS DateTime2), N'card (358)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16008168700368           ', N'160081687                ', CAST(N'2016-01-03T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-03T00:00:00.0000000' AS DateTime2), N'card (359)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16008218600380           ', N'160082186                ', CAST(N'2016-01-15T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-15T00:00:00.0000000' AS DateTime2), N'card (360)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16008330900381           ', N'160083309                ', CAST(N'2016-01-16T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-16T00:00:00.0000000' AS DateTime2), N'card (361)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16008624900384           ', N'160086249                ', CAST(N'2016-01-19T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-19T00:00:00.0000000' AS DateTime2), N'card (362)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16008657100382           ', N'160086571                ', CAST(N'2016-01-17T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-17T00:00:00.0000000' AS DateTime2), N'card (363)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16008665500373           ', N'160086655                ', CAST(N'2016-01-08T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-08T00:00:00.0000000' AS DateTime2), N'card (364)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16008721000385           ', N'160087210                ', CAST(N'2016-01-20T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-20T00:00:00.0000000' AS DateTime2), N'card (365)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16009023000388           ', N'160090230                ', CAST(N'2016-01-23T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-23T00:00:00.0000000' AS DateTime2), N'card (366)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16009150000387           ', N'160091500                ', CAST(N'2016-01-22T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-22T00:00:00.0000000' AS DateTime2), N'card (367)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16009212100390           ', N'160092121                ', CAST(N'2016-01-25T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-25T00:00:00.0000000' AS DateTime2), N'card (368)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16009326700391           ', N'160093267                ', CAST(N'2016-01-26T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-26T00:00:00.0000000' AS DateTime2), N'card (369)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16009526400393           ', N'160095264                ', CAST(N'2016-01-28T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-28T00:00:00.0000000' AS DateTime2), N'card (370)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16009630200394           ', N'160096302                ', CAST(N'2016-01-29T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-29T00:00:00.0000000' AS DateTime2), N'card (371)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16009666900383           ', N'160096669                ', CAST(N'2016-01-18T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-18T00:00:00.0000000' AS DateTime2), N'card (372)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16009712500395           ', N'160097125                ', CAST(N'2016-01-30T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-30T00:00:00.0000000' AS DateTime2), N'card (373)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16009819200396           ', N'160098192                ', CAST(N'2016-01-31T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-31T00:00:00.0000000' AS DateTime2), N'card (374)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16009929000397           ', N'160099290                ', CAST(N'2016-02-01T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-01T00:00:00.0000000' AS DateTime2), N'card (375)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16009971800386           ', N'160099718                ', CAST(N'2016-01-21T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-21T00:00:00.0000000' AS DateTime2), N'card (376)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16010215000400           ', N'160102150                ', CAST(N'2016-02-04T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-04T00:00:00.0000000' AS DateTime2), N'card (377)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16010255600398           ', N'160102556                ', CAST(N'2016-02-02T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-02T00:00:00.0000000' AS DateTime2), N'card (378)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16010268300389           ', N'160102683                ', CAST(N'2016-01-24T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-24T00:00:00.0000000' AS DateTime2), N'card (379)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16010323400401           ', N'160103234                ', CAST(N'2016-02-05T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-05T00:00:00.0000000' AS DateTime2), N'card (380)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16010566100392           ', N'160105661                ', CAST(N'2016-01-27T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-27T00:00:00.0000000' AS DateTime2), N'card (381)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16010618000404           ', N'160106180                ', CAST(N'2016-02-08T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-08T00:00:00.0000000' AS DateTime2), N'card (382)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16010715400405           ', N'160107154                ', CAST(N'2016-02-09T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-09T00:00:00.0000000' AS DateTime2), N'card (383)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16010749200403           ', N'160107492                ', CAST(N'2016-02-07T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-07T00:00:00.0000000' AS DateTime2), N'card (384)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16010928400407           ', N'160109284                ', CAST(N'2016-02-11T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-11T00:00:00.0000000' AS DateTime2), N'card (385)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16011015900408           ', N'160110159                ', CAST(N'2016-02-12T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-12T00:00:00.0000000' AS DateTime2), N'card (386)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16011051700406           ', N'160110517                ', CAST(N'2016-02-10T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-10T00:00:00.0000000' AS DateTime2), N'card (387)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16011123900409           ', N'160111239                ', CAST(N'2016-02-13T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-13T00:00:00.0000000' AS DateTime2), N'card (388)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16011270900399           ', N'160112709                ', CAST(N'2016-02-03T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-03T00:00:00.0000000' AS DateTime2), N'card (389)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16011330500411           ', N'160113305                ', CAST(N'2016-02-15T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-15T00:00:00.0000000' AS DateTime2), N'card (390)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16011520200413           ', N'160115202                ', CAST(N'2016-02-17T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-17T00:00:00.0000000' AS DateTime2), N'card (391)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16011624600414           ', N'160116246                ', CAST(N'2016-02-18T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-18T00:00:00.0000000' AS DateTime2), N'card (392)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16011729700415           ', N'160117297                ', CAST(N'2016-02-19T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-19T00:00:00.0000000' AS DateTime2), N'card (393)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16011822000416           ', N'160118220                ', CAST(N'2016-02-20T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-20T00:00:00.0000000' AS DateTime2), N'card (394)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16011927400417           ', N'160119274                ', CAST(N'2016-02-21T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-21T00:00:00.0000000' AS DateTime2), N'card (395)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16012370500410           ', N'160123705                ', CAST(N'2016-02-14T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-14T00:00:00.0000000' AS DateTime2), N'card (396)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16012571200412           ', N'160125712                ', CAST(N'2016-02-16T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-16T00:00:00.0000000' AS DateTime2), N'card (397)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16092519400223           ', N'160925194                ', CAST(N'2015-08-11T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-11T00:00:00.0000000' AS DateTime2), N'card (398)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16092627200224           ', N'160926272                ', CAST(N'2015-08-12T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-12T00:00:00.0000000' AS DateTime2), N'card (399)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16092655700222           ', N'160926557                ', CAST(N'2015-08-10T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-10T00:00:00.0000000' AS DateTime2), N'card (400)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16092726900225           ', N'160927269                ', CAST(N'2015-08-13T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-13T00:00:00.0000000' AS DateTime2), N'card (401)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16093027500228           ', N'160930275                ', CAST(N'2015-08-16T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-16T00:00:00.0000000' AS DateTime2), N'card (402)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16093052700226           ', N'160930527                ', CAST(N'2015-08-14T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-14T00:00:00.0000000' AS DateTime2), N'card (403)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16093157200227           ', N'160931572                ', CAST(N'2015-08-15T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-15T00:00:00.0000000' AS DateTime2), N'card (404)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16093320400231           ', N'160933204                ', CAST(N'2015-08-19T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-19T00:00:00.0000000' AS DateTime2), N'card (405)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16093468800221           ', N'160934688                ', CAST(N'2015-08-09T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-09T00:00:00.0000000' AS DateTime2), N'card (406)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16093626500234           ', N'160936265                ', CAST(N'2015-08-22T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-22T00:00:00.0000000' AS DateTime2), N'card (407)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16093652200232           ', N'160936522                ', CAST(N'2015-08-20T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-20T00:00:00.0000000' AS DateTime2), N'card (408)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16093712200235           ', N'160937122                ', CAST(N'2015-08-23T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-23T00:00:00.0000000' AS DateTime2), N'card (409)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16093829800236           ', N'160938298                ', CAST(N'2015-08-24T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-24T00:00:00.0000000' AS DateTime2), N'card (410)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16094230300240           ', N'160942303                ', CAST(N'2015-08-28T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-28T00:00:00.0000000' AS DateTime2), N'card (411)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16094251400238           ', N'160942514                ', CAST(N'2015-08-26T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-26T00:00:00.0000000' AS DateTime2), N'card (412)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16094268500229           ', N'160942685                ', CAST(N'2015-08-17T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-17T00:00:00.0000000' AS DateTime2), N'card (413)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16094364900230           ', N'160943649                ', CAST(N'2015-08-18T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-18T00:00:00.0000000' AS DateTime2), N'card (414)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16094425100242           ', N'160944251                ', CAST(N'2015-08-30T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-30T00:00:00.0000000' AS DateTime2), N'card (415)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16094528500241           ', N'160945285                ', CAST(N'2015-08-29T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-29T00:00:00.0000000' AS DateTime2), N'card (416)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16094619000244           ', N'160946190                ', CAST(N'2015-09-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-01T00:00:00.0000000' AS DateTime2), N'card (417)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16094670000233           ', N'160946700                ', CAST(N'2015-08-21T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-21T00:00:00.0000000' AS DateTime2), N'card (418)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16094749300243           ', N'160947493                ', CAST(N'2015-08-31T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-31T00:00:00.0000000' AS DateTime2), N'card (419)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16094830600246           ', N'160948306                ', CAST(N'2015-09-03T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-03T00:00:00.0000000' AS DateTime2), N'card (420)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16094923200247           ', N'160949232                ', CAST(N'2015-09-04T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-04T00:00:00.0000000' AS DateTime2), N'card (421)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16094949900245           ', N'160949499                ', CAST(N'2015-09-02T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-02T00:00:00.0000000' AS DateTime2), N'card (422)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16095025600248           ', N'160950256                ', CAST(N'2015-09-05T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-05T00:00:00.0000000' AS DateTime2), N'card (423)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16095067700237           ', N'160950677                ', CAST(N'2015-08-25T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-25T00:00:00.0000000' AS DateTime2), N'card (424)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16095124100249           ', N'160951241                ', CAST(N'2015-09-06T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-06T00:00:00.0000000' AS DateTime2), N'card (425)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16095265600239           ', N'160952656                ', CAST(N'2015-08-27T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-27T00:00:00.0000000' AS DateTime2), N'card (426)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16095416300252           ', N'160954163                ', CAST(N'2015-09-09T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-09T00:00:00.0000000' AS DateTime2), N'card (427)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16095518200253           ', N'160955182                ', CAST(N'2015-09-10T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-10T00:00:00.0000000' AS DateTime2), N'card (428)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16095556100251           ', N'160955561                ', CAST(N'2015-09-08T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-08T00:00:00.0000000' AS DateTime2), N'card (429)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16095626200254           ', N'160956262                ', CAST(N'2015-09-11T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-11T00:00:00.0000000' AS DateTime2), N'card (430)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16095956600255           ', N'160959566                ', CAST(N'2015-09-12T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-12T00:00:00.0000000' AS DateTime2), N'card (431)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16096027800258           ', N'160960278                ', CAST(N'2015-09-15T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-15T00:00:00.0000000' AS DateTime2), N'card (432)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16096216700260           ', N'160962167                ', CAST(N'2015-09-17T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-17T00:00:00.0000000' AS DateTime2), N'card (433)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16096311500261           ', N'160963115                ', CAST(N'2015-09-18T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-18T00:00:00.0000000' AS DateTime2), N'card (434)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16096369400250           ', N'160963694                ', CAST(N'2015-09-07T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-07T00:00:00.0000000' AS DateTime2), N'card (435)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16096424700262           ', N'160964247                ', CAST(N'2015-09-19T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-19T00:00:00.0000000' AS DateTime2), N'card (436)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16096522800263           ', N'160965228                ', CAST(N'2015-09-20T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-20T00:00:00.0000000' AS DateTime2), N'card (437)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16096615100264           ', N'160966151                ', CAST(N'2015-09-21T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-21T00:00:00.0000000' AS DateTime2), N'card (438)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16096714000265           ', N'160967140                ', CAST(N'2015-09-22T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-22T00:00:00.0000000' AS DateTime2), N'card (439)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16096921100267           ', N'160969211                ', CAST(N'2015-09-24T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-24T00:00:00.0000000' AS DateTime2), N'card (440)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16096968200256           ', N'160969682                ', CAST(N'2015-09-13T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-13T00:00:00.0000000' AS DateTime2), N'card (441)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16097023700268           ', N'160970237                ', CAST(N'2015-09-25T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-25T00:00:00.0000000' AS DateTime2), N'card (442)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16097071000257           ', N'160970710                ', CAST(N'2015-09-14T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-14T00:00:00.0000000' AS DateTime2), N'card (443)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16097215600270           ', N'160972156                ', CAST(N'2015-09-27T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-27T00:00:00.0000000' AS DateTime2), N'card (444)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16097266400259           ', N'160972664                ', CAST(N'2015-09-16T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-16T00:00:00.0000000' AS DateTime2), N'card (445)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16097351000269           ', N'160973510                ', CAST(N'2015-09-26T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-26T00:00:00.0000000' AS DateTime2), N'card (446)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16097417800272           ', N'160974178                ', CAST(N'2015-09-29T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-29T00:00:00.0000000' AS DateTime2), N'card (447)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16097528700273           ', N'160975287                ', CAST(N'2015-09-30T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-30T00:00:00.0000000' AS DateTime2), N'card (448)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16097553800271           ', N'160975538                ', CAST(N'2015-09-28T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-28T00:00:00.0000000' AS DateTime2), N'card (449)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16097612600274           ', N'160976126                ', CAST(N'2015-10-01T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-01T00:00:00.0000000' AS DateTime2), N'card (450)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16097951800275           ', N'160979518                ', CAST(N'2015-10-02T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-02T00:00:00.0000000' AS DateTime2), N'card (451)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16097971400266           ', N'160979714                ', CAST(N'2015-09-23T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-23T00:00:00.0000000' AS DateTime2), N'card (452)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16098013000278           ', N'160980130                ', CAST(N'2015-10-05T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-05T00:00:00.0000000' AS DateTime2), N'card (453)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16098117200279           ', N'160981172                ', CAST(N'2015-10-06T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-06T00:00:00.0000000' AS DateTime2), N'card (454)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16098218700280           ', N'160982187                ', CAST(N'2015-10-07T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-07T00:00:00.0000000' AS DateTime2), N'card (455)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16098329100281           ', N'160983291                ', CAST(N'2015-10-08T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-08T00:00:00.0000000' AS DateTime2), N'card (456)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16098421600282           ', N'160984216                ', CAST(N'2015-10-09T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-09T00:00:00.0000000' AS DateTime2), N'card (457)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16098520700283           ', N'160985207                ', CAST(N'2015-10-10T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-10T00:00:00.0000000' AS DateTime2), N'card (458)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16098620800284           ', N'160986208                ', CAST(N'2015-10-11T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-11T00:00:00.0000000' AS DateTime2), N'card (459)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16098726300285           ', N'160987263                ', CAST(N'2015-10-12T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-12T00:00:00.0000000' AS DateTime2), N'card (460)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16098926600287           ', N'160989266                ', CAST(N'2015-10-14T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-14T00:00:00.0000000' AS DateTime2), N'card (461)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16098970300276           ', N'160989703                ', CAST(N'2015-10-03T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-03T00:00:00.0000000' AS DateTime2), N'card (462)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16099015200288           ', N'160990152                ', CAST(N'2015-10-15T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-15T00:00:00.0000000' AS DateTime2), N'card (463)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16099070600277           ', N'160990706                ', CAST(N'2015-10-04T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-04T00:00:00.0000000' AS DateTime2), N'card (464)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16099127300289           ', N'160991273                ', CAST(N'2015-10-16T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-16T00:00:00.0000000' AS DateTime2), N'card (465)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16099330400291           ', N'160993304                ', CAST(N'2015-10-18T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-18T00:00:00.0000000' AS DateTime2), N'card (466)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16099412400292           ', N'160994124                ', CAST(N'2015-10-19T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-19T00:00:00.0000000' AS DateTime2), N'card (467)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16099451500290           ', N'160994515                ', CAST(N'2015-10-17T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-17T00:00:00.0000000' AS DateTime2), N'card (468)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16099519100293           ', N'160995191                ', CAST(N'2015-10-20T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-20T00:00:00.0000000' AS DateTime2), N'card (469)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16099729200295           ', N'160997292                ', CAST(N'2015-10-22T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-22T00:00:00.0000000' AS DateTime2), N'card (470)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16099830100296           ', N'160998301                ', CAST(N'2015-10-23T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-23T00:00:00.0000000' AS DateTime2), N'card (471)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'16099968400286           ', N'160999684                ', CAST(N'2015-10-13T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-13T00:00:00.0000000' AS DateTime2), N'card (472)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'515526000425             ', N'5155260                  ', CAST(N'2016-02-29T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-28T00:00:00.0000000' AS DateTime2), N'card (473)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'515527100426             ', N'5155271                  ', CAST(N'2016-03-01T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-01T00:00:00.0000000' AS DateTime2), N'card (474)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'515528300427             ', N'5155283                  ', CAST(N'2016-03-02T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-02T00:00:00.0000000' AS DateTime2), N'card (475)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'515529400428             ', N'5155294                  ', CAST(N'2016-03-03T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-03T00:00:00.0000000' AS DateTime2), N'card (476)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'515530500429             ', N'5155305                  ', CAST(N'2016-03-04T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-04T00:00:00.0000000' AS DateTime2), N'card (477)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'515531700430             ', N'5155317                  ', CAST(N'2016-03-05T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-05T00:00:00.0000000' AS DateTime2), N'card (478)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'515532800431             ', N'5155328                  ', CAST(N'2016-03-06T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-06T00:00:00.0000000' AS DateTime2), N'card (479)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'515533900432             ', N'5155339                  ', CAST(N'2016-03-07T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-07T00:00:00.0000000' AS DateTime2), N'card (480)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'515535000433             ', N'5155350                  ', CAST(N'2016-03-08T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-08T00:00:00.0000000' AS DateTime2), N'card (481)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'515536200434             ', N'5155362                  ', CAST(N'2016-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-09T00:00:00.0000000' AS DateTime2), N'card (482)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'515537400435             ', N'5155374                  ', CAST(N'2016-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-10T00:00:00.0000000' AS DateTime2), N'card (483)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'515538600436             ', N'5155386                  ', CAST(N'2016-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-11T00:00:00.0000000' AS DateTime2), N'card (484)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'515539700437             ', N'5155397                  ', CAST(N'2016-03-12T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-12T00:00:00.0000000' AS DateTime2), N'card (485)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'515540800438             ', N'5155408                  ', CAST(N'2016-03-13T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-13T00:00:00.0000000' AS DateTime2), N'card (486)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'515541900439             ', N'5155419                  ', CAST(N'2016-03-14T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-14T00:00:00.0000000' AS DateTime2), N'card (487)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'515543000440             ', N'5155430                  ', CAST(N'2016-03-15T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-15T00:00:00.0000000' AS DateTime2), N'card (488)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'515544100441             ', N'5155441                  ', CAST(N'2016-03-16T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-16T00:00:00.0000000' AS DateTime2), N'card (489)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'515545200442             ', N'5155452                  ', CAST(N'2016-03-17T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-17T00:00:00.0000000' AS DateTime2), N'card (490)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'515546300443             ', N'5155463                  ', CAST(N'2016-03-18T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-18T00:00:00.0000000' AS DateTime2), N'card (491)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'515568100418             ', N'5155681                  ', CAST(N'2016-02-22T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-22T00:00:00.0000000' AS DateTime2), N'card (492)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'515569200419             ', N'5155692                  ', CAST(N'2016-02-23T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-23T00:00:00.0000000' AS DateTime2), N'card (493)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'515570300420             ', N'5155703                  ', CAST(N'2016-02-24T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-24T00:00:00.0000000' AS DateTime2), N'card (494)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'515571400421             ', N'5155714                  ', CAST(N'2016-02-25T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-25T00:00:00.0000000' AS DateTime2), N'card (495)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'515572500422             ', N'5155725                  ', CAST(N'2016-02-26T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-26T00:00:00.0000000' AS DateTime2), N'card (496)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'515573600423             ', N'5155736                  ', CAST(N'2016-02-27T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-27T00:00:00.0000000' AS DateTime2), N'card (497)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'515574800424             ', N'5155748                  ', CAST(N'2016-02-28T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-28T00:00:00.0000000' AS DateTime2), N'card (498)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'881415900013             ', N'8814159                  ', CAST(N'2015-01-13T00:00:00.0000000' AS DateTime2), CAST(N'2020-01-13T00:00:00.0000000' AS DateTime2), N'card (499)')
GO
INSERT [dbo].[tTheDocGia] ([MaThe], [MaDG], [NgayBatDau], [NgayKhoaThe], [Anh]) VALUES (N'88177104300181           ', N'881771043                ', CAST(N'2015-06-30T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), N'card (500)')
GO
ALTER TABLE [dbo].[tBanSaoSach]  WITH CHECK ADD  CONSTRAINT [FK_tBanSaoSach_tSach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[tSach] ([MaSach])
GO
ALTER TABLE [dbo].[tBanSaoSach] CHECK CONSTRAINT [FK_tBanSaoSach_tSach]
GO
ALTER TABLE [dbo].[tMuonTra]  WITH CHECK ADD  CONSTRAINT [FK_tMuonTra_tBanSaoSach] FOREIGN KEY([MaBanSao])
REFERENCES [dbo].[tBanSaoSach] ([MaBanSao])
GO
ALTER TABLE [dbo].[tMuonTra] CHECK CONSTRAINT [FK_tMuonTra_tBanSaoSach]
GO
ALTER TABLE [dbo].[tMuonTra]  WITH CHECK ADD  CONSTRAINT [FK_tMuonTra_tTheDocGia] FOREIGN KEY([MaThe])
REFERENCES [dbo].[tTheDocGia] ([MaThe])
GO
ALTER TABLE [dbo].[tMuonTra] CHECK CONSTRAINT [FK_tMuonTra_tTheDocGia]
GO
ALTER TABLE [dbo].[tSach]  WITH CHECK ADD  CONSTRAINT [FK_tSach_tLoaiSach] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[tLoaiSach] ([MaLoai])
GO
ALTER TABLE [dbo].[tSach] CHECK CONSTRAINT [FK_tSach_tLoaiSach]
GO
ALTER TABLE [dbo].[tSach]  WITH CHECK ADD  CONSTRAINT [FK_tSach_tNgonNgu] FOREIGN KEY([MaNgonNgu])
REFERENCES [dbo].[tNgonNgu] ([MaNgonNgu])
GO
ALTER TABLE [dbo].[tSach] CHECK CONSTRAINT [FK_tSach_tNgonNgu]
GO
ALTER TABLE [dbo].[tSach]  WITH CHECK ADD  CONSTRAINT [FK_tSach_tNhaXB] FOREIGN KEY([MaNXB])
REFERENCES [dbo].[tNhaXB] ([MaNXB])
GO
ALTER TABLE [dbo].[tSach] CHECK CONSTRAINT [FK_tSach_tNhaXB]
GO
ALTER TABLE [dbo].[tTheDocGia]  WITH CHECK ADD  CONSTRAINT [FK_tTheDocGia_tDocGia] FOREIGN KEY([MaDG])
REFERENCES [dbo].[tDocGia] ([MaDG])
GO
ALTER TABLE [dbo].[tTheDocGia] CHECK CONSTRAINT [FK_tTheDocGia_tDocGia]
GO
