USE [master]
GO
/****** Object:  Database [Shopping]    Script Date: 9/6/2021 4:17:57 PM ******/
CREATE DATABASE [Shopping]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Shopping', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Shopping.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Shopping_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Shopping_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Shopping] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Shopping].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Shopping] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Shopping] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Shopping] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Shopping] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Shopping] SET ARITHABORT OFF 
GO
ALTER DATABASE [Shopping] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Shopping] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Shopping] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Shopping] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Shopping] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Shopping] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Shopping] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Shopping] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Shopping] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Shopping] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Shopping] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Shopping] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Shopping] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Shopping] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Shopping] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Shopping] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Shopping] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Shopping] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Shopping] SET  MULTI_USER 
GO
ALTER DATABASE [Shopping] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Shopping] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Shopping] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Shopping] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Shopping] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Shopping] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Shopping] SET QUERY_STORE = OFF
GO
USE [Shopping]
GO
/****** Object:  Table [dbo].[about]    Script Date: 9/6/2021 4:17:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[about](
	[id] [int] NOT NULL,
	[title] [nvarchar](250) NULL,
	[description] [nvarchar](250) NULL,
	[image] [nvarchar](250) NULL,
	[detail] [ntext] NULL,
	[created_date] [datetime] NULL,
	[created_by] [varchar](50) NULL,
	[modified_date] [datetime] NULL,
	[modifed_by] [varchar](50) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_about] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 9/6/2021 4:17:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[id] [int] NOT NULL,
	[name] [varchar](250) NULL,
	[meta_title] [varchar](250) NULL,
	[parent_id] [int] NULL,
	[display_order] [int] NULL,
	[seo_title] [nvarchar](250) NULL,
	[created_date] [datetime] NULL,
	[created_by] [varchar](50) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [varchar](50) NULL,
	[show_on_home] [bit] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contact]    Script Date: 9/6/2021 4:17:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact](
	[id] [int] NOT NULL,
	[content] [ntext] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_contact] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[feedback]    Script Date: 9/6/2021 4:17:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feedback](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[address] [nvarchar](250) NULL,
	[content] [nvarchar](250) NULL,
	[status] [bit] NULL,
	[created_date] [datetime] NULL,
 CONSTRAINT [PK_feedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 9/6/2021 4:17:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] NOT NULL,
	[code] [varchar](10) NULL,
	[name] [nvarchar](25) NULL,
	[meta_title] [varchar](250) NULL,
	[description] [nvarchar](500) NULL,
	[image] [nvarchar](250) NULL,
	[price] [decimal](18, 0) NULL,
	[promotion_price] [decimal](18, 0) NULL,
	[include_vat] [bit] NULL,
	[quantity] [int] NULL,
	[category_id] [int] NULL,
	[detail] [text] NULL,
	[warranty] [int] NULL,
	[created_date] [datetime] NULL,
	[created_by] [varchar](50) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [varchar](50) NULL,
	[status] [bit] NULL,
	[view_count] [int] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 9/6/2021 4:17:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] NOT NULL,
	[username] [nchar](10) NULL,
	[password] [nvarchar](50) NULL,
	[firstname] [nvarchar](50) NULL,
	[lastname] [nvarchar](50) NULL,
	[address] [nvarchar](250) NULL,
	[email] [nvarchar](250) NULL,
	[phone] [nvarchar](20) NULL,
	[created_date] [datetime] NULL,
	[created_by] [varchar](50) NULL,
	[modified_date] [datetime] NULL,
	[modified_by] [varchar](50) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[about] ADD  CONSTRAINT [DF_about_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[about] ADD  CONSTRAINT [DF_about_modified_date]  DEFAULT (getdate()) FOR [modified_date]
GO
ALTER TABLE [dbo].[feedback] ADD  CONSTRAINT [DF_feedback_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[product] ADD  CONSTRAINT [DF_product_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[product] ADD  CONSTRAINT [DF_product_modified_date]  DEFAULT (getdate()) FOR [modified_date]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_category] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_category]
GO
USE [master]
GO
ALTER DATABASE [Shopping] SET  READ_WRITE 
GO
