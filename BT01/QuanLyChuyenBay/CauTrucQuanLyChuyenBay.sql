USE [master]
GO
/****** Object:  Database [QuanLyChuyenBay]    Script Date: 10/02/2017 00:01:16 ******/
CREATE DATABASE [QuanLyChuyenBay] ON  PRIMARY 
( NAME = N'QuanLyChuyenBay', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\QuanLyChuyenBay.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyChuyenBay_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\QuanLyChuyenBay_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyChuyenBay] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyChuyenBay].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyChuyenBay] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QuanLyChuyenBay] SET ANSI_NULLS OFF
GO
ALTER DATABASE [QuanLyChuyenBay] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QuanLyChuyenBay] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QuanLyChuyenBay] SET ARITHABORT OFF
GO
ALTER DATABASE [QuanLyChuyenBay] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [QuanLyChuyenBay] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QuanLyChuyenBay] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [QuanLyChuyenBay] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QuanLyChuyenBay] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QuanLyChuyenBay] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QuanLyChuyenBay] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QuanLyChuyenBay] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [QuanLyChuyenBay] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QuanLyChuyenBay] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QuanLyChuyenBay] SET  DISABLE_BROKER
GO
ALTER DATABASE [QuanLyChuyenBay] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QuanLyChuyenBay] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QuanLyChuyenBay] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QuanLyChuyenBay] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QuanLyChuyenBay] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QuanLyChuyenBay] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QuanLyChuyenBay] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QuanLyChuyenBay] SET  READ_WRITE
GO
ALTER DATABASE [QuanLyChuyenBay] SET RECOVERY SIMPLE
GO
ALTER DATABASE [QuanLyChuyenBay] SET  MULTI_USER
GO
ALTER DATABASE [QuanLyChuyenBay] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [QuanLyChuyenBay] SET DB_CHAINING OFF
GO
USE [QuanLyChuyenBay]
GO
/****** Object:  Table [dbo].[CHUYENBAY]    Script Date: 10/02/2017 00:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHUYENBAY](
	[MACB] [varchar](4) NOT NULL,
	[SBDI] [varchar](3) NULL,
	[SBDEN] [varchar](3) NULL,
	[GIODI] [time](6) NULL,
	[GIODEN] [time](6) NULL,
 CONSTRAINT [PK_CHUYENBAY] PRIMARY KEY CLUSTERED 
(
	[MACB] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 10/02/2017 00:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MAKH] [varchar](15) NOT NULL,
	[TEN] [varchar](15) NULL,
	[DCHI] [varchar](50) NULL,
	[DTHOAI] [varchar](12) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOAIMB]    Script Date: 10/02/2017 00:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOAIMB](
	[HANGSX] [varchar](15) NULL,
	[MALOAI] [varchar](15) NOT NULL,
 CONSTRAINT [PK_LOAIMB] PRIMARY KEY CLUSTERED 
(
	[MALOAI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 10/02/2017 00:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MANV] [varchar](15) NOT NULL,
	[TEN] [varchar](15) NULL,
	[DCHI] [varchar](50) NULL,
	[DTHOAI] [varchar](12) NULL,
	[LUONG] [decimal](10, 2) NULL,
	[LOAINV] [bit] NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MAYBAY]    Script Date: 10/02/2017 00:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MAYBAY](
	[SOHIEU] [int] NOT NULL,
	[MALOAI] [varchar](15) NOT NULL,
 CONSTRAINT [PK_MAYBAY] PRIMARY KEY CLUSTERED 
(
	[SOHIEU] ASC,
	[MALOAI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHANANG]    Script Date: 10/02/2017 00:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHANANG](
	[MANV] [varchar](15) NOT NULL,
	[MALOAI] [varchar](15) NOT NULL,
 CONSTRAINT [PK_KHANANG] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC,
	[MALOAI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LICHBAY]    Script Date: 10/02/2017 00:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LICHBAY](
	[NGAYDI] [date] NOT NULL,
	[MACB] [varchar](4) NOT NULL,
	[SOHIEU] [int] NULL,
	[MALOAI] [varchar](15) NULL,
 CONSTRAINT [PK_LICHBAY] PRIMARY KEY CLUSTERED 
(
	[NGAYDI] ASC,
	[MACB] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHANCONG]    Script Date: 10/02/2017 00:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHANCONG](
	[MANV] [varchar](15) NOT NULL,
	[NGAYDI] [date] NOT NULL,
	[MACB] [varchar](4) NOT NULL,
 CONSTRAINT [PK_PHANCONG] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC,
	[NGAYDI] ASC,
	[MACB] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DATCHO]    Script Date: 10/02/2017 00:01:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DATCHO](
	[MAKH] [varchar](15) NOT NULL,
	[NGAYDI] [date] NOT NULL,
	[MACB] [varchar](4) NOT NULL,
 CONSTRAINT [PK_DATCHO] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC,
	[NGAYDI] ASC,
	[MACB] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_MAYBAY_LOAIMB]    Script Date: 10/02/2017 00:01:17 ******/
ALTER TABLE [dbo].[MAYBAY]  WITH CHECK ADD  CONSTRAINT [FK_MAYBAY_LOAIMB] FOREIGN KEY([MALOAI])
REFERENCES [dbo].[LOAIMB] ([MALOAI])
GO
ALTER TABLE [dbo].[MAYBAY] CHECK CONSTRAINT [FK_MAYBAY_LOAIMB]
GO
/****** Object:  ForeignKey [FK_KHANANG_LOAIMB]    Script Date: 10/02/2017 00:01:17 ******/
ALTER TABLE [dbo].[KHANANG]  WITH CHECK ADD  CONSTRAINT [FK_KHANANG_LOAIMB] FOREIGN KEY([MALOAI])
REFERENCES [dbo].[LOAIMB] ([MALOAI])
GO
ALTER TABLE [dbo].[KHANANG] CHECK CONSTRAINT [FK_KHANANG_LOAIMB]
GO
/****** Object:  ForeignKey [FK_KHANANG_NHANVIEN]    Script Date: 10/02/2017 00:01:17 ******/
ALTER TABLE [dbo].[KHANANG]  WITH CHECK ADD  CONSTRAINT [FK_KHANANG_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[KHANANG] CHECK CONSTRAINT [FK_KHANANG_NHANVIEN]
GO
/****** Object:  ForeignKey [FK_LICHBAY_CHUYENBAY]    Script Date: 10/02/2017 00:01:17 ******/
ALTER TABLE [dbo].[LICHBAY]  WITH CHECK ADD  CONSTRAINT [FK_LICHBAY_CHUYENBAY] FOREIGN KEY([MACB])
REFERENCES [dbo].[CHUYENBAY] ([MACB])
GO
ALTER TABLE [dbo].[LICHBAY] CHECK CONSTRAINT [FK_LICHBAY_CHUYENBAY]
GO
/****** Object:  ForeignKey [FK_LICHBAY_MAYBAY]    Script Date: 10/02/2017 00:01:17 ******/
ALTER TABLE [dbo].[LICHBAY]  WITH CHECK ADD  CONSTRAINT [FK_LICHBAY_MAYBAY] FOREIGN KEY([SOHIEU], [MALOAI])
REFERENCES [dbo].[MAYBAY] ([SOHIEU], [MALOAI])
GO
ALTER TABLE [dbo].[LICHBAY] CHECK CONSTRAINT [FK_LICHBAY_MAYBAY]
GO
/****** Object:  ForeignKey [FK_PHANCONG_LICHBAY]    Script Date: 10/02/2017 00:01:17 ******/
ALTER TABLE [dbo].[PHANCONG]  WITH CHECK ADD  CONSTRAINT [FK_PHANCONG_LICHBAY] FOREIGN KEY([NGAYDI], [MACB])
REFERENCES [dbo].[LICHBAY] ([NGAYDI], [MACB])
GO
ALTER TABLE [dbo].[PHANCONG] CHECK CONSTRAINT [FK_PHANCONG_LICHBAY]
GO
/****** Object:  ForeignKey [FK_PHANCONG_NHANVIEN]    Script Date: 10/02/2017 00:01:17 ******/
ALTER TABLE [dbo].[PHANCONG]  WITH CHECK ADD  CONSTRAINT [FK_PHANCONG_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[PHANCONG] CHECK CONSTRAINT [FK_PHANCONG_NHANVIEN]
GO
/****** Object:  ForeignKey [FK_DATCHO_KHACHHANG]    Script Date: 10/02/2017 00:01:17 ******/
ALTER TABLE [dbo].[DATCHO]  WITH CHECK ADD  CONSTRAINT [FK_DATCHO_KHACHHANG] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO
ALTER TABLE [dbo].[DATCHO] CHECK CONSTRAINT [FK_DATCHO_KHACHHANG]
GO
/****** Object:  ForeignKey [FK_DATCHO_LICHBAY]    Script Date: 10/02/2017 00:01:17 ******/
ALTER TABLE [dbo].[DATCHO]  WITH CHECK ADD  CONSTRAINT [FK_DATCHO_LICHBAY] FOREIGN KEY([NGAYDI], [MACB])
REFERENCES [dbo].[LICHBAY] ([NGAYDI], [MACB])
GO
ALTER TABLE [dbo].[DATCHO] CHECK CONSTRAINT [FK_DATCHO_LICHBAY]
GO
