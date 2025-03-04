USE [master]
GO
/****** Object:  Database [CineerVietNam]    Script Date: 2/28/2025 8:35:18 PM ******/
CREATE DATABASE [CineerVietNam]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CineerVietNam', FILENAME = N'D:\SQL Sever\MSSQL16.MSSQLSERVER\MSSQL\DATA\CineerVietNam.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CineerVietNam_log', FILENAME = N'D:\SQL Sever\MSSQL16.MSSQLSERVER\MSSQL\DATA\CineerVietNam_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [CineerVietNam] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CineerVietNam].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CineerVietNam] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CineerVietNam] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CineerVietNam] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CineerVietNam] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CineerVietNam] SET ARITHABORT OFF 
GO
ALTER DATABASE [CineerVietNam] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CineerVietNam] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CineerVietNam] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CineerVietNam] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CineerVietNam] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CineerVietNam] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CineerVietNam] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CineerVietNam] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CineerVietNam] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CineerVietNam] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CineerVietNam] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CineerVietNam] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CineerVietNam] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CineerVietNam] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CineerVietNam] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CineerVietNam] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CineerVietNam] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CineerVietNam] SET RECOVERY FULL 
GO
ALTER DATABASE [CineerVietNam] SET  MULTI_USER 
GO
ALTER DATABASE [CineerVietNam] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CineerVietNam] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CineerVietNam] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CineerVietNam] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CineerVietNam] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CineerVietNam] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CineerVietNam', N'ON'
GO
ALTER DATABASE [CineerVietNam] SET QUERY_STORE = ON
GO
ALTER DATABASE [CineerVietNam] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [CineerVietNam]
GO
/****** Object:  User [quocanh_Aly]    Script Date: 2/28/2025 8:35:19 PM ******/
CREATE USER [quocanh_Aly] FOR LOGIN [quocanh_Aly] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[tblDichVu]    Script Date: 2/28/2025 8:35:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDichVu](
	[MaDichVu] [nvarchar](50) NOT NULL,
	[IDKhachHang] [nvarchar](50) NULL,
	[DvDoAn] [int] NULL,
	[MaDoAn] [nvarchar](50) NULL,
	[SoLuongDoAn] [int] NULL,
	[DvDoUong] [int] NULL,
	[MaDoUong] [nvarchar](50) NULL,
	[SoLuongDoUong] [int] NULL,
	[NgayMua] [datetime] NULL,
	[ChiPhi] [int] NULL,
 CONSTRAINT [PK_tblDichVu] PRIMARY KEY CLUSTERED 
(
	[MaDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDoAn]    Script Date: 2/28/2025 8:35:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDoAn](
	[MaDoAn] [nvarchar](50) NOT NULL,
	[ChiPhi] [int] NULL,
 CONSTRAINT [PK_tblDoAn] PRIMARY KEY CLUSTERED 
(
	[MaDoAn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDoUong]    Script Date: 2/28/2025 8:35:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDoUong](
	[MaDouong] [nvarchar](50) NOT NULL,
	[ChiPhi] [int] NULL,
 CONSTRAINT [PK_tblDoUong] PRIMARY KEY CLUSTERED 
(
	[MaDouong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblGioChieu]    Script Date: 2/28/2025 8:35:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGioChieu](
	[MaGioChieu] [nvarchar](50) NOT NULL,
	[GioChieu] [datetime] NULL,
 CONSTRAINT [PK_tblGioChieu] PRIMARY KEY CLUSTERED 
(
	[MaGioChieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHoaDon]    Script Date: 2/28/2025 8:35:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHoaDon](
	[MaHoaDon] [nvarchar](50) NOT NULL,
	[IDKhachHang] [nvarchar](50) NULL,
	[MaShow] [nvarchar](50) NULL,
	[MaDichVu] [nvarchar](50) NULL,
	[NgayXuat] [datetime] NULL,
	[TongTien] [int] NULL,
 CONSTRAINT [PK_tblHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblKhachHang]    Script Date: 2/28/2025 8:35:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKhachHang](
	[IDKhachHang] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[SoDienThoai] [int] NULL,
	[NgaySinh] [datetime] NULL,
	[ThoiGianDangKy] [datetime] NULL,
 CONSTRAINT [PK_tblKhachHang] PRIMARY KEY CLUSTERED 
(
	[IDKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLichChieu]    Script Date: 2/28/2025 8:35:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLichChieu](
	[MaShow] [nvarchar](50) NOT NULL,
	[MaPhim] [nvarchar](50) NULL,
	[MaPhong] [nvarchar](50) NULL,
	[NgayChieu] [datetime] NULL,
	[MaGioiChieu] [nvarchar](50) NULL,
	[GiaVe] [int] NULL,
	[SoVeDaBan] [int] NULL,
	[TongTien] [int] NULL,
 CONSTRAINT [PK_tblLichChieu] PRIMARY KEY CLUSTERED 
(
	[MaShow] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPhim]    Script Date: 2/28/2025 8:35:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhim](
	[MaPhim] [nvarchar](50) NOT NULL,
	[TenPhim] [text] NULL,
	[MaNuocSX] [nvarchar](50) NULL,
	[MaHangSX] [nvarchar](50) NULL,
	[DaoDien] [nvarchar](50) NULL,
	[MaTheLoai] [nvarchar](50) NULL,
	[NgayKhoiChieu] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
	[NuDVChinh] [ntext] NULL,
	[NamDVChinh] [ntext] NULL,
	[NoiDungChinh] [text] NULL,
	[TongChiPhi] [int] NULL,
	[TongThu] [int] NULL,
	[Anh] [image] NULL,
 CONSTRAINT [PK_tblPhim] PRIMARY KEY CLUSTERED 
(
	[MaPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPhongChieu]    Script Date: 2/28/2025 8:35:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhongChieu](
	[MaPhong] [nvarchar](50) NOT NULL,
	[TenPhong] [nvarchar](50) NULL,
	[TongSoGhe] [int] NULL,
 CONSTRAINT [PK_tblPhongChieu] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPhongChieuGhe]    Script Date: 2/28/2025 8:35:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhongChieuGhe](
	[MaPhong] [nvarchar](50) NULL,
	[MaGhe] [nvarchar](50) NOT NULL,
	[TrangThai] [nvarchar](100) NULL,
 CONSTRAINT [PK_tblPhongChieuGhe] PRIMARY KEY CLUSTERED 
(
	[MaGhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblVeXemPhim]    Script Date: 2/28/2025 8:35:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblVeXemPhim](
	[MaGhe] [nvarchar](50) NOT NULL,
	[MaShow] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblVeXemPhim] PRIMARY KEY CLUSTERED 
(
	[MaGhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblDichVu]  WITH CHECK ADD  CONSTRAINT [FK_tblDichVu_tblDoAn] FOREIGN KEY([MaDoAn])
REFERENCES [dbo].[tblDoAn] ([MaDoAn])
GO
ALTER TABLE [dbo].[tblDichVu] CHECK CONSTRAINT [FK_tblDichVu_tblDoAn]
GO
ALTER TABLE [dbo].[tblDichVu]  WITH CHECK ADD  CONSTRAINT [FK_tblDichVu_tblDoUong] FOREIGN KEY([MaDoUong])
REFERENCES [dbo].[tblDoUong] ([MaDouong])
GO
ALTER TABLE [dbo].[tblDichVu] CHECK CONSTRAINT [FK_tblDichVu_tblDoUong]
GO
ALTER TABLE [dbo].[tblDichVu]  WITH CHECK ADD  CONSTRAINT [FK_tblDichVu_tblKhachHang] FOREIGN KEY([IDKhachHang])
REFERENCES [dbo].[tblKhachHang] ([IDKhachHang])
GO
ALTER TABLE [dbo].[tblDichVu] CHECK CONSTRAINT [FK_tblDichVu_tblKhachHang]
GO
ALTER TABLE [dbo].[tblHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tblHoaDon_tblDichVu] FOREIGN KEY([MaDichVu])
REFERENCES [dbo].[tblDichVu] ([MaDichVu])
GO
ALTER TABLE [dbo].[tblHoaDon] CHECK CONSTRAINT [FK_tblHoaDon_tblDichVu]
GO
ALTER TABLE [dbo].[tblHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tblHoaDon_tblKhachHang] FOREIGN KEY([IDKhachHang])
REFERENCES [dbo].[tblKhachHang] ([IDKhachHang])
GO
ALTER TABLE [dbo].[tblHoaDon] CHECK CONSTRAINT [FK_tblHoaDon_tblKhachHang]
GO
ALTER TABLE [dbo].[tblHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tblHoaDon_tblLichChieu] FOREIGN KEY([MaShow])
REFERENCES [dbo].[tblLichChieu] ([MaShow])
GO
ALTER TABLE [dbo].[tblHoaDon] CHECK CONSTRAINT [FK_tblHoaDon_tblLichChieu]
GO
ALTER TABLE [dbo].[tblLichChieu]  WITH CHECK ADD  CONSTRAINT [FK_tblLichChieu_tblGioChieu] FOREIGN KEY([MaGioiChieu])
REFERENCES [dbo].[tblGioChieu] ([MaGioChieu])
GO
ALTER TABLE [dbo].[tblLichChieu] CHECK CONSTRAINT [FK_tblLichChieu_tblGioChieu]
GO
ALTER TABLE [dbo].[tblLichChieu]  WITH CHECK ADD  CONSTRAINT [FK_tblLichChieu_tblPhim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[tblPhim] ([MaPhim])
GO
ALTER TABLE [dbo].[tblLichChieu] CHECK CONSTRAINT [FK_tblLichChieu_tblPhim]
GO
ALTER TABLE [dbo].[tblLichChieu]  WITH CHECK ADD  CONSTRAINT [FK_tblLichChieu_tblPhongChieu] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[tblPhongChieu] ([MaPhong])
GO
ALTER TABLE [dbo].[tblLichChieu] CHECK CONSTRAINT [FK_tblLichChieu_tblPhongChieu]
GO
ALTER TABLE [dbo].[tblPhongChieuGhe]  WITH CHECK ADD  CONSTRAINT [FK_tblPhongChieuGhe_tblPhongChieu] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[tblPhongChieu] ([MaPhong])
GO
ALTER TABLE [dbo].[tblPhongChieuGhe] CHECK CONSTRAINT [FK_tblPhongChieuGhe_tblPhongChieu]
GO
ALTER TABLE [dbo].[tblPhongChieuGhe]  WITH CHECK ADD  CONSTRAINT [FK_tblPhongChieuGhe_tblVeXemPhim] FOREIGN KEY([MaGhe])
REFERENCES [dbo].[tblVeXemPhim] ([MaGhe])
GO
ALTER TABLE [dbo].[tblPhongChieuGhe] CHECK CONSTRAINT [FK_tblPhongChieuGhe_tblVeXemPhim]
GO
ALTER TABLE [dbo].[tblVeXemPhim]  WITH CHECK ADD  CONSTRAINT [FK_tblVeXemPhim_tblLichChieu] FOREIGN KEY([MaShow])
REFERENCES [dbo].[tblLichChieu] ([MaShow])
GO
ALTER TABLE [dbo].[tblVeXemPhim] CHECK CONSTRAINT [FK_tblVeXemPhim_tblLichChieu]
GO
USE [master]
GO
ALTER DATABASE [CineerVietNam] SET  READ_WRITE 
GO
