USE [master]
GO
/****** Object:  Database [qlsv_2 _NHMinhCTHieuBTThanh_LTNET]    Script Date: 9/11/2021 3:36:26 AM ******/
CREATE DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'qlsv_2 _NHMinhCTHieuBTThanh_LTNET', FILENAME = N'T:\Program Files\Microsoft SQL Server\MSSQL15.SEPTSQL\MSSQL\DATA\qlsv_2 _NHMinhCTHieuBTThanh_LTNET.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'qlsv_2 _NHMinhCTHieuBTThanh_LTNET_log', FILENAME = N'T:\Program Files\Microsoft SQL Server\MSSQL15.SEPTSQL\MSSQL\DATA\qlsv_2 _NHMinhCTHieuBTThanh_LTNET_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [qlsv_2 _NHMinhCTHieuBTThanh_LTNET].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET ARITHABORT OFF 
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET  DISABLE_BROKER 
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET RECOVERY FULL 
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET  MULTI_USER 
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET DB_CHAINING OFF 
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'qlsv_2 _NHMinhCTHieuBTThanh_LTNET', N'ON'
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET QUERY_STORE = OFF
GO
USE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET]
GO
/****** Object:  Table [dbo].[login]    Script Date: 9/11/2021 3:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[mail] [nvarchar](50) NOT NULL,
	[mod] [nvarchar](50) NOT NULL,
	[state] [nvarchar](50) NULL,
 CONSTRAINT [PK_login] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lop]    Script Date: 9/11/2021 3:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lop](
	[malop] [int] NOT NULL,
	[tenlop] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[hotenlt] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_lop] PRIMARY KEY CLUSTERED 
(
	[malop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sinhvien]    Script Date: 9/11/2021 3:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sinhvien](
	[masv] [nvarchar](50) NOT NULL,
	[hoten] [nvarchar](50) NOT NULL,
	[ngaysinh] [nvarchar](50) NOT NULL,
	[gioitinh] [nvarchar](50) NOT NULL,
	[quequan] [nvarchar](50) NOT NULL,
	[diemrl] [int] NULL,
	[malop] [int] NOT NULL,
 CONSTRAINT [PK_sinhvien] PRIMARY KEY CLUSTERED 
(
	[masv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[login] ([username], [password], [fullname], [mail], [mod], [state]) VALUES (N'2', N'2', N'2', N'2', N'Admin', N'Mở')
INSERT [dbo].[login] ([username], [password], [fullname], [mail], [mod], [state]) VALUES (N'hieu', N'hieu', N'hieu', N'hieu', N'User', N'Mở')
INSERT [dbo].[login] ([username], [password], [fullname], [mail], [mod], [state]) VALUES (N'hieu1', N'hieu1', N'hieu1', N'hieu1', N'Admin', N'Mở')
INSERT [dbo].[login] ([username], [password], [fullname], [mail], [mod], [state]) VALUES (N'hieu12', N'hieu12', N'hieu12', N'hieu12', N'User', N'Khóa')
GO
INSERT [dbo].[lop] ([malop], [tenlop], [email], [hotenlt]) VALUES (1, N'TinA6', N'a6Forever@gmail.com', N'Ðào Ð?c Minh')
INSERT [dbo].[lop] ([malop], [tenlop], [email], [hotenlt]) VALUES (2, N'Tin11A1', N'a1IsGone@gmail.com', N'Vu M?nh Hùng')
INSERT [dbo].[lop] ([malop], [tenlop], [email], [hotenlt]) VALUES (11, N'11', N'11', N'11')
GO
INSERT [dbo].[sinhvien] ([masv], [hoten], [ngaysinh], [gioitinh], [quequan], [diemrl], [malop]) VALUES (N'17103100018', N'Cao Trung Hiếu', N'14/08/1999', N'Nam', N'Hà Nội', 55, 1)
INSERT [dbo].[sinhvien] ([masv], [hoten], [ngaysinh], [gioitinh], [quequan], [diemrl], [malop]) VALUES (N'17103100458', N'Bùi Tuấn Thành', N'12/01/1999', N'Nam', N'Tuyên Quang', 55, 1)
INSERT [dbo].[sinhvien] ([masv], [hoten], [ngaysinh], [gioitinh], [quequan], [diemrl], [malop]) VALUES (N'17165234123', N'Nguyễn Hoàng Minh', N'25/07', N'Nam', N'Hà Nội', 11, 11)
GO
ALTER TABLE [dbo].[sinhvien]  WITH CHECK ADD  CONSTRAINT [FK_sinhvien_lop] FOREIGN KEY([malop])
REFERENCES [dbo].[lop] ([malop])
GO
ALTER TABLE [dbo].[sinhvien] CHECK CONSTRAINT [FK_sinhvien_lop]
GO
USE [master]
GO
ALTER DATABASE [qlsv_2 _NHMinhCTHieuBTThanh_LTNET] SET  READ_WRITE 
GO
