USE [master]
GO
/****** Object:  Database [java5]    Script Date: 10/12/2023 5:03:29 PM ******/
CREATE DATABASE [java5]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'java5', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\java5.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'java5_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\java5_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [java5] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [java5].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [java5] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [java5] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [java5] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [java5] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [java5] SET ARITHABORT OFF 
GO
ALTER DATABASE [java5] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [java5] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [java5] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [java5] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [java5] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [java5] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [java5] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [java5] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [java5] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [java5] SET  ENABLE_BROKER 
GO
ALTER DATABASE [java5] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [java5] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [java5] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [java5] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [java5] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [java5] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [java5] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [java5] SET RECOVERY FULL 
GO
ALTER DATABASE [java5] SET  MULTI_USER 
GO
ALTER DATABASE [java5] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [java5] SET DB_CHAINING OFF 
GO
ALTER DATABASE [java5] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [java5] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [java5] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [java5] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'java5', N'ON'
GO
ALTER DATABASE [java5] SET QUERY_STORE = OFF
GO
USE [java5]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10/12/2023 5:03:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[password] [varchar](20) NOT NULL,
	[fullname] [nvarchar](100) NOT NULL,
	[avatar] [nvarchar](255) NOT NULL,
	[isActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 10/12/2023 5:03:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](20) NOT NULL,
	[password] [varchar](20) NOT NULL,
	[fullname] [nvarchar](100) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[phone] [varchar](11) NOT NULL,
	[birthday] [date] NOT NULL,
	[identityNumber] [varchar](12) NOT NULL,
	[avatar] [nvarchar](255) NOT NULL,
	[isActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 10/12/2023 5:03:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[isActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 10/12/2023 5:03:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NOT NULL,
	[price] [float] NOT NULL,
	[qty] [int] NOT NULL,
	[introduction] [nvarchar](255) NOT NULL,
	[picturePath] [nvarchar](255) NOT NULL,
	[contentPath] [nvarchar](255) NOT NULL,
	[authorId] [int] NOT NULL,
	[categoryId] [int] NOT NULL,
	[publisherId] [int] NOT NULL,
	[isActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BooksOfAccount]    Script Date: 10/12/2023 5:03:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BooksOfAccount](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[accountID] [int] NOT NULL,
	[bookID] [int] NOT NULL,
	[progress] [decimal](5, 2) NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_BooksOfAccount] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 10/12/2023 5:03:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[isActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 10/12/2023 5:03:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[orderID] [int] NULL,
	[bookID] [int] NULL,
	[price] [float] NOT NULL,
	[isActive] [bit] NULL,
	[qty] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 10/12/2023 5:03:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[orderDate] [date] NOT NULL,
	[phone] [varchar](11) NOT NULL,
	[accountID] [int] NOT NULL,
	[isActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publisher]    Script Date: 10/12/2023 5:03:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publisher](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[isActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [email], [password], [fullname], [avatar], [isActive]) VALUES (1, N'ducpqps25526@fpt.edu.vn', N'123', N'Phan Quí Đức', N'duc.jpg', 1)
INSERT [dbo].[Account] ([id], [email], [password], [fullname], [avatar], [isActive]) VALUES (3, N'nhuptqps25429@fpt.edu.vn', N'123', N'Phạm Thị Quỳnh Như', N'nhu.jpg', 1)
INSERT [dbo].[Account] ([id], [email], [password], [fullname], [avatar], [isActive]) VALUES (4, N'longpdps25821@fpt.edu.vn', N'123', N'Phan Đăng Long', N'long.jpg', 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([id], [username], [password], [fullname], [email], [phone], [birthday], [identityNumber], [avatar], [isActive]) VALUES (1, N'admin', N'123', N'Anh Admin', N'bokonldnl@gmail.com', N'01236589475', CAST(N'2003-04-28' AS Date), N'0215565876', N'admin.jpg', 1)
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[Author] ON 

INSERT [dbo].[Author] ([id], [name], [isActive]) VALUES (1, N'Hector Malot', 1)
INSERT [dbo].[Author] ([id], [name], [isActive]) VALUES (2, N'Ernest Hemingway', 1)
INSERT [dbo].[Author] ([id], [name], [isActive]) VALUES (3, N'William Faulkner', 1)
INSERT [dbo].[Author] ([id], [name], [isActive]) VALUES (4, N'Nikolai Ostrovsky', 1)
INSERT [dbo].[Author] ([id], [name], [isActive]) VALUES (5, N'Paulo Coelho', 1)
INSERT [dbo].[Author] ([id], [name], [isActive]) VALUES (6, N'Stephen Hawking', 1)
INSERT [dbo].[Author] ([id], [name], [isActive]) VALUES (7, N'Margaret Munnerlyn Mitchell', 1)
INSERT [dbo].[Author] ([id], [name], [isActive]) VALUES (8, N'Victor Hugo', 1)
INSERT [dbo].[Author] ([id], [name], [isActive]) VALUES (9, N'Michael A. Singer', 1)
INSERT [dbo].[Author] ([id], [name], [isActive]) VALUES (10, N'Jeffrey Long, Paul Perry', 1)
INSERT [dbo].[Author] ([id], [name], [isActive]) VALUES (11, N'Ajahn Chah', 1)
INSERT [dbo].[Author] ([id], [name], [isActive]) VALUES (12, N'Brian L. Weiss', 1)
INSERT [dbo].[Author] ([id], [name], [isActive]) VALUES (13, N'Nguyên Phong', 1)
INSERT [dbo].[Author] ([id], [name], [isActive]) VALUES (14, N'Satomi Myodo', 1)
INSERT [dbo].[Author] ([id], [name], [isActive]) VALUES (15, N'Baird T. Spalding', 1)
INSERT [dbo].[Author] ([id], [name], [isActive]) VALUES (16, N'Alexandra David Neel', 1)
INSERT [dbo].[Author] ([id], [name], [isActive]) VALUES (17, N'Jack London', 1)
INSERT [dbo].[Author] ([id], [name], [isActive]) VALUES (18, N'Jeffrey Archer', 1)
INSERT [dbo].[Author] ([id], [name], [isActive]) VALUES (19, N'Emily Bronte', 1)
INSERT [dbo].[Author] ([id], [name], [isActive]) VALUES (20, N'Jane Austen', 1)
INSERT [dbo].[Author] ([id], [name], [isActive]) VALUES (21, N'Antoine De Saint-Exupéry', 1)
INSERT [dbo].[Author] ([id], [name], [isActive]) VALUES (22, N'Tolkien', 1)
INSERT [dbo].[Author] ([id], [name], [isActive]) VALUES (23, N'Jared Diamond', 1)
INSERT [dbo].[Author] ([id], [name], [isActive]) VALUES (24, N'Nguyễn Hiến Lê', 1)
INSERT [dbo].[Author] ([id], [name], [isActive]) VALUES (25, N'Phan Thanh Giản', 1)
INSERT [dbo].[Author] ([id], [name], [isActive]) VALUES (26, N'John Barrow', 1)
INSERT [dbo].[Author] ([id], [name], [isActive]) VALUES (27, N'Lê Hy', 1)
INSERT [dbo].[Author] ([id], [name], [isActive]) VALUES (28, N'Yuval Noah Harari', 1)
INSERT [dbo].[Author] ([id], [name], [isActive]) VALUES (29, N'Erono Mundasep', 1)
INSERT [dbo].[Author] ([id], [name], [isActive]) VALUES (30, N'Hoàng Quốc Hải', 1)
SET IDENTITY_INSERT [dbo].[Author] OFF
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([id], [title], [price], [qty], [introduction], [picturePath], [contentPath], [authorId], [categoryId], [publisherId], [isActive]) VALUES (2, N'Không Gia Đình', 109000, 20, N'1_Khong_gia_dinh.txt', N'khong-gia-dinh.jpg', N'1-khong-gia-dinh.jpg', 1, 1, 1, 1)
INSERT [dbo].[Book] ([id], [title], [price], [qty], [introduction], [picturePath], [contentPath], [authorId], [categoryId], [publisherId], [isActive]) VALUES (3, N'Ông Già Và Biển Cả', 119000, 20, N'2-ong-gia-va-bien-ca.txt', N'ong_gia_va_bien_ca.jpg', N'2-ong-gia-va-bien-ca.docx', 2, 1, 2, 1)
INSERT [dbo].[Book] ([id], [title], [price], [qty], [introduction], [picturePath], [contentPath], [authorId], [categoryId], [publisherId], [isActive]) VALUES (6, N'Âm Thanh Và Cuồng Nộ', 119000, 20, N'3-am-thanh-va-cuong-no.txt', N'am-thanh-va-cuong-no.jpg', N'3-am-thanh-va-cuong-no.docx', 3, 1, 3, 1)
INSERT [dbo].[Book] ([id], [title], [price], [qty], [introduction], [picturePath], [contentPath], [authorId], [categoryId], [publisherId], [isActive]) VALUES (8, N'Thép Đã Tôi Thế Đấy', 159000, 20, N'4-thep-da-toi-the-day.txt', N'thep-da-toi-the-day.jpg', N'4-thep-da-toi-the-day.docx', 4, 1, 4, 1)
INSERT [dbo].[Book] ([id], [title], [price], [qty], [introduction], [picturePath], [contentPath], [authorId], [categoryId], [publisherId], [isActive]) VALUES (9, N'Nhà Giả Kim', 179000, 20, N'5-nha-gia-kim.txt', N'nhagiakim_1.jpg', N'5-nha-gia-kim.docx', 5, 1, 5, 1)
INSERT [dbo].[Book] ([id], [title], [price], [qty], [introduction], [picturePath], [contentPath], [authorId], [categoryId], [publisherId], [isActive]) VALUES (10, N'Lược Sử Thời Gian', 299000, 20, N'6-luoc-su-thoi-gian.txt', N'luoc-su-thoi-gian.jpg', N'6-luoc-su-thoi-gian.docx', 6, 1, 6, 1)
INSERT [dbo].[Book] ([id], [title], [price], [qty], [introduction], [picturePath], [contentPath], [authorId], [categoryId], [publisherId], [isActive]) VALUES (11, N'Cuốn Theo Chiều Gió', 319000, 20, N'7-cuon-theo-chieu-gio.txt', N'cuon-theo-chieu-gio.jpg', N'7-cuon-theo-chieu-gio.docx', 7, 1, 1, 1)
INSERT [dbo].[Book] ([id], [title], [price], [qty], [introduction], [picturePath], [contentPath], [authorId], [categoryId], [publisherId], [isActive]) VALUES (12, N'Những Người Khốn Khổ', 199000, 20, N'8-nhung-nguoi-khon-kho.txt', N'nhung-nguoi-khon-kho.jpg', N'8-nhung-nguoi-khon-kho.docx', 8, 1, 2, 1)
INSERT [dbo].[Book] ([id], [title], [price], [qty], [introduction], [picturePath], [contentPath], [authorId], [categoryId], [publisherId], [isActive]) VALUES (13, N'Sự Sống Bất Tử', 319000, 20, N'10-su-song-bat-tu.txt', N'su-song-bat-tu.jpg', N'10-su-song-bat-tu.docx', 10, 2, 3, 1)
INSERT [dbo].[Book] ([id], [title], [price], [qty], [introduction], [picturePath], [contentPath], [authorId], [categoryId], [publisherId], [isActive]) VALUES (14, N'Cởi Trói Linh Hồn', 99000, 20, N'9-coi-troi-linh-hon.txt', N'coi-troi-linh-hon.jpg', N'9-coi-troi-linh-hon.docx', 9, 2, 4, 1)
INSERT [dbo].[Book] ([id], [title], [price], [qty], [introduction], [picturePath], [contentPath], [authorId], [categoryId], [publisherId], [isActive]) VALUES (15, N'Suối Nguồn Tâm Linh', 119000, 20, N'11-suoi-nguon-tam-linh.txt', N'suoi-nguon-tam-linh.jpg', N'11-suoi-nguon-tam-linh.docx', 11, 2, 5, 1)
INSERT [dbo].[Book] ([id], [title], [price], [qty], [introduction], [picturePath], [contentPath], [authorId], [categoryId], [publisherId], [isActive]) VALUES (16, N'Ám Ảnh Từ Kiếp Trước: Bí Mật Của Sự Sống Và Cái Chết', 149000, 20, N'12-am-anh-tu-kiep-truoc.txt', N'am-anh-tu-kiep-truoc.jpg', N'12-am-anh-tu-kiep-truoc.docx', 12, 2, 6, 1)
INSERT [dbo].[Book] ([id], [title], [price], [qty], [introduction], [picturePath], [contentPath], [authorId], [categoryId], [publisherId], [isActive]) VALUES (17, N'Bên Rặng Tuyết Sơn', 279000, 20, N'13-ben-rang-tuyet-son.txt', N'ben-rang-tuyet-son.jpg', N'13-ben-rang-tuyet-son.docx', 13, 2, 1, 1)
INSERT [dbo].[Book] ([id], [title], [price], [qty], [introduction], [picturePath], [contentPath], [authorId], [categoryId], [publisherId], [isActive]) VALUES (18, N'Hoa Trôi Trên Sóng Nước', 189000, 20, N'14-hoa-troi-tren-song-nuoc.txt', N'hoa-troi-tren-song-nuoc.jpg', N'14-hoa-troi-tren-song-nuoc.docx', 14, 2, 2, 1)
INSERT [dbo].[Book] ([id], [title], [price], [qty], [introduction], [picturePath], [contentPath], [authorId], [categoryId], [publisherId], [isActive]) VALUES (19, N'Hành Trình Về Phương Đông', 89000, 20, N'15-hanh-trinh-ve-phuong-dong.txt', N'hanh-trinh-ve-phuong-dong.jpg', N'15-hanh-trinh-ve-phuong-dong.docx', 15, 2, 3, 1)
INSERT [dbo].[Book] ([id], [title], [price], [qty], [introduction], [picturePath], [contentPath], [authorId], [categoryId], [publisherId], [isActive]) VALUES (20, N'Huyền Thuật Và Các Đạo Sĩ Tây Tạng', 319000, 20, N'16-huyen-thuat-va-cac-dao-si.txt', N'huyen-thuat-va-cac-dao-si-Tay_tang.jpg', N'16-huyen-thuat-va-cac-dao-si.docx', 16, 2, 4, 1)
INSERT [dbo].[Book] ([id], [title], [price], [qty], [introduction], [picturePath], [contentPath], [authorId], [categoryId], [publisherId], [isActive]) VALUES (21, N'Tiếng Gọi Nơi Hoang Dã', 309000, 20, N'17-tieng-goi-noi-hoang-da.txt', N'tieng-goi-noi-hoang-da.jpg', N'17-tieng-goi-noi-hoang-da.docx', 17, 3, 5, 1)
INSERT [dbo].[Book] ([id], [title], [price], [qty], [introduction], [picturePath], [contentPath], [authorId], [categoryId], [publisherId], [isActive]) VALUES (22, N'Hai Số Phận', 299000, 20, N'18-hai-so-phan.txt', N'hai-so-phan.jpg', N'18-hai-so-phan.docx', 18, 3, 6, 1)
INSERT [dbo].[Book] ([id], [title], [price], [qty], [introduction], [picturePath], [contentPath], [authorId], [categoryId], [publisherId], [isActive]) VALUES (23, N'Nanh Trắng', 289000, 20, N'19-nanh-trang.txt', N'nanh-trang.jpg', N'19-nanh-trang.docx', 17, 3, 1, 1)
INSERT [dbo].[Book] ([id], [title], [price], [qty], [introduction], [picturePath], [contentPath], [authorId], [categoryId], [publisherId], [isActive]) VALUES (24, N'Đồi Gió Hú', 169000, 20, N'20-doi-gio-hu.txt', N'doi-gio-hu.jpg', N'20-doi-gio-hu.docx', 19, 3, 2, 1)
INSERT [dbo].[Book] ([id], [title], [price], [qty], [introduction], [picturePath], [contentPath], [authorId], [categoryId], [publisherId], [isActive]) VALUES (25, N'Lý Trí Và Tình Cảm', 179000, 20, N'21-ly-tri-va-tinh-cam.txt', N'ly-tri-va-tinh-cam.jpg', N'21-ly-tri-va-tinh-cam.docx', 20, 3, 3, 1)
INSERT [dbo].[Book] ([id], [title], [price], [qty], [introduction], [picturePath], [contentPath], [authorId], [categoryId], [publisherId], [isActive]) VALUES (26, N'Nhà Thờ Đức Bà Paris', 159000, 20, N'22-nha-tho-duc-ba.txt', N'nha-tho-duc-ba-paris.jpg', N'22-nha-tho-duc-ba.docx', 8, 3, 4, 1)
INSERT [dbo].[Book] ([id], [title], [price], [qty], [introduction], [picturePath], [contentPath], [authorId], [categoryId], [publisherId], [isActive]) VALUES (27, N'Hoàng Tử Bé', 149000, 20, N'23-hoang-tu-be.txt', N'hoang-tu-be.jpg', N'23-hoang-tu-be.docx', 21, 3, 5, 1)
INSERT [dbo].[Book] ([id], [title], [price], [qty], [introduction], [picturePath], [contentPath], [authorId], [categoryId], [publisherId], [isActive]) VALUES (28, N'Chúa Tể Của Những Chiếc Nhẫn', 189000, 20, N'24-chua-te-cua-nhung-chiec-nhan.txt', N'chua-te-cua-nhung-chiec-nhan.jpg', N'24-chua-te-cua-nhung-chiec-nhan.docx', 22, 3, 6, 1)
INSERT [dbo].[Book] ([id], [title], [price], [qty], [introduction], [picturePath], [contentPath], [authorId], [categoryId], [publisherId], [isActive]) VALUES (29, N'Súng, Vi Trùng Và Thép', 89000, 20, N'25-sung-vi-trung.txt', N'sung-vi-trung-va-thep.jpg', N'25-sung-vi-trung.docx', 23, 4, 1, 1)
INSERT [dbo].[Book] ([id], [title], [price], [qty], [introduction], [picturePath], [contentPath], [authorId], [categoryId], [publisherId], [isActive]) VALUES (30, N'Trăm Năm Nhìn Lại', 99000, 20, N'26-tram-nam-nhin-lai.txt', N'tram-nam-nhin-lai.jpg', N'26-tram-nam-nhin-lai.docx', 24, 4, 2, 1)
INSERT [dbo].[Book] ([id], [title], [price], [qty], [introduction], [picturePath], [contentPath], [authorId], [categoryId], [publisherId], [isActive]) VALUES (31, N'Lịch Sử Thế Giới', 109000, 20, N'27-lich-su-the-gioi.txt', N'lich-su-the-gioi.jpg', N'27-lich-su-the-gioi.docx', 25, 4, 3, 1)
INSERT [dbo].[Book] ([id], [title], [price], [qty], [introduction], [picturePath], [contentPath], [authorId], [categoryId], [publisherId], [isActive]) VALUES (32, N'Sách Lịch Sử - Một Chuyến Du Hành Đến Xứ Nam Hà', 209000, 20, N'28-mot-chuyen-du-hanh.txt', N'mot-chuyen-du-hanh-Nam-Ha.jpg', N'28-mot-chuyen-du-hanh-den-xu-nam-ha.docx', 26, 4, 4, 1)
INSERT [dbo].[Book] ([id], [title], [price], [qty], [introduction], [picturePath], [contentPath], [authorId], [categoryId], [publisherId], [isActive]) VALUES (33, N'Đại Việt Sử Ký Toàn Thư', 219000, 20, N'29-dai-viet-su-ky.txt', N'dai-viet-su-ki-toan-thu.jpg', N'29-dai-viet-su-ky.docx', 27, 4, 5, 1)
INSERT [dbo].[Book] ([id], [title], [price], [qty], [introduction], [picturePath], [contentPath], [authorId], [categoryId], [publisherId], [isActive]) VALUES (34, N'Sapiens: Lược Sử Về Loài Người', 229000, 20, N'30-luoc-su-ve-loai-nguoi.txt', N'luoc-su-ve-loai-nguoi.jpg', N'30-luoc-su-ve-loai-nguoi.docx', 28, 4, 6, 1)
INSERT [dbo].[Book] ([id], [title], [price], [qty], [introduction], [picturePath], [contentPath], [authorId], [categoryId], [publisherId], [isActive]) VALUES (35, N'Hoàng Kim Bản Harachi', 249000, 20, N'31-hoang-kim-ban-harari.txt', N'hoang-kim-ban.jpg', N'31-hoang-kim-ban-harachi.docx', 29, 4, 1, 1)
INSERT [dbo].[Book] ([id], [title], [price], [qty], [introduction], [picturePath], [contentPath], [authorId], [categoryId], [publisherId], [isActive]) VALUES (36, N'Bão Táp Triều Trần', 279000, 20, N'32-bao-tap-trieu-tran.txt', N'bao-tap-trieu-tran-bao-tap-cung-dinh.jpg', N'32-bao-tap-trieu-tran.docx', 30, 4, 2, 1)
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
SET IDENTITY_INSERT [dbo].[BooksOfAccount] ON 

INSERT [dbo].[BooksOfAccount] ([id], [accountID], [bookID], [progress], [isActive]) VALUES (1, 3, 2, CAST(0.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[BooksOfAccount] ([id], [accountID], [bookID], [progress], [isActive]) VALUES (2, 3, 13, CAST(0.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[BooksOfAccount] ([id], [accountID], [bookID], [progress], [isActive]) VALUES (4, 3, 21, CAST(0.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[BooksOfAccount] ([id], [accountID], [bookID], [progress], [isActive]) VALUES (5, 3, 29, CAST(0.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[BooksOfAccount] ([id], [accountID], [bookID], [progress], [isActive]) VALUES (6, 4, 12, CAST(0.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[BooksOfAccount] ([id], [accountID], [bookID], [progress], [isActive]) VALUES (7, 4, 20, CAST(0.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[BooksOfAccount] ([id], [accountID], [bookID], [progress], [isActive]) VALUES (8, 4, 28, CAST(0.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[BooksOfAccount] ([id], [accountID], [bookID], [progress], [isActive]) VALUES (9, 4, 36, CAST(0.00 AS Decimal(5, 2)), 1)
SET IDENTITY_INSERT [dbo].[BooksOfAccount] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name], [isActive]) VALUES (1, N'Tiểu thuyết', 1)
INSERT [dbo].[Category] ([id], [name], [isActive]) VALUES (2, N'Tâm lý, Tâm linh, Tôn giáo', 1)
INSERT [dbo].[Category] ([id], [name], [isActive]) VALUES (3, N'Văn học nghệ thuật', 1)
INSERT [dbo].[Category] ([id], [name], [isActive]) VALUES (4, N'Văn hóa xã hội - lịch sử', 1)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([id], [orderID], [bookID], [price], [isActive], [qty]) VALUES (1, 1, 12, 199000, 1, 1)
INSERT [dbo].[OrderDetail] ([id], [orderID], [bookID], [price], [isActive], [qty]) VALUES (3, 1, 20, 319000, 1, 1)
INSERT [dbo].[OrderDetail] ([id], [orderID], [bookID], [price], [isActive], [qty]) VALUES (4, 1, 28, 189000, 1, 1)
INSERT [dbo].[OrderDetail] ([id], [orderID], [bookID], [price], [isActive], [qty]) VALUES (5, 1, 36, 279000, 1, 1)
INSERT [dbo].[OrderDetail] ([id], [orderID], [bookID], [price], [isActive], [qty]) VALUES (7, 4, 2, 109000, 1, 1)
INSERT [dbo].[OrderDetail] ([id], [orderID], [bookID], [price], [isActive], [qty]) VALUES (8, 4, 13, 319000, 1, 1)
INSERT [dbo].[OrderDetail] ([id], [orderID], [bookID], [price], [isActive], [qty]) VALUES (9, 4, 21, 309000, 1, 1)
INSERT [dbo].[OrderDetail] ([id], [orderID], [bookID], [price], [isActive], [qty]) VALUES (10, 4, 29, 89000, 1, 1)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [orderDate], [phone], [accountID], [isActive]) VALUES (1, CAST(N'2023-10-12' AS Date), N'0213546879', 4, 1)
INSERT [dbo].[Orders] ([id], [orderDate], [phone], [accountID], [isActive]) VALUES (4, CAST(N'2023-10-12' AS Date), N'0325486579', 3, 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Publisher] ON 

INSERT [dbo].[Publisher] ([id], [name], [isActive]) VALUES (1, N'Hội Nhà Văn', 1)
INSERT [dbo].[Publisher] ([id], [name], [isActive]) VALUES (2, N'Kim Đồng', 1)
INSERT [dbo].[Publisher] ([id], [name], [isActive]) VALUES (3, N'Phụ Nữ', 1)
INSERT [dbo].[Publisher] ([id], [name], [isActive]) VALUES (4, N'Skybook', 1)
INSERT [dbo].[Publisher] ([id], [name], [isActive]) VALUES (5, N'Giáo Dục', 1)
INSERT [dbo].[Publisher] ([id], [name], [isActive]) VALUES (6, N'Trẻ', 1)
SET IDENTITY_INSERT [dbo].[Publisher] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Account__AB6E61645932FFB8]    Script Date: 10/12/2023 5:03:29 PM ******/
ALTER TABLE [dbo].[Account] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Admin__11A6906A2AA98DB7]    Script Date: 10/12/2023 5:03:29 PM ******/
ALTER TABLE [dbo].[Admin] ADD UNIQUE NONCLUSTERED 
(
	[identityNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Admin__AB6E616485810490]    Script Date: 10/12/2023 5:03:29 PM ******/
ALTER TABLE [dbo].[Admin] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Admin__F3DBC5724221D8DA]    Script Date: 10/12/2023 5:03:29 PM ******/
ALTER TABLE [dbo].[Admin] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF_Account_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[Admin] ADD  CONSTRAINT [DF_Admin_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[Author] ADD  CONSTRAINT [DF_Author_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[Book] ADD  CONSTRAINT [DF_Book_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[BooksOfAccount] ADD  CONSTRAINT [DF_BooksOfAccount_progress]  DEFAULT ((0)) FOR [progress]
GO
ALTER TABLE [dbo].[BooksOfAccount] ADD  CONSTRAINT [DF_BooksOfAccount_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  CONSTRAINT [DF_OrderDetail_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  CONSTRAINT [DF_OrderDetail_qty]  DEFAULT ((1)) FOR [qty]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (getdate()) FOR [orderDate]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[Publisher] ADD  CONSTRAINT [DF_Publisher_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [fk_authorId_book] FOREIGN KEY([authorId])
REFERENCES [dbo].[Author] ([id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [fk_authorId_book]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [fk_categoryId_book] FOREIGN KEY([categoryId])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [fk_categoryId_book]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [fk_publisherId_book] FOREIGN KEY([publisherId])
REFERENCES [dbo].[Publisher] ([id])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [fk_publisherId_book]
GO
ALTER TABLE [dbo].[BooksOfAccount]  WITH CHECK ADD  CONSTRAINT [FK_BooksOfAccount_Account] FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[BooksOfAccount] CHECK CONSTRAINT [FK_BooksOfAccount_Account]
GO
ALTER TABLE [dbo].[BooksOfAccount]  WITH CHECK ADD  CONSTRAINT [FK_BooksOfAccount_Book] FOREIGN KEY([bookID])
REFERENCES [dbo].[Book] ([id])
GO
ALTER TABLE [dbo].[BooksOfAccount] CHECK CONSTRAINT [FK_BooksOfAccount_Book]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Book] FOREIGN KEY([bookID])
REFERENCES [dbo].[Book] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Book]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Orders] FOREIGN KEY([orderID])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Orders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Account] FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Account]
GO
USE [master]
GO
ALTER DATABASE [java5] SET  READ_WRITE 
GO
