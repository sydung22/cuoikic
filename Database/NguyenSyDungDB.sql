USE [NguyenSyDungDB]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 6/19/2021 10:22:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [nvarchar](50) NOT NULL,
	[MaKH] [nvarchar](50) NULL,
	[TenKH] [nvarchar](50) NULL,
	[NgayLap] [datetime] NULL,
	[SoLuong] [nchar](10) NULL,
	[TongTien] [nvarchar](50) NULL,
	[TrangThai] [nchar](10) NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 6/19/2021 10:22:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSanPham] [nvarchar](50) NOT NULL,
	[TenLoaiSanPham] [nvarchar](50) NULL,
	[TinhTrang] [nchar](10) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 6/19/2021 10:22:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNhaSanXuat] [nvarchar](50) NOT NULL,
	[TenNhaSanXuat] [nvarchar](50) NULL,
	[TinhTrang] [nchar](10) NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNhaSanXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 6/19/2021 10:22:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [nvarchar](50) NOT NULL,
	[MaLoaiSanPham] [nvarchar](50) NULL,
	[MaNhaSanXuat] [nvarchar](50) NULL,
	[TenSanPham] [nvarchar](100) NULL,
	[CauHinh] [nvarchar](max) NULL,
	[HinhChinh] [nvarchar](50) NULL,
	[Hinh1] [nvarchar](50) NULL,
	[Hinh2] [nvarchar](50) NULL,
	[Hinh3] [nvarchar](50) NULL,
	[GiaCu] [nchar](20) NULL,
	[GiaMoi] [nchar](20) NULL,
	[SoLuongDaBan] [int] NULL,
	[SoLuong] [int] NULL,
	[TinhTrang] [nchar](10) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 6/19/2021 10:22:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTaiKhoan] [nvarchar](50) NOT NULL,
	[TenNguoiDung] [nvarchar](50) NULL,
	[TenDangNhap] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
	[ChucVu] [varchar](50) NULL,
	[TrangThai] [varchar](50) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [TenKH], [NgayLap], [SoLuong], [TongTien], [TrangThai]) VALUES (N'HD01', N'KH01', N'Bùi Trần Yến Vi', CAST(N'2021-05-05T00:00:00.000' AS DateTime), N'20        ', N'90.000.000đ', N'0         ')
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [TenKH], [NgayLap], [SoLuong], [TongTien], [TrangThai]) VALUES (N'HD02', N'KH02', N'Nguyễn Sỹ Dũng', CAST(N'2021-02-10T00:00:00.000' AS DateTime), N'10        ', N'20.000.000đ', N'0         ')
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (N'LSP01', N'Quốc tế', N'0         ')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (N'LSP02', N'Xách tay', N'0         ')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (N'LSP03', N'Nội địa', N'0         ')
GO
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'NSX01', N'Apple', N'0         ')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'NSX02', N'SamSung', N'0         ')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'NSX03', N'Xiaomi', N'0         ')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'NSX04', N'Oppo', N'0         ')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'NSX05', N'Huawei', N'0         ')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [GiaCu], [GiaMoi], [SoLuongDaBan], [SoLuong], [TinhTrang]) VALUES (N'SP01', N'LSP01', N'NSX01', N'Iphone 12 64GB', N'<ol>
	<li><strong>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</strong>&nbsp;IPS LCD</li>
	<li><strong>Độ ph&acirc;n giải:</strong>&nbsp;828 x 1792 Pixels, 2 camera 12 MP, 12 MP</li>
	<li><strong>M&agrave;n h&igrave;nh rộng:</strong>&nbsp;6.1&quot;</li>
	<li><strong>Hệ điều h&agrave;nh:</strong>&nbsp;iOS 14</li>
	<li><strong>Chip xử l&yacute; (CPU):</strong>&nbsp;Apple A13 Bionic 6 nh&acirc;n</li>
	<li><strong>Bộ nhớ trong (ROM):</strong>&nbsp;128 GB</li>
	<li><strong>RAM:</strong>&nbsp;4 GB</li>
	<li><strong>Mạng di động:</strong>&nbsp;Hỗ trợ 4G</li>
	<li><strong>Số khe sim:</strong>&nbsp;1 Nano SIM &amp; 1 eSIM</li>
	<li><strong>Trọng lượng:</strong>&nbsp;194 g</li>
	<li><strong>Dung lượng pin:</strong>&nbsp;3110 mAh</li>
</ol>
', N'iphone1.jpg', N'iphone1.jpg', N'iphone1.jpg', N'iphone1.jpg', N'21.000.000đ         ', N'19.000.000đ         ', 10, 10, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [GiaCu], [GiaMoi], [SoLuongDaBan], [SoLuong], [TinhTrang]) VALUES (N'SP02', N'LSP01', N'NSX01', N'Iphone 12 Pro Max 64GB ', N'<ol>
	<li><strong>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</strong>&nbsp;IPS LCD</li>
	<li><strong>Độ ph&acirc;n giải:</strong>&nbsp;828 x 1792 Pixels, 2 camera 12 MP, 12 MP</li>
	<li><strong>M&agrave;n h&igrave;nh rộng:</strong>&nbsp;6.1&quot;</li>
	<li><strong>Hệ điều h&agrave;nh:</strong>&nbsp;iOS 14</li>
	<li><strong>Chip xử l&yacute; (CPU):</strong>&nbsp;Apple A13 Bionic 6 nh&acirc;n</li>
	<li><strong>Bộ nhớ trong (ROM):</strong>&nbsp;128 GB</li>
	<li><strong>RAM:</strong>&nbsp;4 GB</li>
	<li><strong>Mạng di động:</strong>&nbsp;Hỗ trợ 4G</li>
	<li><strong>Số khe sim:</strong>&nbsp;1 Nano SIM &amp; 1 eSIM</li>
	<li><strong>Trọng lượng:</strong>&nbsp;194 g</li>
	<li><strong>Dung lượng pin:</strong>&nbsp;3110 mAh</li>
</ol>
', N'iphone5.jpg', N'iphone5.jpg', N'iphone5.jpg', N'iphone5.jpg', N'25.000.000đ         ', N'24.500.000đ         ', 20, 20, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [GiaCu], [GiaMoi], [SoLuongDaBan], [SoLuong], [TinhTrang]) VALUES (N'SP03', N'LSP01', N'NSX01', N'Iphone 12 Pro Max 128GB', N'<ol>
	<li><strong>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</strong>&nbsp;IPS LCD</li>
	<li><strong>Độ ph&acirc;n giải:</strong>&nbsp;828 x 1792 Pixels, 2 camera 12 MP, 12 MP</li>
	<li><strong>M&agrave;n h&igrave;nh rộng:</strong>&nbsp;6.1&quot;</li>
	<li><strong>Hệ điều h&agrave;nh:</strong>&nbsp;iOS 14</li>
	<li><strong>Chip xử l&yacute; (CPU):</strong>&nbsp;Apple A13 Bionic 6 nh&acirc;n</li>
	<li><strong>Bộ nhớ trong (ROM):</strong>&nbsp;128 GB</li>
	<li><strong>RAM:</strong>&nbsp;4 GB</li>
	<li><strong>Mạng di động:</strong>&nbsp;Hỗ trợ 4G</li>
	<li><strong>Số khe sim:</strong>&nbsp;1 Nano SIM &amp; 1 eSIM</li>
	<li><strong>Trọng lượng:</strong>&nbsp;194 g</li>
	<li><strong>Dung lượng pin:</strong>&nbsp;3110 mAh</li>
</ol>
', N'iphone5.jpg', N'iphone4.jpg', N'iphone3.jpg', N'iphone6.jpg', N'20.000.000đ         ', N'18.000.000đ         ', 30, 0, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [GiaCu], [GiaMoi], [SoLuongDaBan], [SoLuong], [TinhTrang]) VALUES (N'SP04', N'LSP01', N'NSX01', N'Iphone 12 64 GB', N'<ol>
	<li><strong>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</strong>&nbsp;IPS LCD</li>
	<li><strong>Độ ph&acirc;n giải:</strong>&nbsp;828 x 1792 Pixels, 2 camera 12 MP, 12 MP</li>
	<li><strong>M&agrave;n h&igrave;nh rộng:</strong>&nbsp;6.1&quot;</li>
	<li><strong>Hệ điều h&agrave;nh:</strong>&nbsp;iOS 14</li>
	<li><strong>Chip xử l&yacute; (CPU):</strong>&nbsp;Apple A13 Bionic 6 nh&acirc;n</li>
	<li><strong>Bộ nhớ trong (ROM):</strong>&nbsp;128 GB</li>
	<li><strong>RAM:</strong>&nbsp;4 GB</li>
	<li><strong>Mạng di động:</strong>&nbsp;Hỗ trợ 4G</li>
	<li><strong>Số khe sim:</strong>&nbsp;1 Nano SIM &amp; 1 eSIM</li>
	<li><strong>Trọng lượng:</strong>&nbsp;194 g</li>
	<li><strong>Dung lượng pin:</strong>&nbsp;3110 mAh</li>
</ol>
', N'iphone9.jpg', N'iphone9.jpg', N'iphone9.jpg', N'iphone9.jpg', N'21.000.000đ         ', N'19.500.000đ         ', 40, 54, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [GiaCu], [GiaMoi], [SoLuongDaBan], [SoLuong], [TinhTrang]) VALUES (N'SP05', N'LSP01', N'NSX01', N'Iphone 12 128 gb', N'<ol>
	<li><strong>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</strong>&nbsp;IPS LCD</li>
	<li><strong>Độ ph&acirc;n giải:</strong>&nbsp;828 x 1792 Pixels, 2 camera 12 MP, 12 MP</li>
	<li><strong>M&agrave;n h&igrave;nh rộng:</strong>&nbsp;6.1&quot;</li>
	<li><strong>Hệ điều h&agrave;nh:</strong>&nbsp;iOS 14</li>
	<li><strong>Chip xử l&yacute; (CPU):</strong>&nbsp;Apple A13 Bionic 6 nh&acirc;n</li>
	<li><strong>Bộ nhớ trong (ROM):</strong>&nbsp;128 GB</li>
	<li><strong>RAM:</strong>&nbsp;4 GB</li>
	<li><strong>Mạng di động:</strong>&nbsp;Hỗ trợ 4G</li>
	<li><strong>Số khe sim:</strong>&nbsp;1 Nano SIM &amp; 1 eSIM</li>
	<li><strong>Trọng lượng:</strong>&nbsp;194 g</li>
	<li><strong>Dung lượng pin:</strong>&nbsp;3110 mAh</li>
</ol>
', N'iphone10.jpg', N'iphone10.jpg', N'iphone10.jpg', N'iphone10.jpg', N'21.000.000đ         ', N'19.000.000đ         ', 50, 234, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [GiaCu], [GiaMoi], [SoLuongDaBan], [SoLuong], [TinhTrang]) VALUES (N'SP06', N'LSP02', N'NSX02', N'Samsung s21 5G', N'<ol>
	<li><strong>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</strong>&nbsp;IPS LCD</li>
	<li><strong>Độ ph&acirc;n giải:</strong>&nbsp;828 x 1792 Pixels, 2 camera 12 MP, 12 MP</li>
	<li><strong>M&agrave;n h&igrave;nh rộng:</strong>&nbsp;6.1&quot;</li>
	<li><strong>Hệ điều h&agrave;nh:</strong>&nbsp;iOS 14</li>
	<li><strong>Chip xử l&yacute; (CPU):</strong>&nbsp;Apple A13 Bionic 6 nh&acirc;n</li>
	<li><strong>Bộ nhớ trong (ROM):</strong>&nbsp;128 GB</li>
	<li><strong>RAM:</strong>&nbsp;4 GB</li>
	<li><strong>Mạng di động:</strong>&nbsp;Hỗ trợ 4G</li>
	<li><strong>Số khe sim:</strong>&nbsp;1 Nano SIM &amp; 1 eSIM</li>
	<li><strong>Trọng lượng:</strong>&nbsp;194 g</li>
	<li><strong>Dung lượng pin:</strong>&nbsp;3110 mAh</li>
</ol>
', N'samsung1.jpg', N'samsung1.jpg', N'samsung1.jpg', N'samsung1.jpg', N'20.000.000đ         ', N'19.000.000đ         ', 60, 55, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [GiaCu], [GiaMoi], [SoLuongDaBan], [SoLuong], [TinhTrang]) VALUES (N'SP07', N'LSP02', N'NSX02', N'Samsung Galaxy A02', N'<ol>
	<li><strong>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</strong>&nbsp;IPS LCD</li>
	<li><strong>Độ ph&acirc;n giải:</strong>&nbsp;828 x 1792 Pixels, 2 camera 12 MP, 12 MP</li>
	<li><strong>M&agrave;n h&igrave;nh rộng:</strong>&nbsp;6.1&quot;</li>
	<li><strong>Hệ điều h&agrave;nh:</strong>&nbsp;iOS 14</li>
	<li><strong>Chip xử l&yacute; (CPU):</strong>&nbsp;Apple A13 Bionic 6 nh&acirc;n</li>
	<li><strong>Bộ nhớ trong (ROM):</strong>&nbsp;128 GB</li>
	<li><strong>RAM:</strong>&nbsp;4 GB</li>
	<li><strong>Mạng di động:</strong>&nbsp;Hỗ trợ 4G</li>
	<li><strong>Số khe sim:</strong>&nbsp;1 Nano SIM &amp; 1 eSIM</li>
	<li><strong>Trọng lượng:</strong>&nbsp;194 g</li>
	<li><strong>Dung lượng pin:</strong>&nbsp;3110 mAh</li>
</ol>
', N'samsung2.jpg', N'samsung2.jpg', N'samsung2.jpg', N'samsung2.jpg', N'21.000.000đ         ', N'19.000.000đ         ', 70, 23, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [GiaCu], [GiaMoi], [SoLuongDaBan], [SoLuong], [TinhTrang]) VALUES (N'SP08', N'LSP02', N'NSX03', N'Xiaomi Redmi Note 10S', N'<ol>
	<li><strong>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</strong>&nbsp;IPS LCD</li>
	<li><strong>Độ ph&acirc;n giải:</strong>&nbsp;828 x 1792 Pixels, 2 camera 12 MP, 12 MP</li>
	<li><strong>M&agrave;n h&igrave;nh rộng:</strong>&nbsp;6.1&quot;</li>
	<li><strong>Hệ điều h&agrave;nh:</strong>&nbsp;iOS 14</li>
	<li><strong>Chip xử l&yacute; (CPU):</strong>&nbsp;Apple A13 Bionic 6 nh&acirc;n</li>
	<li><strong>Bộ nhớ trong (ROM):</strong>&nbsp;128 GB</li>
	<li><strong>RAM:</strong>&nbsp;4 GB</li>
	<li><strong>Mạng di động:</strong>&nbsp;Hỗ trợ 4G</li>
	<li><strong>Số khe sim:</strong>&nbsp;1 Nano SIM &amp; 1 eSIM</li>
	<li><strong>Trọng lượng:</strong>&nbsp;194 g</li>
	<li><strong>Dung lượng pin:</strong>&nbsp;3110 mAh</li>
</ol>
', N'xiaomi1.jpg', N'xiaomi1.jpg', N'xiaomi1.jpg', N'xiaomi1.jpg', N'21.000.000đ         ', N'19.000.000đ         ', 80, 125, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [GiaCu], [GiaMoi], [SoLuongDaBan], [SoLuong], [TinhTrang]) VALUES (N'SP09', N'LSP02', N'NSX03', N'Xiaomi Mi 11 5G', N'<ol>
	<li><strong>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</strong>&nbsp;IPS LCD</li>
	<li><strong>Độ ph&acirc;n giải:</strong>&nbsp;828 x 1792 Pixels, 2 camera 12 MP, 12 MP</li>
	<li><strong>M&agrave;n h&igrave;nh rộng:</strong>&nbsp;6.1&quot;</li>
	<li><strong>Hệ điều h&agrave;nh:</strong>&nbsp;iOS 14</li>
	<li><strong>Chip xử l&yacute; (CPU):</strong>&nbsp;Apple A13 Bionic 6 nh&acirc;n</li>
	<li><strong>Bộ nhớ trong (ROM):</strong>&nbsp;128 GB</li>
	<li><strong>RAM:</strong>&nbsp;4 GB</li>
	<li><strong>Mạng di động:</strong>&nbsp;Hỗ trợ 4G</li>
	<li><strong>Số khe sim:</strong>&nbsp;1 Nano SIM &amp; 1 eSIM</li>
	<li><strong>Trọng lượng:</strong>&nbsp;194 g</li>
	<li><strong>Dung lượng pin:</strong>&nbsp;3110 mAh</li>
</ol>
', N'xiaomi2.jpg', N'xiaomi2.jpg', N'xiaomi2.jpg', N'xiaomi2.jpg', N'21.000.000đ         ', N'19.000.000đ         ', 90, 200, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [GiaCu], [GiaMoi], [SoLuongDaBan], [SoLuong], [TinhTrang]) VALUES (N'SP10', N'LSP02', N'NSX03', N'Xiaomi Mi 10T Pro 5G', N'<ol>
	<li><strong>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</strong>&nbsp;IPS LCD</li>
	<li><strong>Độ ph&acirc;n giải:</strong>&nbsp;828 x 1792 Pixels, 2 camera 12 MP, 12 MP</li>
	<li><strong>M&agrave;n h&igrave;nh rộng:</strong>&nbsp;6.1&quot;</li>
	<li><strong>Hệ điều h&agrave;nh:</strong>&nbsp;iOS 14</li>
	<li><strong>Chip xử l&yacute; (CPU):</strong>&nbsp;Apple A13 Bionic 6 nh&acirc;n</li>
	<li><strong>Bộ nhớ trong (ROM):</strong>&nbsp;128 GB</li>
	<li><strong>RAM:</strong>&nbsp;4 GB</li>
	<li><strong>Mạng di động:</strong>&nbsp;Hỗ trợ 4G</li>
	<li><strong>Số khe sim:</strong>&nbsp;1 Nano SIM &amp; 1 eSIM</li>
	<li><strong>Trọng lượng:</strong>&nbsp;194 g</li>
	<li><strong>Dung lượng pin:</strong>&nbsp;3110 mAh</li>
</ol>
', N'xiaomi3.jpg', N'xiaomi3.jpg', N'xiaomi3.jpg', N'xiaomi3.jpg', N'21.000.000đ         ', N'19.000.000đ         ', 100, 30, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [GiaCu], [GiaMoi], [SoLuongDaBan], [SoLuong], [TinhTrang]) VALUES (N'SP11', N'LSP02', N'NSX03', N'Xiaomi Mi 11 Lite', N'<ol>
	<li><strong>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</strong>&nbsp;IPS LCD</li>
	<li><strong>Độ ph&acirc;n giải:</strong>&nbsp;828 x 1792 Pixels, 2 camera 12 MP, 12 MP</li>
	<li><strong>M&agrave;n h&igrave;nh rộng:</strong>&nbsp;6.1&quot;</li>
	<li><strong>Hệ điều h&agrave;nh:</strong>&nbsp;iOS 14</li>
	<li><strong>Chip xử l&yacute; (CPU):</strong>&nbsp;Apple A13 Bionic 6 nh&acirc;n</li>
	<li><strong>Bộ nhớ trong (ROM):</strong>&nbsp;128 GB</li>
	<li><strong>RAM:</strong>&nbsp;4 GB</li>
	<li><strong>Mạng di động:</strong>&nbsp;Hỗ trợ 4G</li>
	<li><strong>Số khe sim:</strong>&nbsp;1 Nano SIM &amp; 1 eSIM</li>
	<li><strong>Trọng lượng:</strong>&nbsp;194 g</li>
	<li><strong>Dung lượng pin:</strong>&nbsp;3110 mAh</li>
</ol>
', N'xiaomi4.jpg', N'xiaomi4.jpg', N'xiaomi4.jpg', N'xiaomi4.jpg', N'21.000.000đ         ', N'19.000.000đ         ', 40, 300, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [GiaCu], [GiaMoi], [SoLuongDaBan], [SoLuong], [TinhTrang]) VALUES (N'SP12', N'LSP02', N'NSX03', N'Xiaomi RedMi Note 10 Pro', N'<ol>
	<li><strong>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</strong>&nbsp;IPS LCD</li>
	<li><strong>Độ ph&acirc;n giải:</strong>&nbsp;828 x 1792 Pixels, 2 camera 12 MP, 12 MP</li>
	<li><strong>M&agrave;n h&igrave;nh rộng:</strong>&nbsp;6.1&quot;</li>
	<li><strong>Hệ điều h&agrave;nh:</strong>&nbsp;iOS 14</li>
	<li><strong>Chip xử l&yacute; (CPU):</strong>&nbsp;Apple A13 Bionic 6 nh&acirc;n</li>
	<li><strong>Bộ nhớ trong (ROM):</strong>&nbsp;128 GB</li>
	<li><strong>RAM:</strong>&nbsp;4 GB</li>
	<li><strong>Mạng di động:</strong>&nbsp;Hỗ trợ 4G</li>
	<li><strong>Số khe sim:</strong>&nbsp;1 Nano SIM &amp; 1 eSIM</li>
	<li><strong>Trọng lượng:</strong>&nbsp;194 g</li>
	<li><strong>Dung lượng pin:</strong>&nbsp;3110 mAh</li>
</ol>
', N'xiaomi5.jpg', N'xiaomi5.jpg', N'xiaomi5.jpg', N'xiaomi5.jpg', N'21.000.000đ         ', N'19.000.000đ         ', 50, 57, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [GiaCu], [GiaMoi], [SoLuongDaBan], [SoLuong], [TinhTrang]) VALUES (N'SP13', N'LSP01', N'NSX02', N'Samsung Galaxy M51', N'<ol>
	<li><strong>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</strong>&nbsp;IPS LCD</li>
	<li><strong>Độ ph&acirc;n giải:</strong>&nbsp;828 x 1792 Pixels, 2 camera 12 MP, 12 MP</li>
	<li><strong>M&agrave;n h&igrave;nh rộng:</strong>&nbsp;6.1&quot;</li>
	<li><strong>Hệ điều h&agrave;nh:</strong>&nbsp;iOS 14</li>
	<li><strong>Chip xử l&yacute; (CPU):</strong>&nbsp;Apple A13 Bionic 6 nh&acirc;n</li>
	<li><strong>Bộ nhớ trong (ROM):</strong>&nbsp;128 GB</li>
	<li><strong>RAM:</strong>&nbsp;4 GB</li>
	<li><strong>Mạng di động:</strong>&nbsp;Hỗ trợ 4G</li>
	<li><strong>Số khe sim:</strong>&nbsp;1 Nano SIM &amp; 1 eSIM</li>
	<li><strong>Trọng lượng:</strong>&nbsp;194 g</li>
	<li><strong>Dung lượng pin:</strong>&nbsp;3110 mAh</li>
</ol>
', N'samsung3.jpg', N'samsung3.jpg', N'samsung3.jpg', N'samsung3.jpg', N'21.000.000đ         ', N'19.000.000đ         ', 60, 600, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [GiaCu], [GiaMoi], [SoLuongDaBan], [SoLuong], [TinhTrang]) VALUES (N'SP14', N'LSP03', N'NSX02', N'Samsung Galaxy Ford2 5G', N'<ol>
	<li><strong>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</strong>&nbsp;IPS LCD</li>
	<li><strong>Độ ph&acirc;n giải:</strong>&nbsp;828 x 1792 Pixels, 2 camera 12 MP, 12 MP</li>
	<li><strong>M&agrave;n h&igrave;nh rộng:</strong>&nbsp;6.1&quot;</li>
	<li><strong>Hệ điều h&agrave;nh:</strong>&nbsp;iOS 14</li>
	<li><strong>Chip xử l&yacute; (CPU):</strong>&nbsp;Apple A13 Bionic 6 nh&acirc;n</li>
	<li><strong>Bộ nhớ trong (ROM):</strong>&nbsp;128 GB</li>
	<li><strong>RAM:</strong>&nbsp;4 GB</li>
	<li><strong>Mạng di động:</strong>&nbsp;Hỗ trợ 4G</li>
	<li><strong>Số khe sim:</strong>&nbsp;1 Nano SIM &amp; 1 eSIM</li>
	<li><strong>Trọng lượng:</strong>&nbsp;194 g</li>
	<li><strong>Dung lượng pin:</strong>&nbsp;3110 mAh</li>
</ol>
', N'samsung4.jpg', N'samsung4.jpg', N'samsung4.jpg', N'samsung4.jpg', N'21.000.000đ         ', N'19.000.000đ         ', 70, 11, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [GiaCu], [GiaMoi], [SoLuongDaBan], [SoLuong], [TinhTrang]) VALUES (N'SP15', N'LSP03', N'NSX04', N'Oppo A93', N'<ol>
	<li><strong>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</strong>&nbsp;IPS LCD</li>
	<li><strong>Độ ph&acirc;n giải:</strong>&nbsp;828 x 1792 Pixels, 2 camera 12 MP, 12 MP</li>
	<li><strong>M&agrave;n h&igrave;nh rộng:</strong>&nbsp;6.1&quot;</li>
	<li><strong>Hệ điều h&agrave;nh:</strong>&nbsp;iOS 14</li>
	<li><strong>Chip xử l&yacute; (CPU):</strong>&nbsp;Apple A13 Bionic 6 nh&acirc;n</li>
	<li><strong>Bộ nhớ trong (ROM):</strong>&nbsp;128 GB</li>
	<li><strong>RAM:</strong>&nbsp;4 GB</li>
	<li><strong>Mạng di động:</strong>&nbsp;Hỗ trợ 4G</li>
	<li><strong>Số khe sim:</strong>&nbsp;1 Nano SIM &amp; 1 eSIM</li>
	<li><strong>Trọng lượng:</strong>&nbsp;194 g</li>
	<li><strong>Dung lượng pin:</strong>&nbsp;3110 mAh</li>
</ol>
', N'oppo1.jpg', N'oppo1.jpg', N'oppo1.jpg', N'oppo1.jpg', N'21.000.000đ         ', N'19.000.000đ         ', 80, 12, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [GiaCu], [GiaMoi], [SoLuongDaBan], [SoLuong], [TinhTrang]) VALUES (N'SP16', N'LSP03', N'NSX04', N'Oppo Reno 5', N'<ol>
	<li><strong>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</strong>&nbsp;IPS LCD</li>
	<li><strong>Độ ph&acirc;n giải:</strong>&nbsp;828 x 1792 Pixels, 2 camera 12 MP, 12 MP</li>
	<li><strong>M&agrave;n h&igrave;nh rộng:</strong>&nbsp;6.1&quot;</li>
	<li><strong>Hệ điều h&agrave;nh:</strong>&nbsp;iOS 14</li>
	<li><strong>Chip xử l&yacute; (CPU):</strong>&nbsp;Apple A13 Bionic 6 nh&acirc;n</li>
	<li><strong>Bộ nhớ trong (ROM):</strong>&nbsp;128 GB</li>
	<li><strong>RAM:</strong>&nbsp;4 GB</li>
	<li><strong>Mạng di động:</strong>&nbsp;Hỗ trợ 4G</li>
	<li><strong>Số khe sim:</strong>&nbsp;1 Nano SIM &amp; 1 eSIM</li>
	<li><strong>Trọng lượng:</strong>&nbsp;194 g</li>
	<li><strong>Dung lượng pin:</strong>&nbsp;3110 mAh</li>
</ol>
', N'oppo2.jpg', N'oppo2.jpg', N'oppo2.jpg', N'oppo2.jpg', N'21.000.000đ         ', N'19.000.000đ         ', 10, 100, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [GiaCu], [GiaMoi], [SoLuongDaBan], [SoLuong], [TinhTrang]) VALUES (N'SP17', N'LSP03', N'NSX04', N'Oppo Find X3 Pro', N'<ol>
	<li><strong>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</strong>&nbsp;IPS LCD</li>
	<li><strong>Độ ph&acirc;n giải:</strong>&nbsp;828 x 1792 Pixels, 2 camera 12 MP, 12 MP</li>
	<li><strong>M&agrave;n h&igrave;nh rộng:</strong>&nbsp;6.1&quot;</li>
	<li><strong>Hệ điều h&agrave;nh:</strong>&nbsp;iOS 14</li>
	<li><strong>Chip xử l&yacute; (CPU):</strong>&nbsp;Apple A13 Bionic 6 nh&acirc;n</li>
	<li><strong>Bộ nhớ trong (ROM):</strong>&nbsp;128 GB</li>
	<li><strong>RAM:</strong>&nbsp;4 GB</li>
	<li><strong>Mạng di động:</strong>&nbsp;Hỗ trợ 4G</li>
	<li><strong>Số khe sim:</strong>&nbsp;1 Nano SIM &amp; 1 eSIM</li>
	<li><strong>Trọng lượng:</strong>&nbsp;194 g</li>
	<li><strong>Dung lượng pin:</strong>&nbsp;3110 mAh</li>
</ol>
', N'oppo3.jpg', N'oppo3.jpg', N'oppo3.jpg', N'oppo3.jpg', N'21.000.000đ         ', N'19.000.000đ         ', 20, 76, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [GiaCu], [GiaMoi], [SoLuongDaBan], [SoLuong], [TinhTrang]) VALUES (N'SP18', N'LSP03', N'NSX04', N'Oppo Reno 4 Pro', N'<ol>
	<li><strong>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</strong>&nbsp;IPS LCD</li>
	<li><strong>Độ ph&acirc;n giải:</strong>&nbsp;828 x 1792 Pixels, 2 camera 12 MP, 12 MP</li>
	<li><strong>M&agrave;n h&igrave;nh rộng:</strong>&nbsp;6.1&quot;</li>
	<li><strong>Hệ điều h&agrave;nh:</strong>&nbsp;iOS 14</li>
	<li><strong>Chip xử l&yacute; (CPU):</strong>&nbsp;Apple A13 Bionic 6 nh&acirc;n</li>
	<li><strong>Bộ nhớ trong (ROM):</strong>&nbsp;128 GB</li>
	<li><strong>RAM:</strong>&nbsp;4 GB</li>
	<li><strong>Mạng di động:</strong>&nbsp;Hỗ trợ 4G</li>
	<li><strong>Số khe sim:</strong>&nbsp;1 Nano SIM &amp; 1 eSIM</li>
	<li><strong>Trọng lượng:</strong>&nbsp;194 g</li>
	<li><strong>Dung lượng pin:</strong>&nbsp;3110 mAh</li>
</ol>
', N'oppo5.jpg', N'oppo5.jpg', N'oppo5.jpg', N'oppo5.jpg', N'21.000.000đ         ', N'19.000.000đ         ', 30, 45, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [GiaCu], [GiaMoi], [SoLuongDaBan], [SoLuong], [TinhTrang]) VALUES (N'SP19', N'LSP02', N'NSX02', N'Samsung Galaxy Note 21 Ultra', N'<ol>
	<li><strong>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</strong>&nbsp;IPS LCD</li>
	<li><strong>Độ ph&acirc;n giải:</strong>&nbsp;828 x 1792 Pixels, 2 camera 12 MP, 12 MP</li>
	<li><strong>M&agrave;n h&igrave;nh rộng:</strong>&nbsp;6.1&quot;</li>
	<li><strong>Hệ điều h&agrave;nh:</strong>&nbsp;iOS 14</li>
	<li><strong>Chip xử l&yacute; (CPU):</strong>&nbsp;Apple A13 Bionic 6 nh&acirc;n</li>
	<li><strong>Bộ nhớ trong (ROM):</strong>&nbsp;128 GB</li>
	<li><strong>RAM:</strong>&nbsp;4 GB</li>
	<li><strong>Mạng di động:</strong>&nbsp;Hỗ trợ 4G</li>
	<li><strong>Số khe sim:</strong>&nbsp;1 Nano SIM &amp; 1 eSIM</li>
	<li><strong>Trọng lượng:</strong>&nbsp;194 g</li>
	<li><strong>Dung lượng pin:</strong>&nbsp;3110 mAh</li>
</ol>
', N'samsung5.jpg', N'samsung5.jpg', N'samsung5.jpg', N'samsung5.jpg', N'21.000.000đ         ', N'19.000.000đ         ', 60, 400, N'0         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [GiaCu], [GiaMoi], [SoLuongDaBan], [SoLuong], [TinhTrang]) VALUES (N'SP20', N'LSP02', N'NSX04', N'Oppo Reno 5 Marvel', N'<ol>
	<li><strong>C&ocirc;ng nghệ m&agrave;n h&igrave;nh:</strong>&nbsp;IPS LCD</li>
	<li><strong>Độ ph&acirc;n giải:</strong>&nbsp;828 x 1792 Pixels, 2 camera 12 MP, 12 MP</li>
	<li><strong>M&agrave;n h&igrave;nh rộng:</strong>&nbsp;6.1&quot;</li>
	<li><strong>Hệ điều h&agrave;nh:</strong>&nbsp;iOS 14</li>
	<li><strong>Chip xử l&yacute; (CPU):</strong>&nbsp;Apple A13 Bionic 6 nh&acirc;n</li>
	<li><strong>Bộ nhớ trong (ROM):</strong>&nbsp;128 GB</li>
	<li><strong>RAM:</strong>&nbsp;4 GB</li>
	<li><strong>Mạng di động:</strong>&nbsp;Hỗ trợ 4G</li>
	<li><strong>Số khe sim:</strong>&nbsp;1 Nano SIM &amp; 1 eSIM</li>
	<li><strong>Trọng lượng:</strong>&nbsp;194 g</li>
	<li><strong>Dung lượng pin:</strong>&nbsp;3110 mAh</li>
</ol>
', N'oppo6.jpg', N'oppo6.jpg', N'oppo6.jpg', N'oppo6.jpg', N'21.000.000đ         ', N'19.000.000đ         ', 70, 22, N'0         ')
GO
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenNguoiDung], [TenDangNhap], [MatKhau], [ChucVu], [TrangThai]) VALUES (N'TK01', N'Nguyễn Sỹ Dũng', N'sydung22', N'81dc9bdb52d04dc20036dbd8313ed055', N'admin', N'Unlocked')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenNguoiDung], [TenDangNhap], [MatKhau], [ChucVu], [TrangThai]) VALUES (N'TK02', N'Nguyễn Mai Chi', N'maichi08', N'ec6a6536ca304edf844d1d248a4f08dc', N'customer', N'Unlocked')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenNguoiDung], [TenDangNhap], [MatKhau], [ChucVu], [TrangThai]) VALUES (N'TK03', N'Nguyễn Tân Tiến', N'tiennguyen2411', N'220e4211d8d4fb1bd2ac941def69595a', N'admin', N'Unlocked')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenNguoiDung], [TenDangNhap], [MatKhau], [ChucVu], [TrangThai]) VALUES (N'TK04', N'Bùi Trần Yến Vi', N'yenvi19', N'157fd201e85eb3687d01d8f4e4cf6d2f', N'customer', N'Blocked')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenNguoiDung], [TenDangNhap], [MatKhau], [ChucVu], [TrangThai]) VALUES (N'TK07', N'Phạm Lê Đức Nguyên', N'admin', N'21232f297a57a5a743894a0e4a801fc3', N'admin', N'Unlocked')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [TenNguoiDung], [TenDangNhap], [MatKhau], [ChucVu], [TrangThai]) VALUES (N'TK09', N'Pro Developer', N'admin', N'21232f297a57a5a743894a0e4a801fc3', N'admin', N'Unlocked')
GO
ALTER TABLE [dbo].[NhaSanXuat] ADD  CONSTRAINT [DF_NhaSanXuat_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_SoLuongDaBan]  DEFAULT ((0)) FOR [SoLuongDaBan]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
