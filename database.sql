USE [master]
GO
/****** Object:  Database [prospect]    Script Date: 9/8/2024 11:54:11 PM ******/
CREATE DATABASE [prospect]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'prospect', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\prospect.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'prospect_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\prospect_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [prospect] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [prospect].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [prospect] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [prospect] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [prospect] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [prospect] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [prospect] SET ARITHABORT OFF 
GO
ALTER DATABASE [prospect] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [prospect] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [prospect] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [prospect] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [prospect] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [prospect] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [prospect] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [prospect] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [prospect] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [prospect] SET  ENABLE_BROKER 
GO
ALTER DATABASE [prospect] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [prospect] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [prospect] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [prospect] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [prospect] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [prospect] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [prospect] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [prospect] SET RECOVERY FULL 
GO
ALTER DATABASE [prospect] SET  MULTI_USER 
GO
ALTER DATABASE [prospect] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [prospect] SET DB_CHAINING OFF 
GO
ALTER DATABASE [prospect] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [prospect] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [prospect] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [prospect] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'prospect', N'ON'
GO
ALTER DATABASE [prospect] SET QUERY_STORE = OFF
GO
USE [prospect]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 9/8/2024 11:54:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prospect]    Script Date: 9/8/2024 11:54:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prospect](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NoProspect] [nvarchar](max) NULL,
	[CabangPengajuan] [nvarchar](max) NULL,
	[NamaCMO] [nvarchar](max) NULL,
	[TipeAplikasi] [nvarchar](max) NULL,
	[JenisPengajuan] [nvarchar](max) NULL,
	[Produk] [nvarchar](max) NULL,
	[TipeKonsumen] [nvarchar](max) NULL,
	[StatusKonsumen] [nvarchar](max) NULL,
	[NamaNasabah] [nvarchar](max) NULL,
	[Kewarganegaraan] [nvarchar](max) NULL,
	[JenisIdentitas] [nvarchar](max) NULL,
	[NoIdentitas] [nvarchar](max) NULL,
	[StatusKTP] [nvarchar](max) NULL,
	[TglKTPBerakhir] [datetime2](7) NOT NULL,
	[TglLahirNasabah] [datetime2](7) NOT NULL,
	[Alamat] [nvarchar](max) NULL,
	[NoHP] [nvarchar](max) NULL,
	[NoTlp] [nvarchar](max) NULL,
	[NPWP] [nvarchar](max) NULL,
 CONSTRAINT [PK_Prospect] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [prospect] SET  READ_WRITE 
GO
