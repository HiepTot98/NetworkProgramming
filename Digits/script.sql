USE [master]
GO
/****** Object:  Database [Digital_new]    Script Date: 8/25/2021 3:52:14 PM ******/
CREATE DATABASE [Digital_new]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Digital_new', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Digital_new.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Digital_new_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Digital_new_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Digital_new] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Digital_new].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Digital_new] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Digital_new] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Digital_new] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Digital_new] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Digital_new] SET ARITHABORT OFF 
GO
ALTER DATABASE [Digital_new] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Digital_new] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Digital_new] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Digital_new] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Digital_new] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Digital_new] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Digital_new] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Digital_new] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Digital_new] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Digital_new] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Digital_new] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Digital_new] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Digital_new] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Digital_new] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Digital_new] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Digital_new] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Digital_new] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Digital_new] SET RECOVERY FULL 
GO
ALTER DATABASE [Digital_new] SET  MULTI_USER 
GO
ALTER DATABASE [Digital_new] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Digital_new] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Digital_new] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Digital_new] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Digital_new] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Digital_new] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Digital_new', N'ON'
GO
ALTER DATABASE [Digital_new] SET QUERY_STORE = OFF
GO
USE [Digital_new]
GO
/****** Object:  Table [dbo].[digital]    Script Date: 8/25/2021 3:52:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[digital](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[description] [text] NOT NULL,
	[image] [nvarchar](50) NOT NULL,
	[author] [nvarchar](50) NOT NULL,
	[timePost] [date] NOT NULL,
	[shortDes] [text] NOT NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Digital_new] SET  READ_WRITE 
GO
