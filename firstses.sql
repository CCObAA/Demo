/*    ==Параметры сценариев==

    Версия исходного сервера : SQL Server 2017 (14.0.1000)
    Выпуск исходного ядра СУБД : Выпуск Microsoft SQL Server Enterprise Edition
    Тип исходного ядра СУБД : Изолированный SQL Server

    Версия целевого сервера : SQL Server 2017
    Выпуск целевого ядра СУБД : Выпуск Microsoft SQL Server Standard Edition
    Тип целевого ядра СУБД : Изолированный SQL Server
*/
USE [master]
GO
/****** Object:  Database [Demka]    Script Date: 25.01.2023 10:00:58 ******/
CREATE DATABASE [Demka]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Demka', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Demka.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Demka_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Demka_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Demka] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Demka].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Demka] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Demka] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Demka] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Demka] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Demka] SET ARITHABORT OFF 
GO
ALTER DATABASE [Demka] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Demka] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Demka] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Demka] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Demka] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Demka] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Demka] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Demka] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Demka] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Demka] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Demka] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Demka] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Demka] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Demka] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Demka] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Demka] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Demka] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Demka] SET RECOVERY FULL 
GO
ALTER DATABASE [Demka] SET  MULTI_USER 
GO
ALTER DATABASE [Demka] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Demka] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Demka] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Demka] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Demka] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Demka', N'ON'
GO
ALTER DATABASE [Demka] SET QUERY_STORE = OFF
GO
USE [Demka]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Demka]
GO
/****** Object:  Table [dbo].[regions]    Script Date: 25.01.2023 10:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[regions](
	[Id] [int] NULL,
	[Name_region] [nvarchar](255) NULL,
	[Capital] [nvarchar](255) NULL,
	[District] [nvarchar](255) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Demka] SET  READ_WRITE 
GO
