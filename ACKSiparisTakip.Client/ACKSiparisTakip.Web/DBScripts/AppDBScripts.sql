USE [ACKAppDB]
GO
/****** Object:  Index [IX_SIPARIS_NO]    Script Date: 12.9.2014 22:12:07 ******/
DROP INDEX [IX_SIPARIS_NO] ON [dbo].[MONTAJ]
GO
/****** Object:  Table [dbo].[SIPARISNOSAYAC]    Script Date: 12.9.2014 22:12:07 ******/
DROP TABLE [dbo].[SIPARISNOSAYAC]
GO
/****** Object:  Table [dbo].[SIPARIS]    Script Date: 12.9.2014 22:12:07 ******/
DROP TABLE [dbo].[SIPARIS]
GO
/****** Object:  Table [dbo].[REF_TESLIMSEKLI]    Script Date: 12.9.2014 22:12:07 ******/
DROP TABLE [dbo].[REF_TESLIMSEKLI]
GO
/****** Object:  Table [dbo].[REF_TACTIP]    Script Date: 12.9.2014 22:12:07 ******/
DROP TABLE [dbo].[REF_TACTIP]
GO
/****** Object:  Table [dbo].[REF_TABLOLAR]    Script Date: 12.9.2014 22:12:07 ******/
DROP TABLE [dbo].[REF_TABLOLAR]
GO
/****** Object:  Table [dbo].[REF_PERVAZTIP]    Script Date: 12.9.2014 22:12:07 ******/
DROP TABLE [dbo].[REF_PERVAZTIP]
GO
/****** Object:  Table [dbo].[REF_MONTAJSEKLI]    Script Date: 12.9.2014 22:12:07 ******/
DROP TABLE [dbo].[REF_MONTAJSEKLI]
GO
/****** Object:  Table [dbo].[REF_KILITSISTEM]    Script Date: 12.9.2014 22:12:07 ******/
DROP TABLE [dbo].[REF_KILITSISTEM]
GO
/****** Object:  Table [dbo].[REF_KAPISERI]    Script Date: 12.9.2014 22:12:07 ******/
DROP TABLE [dbo].[REF_KAPISERI]
GO
/****** Object:  Table [dbo].[REF_KAPIRENK]    Script Date: 12.9.2014 22:12:07 ******/
DROP TABLE [dbo].[REF_KAPIRENK]
GO
/****** Object:  Table [dbo].[REF_KAPIMODEL]    Script Date: 12.9.2014 22:12:07 ******/
DROP TABLE [dbo].[REF_KAPIMODEL]
GO
/****** Object:  Table [dbo].[REF_ILLER]    Script Date: 12.9.2014 22:12:07 ******/
DROP TABLE [dbo].[REF_ILLER]
GO
/****** Object:  Table [dbo].[REF_ILCELER]    Script Date: 12.9.2014 22:12:07 ******/
DROP TABLE [dbo].[REF_ILCELER]
GO
/****** Object:  Table [dbo].[REF_ESIK]    Script Date: 12.9.2014 22:12:07 ******/
DROP TABLE [dbo].[REF_ESIK]
GO
/****** Object:  Table [dbo].[REF_CONTARENK]    Script Date: 12.9.2014 22:12:07 ******/
DROP TABLE [dbo].[REF_CONTARENK]
GO
/****** Object:  Table [dbo].[REF_CITA]    Script Date: 12.9.2014 22:12:07 ******/
DROP TABLE [dbo].[REF_CITA]
GO
/****** Object:  Table [dbo].[REF_ALUMINYUMRENK]    Script Date: 12.9.2014 22:12:07 ******/
DROP TABLE [dbo].[REF_ALUMINYUMRENK]
GO
/****** Object:  Table [dbo].[REF_AKSESUARRENK]    Script Date: 12.9.2014 22:12:07 ******/
DROP TABLE [dbo].[REF_AKSESUARRENK]
GO
/****** Object:  Table [dbo].[PERSONELBILGI]    Script Date: 12.9.2014 22:12:07 ******/
DROP TABLE [dbo].[PERSONELBILGI]
GO
/****** Object:  Table [dbo].[MONTAJ_PERSONEL]    Script Date: 12.9.2014 22:12:07 ******/
DROP TABLE [dbo].[MONTAJ_PERSONEL]
GO
/****** Object:  Table [dbo].[MONTAJ]    Script Date: 12.9.2014 22:12:07 ******/
DROP TABLE [dbo].[MONTAJ]
GO
/****** Object:  Table [dbo].[KULLANICIBILGI]    Script Date: 12.9.2014 22:12:07 ******/
DROP TABLE [dbo].[KULLANICIBILGI]
GO
/****** Object:  Table [dbo].[HATA]    Script Date: 12.9.2014 22:12:07 ******/
DROP TABLE [dbo].[HATA]
GO
/****** Object:  UserDefinedFunction [dbo].[MONTAJ_EKIP_LISTESI]    Script Date: 12.9.2014 22:12:07 ******/
DROP FUNCTION [dbo].[MONTAJ_EKIP_LISTESI]
GO
/****** Object:  UserDefinedFunction [dbo].[MONTAJ_EKIP_ID_LISTESI]    Script Date: 12.9.2014 22:12:07 ******/
DROP FUNCTION [dbo].[MONTAJ_EKIP_ID_LISTESI]
GO
USE [master]
GO
/****** Object:  Database [ACKAppDB]    Script Date: 12.9.2014 22:12:07 ******/
DROP DATABASE [ACKAppDB]
GO
/****** Object:  Database [ACKAppDB]    Script Date: 12.9.2014 22:12:07 ******/
CREATE DATABASE [ACKAppDB] ON  PRIMARY 
( NAME = N'ACKAppDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.BTS_POC\MSSQL\DATA\ACKAppDB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ACKAppDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.BTS_POC\MSSQL\DATA\ACKAppDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ACKAppDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ACKAppDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ACKAppDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ACKAppDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ACKAppDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ACKAppDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ACKAppDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ACKAppDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [ACKAppDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ACKAppDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ACKAppDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ACKAppDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ACKAppDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ACKAppDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ACKAppDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ACKAppDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ACKAppDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ACKAppDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ACKAppDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ACKAppDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ACKAppDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ACKAppDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ACKAppDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ACKAppDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ACKAppDB] SET RECOVERY FULL 
GO
ALTER DATABASE [ACKAppDB] SET  MULTI_USER 
GO
ALTER DATABASE [ACKAppDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ACKAppDB] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ACKAppDB', N'ON'
GO
USE [ACKAppDB]
GO
/****** Object:  UserDefinedFunction [dbo].[MONTAJ_EKIP_ID_LISTESI]    Script Date: 12.9.2014 22:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[MONTAJ_EKIP_ID_LISTESI]
(
	@MontajID int
)
RETURNS VARCHAR(1000)
AS
BEGIN
	DECLARE @PersonelIDListesi VARCHAR(1000) 

	SELECT 
		@PersonelIDListesi = (STUFF((SELECT ','+CAST(MP.PERSONELID AS varchar(5)) AS [text()]
									FROM [dbo].[MONTAJ_PERSONEL] AS MP
									WHERE MP.MONTAJID = @MontajID
									FOR XML PATH('')), 1, 1,''))

	RETURN @PersonelIDListesi

END

GO
/****** Object:  UserDefinedFunction [dbo].[MONTAJ_EKIP_LISTESI]    Script Date: 12.9.2014 22:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[MONTAJ_EKIP_LISTESI]
(
	@MontajID int
)
RETURNS VARCHAR(1000)
AS
BEGIN
	DECLARE @PersonelListesi VARCHAR(1000) 

	SELECT 
		@PersonelListesi = (STUFF((SELECT ','+P.AD +' '+P.SOYAD AS [text()]
									FROM [dbo].[MONTAJ_PERSONEL] AS MP
										INNER JOIN [dbo].[PERSONELBILGI] AS P ON MP.PERSONELID = P.ID
									WHERE MP.MONTAJID = @MontajID
									FOR XML PATH('')), 1, 1,''))

	RETURN @PersonelListesi

END

GO
/****** Object:  Table [dbo].[HATA]    Script Date: 12.9.2014 22:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HATA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MODULEID] [int] NULL,
	[EVENTLOGENTRYTYPEID] [int] NULL,
	[EXCEPTION] [nvarchar](max) NULL,
	[PAGEURL] [nvarchar](500) NULL,
	[METHODNAME] [nvarchar](100) NULL,
	[MESSAGE] [nvarchar](500) NULL,
	[USERIDENTITY] [nvarchar](20) NULL,
	[PCNAME] [nvarchar](50) NULL,
	[USERAUTHORITY] [nvarchar](50) NULL,
	[EXTENDEDPROPERTIES] [nvarchar](50) NULL,
	[USERNAME] [nvarchar](50) NULL,
	[DATE] [datetime] NULL,
 CONSTRAINT [PK_HATA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KULLANICIBILGI]    Script Date: 12.9.2014 22:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KULLANICIBILGI](
	[KULLANICIADI] [varchar](50) NULL,
	[SIFRE] [varchar](50) NULL,
	[YETKI] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MONTAJ]    Script Date: 12.9.2014 22:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MONTAJ](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SIPARISNO] [varchar](50) NULL,
	[TESLIMTARIH] [datetime] NULL,
	[PERSONELLISTEID] [int] NULL,
	[DURUM] [varchar](5) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MONTAJ_PERSONEL]    Script Date: 12.9.2014 22:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MONTAJ_PERSONEL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MONTAJID] [int] NOT NULL,
	[PERSONELID] [int] NOT NULL,
 CONSTRAINT [PK_MONTAJ_PERSONEL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PERSONELBILGI]    Script Date: 12.9.2014 22:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PERSONELBILGI](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AD] [char](50) NOT NULL,
	[SOYAD] [char](100) NOT NULL,
 CONSTRAINT [PK_PERSONELBILGI] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REF_AKSESUARRENK]    Script Date: 12.9.2014 22:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REF_AKSESUARRENK](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AD] [varchar](50) NOT NULL,
	[NOVA] [bit] NOT NULL,
	[KROMA] [bit] NOT NULL,
	[GUARD] [bit] NOT NULL,
 CONSTRAINT [PK_REF_AKSESUARRENK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REF_ALUMINYUMRENK]    Script Date: 12.9.2014 22:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REF_ALUMINYUMRENK](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AD] [varchar](50) NOT NULL,
	[NOVA] [bit] NOT NULL,
	[KROMA] [bit] NOT NULL,
	[GUARD] [bit] NOT NULL,
 CONSTRAINT [PK_REF_ALUMINYUMRENK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REF_CITA]    Script Date: 12.9.2014 22:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REF_CITA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AD] [varchar](50) NOT NULL,
	[NOVA] [bit] NOT NULL,
	[KROMA] [bit] NOT NULL,
	[GUARD] [bit] NOT NULL,
 CONSTRAINT [PK_REF_CITA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REF_CONTARENK]    Script Date: 12.9.2014 22:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REF_CONTARENK](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AD] [varchar](50) NOT NULL,
	[NOVA] [bit] NOT NULL,
	[KROMA] [bit] NOT NULL,
	[GUARD] [bit] NOT NULL,
 CONSTRAINT [PK_REF_CONTARENK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REF_ESIK]    Script Date: 12.9.2014 22:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REF_ESIK](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AD] [varchar](50) NOT NULL,
	[NOVA] [bit] NOT NULL,
	[KROMA] [bit] NOT NULL,
	[GUARD] [bit] NOT NULL,
 CONSTRAINT [PK_REF_ESIK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REF_ILCELER]    Script Date: 12.9.2014 22:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REF_ILCELER](
	[PKEY] [int] IDENTITY(1,1) NOT NULL,
	[ILCEAD] [varchar](70) NOT NULL,
	[ILKOD] [varchar](2) NOT NULL,
	[ILAD] [varchar](50) NOT NULL,
 CONSTRAINT [PK_REF_ILCELER] PRIMARY KEY CLUSTERED 
(
	[PKEY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REF_ILLER]    Script Date: 12.9.2014 22:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REF_ILLER](
	[ILKOD] [varchar](2) NOT NULL,
	[ILAD] [varchar](50) NULL,
 CONSTRAINT [PK_REF_ILLER] PRIMARY KEY CLUSTERED 
(
	[ILKOD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REF_KAPIMODEL]    Script Date: 12.9.2014 22:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REF_KAPIMODEL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KAPISERIID] [int] NOT NULL,
	[AD] [varchar](50) NOT NULL,
 CONSTRAINT [PK_REF_KAPIMODEL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REF_KAPIRENK]    Script Date: 12.9.2014 22:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REF_KAPIRENK](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AD] [varchar](50) NOT NULL,
	[NOVA] [bit] NOT NULL,
	[KROMA] [bit] NOT NULL,
	[GUARD] [bit] NOT NULL,
 CONSTRAINT [PK_REF_KAPIRENK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REF_KAPISERI]    Script Date: 12.9.2014 22:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REF_KAPISERI](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AD] [varchar](50) NOT NULL,
 CONSTRAINT [PK_REF_KAPISERI] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REF_KILITSISTEM]    Script Date: 12.9.2014 22:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REF_KILITSISTEM](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AD] [varchar](50) NOT NULL,
	[NOVA] [bit] NOT NULL,
	[KROMA] [bit] NOT NULL,
	[GUARD] [bit] NOT NULL,
 CONSTRAINT [PK_REF_KILITSISTEM] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REF_MONTAJSEKLI]    Script Date: 12.9.2014 22:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REF_MONTAJSEKLI](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AD] [varchar](50) NOT NULL,
	[NOVA] [bit] NOT NULL,
	[KROMA] [bit] NOT NULL,
	[GUARD] [bit] NOT NULL,
 CONSTRAINT [PK_REF_MONTAJSEKLI] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REF_PERVAZTIP]    Script Date: 12.9.2014 22:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REF_PERVAZTIP](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AD] [varchar](50) NOT NULL,
	[NOVA] [bit] NOT NULL,
	[KROMA] [bit] NOT NULL,
	[GUARD] [bit] NOT NULL,
 CONSTRAINT [PK_REF_PERVAZTIP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REF_TABLOLAR]    Script Date: 12.9.2014 22:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REF_TABLOLAR](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AD] [varchar](50) NOT NULL,
	[TABLO] [varchar](50) NOT NULL,
 CONSTRAINT [PK_REF_TABLOLAR] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REF_TACTIP]    Script Date: 12.9.2014 22:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REF_TACTIP](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AD] [varchar](50) NOT NULL,
	[NOVA] [bit] NOT NULL,
	[KROMA] [bit] NOT NULL,
	[GUARD] [bit] NOT NULL,
 CONSTRAINT [PK_REF_TACTIP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REF_TESLIMSEKLI]    Script Date: 12.9.2014 22:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REF_TESLIMSEKLI](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AD] [varchar](50) NOT NULL,
	[NOVA] [bit] NOT NULL,
	[KROMA] [bit] NOT NULL,
	[GUARD] [bit] NOT NULL,
 CONSTRAINT [PK_REF_TESLIMSEKLI] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIPARIS]    Script Date: 12.9.2014 22:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[SIPARIS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SIPARISNO] [varchar](50) NULL,
	[SIPARISTARIH] [datetime] NULL,
	[BAYIADI] [varchar](50) NULL,
	[MUSTERIAD] [varchar](100) NULL,
	[MUSTERISOYAD] [varchar](100) NULL,
	[MUSTERIADRES] [varchar](500) NULL,
	[MUSTERIIL] [varchar](50) NULL,
	[MUSTERIILCE] [varchar](50) NULL,
	[MUSTERIEVTEL] [varchar](50) NULL,
	[MUSTERIISTEL] [varchar](50) NULL,
	[MUSTERICEPTEL] [varchar](50) NULL,
	[ICKAPIMODEL] [varchar](50) NULL,
	[DISKAPIMODEL] [varchar](50) NULL,
	[DISKAPIRENK] [varchar](50) NULL,
	[ICKAPIRENK] [varchar](50) NULL,
	[KILITSISTEM] [varchar](50) NULL,
	[CITA] [varchar](50) NULL,
	[ESIK] [varchar](50) NULL,
	[ALUMINYUMRENK] [varchar](50) NULL,
	[AKSESUARRENK] [varchar](50) NULL,
	[CONTARENK] [varchar](50) NULL,
	[TACTIP] [varchar](50) NULL,
	[PERVAZTIP] [varchar](50) NULL,
	[CEKMEKOLU] [varchar](50) NULL,
	[KAPINO] [varchar](50) NULL,
	[BARELTIP] [varchar](50) NULL,
	[BABA] [varchar](50) NULL,
	[DURBUN] [varchar](50) NULL,
	[TAKTAK] [varchar](50) NULL,
	[MONTAJDATAKILACAK] [varchar](50) NULL,
	[OLCUMBILGI] [varchar](50) NULL,
	[OLCUMTARIH] [date] NULL,
	[OLCUMALANKISI] [varchar](50) NULL,
	[MONTAJSEKLI] [varchar](50) NULL,
	[TESLIMSEKLI] [varchar](50) NULL,
	[PESINAT] [varchar](50) NULL,
	[KALANODEME] [varchar](50) NULL,
	[FIYAT] [varchar](50) NULL,
	[VERGIDAIRESI] [varchar](50) NULL,
	[VERGINUMARASI] [varchar](50) NULL,
 CONSTRAINT [PK_SIPARIS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIPARISNOSAYAC]    Script Date: 12.9.2014 22:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SIPARISNOSAYAC](
	[YIL] [int] NOT NULL,
	[KAPITUR] [varchar](5) NOT NULL,
	[SIRANO] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[HATA] ON 

GO
INSERT [dbo].[HATA] ([ID], [MODULEID], [EVENTLOGENTRYTYPEID], [EXCEPTION], [PAGEURL], [METHODNAME], [MESSAGE], [USERIDENTITY], [PCNAME], [USERAUTHORITY], [EXTENDEDPROPERTIES], [USERNAME], [DATE]) VALUES (14, 2, 1, N'Hata Mesajý : Boþ string deðer verilemez.
Parameter name: ssql
Metod Adý : Int32 ExecuteStatement(System.String)
Modül Adý : WebFrame.DataAccess.dll
Stack trace :    at WebFrame.DataAccess.SqlData.ExecuteStatement(String ssql) in c:\Users\Administrator\Desktop\GitHub\ACKSiparisTakip\WebFrame\WebFrame.DataAccess\SqlData.cs:line 185
   at ACKSiparisTakip.Business.ACKBusiness.MontajBS.MontajGuncelle(String montajID, DateTime teslimTarihi, List`1 personelListesi) in c:\Users\Administrator\Desktop\GitHub\ACKSiparisTakip\ACKSiparsTakip.Business\ACKBusiness\MontajBS.cs:line 80
', N'ServerSide', N'MontajGuncelle', N'', N'', N'', N'', N'', NULL, CAST(0x0000A39F01151D4F AS DateTime))
GO
INSERT [dbo].[HATA] ([ID], [MODULEID], [EVENTLOGENTRYTYPEID], [EXCEPTION], [PAGEURL], [METHODNAME], [MESSAGE], [USERIDENTITY], [PCNAME], [USERAUTHORITY], [EXTENDEDPROPERTIES], [USERNAME], [DATE]) VALUES (15, 2, 1, N'Hata Mesajý : Boþ string deðer verilemez.
Parameter name: ssql
Metod Adý : Int32 ExecuteStatement(System.String)
Modül Adý : WebFrame.DataAccess.dll
Stack trace :    at WebFrame.DataAccess.SqlData.ExecuteStatement(String ssql) in c:\Users\Administrator\Desktop\GitHub\ACKSiparisTakip\WebFrame\WebFrame.DataAccess\SqlData.cs:line 185
   at ACKSiparisTakip.Business.ACKBusiness.MontajBS.MontajGuncelle(String montajID, DateTime teslimTarihi, List`1 personelListesi) in c:\Users\Administrator\Desktop\GitHub\ACKSiparisTakip\ACKSiparsTakip.Business\ACKBusiness\MontajBS.cs:line 80
', N'ServerSide', N'MontajGuncelle', N'', N'', N'', N'', N'', NULL, CAST(0x0000A39F01153104 AS DateTime))
GO
INSERT [dbo].[HATA] ([ID], [MODULEID], [EVENTLOGENTRYTYPEID], [EXCEPTION], [PAGEURL], [METHODNAME], [MESSAGE], [USERIDENTITY], [PCNAME], [USERAUTHORITY], [EXTENDEDPROPERTIES], [USERNAME], [DATE]) VALUES (25, 0, 1, N'Hata Mesajý : Exception of type ''System.Web.HttpUnhandledException'' was thrown.
Metod Adý : Boolean HandleError(System.Exception)
Modül Adý : System.Web.dll
InnerException Hata Mesajý : Incorrect syntax near '')''.
InnerException Metod Adý : Void OnError(System.Data.SqlClient.SqlException, Boolean, System.Action`1[System.Action])
InnerException Modül Adý : System.Data.dll
HelpLink.ProdName : Microsoft SQL Server
HelpLink.ProdVer : 11.00.3000
HelpLink.EvtSrc : MSSQLServer
HelpLink.EvtID : 102
HelpLink.BaseHelpUrl : http://go.microsoft.com/fwlink
HelpLink.LinkId : 20476
InnerException Stack trace :    at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlDataReader.TryConsumeMetaData()
   at System.Data.SqlClient.SqlDataReader.get_MetaData()
   at System.Data.SqlClient.SqlCommand.FinishExecuteReader(SqlDataReader ds, RunBehavior runBehavior, String resetOptionsString)
   at System.Data.SqlClient.SqlCommand.RunExecuteReaderTds(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, Boolean async, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior, String method)
   at System.Data.SqlClient.SqlCommand.ExecuteDbDataReader(CommandBehavior behavior)
   at System.Data.Common.DbCommand.System.Data.IDbCommand.ExecuteReader(CommandBehavior behavior)
   at System.Data.Common.DbDataAdapter.FillInternal(DataSet dataset, DataTable[] datatables, Int32 startRecord, Int32 maxRecords, String srcTable, IDbCommand command, CommandBehavior behavior)
   at System.Data.Common.DbDataAdapter.Fill(DataTable[] dataTables, Int32 startRecord, Int32 maxRecords, IDbCommand command, CommandBehavior behavior)
   at System.Data.Common.DbDataAdapter.Fill(DataTable dataTable)
   at WebFrame.DataAccess.SqlData.GetRecords(DataTable dt, String ssql, CommandType commandType) in c:\Users\Administrator\Desktop\GitHub\ACKSiparisTakip\WebFrame\WebFrame.DataAccess\SqlData.cs:line 495
   at WebFrame.DataAccess.SqlData.GetRecords(DataTable dt, String ssql) in c:\Users\Administrator\Desktop\GitHub\ACKSiparisTakip\WebFrame\WebFrame.DataAccess\SqlData.cs:line 415
   at ACKSiparisTakip.Business.ACKBusiness.SiparisIslemleriBS.SiparisSorgula(Dictionary`2 prms) in c:\Users\Administrator\Desktop\GitHub\ACKSiparisTakip\ACKSiparsTakip.Business\ACKBusiness\SiparisIslemleriBS.cs:line 524
   at ACKSiparisTakip.Web.SiparisSorgula.btnSorgula_Click(Object sender, EventArgs e) in c:\Users\Administrator\Desktop\GitHub\ACKSiparisTakip\ACKSiparisTakip.Client\ACKSiparisTakip.Web\SiparisSorgula.aspx.cs:line 222
   at Telerik.Web.UI.RadButton.OnClick(ButtonClickEventArgs e)
   at Telerik.Web.UI.RadButton.RaisePostBackEvent(String eventArgument)
   at Telerik.Web.UI.RadButton.System.Web.UI.IPostBackEventHandler.RaisePostBackEvent(String eventArgument)
   at System.Web.UI.Page.RaisePostBackEvent(IPostBackEventHandler sourceControl, String eventArgument)
   at System.Web.UI.Page.RaisePostBackEvent(NameValueCollection postData)
   at System.Web.UI.Page.ProcessRequestMain(Boolean includeStagesBeforeAsyncPoint, Boolean includeStagesAfterAsyncPoint)
Stack trace :    at System.Web.UI.Page.HandleError(Exception e)
   at System.Web.UI.Page.ProcessRequestMain(Boolean includeStagesBeforeAsyncPoint, Boolean includeStagesAfterAsyncPoint)
   at System.Web.UI.Page.ProcessRequest(Boolean includeStagesBeforeAsyncPoint, Boolean includeStagesAfterAsyncPoint)
   at System.Web.UI.Page.ProcessRequest()
   at System.Web.UI.Page.ProcessRequestWithNoAssert(HttpContext context)
   at System.Web.UI.Page.ProcessRequest(HttpContext context)
   at ASP.siparissorgula_aspx.ProcessRequest(HttpContext context) in c:\Windows\Microsoft.NET\Framework\v4.0.30319\Temporary ASP.NET Files\root\0c97eea9\b94be3f2\App_Web_fdsbqeju.7.cs:line 0
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
', N'', N'', N'', N'', N'', N'', N'', NULL, CAST(0x0000A39F01851E0F AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[HATA] OFF
GO
INSERT [dbo].[KULLANICIBILGI] ([KULLANICIADI], [SIFRE], [YETKI]) VALUES (N'nejla', N'12345', N'admin')
GO
INSERT [dbo].[KULLANICIBILGI] ([KULLANICIADI], [SIFRE], [YETKI]) VALUES (N'derin', N'12345', N'yonetici')
GO
INSERT [dbo].[KULLANICIBILGI] ([KULLANICIADI], [SIFRE], [YETKI]) VALUES (N'ibo', N'12345', N'kullanici')
GO
INSERT [dbo].[KULLANICIBILGI] ([KULLANICIADI], [SIFRE], [YETKI]) VALUES (N'nejla', N'54321', N'yonetici')
GO
INSERT [dbo].[KULLANICIBILGI] ([KULLANICIADI], [SIFRE], [YETKI]) VALUES (N'derin', N'12345', N'yonetici')
GO
INSERT [dbo].[KULLANICIBILGI] ([KULLANICIADI], [SIFRE], [YETKI]) VALUES (N'ibo', N'12345', N'kullanici')
GO
INSERT [dbo].[KULLANICIBILGI] ([KULLANICIADI], [SIFRE], [YETKI]) VALUES (N'nejla', N'54321', N'yonetici')
GO
INSERT [dbo].[KULLANICIBILGI] ([KULLANICIADI], [SIFRE], [YETKI]) VALUES (N'derin', N'12345', N'yonetici')
GO
INSERT [dbo].[KULLANICIBILGI] ([KULLANICIADI], [SIFRE], [YETKI]) VALUES (N'ibo', N'12345', N'kullanici')
GO
INSERT [dbo].[KULLANICIBILGI] ([KULLANICIADI], [SIFRE], [YETKI]) VALUES (N'nejla', N'54321', N'yonetici')
GO
SET IDENTITY_INSERT [dbo].[MONTAJ] ON 

GO
INSERT [dbo].[MONTAJ] ([ID], [SIPARISNO], [TESLIMTARIH], [PERSONELLISTEID], [DURUM]) VALUES (2, N'N-2', CAST(0x0000A39E00000000 AS DateTime), NULL, N'A')
GO
INSERT [dbo].[MONTAJ] ([ID], [SIPARISNO], [TESLIMTARIH], [PERSONELLISTEID], [DURUM]) VALUES (3, N'N-3', CAST(0x0000A39C00000000 AS DateTime), NULL, N'A')
GO
INSERT [dbo].[MONTAJ] ([ID], [SIPARISNO], [TESLIMTARIH], [PERSONELLISTEID], [DURUM]) VALUES (4, N'N-4', CAST(0x0000A3AA00000000 AS DateTime), NULL, N'A')
GO
INSERT [dbo].[MONTAJ] ([ID], [SIPARISNO], [TESLIMTARIH], [PERSONELLISTEID], [DURUM]) VALUES (5, N'N-5', CAST(0x0000A3A000000000 AS DateTime), NULL, N'K')
GO
INSERT [dbo].[MONTAJ] ([ID], [SIPARISNO], [TESLIMTARIH], [PERSONELLISTEID], [DURUM]) VALUES (6, N'N-6', CAST(0x0000A3A300000000 AS DateTime), NULL, N'A')
GO
INSERT [dbo].[MONTAJ] ([ID], [SIPARISNO], [TESLIMTARIH], [PERSONELLISTEID], [DURUM]) VALUES (7, N'N-7', CAST(0x0000A3A900000000 AS DateTime), NULL, N'K')
GO
INSERT [dbo].[MONTAJ] ([ID], [SIPARISNO], [TESLIMTARIH], [PERSONELLISTEID], [DURUM]) VALUES (2, N'N-2', CAST(0x0000A39300000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MONTAJ] ([ID], [SIPARISNO], [TESLIMTARIH], [PERSONELLISTEID], [DURUM]) VALUES (3, N'N-3', CAST(0x0000A39200000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MONTAJ] ([ID], [SIPARISNO], [TESLIMTARIH], [PERSONELLISTEID], [DURUM]) VALUES (4, N'N-4', CAST(0x0000A39200000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MONTAJ] ([ID], [SIPARISNO], [TESLIMTARIH], [PERSONELLISTEID], [DURUM]) VALUES (5, N'N-5', CAST(0x0000A39200000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MONTAJ] ([ID], [SIPARISNO], [TESLIMTARIH], [PERSONELLISTEID], [DURUM]) VALUES (6, N'N-6', CAST(0x0000A39400000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MONTAJ] ([ID], [SIPARISNO], [TESLIMTARIH], [PERSONELLISTEID], [DURUM]) VALUES (8, N'N-8', CAST(0x0000A3B800000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MONTAJ] ([ID], [SIPARISNO], [TESLIMTARIH], [PERSONELLISTEID], [DURUM]) VALUES (9, N'N-9', CAST(0x0000A3B700000000 AS DateTime), NULL, N'A')
GO
INSERT [dbo].[MONTAJ] ([ID], [SIPARISNO], [TESLIMTARIH], [PERSONELLISTEID], [DURUM]) VALUES (10, N'N-10', CAST(0x0000A3B600000000 AS DateTime), NULL, N'A')
GO
INSERT [dbo].[MONTAJ] ([ID], [SIPARISNO], [TESLIMTARIH], [PERSONELLISTEID], [DURUM]) VALUES (11, N'N-11', CAST(0x0000A3AF00000000 AS DateTime), NULL, N'A')
GO
INSERT [dbo].[MONTAJ] ([ID], [SIPARISNO], [TESLIMTARIH], [PERSONELLISTEID], [DURUM]) VALUES (12, N'N-12', CAST(0x0000A3B600000000 AS DateTime), NULL, N'A')
GO
INSERT [dbo].[MONTAJ] ([ID], [SIPARISNO], [TESLIMTARIH], [PERSONELLISTEID], [DURUM]) VALUES (13, N'N-13', CAST(0x0000A3B800000000 AS DateTime), NULL, N'A')
GO
INSERT [dbo].[MONTAJ] ([ID], [SIPARISNO], [TESLIMTARIH], [PERSONELLISTEID], [DURUM]) VALUES (14, N'N-14', CAST(0x0000A3B800000000 AS DateTime), NULL, N'A')
GO
INSERT [dbo].[MONTAJ] ([ID], [SIPARISNO], [TESLIMTARIH], [PERSONELLISTEID], [DURUM]) VALUES (15, N'N-15', CAST(0x0000A3B600000000 AS DateTime), NULL, N'A')
GO
INSERT [dbo].[MONTAJ] ([ID], [SIPARISNO], [TESLIMTARIH], [PERSONELLISTEID], [DURUM]) VALUES (16, N'K-1', CAST(0x0000A3B500000000 AS DateTime), NULL, N'A')
GO
INSERT [dbo].[MONTAJ] ([ID], [SIPARISNO], [TESLIMTARIH], [PERSONELLISTEID], [DURUM]) VALUES (17, N'N-16', CAST(0x0000A3B600000000 AS DateTime), NULL, N'A')
GO
INSERT [dbo].[MONTAJ] ([ID], [SIPARISNO], [TESLIMTARIH], [PERSONELLISTEID], [DURUM]) VALUES (18, N'N-17', CAST(0x0000A3A700000000 AS DateTime), NULL, N'A')
GO
INSERT [dbo].[MONTAJ] ([ID], [SIPARISNO], [TESLIMTARIH], [PERSONELLISTEID], [DURUM]) VALUES (19, N'N-18', CAST(0x0000A3AF00000000 AS DateTime), NULL, N'A')
GO
INSERT [dbo].[MONTAJ] ([ID], [SIPARISNO], [TESLIMTARIH], [PERSONELLISTEID], [DURUM]) VALUES (20, N'N-19', CAST(0x0000A3B500000000 AS DateTime), NULL, N'A')
GO
INSERT [dbo].[MONTAJ] ([ID], [SIPARISNO], [TESLIMTARIH], [PERSONELLISTEID], [DURUM]) VALUES (21, N'N-20', CAST(0x0000A3B500000000 AS DateTime), NULL, N'A')
GO
INSERT [dbo].[MONTAJ] ([ID], [SIPARISNO], [TESLIMTARIH], [PERSONELLISTEID], [DURUM]) VALUES (22, N'N-21', CAST(0x0000A3B600000000 AS DateTime), NULL, N'A')
GO
INSERT [dbo].[MONTAJ] ([ID], [SIPARISNO], [TESLIMTARIH], [PERSONELLISTEID], [DURUM]) VALUES (23, N'K-2', CAST(0x0000A3B100000000 AS DateTime), NULL, N'A')
GO
INSERT [dbo].[MONTAJ] ([ID], [SIPARISNO], [TESLIMTARIH], [PERSONELLISTEID], [DURUM]) VALUES (24, N'N-22', CAST(0x0000A3B500000000 AS DateTime), NULL, N'A')
GO
INSERT [dbo].[MONTAJ] ([ID], [SIPARISNO], [TESLIMTARIH], [PERSONELLISTEID], [DURUM]) VALUES (7, N'N-7', CAST(0x0000A39300000000 AS DateTime), NULL, NULL)
GO
INSERT [dbo].[MONTAJ] ([ID], [SIPARISNO], [TESLIMTARIH], [PERSONELLISTEID], [DURUM]) VALUES (25, N'N-23', CAST(0x0000A3B800000000 AS DateTime), NULL, N'A')
GO
INSERT [dbo].[MONTAJ] ([ID], [SIPARISNO], [TESLIMTARIH], [PERSONELLISTEID], [DURUM]) VALUES (26, N'N-24', CAST(0x0000A3B800000000 AS DateTime), NULL, N'A')
GO
SET IDENTITY_INSERT [dbo].[MONTAJ] OFF
GO
SET IDENTITY_INSERT [dbo].[MONTAJ_PERSONEL] ON 

GO
INSERT [dbo].[MONTAJ_PERSONEL] ([ID], [MONTAJID], [PERSONELID]) VALUES (1, 2, 4)
GO
INSERT [dbo].[MONTAJ_PERSONEL] ([ID], [MONTAJID], [PERSONELID]) VALUES (2, 2, 5)
GO
INSERT [dbo].[MONTAJ_PERSONEL] ([ID], [MONTAJID], [PERSONELID]) VALUES (3, 2, 6)
GO
INSERT [dbo].[MONTAJ_PERSONEL] ([ID], [MONTAJID], [PERSONELID]) VALUES (4, 2, 7)
GO
INSERT [dbo].[MONTAJ_PERSONEL] ([ID], [MONTAJID], [PERSONELID]) VALUES (5, 3, 4)
GO
INSERT [dbo].[MONTAJ_PERSONEL] ([ID], [MONTAJID], [PERSONELID]) VALUES (6, 3, 5)
GO
INSERT [dbo].[MONTAJ_PERSONEL] ([ID], [MONTAJID], [PERSONELID]) VALUES (14, 4, 8)
GO
INSERT [dbo].[MONTAJ_PERSONEL] ([ID], [MONTAJID], [PERSONELID]) VALUES (15, 4, 9)
GO
INSERT [dbo].[MONTAJ_PERSONEL] ([ID], [MONTAJID], [PERSONELID]) VALUES (19, 5, 5)
GO
INSERT [dbo].[MONTAJ_PERSONEL] ([ID], [MONTAJID], [PERSONELID]) VALUES (20, 5, 8)
GO
INSERT [dbo].[MONTAJ_PERSONEL] ([ID], [MONTAJID], [PERSONELID]) VALUES (21, 5, 9)
GO
INSERT [dbo].[MONTAJ_PERSONEL] ([ID], [MONTAJID], [PERSONELID]) VALUES (22, 7, 4)
GO
INSERT [dbo].[MONTAJ_PERSONEL] ([ID], [MONTAJID], [PERSONELID]) VALUES (23, 7, 5)
GO
INSERT [dbo].[MONTAJ_PERSONEL] ([ID], [MONTAJID], [PERSONELID]) VALUES (24, 7, 7)
GO
SET IDENTITY_INSERT [dbo].[MONTAJ_PERSONEL] OFF
GO
SET IDENTITY_INSERT [dbo].[PERSONELBILGI] ON 

GO
INSERT [dbo].[PERSONELBILGI] ([ID], [AD], [SOYAD]) VALUES (4, N'IBRAHIM                                           ', N'OGUZ                                                                                                ')
GO
INSERT [dbo].[PERSONELBILGI] ([ID], [AD], [SOYAD]) VALUES (5, N'NEJLA                                             ', N'GÜNER                                                                                               ')
GO
INSERT [dbo].[PERSONELBILGI] ([ID], [AD], [SOYAD]) VALUES (6, N'DERIN                                             ', N'GEÇMEZ                                                                                              ')
GO
INSERT [dbo].[PERSONELBILGI] ([ID], [AD], [SOYAD]) VALUES (7, N'ALI                                               ', N'USTA                                                                                                ')
GO
INSERT [dbo].[PERSONELBILGI] ([ID], [AD], [SOYAD]) VALUES (8, N'HATICE                                            ', N'OGUZ                                                                                                ')
GO
INSERT [dbo].[PERSONELBILGI] ([ID], [AD], [SOYAD]) VALUES (9, N'SARE                                              ', N'GÜNER                                                                                               ')
GO
SET IDENTITY_INSERT [dbo].[PERSONELBILGI] OFF
GO
SET IDENTITY_INSERT [dbo].[REF_AKSESUARRENK] ON 

GO
INSERT [dbo].[REF_AKSESUARRENK] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (1, N'Saten', 1, 1, 1)
GO
INSERT [dbo].[REF_AKSESUARRENK] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (2, N'Pirinç', 1, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[REF_AKSESUARRENK] OFF
GO
SET IDENTITY_INSERT [dbo].[REF_ALUMINYUMRENK] ON 

GO
INSERT [dbo].[REF_ALUMINYUMRENK] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (1, N'GRI', 0, 0, 1)
GO
INSERT [dbo].[REF_ALUMINYUMRENK] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (2, N'SIYAH', 0, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[REF_ALUMINYUMRENK] OFF
GO
SET IDENTITY_INSERT [dbo].[REF_CITA] ON 

GO
INSERT [dbo].[REF_CITA] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (1, N'Yok', 1, 1, 0)
GO
INSERT [dbo].[REF_CITA] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (3, N'H-Eloksal', 1, 1, 0)
GO
INSERT [dbo].[REF_CITA] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (4, N'H-Siyah', 1, 1, 0)
GO
INSERT [dbo].[REF_CITA] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (5, N'Ince Alüminyum', 1, 1, 0)
GO
INSERT [dbo].[REF_CITA] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (6, N'Kalin Alüminyum', 1, 1, 0)
GO
INSERT [dbo].[REF_CITA] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (7, N'Ince Pirinç', 1, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[REF_CITA] OFF
GO
SET IDENTITY_INSERT [dbo].[REF_CONTARENK] ON 

GO
INSERT [dbo].[REF_CONTARENK] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (1, N'SIYAH', 0, 0, 1)
GO
INSERT [dbo].[REF_CONTARENK] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (2, N'GRI', 0, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[REF_CONTARENK] OFF
GO
SET IDENTITY_INSERT [dbo].[REF_ESIK] ON 

GO
INSERT [dbo].[REF_ESIK] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (1, N'Harmankaya', 1, 1, 1)
GO
INSERT [dbo].[REF_ESIK] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (2, N'Carmen Red', 1, 1, 1)
GO
INSERT [dbo].[REF_ESIK] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (3, N'Siyah', 1, 1, 1)
GO
INSERT [dbo].[REF_ESIK] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (4, N'Yok', 1, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[REF_ESIK] OFF
GO
SET IDENTITY_INSERT [dbo].[REF_ILCELER] ON 

GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (1, N'ABANA', N'37', N'KASTAMONU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (2, N'ACIGÖL', N'50', N'NEVSEHIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (3, N'ACIPAYAM', N'20', N'DENIZLI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (4, N'ADAKLI', N'12', N'BINGÖL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (5, N'ADALAR', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (6, N'ADAPAZARI', N'54', N'SAKARYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (7, N'MERKEZ', N'2', N'ADIYAMAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (8, N'ADILCEVAZ', N'13', N'BITLIS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (9, N'AFSIN', N'46', N'KAHRAMANMARAS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (10, N'MERKEZ', N'3', N'AFYON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (11, N'AGAÇÖREN', N'68', N'AKSARAY')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (12, N'AGIN', N'23', N'ELAZIG')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (13, N'AGLASUN', N'15', N'BURDUR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (14, N'AGLI', N'37', N'KASTAMONU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (15, N'AGRI MERKEZ', N'4', N'AGRI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (16, N'AHIRLI', N'42', N'KONYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (17, N'AHLAT', N'13', N'BITLIS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (18, N'AHMETLI', N'45', N'MANISA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (19, N'AKÇAABAT', N'61', N'TRABZON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (20, N'AKÇADAG', N'44', N'MALATYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (21, N'AKÇAKALE', N'63', N'SANLIURFA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (22, N'AKÇAKENT', N'40', N'KIRSEHIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (23, N'AKÇAKOCA', N'81', N'DÜZCE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (24, N'AKDAGMADENI', N'66', N'YOZGAT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (25, N'AKDENIZ', N'33', N'MERSIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (26, N'AKHISAR', N'45', N'MANISA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (27, N'AKINCILAR', N'58', N'SIVAS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (28, N'AKKISLA', N'38', N'KAYSERI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (29, N'AKKÖY', N'20', N'DENIZLI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (30, N'AKKUS', N'52', N'ORDU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (31, N'AKÖREN', N'42', N'KONYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (32, N'AKPINAR', N'40', N'KIRSEHIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (33, N'MERKEZ', N'68', N'AKSARAY')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (34, N'AKSEKI', N'7', N'ANTALYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (35, N'AKSU', N'7', N'ANTALYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (36, N'AKSU', N'32', N'ISPARTA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (37, N'AKSEHIR', N'42', N'KONYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (38, N'AKYAKA', N'36', N'KARS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (39, N'AKYAZI', N'54', N'SAKARYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (40, N'AKYURT', N'6', N'ANKARA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (41, N'ALACA', N'19', N'ÇORUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (42, N'ALACAKAYA', N'23', N'ELAZIG')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (43, N'ALAÇAM', N'55', N'SAMSUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (44, N'ALADAG', N'1', N'ADANA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (45, N'ALANYA', N'7', N'ANTALYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (46, N'ALAPLI', N'67', N'ZONGULDAK')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (47, N'ALASEHIR', N'45', N'MANISA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (48, N'ALIAGA', N'35', N'IZMIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (49, N'ALMUS', N'60', N'TOKAT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (50, N'ALPU', N'26', N'ESKISEHIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (51, N'ALTINDAG', N'6', N'ANKARA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (52, N'ALTINEKIN', N'42', N'KONYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (53, N'ALTINOVA', N'77', N'YALOVA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (54, N'ALTINÖZÜ', N'31', N'HATAY')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (55, N'ALTINTAS', N'43', N'KÜTAHYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (56, N'ALTINYAYLA', N'15', N'BURDUR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (57, N'ALTINYAYLA', N'58', N'SIVAS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (58, N'ALTUNHISAR', N'51', N'NIGDE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (59, N'ALUCRA', N'28', N'GIRESUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (60, N'AMASRA', N'74', N'BARTIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (61, N'MERKEZ', N'5', N'AMASYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (62, N'ANAMUR', N'33', N'MERSIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (63, N'ANDIRIN', N'46', N'KAHRAMANMARAS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (64, N'MERKEZ', N'7', N'ANTALYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (65, N'ARABAN', N'27', N'GAZIANTEP')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (66, N'ARAÇ', N'37', N'KASTAMONU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (67, N'ARAKLI', N'61', N'TRABZON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (68, N'ARALIK', N'76', N'IGDIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (69, N'ARAPGIR', N'44', N'MALATYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (70, N'MERKEZ', N'75', N'ARDAHAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (71, N'ARDANUÇ', N'8', N'ARTVIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (72, N'ARDESEN', N'53', N'RIZE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (73, N'ARGUVAN', N'44', N'MALATYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (74, N'ARHAVI', N'8', N'ARTVIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (75, N'ARICAK', N'23', N'ELAZIG')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (76, N'ARIFIYE', N'54', N'SAKARYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (77, N'ARMUTLU', N'77', N'YALOVA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (78, N'ARNAVUTKÖY', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (79, N'ARPAÇAY', N'36', N'KARS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (80, N'ARSIN', N'61', N'TRABZON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (81, N'ARTOVA', N'60', N'TOKAT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (82, N'MERKEZ', N'8', N'ARTVIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (83, N'ASARCIK', N'55', N'SAMSUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (84, N'ASLANAPA', N'43', N'KÜTAHYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (85, N'ASKALE', N'25', N'ERZURUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (86, N'ATABEY', N'32', N'ISPARTA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (87, N'ATAKUM', N'55', N'SAMSUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (88, N'ATASEHIR', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (89, N'ATKARACALAR', N'18', N'ÇANKIRI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (90, N'AVANOS', N'50', N'NEVSEHIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (91, N'AVCILAR', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (92, N'AYANCIK', N'57', N'SINOP')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (93, N'AYAS', N'6', N'ANKARA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (94, N'AYBASTI', N'52', N'ORDU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (95, N'MERKEZ', N'9', N'AYDIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (96, N'AYDINCIK', N'33', N'MERSIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (97, N'AYDINCIK', N'66', N'YOZGAT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (98, N'AYDINLAR', N'56', N'SIIRT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (99, N'AYDINTEPE', N'69', N'BAYBURT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (100, N'AYRANCI', N'70', N'KARAMAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (101, N'AYVACIK', N'17', N'ÇANAKKALE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (102, N'AYVACIK', N'55', N'SAMSUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (103, N'AYVALIK', N'10', N'BALIKESIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (104, N'AZDAVAY', N'37', N'KASTAMONU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (105, N'AZIZIYE', N'25', N'ERZURUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (106, N'BABADAG', N'20', N'DENIZLI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (107, N'BABAESKI', N'39', N'KIRKLARELI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (108, N'BAFRA', N'55', N'SAMSUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (109, N'BAGCILAR', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (110, N'BAGLAR', N'21', N'DIYARBAKIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (111, N'BAHÇE', N'80', N'OSMANIYE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (112, N'BAHÇELIEVLER', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (113, N'BAHÇESARAY', N'65', N'VAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (114, N'BAHSILI', N'71', N'KIRIKKALE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (115, N'BAKIRKÖY', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (116, N'BAKLAN', N'20', N'DENIZLI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (117, N'BALA', N'6', N'ANKARA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (118, N'BALÇOVA', N'35', N'IZMIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (119, N'MERKEZ', N'10', N'BALIKESIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (120, N'BALISEYH', N'71', N'KIRIKKALE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (121, N'BALYA', N'10', N'BALIKESIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (122, N'BANAZ', N'64', N'USAK')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (123, N'BANDIRMA', N'10', N'BALIKESIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (124, N'MERKEZ', N'74', N'BARTIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (125, N'BASKIL', N'23', N'ELAZIG')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (126, N'BASAKSEHIR', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (127, N'BASÇIFTLIK', N'60', N'TOKAT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (128, N'BASISKELE', N'41', N'KOCAELI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (129, N'BASKALE', N'65', N'VAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (130, N'BASMAKÇI', N'3', N'AFYON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (131, N'BASYAYLA', N'70', N'KARAMAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (132, N'MERKEZ', N'72', N'BATMAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (133, N'BATTALGAZI', N'44', N'MALATYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (134, N'BAYAT ', N'3', N'AFYON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (135, N'BAYAT ', N'19', N'ÇORUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (136, N' MERKEZ', N'69', N'BAYBURT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (137, N'BAYINDIR', N'35', N'IZMIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (138, N'BAYKAN', N'56', N'SIIRT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (139, N'BAYRAKLI', N'35', N'IZMIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (140, N'BAYRAMIÇ', N'17', N'ÇANAKKALE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (141, N'BAYRAMÖREN', N'18', N'ÇANKIRI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (142, N'BAYRAMPASA', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (143, N'BEKILLI', N'20', N'DENIZLI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (144, N'BELEN', N'31', N'HATAY')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (145, N'BERGAMA', N'35', N'IZMIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (146, N'BESNI', N'2', N'ADIYAMAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (147, N'BESIKDÜZÜ', N'61', N'TRABZON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (148, N'BESIKTAS', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (149, N'BESIRI', N'72', N'BATMAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (150, N'BEYAGAÇ', N'20', N'DENIZLI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (151, N'BEYDAG', N'35', N'IZMIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (152, N'BEYKOZ', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (153, N'BEYLIKDÜZÜ', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (154, N'BEYLIKOVA', N'26', N'ESKISEHIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (155, N'BEYOGLU', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (156, N'BEYPAZARI', N'6', N'ANKARA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (157, N'BEYSEHIR', N'42', N'KONYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (158, N'BEYTÜSSEBAP', N'73', N'SIRNAK')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (159, N'BIGA', N'17', N'ÇANAKKALE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (160, N'BIGADIÇ', N'10', N'BALIKESIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (161, N' MERKEZ', N'11', N'BILECIK')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (162, N'MERKEZ', N'12', N'BINGÖL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (163, N'BIRECIK', N'63', N'SANLIURFA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (164, N'BISMIL', N'21', N'DIYARBAKIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (165, N'MERKEZ', N'13', N'BITLIS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (166, N'BODRUM', N'48', N'MUGLA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (167, N'BOGAZKALE', N'19', N'ÇORUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (168, N'BOGAZLIYAN', N'66', N'YOZGAT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (169, N'MERKEZ', N'14', N'BOLU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (170, N'BOLVADIN', N'3', N'AFYON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (171, N'BOR', N'51', N'NIGDE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (172, N'BORÇKA', N'8', N'ARTVIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (173, N'BORNOVA', N'35', N'IZMIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (174, N'BOYABAT', N'57', N'SINOP')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (175, N'BOZCAADA', N'17', N'ÇANAKKALE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (176, N'BOZDOGAN', N'9', N'AYDIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (177, N'BOZKIR', N'42', N'KONYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (178, N'BOZKURT ', N'20', N'DENIZLI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (179, N'BOZKURT', N'37', N'KASTAMONU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (180, N'BOZOVA', N'63', N'SANLIURFA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (181, N'BOZTEPE', N'40', N'KIRSEHIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (182, N'BOZÜYÜK', N'11', N'BILECIK')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (183, N'BOZYAZI', N'33', N'MERSIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (184, N'BUCA', N'35', N'IZMIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (185, N'BUCAK', N'15', N'BURDUR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (186, N'BUHARKENT', N'9', N'AYDIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (187, N'BULANCAK', N'28', N'GIRESUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (188, N'BULANIK', N'49', N'MUS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (189, N'BULDAN', N'20', N'DENIZLI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (190, N'MERKEZ', N'15', N'BURDUR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (191, N'BURHANIYE', N'10', N'BALIKESIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (192, N'BÜNYAN', N'38', N'KAYSERI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (193, N'BÜYÜKÇEKMECE', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (194, N'BÜYÜKORHAN', N'16', N'BURSA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (195, N'CANIK', N'55', N'SAMSUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (196, N'CEYHAN', N'1', N'ADANA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (197, N'CEYLANPINAR', N'63', N'SANLIURFA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (198, N'CIDE', N'37', N'KASTAMONU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (199, N'CIHANBEYLI', N'42', N'KONYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (200, N'CIZRE', N'73', N'SIRNAK')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (201, N'CUMAYERI', N'81', N'DÜZCE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (202, N'ÇAGLIYANCERIT', N'46', N'KAHRAMANMARAS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (203, N'ÇAL', N'20', N'DENIZLI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (204, N'ÇALDIRAN', N'65', N'VAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (205, N'ÇAMARDI', N'51', N'NIGDE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (206, N'ÇAMAS', N'52', N'ORDU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (207, N'ÇAMELI', N'20', N'DENIZLI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (208, N'ÇAMLIDERE', N'6', N'ANKARA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (209, N'ÇAMLIHEMSIN', N'53', N'RIZE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (210, N'ÇAMLIYAYLA', N'33', N'MERSIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (211, N'ÇAMOLUK', N'28', N'GIRESUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (212, N'ÇAN', N'17', N'ÇANAKKALE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (213, N'ÇANAKÇI', N'28', N'GIRESUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (214, N' MERKEZ', N'17', N'ÇANAKKALE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (215, N'ÇANDIR', N'66', N'YOZGAT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (216, N'ÇANKAYA', N'6', N'ANKARA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (217, N'ÇANKIRI MERKEZ', N'18', N'ÇANKIRI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (218, N'ÇARDAK', N'20', N'DENIZLI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (219, N'ÇARSAMBA', N'55', N'SAMSUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (220, N'ÇARSIBASI', N'61', N'TRABZON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (221, N'ÇAT', N'25', N'ERZURUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (222, N'ÇATAK', N'65', N'VAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (223, N'ÇATALCA', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (224, N'ÇATALPINAR', N'52', N'ORDU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (225, N'ÇATALZEYTIN', N'37', N'KASTAMONU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (226, N'ÇAVDARHISAR', N'43', N'KÜTAHYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (227, N'ÇAVDIR', N'15', N'BURDUR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (228, N'ÇAY', N'3', N'AFYON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (229, N'ÇAYBASI', N'52', N'ORDU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (230, N'ÇAYCUMA', N'67', N'ZONGULDAK')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (231, N'ÇAYELI', N'53', N'RIZE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (232, N'ÇAYIRALAN', N'66', N'YOZGAT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (233, N'ÇAYIRLI', N'24', N'ERZINCAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (234, N'ÇAYIROVA', N'41', N'KOCAELI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (235, N'ÇAYKARA', N'61', N'TRABZON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (236, N'ÇEKEREK', N'66', N'YOZGAT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (237, N'ÇEKMEKÖY', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (238, N'ÇELEBI', N'71', N'KIRIKKALE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (239, N'ÇELIKHAN', N'2', N'ADIYAMAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (240, N'ÇELTIK', N'42', N'KONYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (241, N'ÇELTIKÇI', N'15', N'BURDUR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (242, N'ÇEMISGEZEK', N'62', N'TUNCELI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (243, N'ÇERKES', N'18', N'ÇANKIRI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (244, N'ÇERKEZKÖY', N'59', N'TEKIRDAG')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (245, N'ÇERMIK', N'21', N'DIYARBAKIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (246, N'ÇESME', N'35', N'IZMIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (247, N'ÇILDIR', N'75', N'ARDAHAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (248, N'ÇINAR', N'21', N'DIYARBAKIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (249, N'ÇINARCIK', N'77', N'YALOVA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (250, N'ÇIÇEKDAGI', N'40', N'KIRSEHIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (251, N'ÇIFTELER', N'26', N'ESKISEHIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (252, N'ÇIFTLIK', N'51', N'NIGDE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (253, N'ÇIFTLIKKÖY', N'77', N'YALOVA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (254, N'ÇIGLI', N'35', N'IZMIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (255, N'ÇILIMLI', N'81', N'DÜZCE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (256, N'ÇINE', N'9', N'AYDIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (257, N'ÇIVRIL', N'20', N'DENIZLI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (258, N'ÇOBANLAR', N'3', N'AFYON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (259, N'ÇORLU', N'59', N'TEKIRDAG')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (260, N'ÇORUM MERKEZ', N'19', N'ÇORUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (261, N'ÇUBUK', N'6', N'ANKARA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (262, N'ÇUKURCA', N'30', N'HAKKARI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (263, N'ÇUKUROVA', N'1', N'ADANA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (264, N'ÇUMRA', N'42', N'KONYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (265, N'ÇÜNGÜS', N'21', N'DIYARBAKIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (266, N'DADAY', N'37', N'KASTAMONU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (267, N'DALAMAN', N'48', N'MUGLA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (268, N'DAMAL', N'75', N'ARDAHAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (269, N'DARENDE', N'44', N'MALATYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (270, N'DARGEÇIT', N'47', N'MARDIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (271, N'DARICA', N'41', N'KOCAELI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (272, N'DATÇA', N'48', N'MUGLA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (273, N'DAZKIRI', N'3', N'AFYON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (274, N'DELICE', N'71', N'KIRIKKALE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (275, N'DEMIRCI', N'45', N'MANISA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (276, N'DEMIRKÖY', N'39', N'KIRKLARELI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (277, N'DEMIRÖZÜ', N'69', N'BAYBURT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (278, N'DEMRE', N'7', N'ANTALYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (279, N'DENIZLI MERKEZ', N'20', N'DENIZLI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (280, N'DERBENT', N'42', N'KONYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (281, N'DEREBUCAK', N'42', N'KONYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (282, N'DERELI', N'28', N'GIRESUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (283, N'DEREPAZARI', N'53', N'RIZE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (284, N'DERIK', N'47', N'MARDIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (285, N'DERINCE', N'41', N'KOCAELI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (286, N'DERINKUYU', N'50', N'NEVSEHIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (287, N'DERNEKPAZARI', N'61', N'TRABZON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (288, N'DEVELI', N'38', N'KAYSERI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (289, N'DEVREK', N'67', N'ZONGULDAK')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (290, N'DEVREKANI', N'37', N'KASTAMONU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (291, N'DICLE', N'21', N'DIYARBAKIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (292, N'DIDIM', N'9', N'AYDIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (293, N'DIGOR', N'36', N'KARS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (294, N'DIKILI', N'35', N'IZMIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (295, N'DIKMEN', N'57', N'SINOP')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (296, N'DILOVASI', N'41', N'KOCAELI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (297, N'DINAR', N'3', N'AFYON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (298, N'DIVRIGI', N'58', N'SIVAS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (299, N'DIYADIN', N'4', N'AGRI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (300, N'MERKEZ', N'21', N'DIYARBAKIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (301, N'DODURGA', N'19', N'ÇORUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (302, N'DOGANHISAR', N'42', N'KONYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (303, N'DOGANKENT', N'28', N'GIRESUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (304, N'DOGANSAR', N'58', N'SIVAS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (305, N'DOGANSEHIR', N'44', N'MALATYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (306, N'DOGANYOL', N'44', N'MALATYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (307, N'DOGANYURT', N'37', N'KASTAMONU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (308, N'DOGUBAYAZIT', N'4', N'AGRI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (309, N'DOMANIÇ', N'43', N'KÜTAHYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (310, N'DÖRTDIVAN', N'14', N'BOLU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (311, N'DÖRTYOL', N'31', N'HATAY')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (312, N'DÖSEMEALTI', N'7', N'ANTALYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (313, N'DUMLUPINAR', N'43', N'KÜTAHYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (314, N'DURAGAN', N'57', N'SINOP')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (315, N'DURSUNBEY', N'10', N'BALIKESIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (316, N'DÜZCE MERKEZ', N'81', N'DÜZCE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (317, N'DÜZIÇI', N'80', N'OSMANIYE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (318, N'DÜZKÖY', N'61', N'TRABZON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (319, N'ECEABAT', N'17', N'ÇANAKKALE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (320, N'EDIRNE MERKEZ', N'22', N'EDIRNE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (321, N'EDREMIT ', N'10', N'BALIKESIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (322, N'EDREMIT', N'65', N'VAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (323, N'EFLANI', N'78', N'KARABÜK')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (324, N'EGIL', N'21', N'DIYARBAKIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (325, N'EGIRDIR', N'32', N'ISPARTA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (326, N'EKINÖZÜ', N'46', N'KAHRAMANMARAS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (327, N'ELAZIG MERKEZ', N'23', N'ELAZIG')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (328, N'ELBEYLI', N'79', N'KILIS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (329, N'ELBISTAN', N'46', N'KAHRAMANMARAS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (330, N'ELDIVAN', N'18', N'ÇANKIRI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (331, N'ELESKIRT', N'4', N'AGRI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (332, N'ELMADAG', N'6', N'ANKARA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (333, N'ELMALI', N'7', N'ANTALYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (334, N'EMET', N'43', N'KÜTAHYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (335, N'EMINÖNÜ', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (336, N'EMIRDAG', N'3', N'AFYON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (337, N'EMIRGAZI', N'42', N'KONYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (338, N'ENEZ', N'22', N'EDIRNE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (339, N'ERBAA', N'60', N'TOKAT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (340, N'ERCIS', N'65', N'VAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (341, N'ERDEK', N'10', N'BALIKESIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (342, N'ERDEMLI', N'33', N'MERSIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (343, N'EREGLI ', N'42', N'KONYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (344, N'EREGLI', N'67', N'ZONGULDAK')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (345, N'ERENLER', N'54', N'SAKARYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (346, N'ERFELEK', N'57', N'SINOP')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (347, N'ERGANI', N'21', N'DIYARBAKIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (348, N'ERMENEK', N'70', N'KARAMAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (349, N'ERUH', N'56', N'SIIRT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (350, N'ERZIN', N'31', N'HATAY')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (351, N'MERKEZ', N'24', N'ERZINCAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (352, N'MERKEZ', N'25', N'ERZURUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (353, N'ESENLER', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (354, N'ESENYURT', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (355, N'ESKIL', N'68', N'AKSARAY')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (356, N'ESKIPAZAR', N'78', N'KARABÜK')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (357, N'MERKEZ', N'26', N'ESKISEHIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (358, N'ESPIYE', N'28', N'GIRESUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (359, N'ESME', N'64', N'USAK')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (360, N'ETIMESGUT', N'6', N'ANKARA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (361, N'EVCILER', N'3', N'AFYON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (362, N'EVREN', N'6', N'ANKARA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (363, N'EYNESIL', N'28', N'GIRESUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (364, N'EYÜP', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (365, N'EZINE', N'17', N'ÇANAKKALE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (366, N'FATIH', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (367, N'FATSA', N'52', N'ORDU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (368, N'FEKE', N'1', N'ADANA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (369, N'FELAHIYE', N'38', N'KAYSERI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (370, N'FERIZLI', N'54', N'SAKARYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (371, N'FETHIYE', N'48', N'MUGLA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (372, N'FINDIKLI', N'53', N'RIZE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (373, N'FINIKE', N'7', N'ANTALYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (374, N'FOÇA', N'35', N'IZMIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (375, N'GAZIEMIR', N'35', N'IZMIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (376, N'GAZIOSMANPASA', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (377, N'GAZIPASA', N'7', N'ANTALYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (378, N'GEBZE', N'41', N'KOCAELI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (379, N'GEDIZ', N'43', N'KÜTAHYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (380, N'GELENDOST', N'32', N'ISPARTA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (381, N'GELIBOLU', N'17', N'ÇANAKKALE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (382, N'GEMEREK', N'58', N'SIVAS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (383, N'GEMLIK', N'16', N'BURSA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (384, N'GENÇ', N'12', N'BINGÖL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (385, N'GERCÜS', N'72', N'BATMAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (386, N'GEREDE', N'14', N'BOLU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (387, N'GERGER', N'2', N'ADIYAMAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (388, N'GERMENCIK', N'9', N'AYDIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (389, N'GERZE', N'57', N'SINOP')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (390, N'GEVAS', N'65', N'VAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (391, N'GEYVE', N'54', N'SAKARYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (392, N'GIRESUN MERKEZ', N'28', N'GIRESUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (393, N'GÖKÇEADA', N'17', N'ÇANAKKALE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (394, N'GÖKÇEBEY', N'67', N'ZONGULDAK')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (395, N'GÖKSUN', N'46', N'KAHRAMANMARAS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (396, N'GÖLBASI ', N'2', N'ADIYAMAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (397, N'GÖLBASI ', N'6', N'ANKARA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (398, N'GÖLCÜK', N'41', N'KOCAELI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (399, N'GÖLE', N'75', N'ARDAHAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (400, N'GÖLHISAR', N'15', N'BURDUR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (401, N'GÖLKÖY', N'52', N'ORDU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (402, N'GÖLMARMARA', N'45', N'MANISA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (403, N'GÖLOVA', N'58', N'SIVAS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (404, N'GÖLPAZARI', N'11', N'BILECIK')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (405, N'GÖLYAKA', N'81', N'DÜZCE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (406, N'GÖMEÇ', N'10', N'BALIKESIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (407, N'GÖNEN', N'10', N'BALIKESIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (408, N'GÖNEN ', N'32', N'ISPARTA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (409, N'GÖRDES', N'45', N'MANISA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (410, N'GÖRELE', N'28', N'GIRESUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (411, N'GÖYNÜCEK', N'5', N'AMASYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (412, N'GÖYNÜK', N'14', N'BOLU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (413, N'GÜCE', N'28', N'GIRESUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (414, N'GÜÇLÜKONAK', N'73', N'SIRNAK')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (415, N'GÜDÜL', N'6', N'ANKARA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (416, N'GÜLAGAÇ', N'68', N'AKSARAY')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (417, N'GÜLNAR', N'33', N'MERSIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (418, N'GÜLSEHIR', N'50', N'NEVSEHIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (419, N'GÜLYALI', N'52', N'ORDU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (420, N'GÜMÜSHACIKÖY', N'5', N'AMASYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (421, N'GÜMÜSHANE ', N'29', N'GÜMÜSHANE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (422, N'GÜMÜSOVA', N'81', N'DÜZCE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (423, N'GÜNDOGMUS', N'7', N'ANTALYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (424, N'GÜNEY', N'20', N'DENIZLI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (425, N'GÜNEYSINIR', N'42', N'KONYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (426, N'GÜNEYSU', N'53', N'RIZE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (427, N'GÜNGÖREN', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (428, N'GÜNYÜZÜ', N'26', N'ESKISEHIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (429, N'GÜRGENTEPE', N'52', N'ORDU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (430, N'GÜROYMAK', N'13', N'BITLIS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (431, N'GÜRPINAR', N'65', N'VAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (432, N'GÜRSU', N'16', N'BURSA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (433, N'GÜRÜN', N'58', N'SIVAS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (434, N'GÜZELBAHÇE', N'35', N'IZMIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (435, N'GÜZELYURT', N'68', N'AKSARAY')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (436, N'HACIBEKTAS', N'50', N'NEVSEHIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (437, N'HACILAR', N'38', N'KAYSERI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (438, N'HADIM', N'42', N'KONYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (439, N'HAFIK', N'58', N'SIVAS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (440, N'HAKKARI MERKEZ', N'30', N'HAKKARI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (441, N'HALFETI', N'63', N'SANLIURFA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (442, N'HALKAPINAR', N'42', N'KONYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (443, N'HAMAMÖZÜ', N'5', N'AMASYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (444, N'HAMUR', N'4', N'AGRI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (445, N'HAN', N'26', N'ESKISEHIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (446, N'HANAK', N'75', N'ARDAHAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (447, N'HANI', N'21', N'DIYARBAKIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (448, N'HANÖNÜ', N'37', N'KASTAMONU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (449, N'HARMANCIK', N'16', N'BURSA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (450, N'HARRAN', N'63', N'SANLIURFA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (451, N'HASANBEYLI', N'80', N'OSMANIYE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (452, N'HASANKEYF', N'72', N'BATMAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (453, N'HASKÖY', N'49', N'MUS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (454, N'HASSA', N'31', N'HATAY')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (455, N'HATAY MERKEZ', N'31', N'HATAY')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (456, N'HAVRAN', N'10', N'BALIKESIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (457, N'HAVSA', N'22', N'EDIRNE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (458, N'HAVZA', N'55', N'SAMSUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (459, N'HAYMANA', N'6', N'ANKARA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (460, N'HAYRABOLU', N'59', N'TEKIRDAG')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (461, N'HAYRAT', N'61', N'TRABZON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (462, N'HAZRO', N'21', N'DIYARBAKIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (463, N'HEKIMHAN', N'44', N'MALATYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (464, N'HEMSIN', N'53', N'RIZE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (465, N'HENDEK', N'54', N'SAKARYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (466, N'HINIS', N'25', N'ERZURUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (467, N'HILVAN', N'63', N'SANLIURFA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (468, N'HISARCIK', N'43', N'KÜTAHYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (469, N'HIZAN', N'13', N'BITLIS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (470, N'HOCALAR', N'3', N'AFYON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (471, N'HONAZ', N'20', N'DENIZLI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (472, N'HOPA', N'8', N'ARTVIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (473, N'HORASAN', N'25', N'ERZURUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (474, N'HOZAT', N'62', N'TUNCELI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (475, N'HÜYÜK', N'42', N'KONYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (476, N'IGDIR MERKEZ', N'76', N'IGDIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (477, N'ILGAZ', N'18', N'ÇANKIRI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (478, N'ILGIN', N'42', N'KONYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (479, N'ISPARTA MERKEZ', N'32', N'ISPARTA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (480, N'IBRADI', N'7', N'ANTALYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (481, N'IDIL', N'73', N'SIRNAK')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (482, N'IHSANGAZI', N'37', N'KASTAMONU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (483, N'IHSANIYE', N'3', N'AFYON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (484, N'IKIZCE', N'52', N'ORDU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (485, N'IKIZDERE', N'53', N'RIZE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (486, N'ILIÇ', N'24', N'ERZINCAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (487, N'ILKADIM', N'55', N'SAMSUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (488, N'IMAMOGLU', N'1', N'ADANA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (489, N'IMRANLI', N'58', N'SIVAS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (490, N'INCESU', N'38', N'KAYSERI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (491, N'INCIRLIOVA', N'9', N'AYDIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (492, N'INEBOLU', N'37', N'KASTAMONU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (493, N'INEGÖL', N'16', N'BURSA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (494, N'INHISAR', N'11', N'BILECIK')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (495, N'INÖNÜ', N'26', N'ESKISEHIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (496, N'IPSALA', N'22', N'EDIRNE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (497, N'ISCEHISAR', N'3', N'AFYON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (498, N'ISKENDERUN', N'31', N'HATAY')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (499, N'ISKILIP', N'19', N'ÇORUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (500, N'ISLAHIYE', N'27', N'GAZIANTEP')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (501, N'ISPIR', N'25', N'ERZURUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (502, N'IVRINDI', N'10', N'BALIKESIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (503, N'IYIDERE', N'53', N'RIZE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (504, N'IZMIT', N'41', N'KOCAELI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (505, N'IZNIK', N'16', N'BURSA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (506, N'KABADÜZ', N'52', N'ORDU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (507, N'KABATAS', N'52', N'ORDU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (508, N'KADIKÖY', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (509, N'KADINHANI', N'42', N'KONYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (510, N'KADISEHRI', N'66', N'YOZGAT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (511, N'KADIRLI', N'80', N'OSMANIYE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (512, N'KAGITHANE', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (513, N'KAGIZMAN', N'36', N'KARS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (514, N'MERKEZ', N'46', N'KAHRAMANMARAS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (515, N'KAHTA', N'2', N'ADIYAMAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (516, N'KALE / DENIZLI', N'20', N'DENIZLI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (517, N'KALE / MALATYA', N'44', N'MALATYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (518, N'KALECIK', N'6', N'ANKARA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (519, N'KALKANDERE', N'53', N'RIZE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (520, N'KAMAN', N'40', N'KIRSEHIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (521, N'KANDIRA', N'41', N'KOCAELI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (522, N'KANGAL', N'58', N'SIVAS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (523, N'KARABAGLAR', N'35', N'IZMIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (524, N'KARABURUN', N'35', N'IZMIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (525, N'KARABÜK MERKEZ', N'78', N'KARABÜK')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (526, N'KARACABEY', N'16', N'BURSA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (527, N'KARACASU', N'9', N'AYDIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (528, N'KARAÇOBAN', N'25', N'ERZURUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (529, N'KARAHALLI', N'64', N'USAK')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (530, N'KARAISALI', N'1', N'ADANA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (531, N'KARAKEÇILI', N'71', N'KIRIKKALE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (532, N'KARAKOÇAN', N'23', N'ELAZIG')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (533, N'KARAKOYUNLU', N'76', N'IGDIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (534, N'KARAMAN MERKEZ', N'70', N'KARAMAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (535, N'KARAMANLI', N'15', N'BURDUR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (536, N'KARAMÜRSEL', N'41', N'KOCAELI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (537, N'KARAPINAR', N'42', N'KONYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (538, N'KARAPÜRÇEK', N'54', N'SAKARYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (539, N'KARASU', N'54', N'SAKARYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (540, N'KARATAS', N'1', N'ADANA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (541, N'KARATAY', N'42', N'KONYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (542, N'KARAYAZI', N'25', N'ERZURUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (543, N'KARGI', N'19', N'ÇORUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (544, N'KARKAMIS', N'27', N'GAZIANTEP')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (545, N'KARLIOVA', N'12', N'BINGÖL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (546, N'KARPUZLU', N'9', N'AYDIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (547, N'KARS MERKEZ', N'36', N'KARS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (548, N'KARSIYAKA', N'35', N'IZMIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (549, N'KARTAL', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (550, N'KARTEPE', N'41', N'KOCAELI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (551, N'MERKEZ', N'37', N'KASTAMONU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (552, N'KAS', N'7', N'ANTALYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (553, N'KAVAK', N'55', N'SAMSUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (554, N'KAVAKLIDERE', N'48', N'MUGLA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (555, N'KAYAPINAR', N'21', N'DIYARBAKIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (556, N'KAYNARCA', N'54', N'SAKARYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (557, N'KAYNASLI', N'81', N'DÜZCE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (558, N'KAZAN', N'6', N'ANKARA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (559, N'KAZIMKARABEKIR', N'70', N'KARAMAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (560, N'KEBAN', N'23', N'ELAZIG')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (561, N'KEÇIBORLU', N'32', N'ISPARTA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (562, N'KEÇIÖREN', N'6', N'ANKARA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (563, N'KELES', N'16', N'BURSA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (564, N'KELKIT', N'29', N'GÜMÜSHANE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (565, N'KEMAH', N'24', N'ERZINCAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (566, N'KEMALIYE', N'24', N'ERZINCAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (567, N'KEMALPASA', N'35', N'IZMIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (568, N'KEMER / ANTALYA', N'7', N'ANTALYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (569, N'KEMER / BURDUR', N'15', N'BURDUR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (570, N'KEPEZ', N'7', N'ANTALYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (571, N'KEPSUT', N'10', N'BALIKESIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (572, N'KESKIN', N'71', N'KIRIKKALE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (573, N'KESTEL', N'16', N'BURSA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (574, N'KESAN', N'22', N'EDIRNE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (575, N'KESAP', N'28', N'GIRESUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (576, N'KIBRISCIK', N'14', N'BOLU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (577, N'KINIK', N'35', N'IZMIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (578, N'KIRIKHAN', N'31', N'HATAY')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (579, N'MERKEZ', N'71', N'KIRIKKALE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (580, N'KIRKAGAÇ', N'45', N'MANISA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (581, N'MERKEZ', N'39', N'KIRKLARELI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (582, N'KIRSEHIR MERKEZ', N'40', N'KIRSEHIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (583, N'KIZILCAHAMAM', N'6', N'ANKARA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (584, N'KIZILIRMAK', N'18', N'ÇANKIRI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (585, N'KIZILÖREN', N'3', N'AFYON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (586, N'KIZILTEPE', N'47', N'MARDIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (587, N'KIGI', N'12', N'BINGÖL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (588, N'KILIS MERKEZ', N'79', N'KILIS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (589, N'KIRAZ', N'35', N'IZMIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (590, N'KOCAALI', N'54', N'SAKARYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (591, N'KOCAELI MERKEZ', N'41', N'KOCAELI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (592, N'KOCAKÖY', N'21', N'DIYARBAKIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (593, N'KOCASINAN', N'38', N'KAYSERI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (594, N'KOÇARLI', N'9', N'AYDIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (595, N'KOFÇAZ', N'39', N'KIRKLARELI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (596, N'KONAK', N'35', N'IZMIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (597, N'KONYAALTI', N'7', N'ANTALYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (598, N'KORGAN', N'52', N'ORDU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (599, N'KORGUN', N'18', N'ÇANKIRI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (600, N'KORKUT', N'49', N'MUS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (601, N'KORKUTELI', N'7', N'ANTALYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (602, N'KOVANCILAR', N'23', N'ELAZIG')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (603, N'KOYULHISAR', N'58', N'SIVAS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (604, N'KOZAKLI', N'50', N'NEVSEHIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (605, N'KOZAN', N'1', N'ADANA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (606, N'KOZLUK', N'72', N'BATMAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (607, N'KÖPRÜBASI', N'45', N'MANISA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (608, N'KÖPRÜBASI', N'61', N'TRABZON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (609, N'KÖPRÜKÖY', N'25', N'ERZURUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (610, N'KÖRFEZ', N'41', N'KOCAELI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (611, N'KÖSE', N'29', N'GÜMÜSHANE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (612, N'KÖSK', N'9', N'AYDIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (613, N'KÖYCEGIZ', N'48', N'MUGLA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (614, N'KULA', N'45', N'MANISA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (615, N'KULP', N'21', N'DIYARBAKIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (616, N'KULU', N'42', N'KONYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (617, N'KULUNCAK', N'44', N'MALATYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (618, N'KUMLU', N'31', N'HATAY')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (619, N'KUMLUCA', N'7', N'ANTALYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (620, N'KUMRU', N'52', N'ORDU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (621, N'KURSUNLU', N'18', N'ÇANKIRI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (622, N'KURTALAN', N'56', N'SIIRT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (623, N'KURUCASILE', N'74', N'BARTIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (624, N'KUSADASI', N'9', N'AYDIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (625, N'KUYUCAK', N'9', N'AYDIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (626, N'KÜÇÜKÇEKMECE', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (627, N'KÜRE', N'37', N'KASTAMONU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (628, N'KÜRTÜN', N'29', N'GÜMÜSHANE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (629, N'KÜTAHYA MERKEZ', N'43', N'KÜTAHYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (630, N'LAÇIN', N'19', N'ÇORUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (631, N'LADIK', N'55', N'SAMSUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (632, N'LALAPASA', N'22', N'EDIRNE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (633, N'LAPSEKI', N'17', N'ÇANAKKALE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (634, N'LICE', N'21', N'DIYARBAKIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (635, N'LÜLEBURGAZ', N'39', N'KIRKLARELI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (636, N'MAÇKA', N'61', N'TRABZON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (637, N'MADEN', N'23', N'ELAZIG')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (638, N'MAHMUDIYE', N'26', N'ESKISEHIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (639, N'MALATYA MERKEZ', N'44', N'MALATYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (640, N'MALAZGIRT', N'49', N'MUS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (641, N'MALKARA', N'59', N'TEKIRDAG')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (642, N'MALTEPE', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (643, N'MAMAK', N'6', N'ANKARA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (644, N'MANAVGAT', N'7', N'ANTALYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (645, N'MANISA MERKEZ', N'45', N'MANISA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (646, N'MANYAS', N'10', N'BALIKESIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (647, N'MARDIN MERKEZ', N'47', N'MARDIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (648, N'MARMARA', N'10', N'BALIKESIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (649, N'MARMARAEREGLISI', N'59', N'TEKIRDAG')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (650, N'MARMARIS', N'48', N'MUGLA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (651, N'MAZGIRT', N'62', N'TUNCELI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (652, N'MAZIDAGI', N'47', N'MARDIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (653, N'MECITÖZÜ', N'19', N'ÇORUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (654, N'MELIKGAZI', N'38', N'KAYSERI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (655, N'MENDERES', N'35', N'IZMIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (656, N'MENEMEN', N'35', N'IZMIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (657, N'MENGEN', N'14', N'BOLU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (658, N'MERAM', N'42', N'KONYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (659, N'MERIÇ', N'22', N'EDIRNE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (660, N'MERSIN MERKEZ', N'33', N'MERSIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (661, N'MERZIFON', N'5', N'AMASYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (662, N'MESUDIYE', N'52', N'ORDU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (663, N'MEZITLI', N'33', N'MERSIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (664, N'MIDYAT', N'47', N'MARDIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (665, N'MIHALGAZI', N'26', N'ESKISEHIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (666, N'MIHALIÇÇIK', N'26', N'ESKISEHIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (667, N'MILAS', N'48', N'MUGLA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (668, N'MUCUR', N'40', N'KIRSEHIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (669, N'MUDANYA', N'16', N'BURSA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (670, N'MUDURNU', N'14', N'BOLU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (671, N'MUGLA MERKEZ', N'48', N'MUGLA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (672, N'MURADIYE', N'65', N'VAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (673, N'MURATLI', N'59', N'TEKIRDAG')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (674, N'MURATPASA', N'7', N'ANTALYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (675, N'MURGUL', N'8', N'ARTVIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (676, N'MUSABEYLI', N'79', N'KILIS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (677, N'MUSTAFA K.PASA', N'16', N'BURSA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (678, N'MUS MERKEZ', N'49', N'MUS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (679, N'MUT', N'33', N'MERSIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (680, N'MUTKI', N'13', N'BITLIS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (682, N'NALLIHAN', N'6', N'ANKARA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (683, N'NARLIDERE', N'35', N'IZMIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (684, N'NARMAN', N'25', N'ERZURUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (685, N'NAZIMIYE', N'62', N'TUNCELI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (686, N'NAZILLI', N'9', N'AYDIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (687, N'NEVSEHIR MERKEZ', N'50', N'NEVSEHIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (688, N'NIGDE MERKEZ', N'51', N'NIGDE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (689, N'NIKSAR', N'60', N'TOKAT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (690, N'NILÜFER', N'16', N'BURSA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (691, N'NIZIP', N'27', N'GAZIANTEP')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (692, N'NURDAGI', N'27', N'GAZIANTEP')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (693, N'NURHAK', N'46', N'KAHRAMANMARAS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (694, N'NUSAYBIN', N'47', N'MARDIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (695, N'ODUNPAZARI', N'26', N'ESKISEHIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (696, N'OF', N'61', N'TRABZON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (697, N'OGUZELI', N'27', N'GAZIANTEP')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (698, N'OGUZLAR', N'19', N'ÇORUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (699, N'OLTU', N'25', N'ERZURUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (700, N'OLUR', N'25', N'ERZURUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (701, N'ONDOKUZMAYIS', N'55', N'SAMSUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (702, N'ORDU MERKEZ', N'52', N'ORDU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (703, N'ORHANELI', N'16', N'BURSA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (704, N'ORHANGAZI', N'16', N'BURSA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (705, N'ORTA', N'18', N'ÇANKIRI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (706, N'ORTACA', N'48', N'MUGLA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (707, N'ORTAKÖY', N'68', N'AKSARAY')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (708, N'ORTAKÖY / ÇORUM', N'19', N'ÇORUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (709, N'OSMANCIK', N'19', N'ÇORUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (710, N'OSMANELI', N'11', N'BILECIK')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (711, N'OSMANGAZI', N'16', N'BURSA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (712, N'OSMANIYE MERKEZ', N'80', N'OSMANIYE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (713, N'OTLUKBELI', N'24', N'ERZINCAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (714, N'OVACIK', N'78', N'KARABÜK')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (715, N'OVACIK', N'62', N'TUNCELI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (716, N'ÖDEMIS', N'35', N'IZMIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (717, N'ÖMERLI', N'47', N'MARDIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (718, N'ÖZALP', N'65', N'VAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (719, N'ÖZVATAN', N'38', N'KAYSERI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (720, N'PALANDÖKEN', N'25', N'ERZURUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (721, N'PALU', N'23', N'ELAZIG')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (722, N'PAMUKOVA', N'54', N'SAKARYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (723, N'PASINLER', N'25', N'ERZURUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (724, N'PATNOS', N'4', N'AGRI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (725, N'PAZAR / RIZE', N'53', N'RIZE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (726, N'PAZAR / TOKAT', N'60', N'TOKAT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (727, N'PAZARCIK', N'46', N'KAHRAMANMARAS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (728, N'PAZARLAR', N'43', N'KÜTAHYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (729, N'PAZARYERI', N'11', N'BILECIK')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (730, N'PAZARYOLU', N'25', N'ERZURUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (731, N'PEHLIVANKÖY', N'39', N'KIRKLARELI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (732, N'PENDIK', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (733, N'PERSEMBE', N'52', N'ORDU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (734, N'PERTEK', N'62', N'TUNCELI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (735, N'PERVARI', N'56', N'SIIRT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (736, N'PINARBASI ', N'37', N'KASTAMONU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (737, N'PINARBASI', N'38', N'KAYSERI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (738, N'PINARHISAR', N'39', N'KIRKLARELI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (739, N'PIRAZIZ', N'28', N'GIRESUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (740, N'POLATELI', N'79', N'KILIS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (741, N'POLATLI', N'6', N'ANKARA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (742, N'POSOF', N'75', N'ARDAHAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (743, N'POZANTI', N'1', N'ADANA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (744, N'PURSAKLAR', N'6', N'ANKARA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (745, N'PÜLÜMÜR', N'62', N'TUNCELI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (746, N'PÜTÜRGE', N'44', N'MALATYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (747, N'REFAHIYE', N'24', N'ERZINCAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (748, N'RESADIYE', N'60', N'TOKAT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (749, N'REYHANLI', N'31', N'HATAY')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (750, N'RIZE MERKEZ', N'53', N'RIZE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (751, N'SAFRANBOLU', N'78', N'KARABÜK')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (752, N'SAIMBEYLI', N'1', N'ADANA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (753, N'SAKARYA MERKEZ', N'54', N'SAKARYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (754, N'SALIPAZARI', N'55', N'SAMSUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (755, N'SALIHLI', N'45', N'MANISA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (756, N'SAMANDAG', N'31', N'HATAY')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (757, N'SAMSAT', N'2', N'ADIYAMAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (758, N'SAMSUN MERKEZ', N'55', N'SAMSUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (759, N'SANCAKTEPE', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (760, N'SANDIKLI', N'3', N'AFYON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (761, N'SAPANCA', N'54', N'SAKARYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (762, N'SARAY', N'59', N'TEKIRDAG')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (763, N'SARAY / VAN', N'65', N'VAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (764, N'SARAYDÜZÜ', N'57', N'SINOP')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (765, N'SARAYKENT', N'66', N'YOZGAT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (766, N'SARAYKÖY', N'20', N'DENIZLI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (767, N'SARAYÖNÜ', N'42', N'KONYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (768, N'SARICAKAYA', N'26', N'ESKISEHIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (769, N'SARIÇAM', N'1', N'ADANA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (770, N'SARIGÖL', N'45', N'MANISA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (771, N'SARIKAMIS', N'36', N'KARS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (772, N'SARIKAYA', N'66', N'YOZGAT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (773, N'SARIOGLAN', N'38', N'KAYSERI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (774, N'SARIVELILER', N'70', N'KARAMAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (775, N'SARIYAHSI', N'68', N'AKSARAY')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (776, N'SARIYER', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (777, N'SARIZ', N'38', N'KAYSERI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (778, N'SARUHANLI', N'45', N'MANISA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (779, N'SASON', N'72', N'BATMAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (780, N'SAVASTEPE', N'10', N'BALIKESIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (781, N'SAVUR', N'47', N'MARDIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (782, N'SEBEN', N'14', N'BOLU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (783, N'SEFERIHISAR', N'35', N'IZMIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (784, N'SELÇUK', N'35', N'IZMIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (785, N'SELÇUKLU', N'42', N'KONYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (786, N'SELENDI', N'45', N'MANISA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (787, N'SELIM', N'36', N'KARS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (788, N'SENIRKENT', N'32', N'ISPARTA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (789, N'SERDIVAN', N'54', N'SAKARYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (790, N'SERIK', N'7', N'ANTALYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (791, N'SERINHISAR', N'20', N'DENIZLI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (792, N'SEYDILER', N'37', N'KASTAMONU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (793, N'SEYDISEHIR', N'42', N'KONYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (794, N'SEYHAN', N'1', N'ADANA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (795, N'SEYITGAZI', N'26', N'ESKISEHIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (796, N'SINDIRGI', N'10', N'BALIKESIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (797, N'SIIRT MERKEZ', N'56', N'SIIRT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (798, N'SILIFKE', N'33', N'MERSIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (799, N'SILIVRI', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (800, N'SILOPI', N'73', N'SIRNAK')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (801, N'SILVAN', N'21', N'DIYARBAKIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (802, N'SIMAV', N'43', N'KÜTAHYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (803, N'SINANPASA', N'3', N'AFYON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (804, N'SINCAN', N'6', N'ANKARA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (805, N'SINCIK', N'2', N'ADIYAMAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (806, N'SINOP MERKEZ', N'57', N'SINOP')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (807, N'SIVAS MERKEZ', N'58', N'SIVAS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (808, N'SIVASLI', N'64', N'USAK')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (809, N'SIVEREK', N'63', N'SANLIURFA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (810, N'SIVRICE', N'23', N'ELAZIG')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (811, N'SIVRIHISAR', N'26', N'ESKISEHIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (812, N'SOLHAN', N'12', N'BINGÖL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (813, N'SOMA', N'45', N'MANISA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (814, N'SORGUN', N'66', N'YOZGAT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (815, N'SÖGÜT', N'11', N'BILECIK')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (816, N'SÖGÜTLÜ', N'54', N'SAKARYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (817, N'SÖKE', N'9', N'AYDIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (818, N'SULAKYURT', N'71', N'KIRIKKALE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (819, N'SULTANBEYLI', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (820, N'SULTANDAGI', N'3', N'AFYON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (821, N'SULTANGAZI', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (822, N'SULTANHISAR', N'9', N'AYDIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (823, N'SULUOVA', N'5', N'AMASYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (824, N'SULUSARAY', N'60', N'TOKAT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (825, N'SUMBAS', N'80', N'OSMANIYE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (826, N'SUNGURLU', N'19', N'ÇORUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (827, N'SUR', N'21', N'DIYARBAKIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (828, N'SURUÇ', N'63', N'SANLIURFA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (829, N'SUSURLUK', N'10', N'BALIKESIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (830, N'SUSUZ', N'36', N'KARS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (831, N'SUSEHRI', N'58', N'SIVAS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (832, N'SÜLOGLU', N'22', N'EDIRNE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (833, N'SÜRMENE', N'61', N'TRABZON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (834, N'SÜTÇÜLER', N'32', N'ISPARTA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (835, N'SABANÖZÜ', N'18', N'ÇANKIRI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (836, N'SAHINBEY', N'27', N'GAZIANTEP')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (837, N'SALPAZARI', N'61', N'TRABZON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (838, N'MERKEZ', N'63', N'SANLIURFA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (839, N'SAPHANE', N'43', N'KÜTAHYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (840, N'SARKISLA', N'58', N'SIVAS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (841, N'SARKIKARAAGAÇ', N'32', N'ISPARTA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (842, N'SARKÖY', N'59', N'TEKIRDAG')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (843, N'SAVSAT', N'8', N'ARTVIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (844, N'SEBINKARAHISAR', N'28', N'GIRESUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (845, N'SEFAATLI', N'66', N'YOZGAT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (846, N'SEHITKAMIL', N'27', N'GAZIANTEP')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (847, N'SEMDINLI', N'30', N'HAKKARI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (848, N'SENKAYA', N'25', N'ERZURUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (849, N'SENPAZAR', N'37', N'KASTAMONU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (850, N'SEREFLIKOÇHISAR', N'6', N'ANKARA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (851, N'SIRNAK MERKEZ', N'73', N'SIRNAK')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (852, N'SILE', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (853, N'SIRAN', N'29', N'GÜMÜSHANE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (854, N'SIRVAN', N'56', N'SIIRT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (855, N'SISLI', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (856, N'SUHUT', N'3', N'AFYON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (857, N'TALAS', N'38', N'KAYSERI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (858, N'TARAKLI', N'54', N'SAKARYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (859, N'TARSUS', N'33', N'MERSIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (860, N'TASKENT', N'42', N'KONYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (861, N'TASKÖPRÜ', N'37', N'KASTAMONU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (862, N'TASLIÇAY', N'4', N'AGRI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (863, N'TASOVA', N'5', N'AMASYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (864, N'TATVAN', N'13', N'BITLIS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (865, N'TAVAS', N'20', N'DENIZLI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (866, N'TAVSANLI', N'43', N'KÜTAHYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (867, N'TEFENNI', N'15', N'BURDUR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (868, N'TEKIRDAG MERKEZ', N'59', N'TEKIRDAG')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (869, N'TEKKEKÖY', N'55', N'SAMSUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (870, N'TEKMAN', N'25', N'ERZURUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (871, N'TEPEBASI', N'26', N'ESKISEHIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (872, N'TERCAN', N'24', N'ERZINCAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (873, N'TERMAL', N'77', N'YALOVA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (874, N'TERME', N'55', N'SAMSUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (875, N'TIRE', N'35', N'IZMIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (876, N'TIREBOLU', N'28', N'GIRESUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (877, N'TOKAT MERKEZ', N'60', N'TOKAT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (878, N'TOMARZA', N'38', N'KAYSERI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (879, N'TONYA', N'61', N'TRABZON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (880, N'TOPRAKKALE', N'80', N'OSMANIYE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (881, N'TORBALI', N'35', N'IZMIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (882, N'TOROSLAR', N'33', N'MERSIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (883, N'TORTUM', N'25', N'ERZURUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (884, N'TORUL', N'29', N'GÜMÜSHANE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (885, N'TOSYA', N'37', N'KASTAMONU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (886, N'TRABZON MERKEZ', N'61', N'TRABZON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (887, N'TUFANBEYLI', N'1', N'ADANA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (888, N'TUNCELI MERKEZ', N'62', N'TUNCELI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (889, N'TURGUTLU', N'45', N'MANISA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (890, N'TURHAL', N'60', N'TOKAT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (891, N'TUT', N'2', N'ADIYAMAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (892, N'TUTAK', N'4', N'AGRI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (893, N'TUZLA', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (894, N'TUZLUCA', N'76', N'IGDIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (895, N'TUZLUKÇU', N'42', N'KONYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (896, N'TÜRKELI', N'57', N'SINOP')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (897, N'TÜRKOGLU', N'46', N'KAHRAMANMARAS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (898, N'UGURLUDAG', N'19', N'ÇORUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (899, N'ULA', N'48', N'MUGLA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (900, N'ULAS', N'58', N'SIVAS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (901, N'ULUBEY / ORDU', N'52', N'ORDU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (902, N'ULUBEY / USAK', N'64', N'USAK')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (903, N'ULUBORLU', N'32', N'ISPARTA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (904, N'ULUDERE', N'73', N'SIRNAK')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (905, N'ULUKISLA', N'51', N'NIGDE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (906, N'ULUS', N'74', N'BARTIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (907, N'URLA', N'35', N'IZMIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (908, N'USAK MERKEZ', N'64', N'USAK')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (909, N'UZUNDERE', N'25', N'ERZURUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (910, N'UZUNKÖPRÜ', N'22', N'EDIRNE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (911, N'ÜMRANIYE', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (912, N'ÜNYE', N'52', N'ORDU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (913, N'ÜRGÜP', N'50', N'NEVSEHIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (914, N'ÜSKÜDAR', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (915, N'ÜZÜMLÜ', N'24', N'ERZINCAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (916, N'VAKFIKEBIR', N'61', N'TRABZON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (917, N'VAN MERKEZ', N'65', N'VAN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (918, N'VARTO', N'49', N'MUS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (919, N'VEZIRKÖPRÜ', N'55', N'SAMSUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (920, N'VIRANSEHIR', N'63', N'SANLIURFA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (921, N'VIZE', N'39', N'KIRKLARELI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (922, N'YAGLIDERE', N'28', N'GIRESUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (923, N'YAHSIHAN', N'71', N'KIRIKKALE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (924, N'YAHYALI', N'38', N'KAYSERI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (925, N'YAKAKENT', N'55', N'SAMSUN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (926, N'YAKUTIYE', N'25', N'ERZURUM')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (927, N'YALIHÜYÜK', N'42', N'KONYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (928, N'YALOVA MERKEZ', N'77', N'YALOVA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (929, N'YALVAÇ', N'32', N'ISPARTA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (930, N'YAPRAKLI', N'18', N'ÇANKIRI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (931, N'YATAGAN', N'48', N'MUGLA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (932, N'YAVUZELI', N'27', N'GAZIANTEP')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (933, N'YAYLADAGI', N'31', N'HATAY')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (934, N'YAYLADERE', N'12', N'BINGÖL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (935, N'YAZIHAN', N'44', N'MALATYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (936, N'YEDISU', N'12', N'BINGÖL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (937, N'YENICE', N'17', N'ÇANAKKALE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (938, N'YENICE', N'78', N'KARABÜK')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (939, N'YENIÇAGA', N'14', N'BOLU')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (940, N'YENIFAKILI', N'66', N'YOZGAT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (941, N'YENIMAHALLE', N'6', N'ANKARA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (942, N'YENIPAZAR', N'9', N'AYDIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (943, N'YENIPAZAR', N'11', N'BILECIK')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (944, N'YENISARBADEMLI', N'32', N'ISPARTA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (945, N'YENISEHIR', N'16', N'BURSA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (946, N'YENISEHIR', N'21', N'DIYARBAKIR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (947, N'YENISEHIR', N'33', N'MERSIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (948, N'YERKÖY', N'66', N'YOZGAT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (949, N'YESILHISAR', N'38', N'KAYSERI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (950, N'YESILLI', N'47', N'MARDIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (951, N'YESILOVA', N'15', N'BURDUR')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (952, N'YESILYURT', N'44', N'MALATYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (953, N'YESILYURT', N'60', N'TOKAT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (954, N'YIGILCA', N'81', N'DÜZCE')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (955, N'YILDIRIM', N'16', N'BURSA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (956, N'YILDIZELI', N'58', N'SIVAS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (957, N'YOMRA', N'61', N'TRABZON')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (958, N'YOZGAT MERKEZ', N'66', N'YOZGAT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (959, N'YUMURTALIK', N'1', N'ADANA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (960, N'YUNAK', N'42', N'KONYA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (961, N'YUSUFELI', N'8', N'ARTVIN')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (962, N'YÜKSEKOVA', N'30', N'HAKKARI')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (963, N'YÜREGIR', N'1', N'ADANA')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (964, N'ZARA', N'58', N'SIVAS')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (965, N'ZEYTINBURNU', N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (966, N'ZILE', N'60', N'TOKAT')
GO
INSERT [dbo].[REF_ILCELER] ([PKEY], [ILCEAD], [ILKOD], [ILAD]) VALUES (967, N'MERKEZ', N'67', N'ZONGULDAK')
GO
SET IDENTITY_INSERT [dbo].[REF_ILCELER] OFF
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'1', N'ADANA')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'10', N'BALIKESIR')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'11', N'BILECIK')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'12', N'BINGÖL')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'13', N'BITLIS')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'14', N'BOLU')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'15', N'BURDUR')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'16', N'BURSA')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'17', N'ÇANAKKALE')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'18', N'ÇANKIRI')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'19', N'ÇORUM')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'2', N'ADIYAMAN')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'20', N'DENIZLI')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'21', N'DIYARBAKIR')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'22', N'EDIRNE')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'23', N'ELAZIG')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'24', N'ERZINCAN')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'25', N'ERZURUM')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'26', N'ESKISEHIR')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'27', N'GAZIANTEP')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'28', N'GIRESUN')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'29', N'GÜMÜSHANE')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'3', N'AFYON')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'30', N'HAKKARI')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'31', N'HATAY')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'32', N'ISPARTA')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'33', N'MERSIN')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'34', N'ISTANBUL')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'35', N'IZMIR')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'36', N'KARS')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'37', N'KASTAMONU')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'38', N'KAYSERI')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'39', N'KIRKLARELI')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'4', N'AGRI')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'40', N'KIRSEHIR')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'41', N'KOCAELI')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'42', N'KONYA')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'43', N'KÜTAHYA')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'44', N'MALATYA')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'45', N'MANISA')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'46', N'KAHRAMANMARAS')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'47', N'MARDIN')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'48', N'MUGLA')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'49', N'MUS')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'5', N'AMASYA')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'50', N'NEVSEHIR')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'51', N'NIGDE')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'52', N'ORDU')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'53', N'RIZE')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'54', N'SAKARYA')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'55', N'SAMSUN')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'56', N'SIIRT')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'57', N'SINOP')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'58', N'SIVAS')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'59', N'TEKIRDAG')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'6', N'ANKARA')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'60', N'TOKAT')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'61', N'TRABZON')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'62', N'TUNCELI')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'63', N'SANLIURFA')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'64', N'USAK')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'65', N'VAN')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'66', N'YOZGAT')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'67', N'ZONGULDAK')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'68', N'AKSARAY')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'69', N'BAYBURT')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'7', N'ANTALYA')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'70', N'KARAMAN')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'71', N'KIRIKKALE')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'72', N'BATMAN')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'73', N'SIRNAK')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'74', N'BARTIN')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'75', N'ARDAHAN')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'76', N'IGDIR')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'77', N'YALOVA')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'78', N'KARABÜK')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'79', N'KILIS')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'8', N'ARTVIN')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'80', N'OSMANIYE')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'81', N'DÜZCE')
GO
INSERT [dbo].[REF_ILLER] ([ILKOD], [ILAD]) VALUES (N'9', N'AYDIN')
GO
SET IDENTITY_INSERT [dbo].[REF_KAPIMODEL] ON 

GO
INSERT [dbo].[REF_KAPIMODEL] ([ID], [KAPISERIID], [AD]) VALUES (1, 1, N'101')
GO
INSERT [dbo].[REF_KAPIMODEL] ([ID], [KAPISERIID], [AD]) VALUES (2, 1, N'102')
GO
INSERT [dbo].[REF_KAPIMODEL] ([ID], [KAPISERIID], [AD]) VALUES (3, 1, N'103')
GO
INSERT [dbo].[REF_KAPIMODEL] ([ID], [KAPISERIID], [AD]) VALUES (4, 1, N'104')
GO
INSERT [dbo].[REF_KAPIMODEL] ([ID], [KAPISERIID], [AD]) VALUES (5, 2, N'601')
GO
INSERT [dbo].[REF_KAPIMODEL] ([ID], [KAPISERIID], [AD]) VALUES (6, 2, N'602')
GO
INSERT [dbo].[REF_KAPIMODEL] ([ID], [KAPISERIID], [AD]) VALUES (7, 2, N'603')
GO
INSERT [dbo].[REF_KAPIMODEL] ([ID], [KAPISERIID], [AD]) VALUES (8, 2, N'604')
GO
INSERT [dbo].[REF_KAPIMODEL] ([ID], [KAPISERIID], [AD]) VALUES (9, 2, N'605')
GO
INSERT [dbo].[REF_KAPIMODEL] ([ID], [KAPISERIID], [AD]) VALUES (10, 2, N'606')
GO
INSERT [dbo].[REF_KAPIMODEL] ([ID], [KAPISERIID], [AD]) VALUES (11, 2, N'607')
GO
INSERT [dbo].[REF_KAPIMODEL] ([ID], [KAPISERIID], [AD]) VALUES (12, 2, N'608')
GO
INSERT [dbo].[REF_KAPIMODEL] ([ID], [KAPISERIID], [AD]) VALUES (13, 2, N'609')
GO
INSERT [dbo].[REF_KAPIMODEL] ([ID], [KAPISERIID], [AD]) VALUES (14, 2, N'610')
GO
INSERT [dbo].[REF_KAPIMODEL] ([ID], [KAPISERIID], [AD]) VALUES (15, 2, N'611')
GO
INSERT [dbo].[REF_KAPIMODEL] ([ID], [KAPISERIID], [AD]) VALUES (16, 2, N'612')
GO
INSERT [dbo].[REF_KAPIMODEL] ([ID], [KAPISERIID], [AD]) VALUES (17, 3, N'801')
GO
INSERT [dbo].[REF_KAPIMODEL] ([ID], [KAPISERIID], [AD]) VALUES (18, 3, N'802')
GO
INSERT [dbo].[REF_KAPIMODEL] ([ID], [KAPISERIID], [AD]) VALUES (19, 3, N'803')
GO
INSERT [dbo].[REF_KAPIMODEL] ([ID], [KAPISERIID], [AD]) VALUES (20, 3, N'804')
GO
INSERT [dbo].[REF_KAPIMODEL] ([ID], [KAPISERIID], [AD]) VALUES (24, 3, N'805')
GO
SET IDENTITY_INSERT [dbo].[REF_KAPIMODEL] OFF
GO
SET IDENTITY_INSERT [dbo].[REF_KAPIRENK] ON 

GO
INSERT [dbo].[REF_KAPIRENK] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (1, N'Amerikan Ceviz', 1, 1, 1)
GO
INSERT [dbo].[REF_KAPIRENK] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (2, N'Karaagaç', 1, 1, 1)
GO
INSERT [dbo].[REF_KAPIRENK] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (3, N'Porte Ceviz', 1, 1, 1)
GO
INSERT [dbo].[REF_KAPIRENK] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (4, N'Soke Ceviz', 1, 1, 1)
GO
INSERT [dbo].[REF_KAPIRENK] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (5, N'Tik', 1, 1, 1)
GO
INSERT [dbo].[REF_KAPIRENK] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (6, N'Avrupa Tik', 1, 1, 1)
GO
INSERT [dbo].[REF_KAPIRENK] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (7, N'Venge', 1, 1, 1)
GO
INSERT [dbo].[REF_KAPIRENK] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (9, N'Kenya Silver', 1, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[REF_KAPIRENK] OFF
GO
SET IDENTITY_INSERT [dbo].[REF_KAPISERI] ON 

GO
INSERT [dbo].[REF_KAPISERI] ([ID], [AD]) VALUES (1, N'GUARD')
GO
INSERT [dbo].[REF_KAPISERI] ([ID], [AD]) VALUES (2, N'KROMA')
GO
INSERT [dbo].[REF_KAPISERI] ([ID], [AD]) VALUES (3, N'NOVA')
GO
SET IDENTITY_INSERT [dbo].[REF_KAPISERI] OFF
GO
SET IDENTITY_INSERT [dbo].[REF_KILITSISTEM] ON 

GO
INSERT [dbo].[REF_KILITSISTEM] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (2, N'Kale 6''li', 1, 1, 0)
GO
INSERT [dbo].[REF_KILITSISTEM] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (3, N'Kale 14''lü', 1, 1, 0)
GO
INSERT [dbo].[REF_KILITSISTEM] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (4, N'Multi 14''lü', 0, 0, 1)
GO
INSERT [dbo].[REF_KILITSISTEM] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (5, N'Multlock 15''li', 1, 1, 0)
GO
INSERT [dbo].[REF_KILITSISTEM] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (6, N'Mottura 17''li', 1, 1, 1)
GO
INSERT [dbo].[REF_KILITSISTEM] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (7, N'Moturra 21''li', 1, 1, 1)
GO
INSERT [dbo].[REF_KILITSISTEM] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (8, N'Moturra 24''lü', 1, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[REF_KILITSISTEM] OFF
GO
SET IDENTITY_INSERT [dbo].[REF_MONTAJSEKLI] ON 

GO
INSERT [dbo].[REF_MONTAJSEKLI] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (1, N'Betonlu', 1, 1, 1)
GO
INSERT [dbo].[REF_MONTAJSEKLI] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (2, N'Vidali', 1, 1, 1)
GO
INSERT [dbo].[REF_MONTAJSEKLI] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (3, N'Köpüklü', 1, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[REF_MONTAJSEKLI] OFF
GO
SET IDENTITY_INSERT [dbo].[REF_PERVAZTIP] ON 

GO
INSERT [dbo].[REF_PERVAZTIP] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (1, N'P1', 0, 0, 1)
GO
INSERT [dbo].[REF_PERVAZTIP] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (2, N'P2', 0, 0, 1)
GO
INSERT [dbo].[REF_PERVAZTIP] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (3, N'P3', 0, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[REF_PERVAZTIP] OFF
GO
SET IDENTITY_INSERT [dbo].[REF_TABLOLAR] ON 

GO
INSERT [dbo].[REF_TABLOLAR] ([ID], [AD], [TABLO]) VALUES (1, N'KAPI MODELI', N'REF_KAPIMODEL')
GO
INSERT [dbo].[REF_TABLOLAR] ([ID], [AD], [TABLO]) VALUES (2, N'KAPI RENGI', N'REF_KAPIRENK')
GO
INSERT [dbo].[REF_TABLOLAR] ([ID], [AD], [TABLO]) VALUES (3, N'KILIT SISTEMI', N'REF_KILITSISTEM')
GO
INSERT [dbo].[REF_TABLOLAR] ([ID], [AD], [TABLO]) VALUES (4, N'ÇITA', N'REF_CITA')
GO
INSERT [dbo].[REF_TABLOLAR] ([ID], [AD], [TABLO]) VALUES (5, N'ESIK', N'REF_ESIK')
GO
INSERT [dbo].[REF_TABLOLAR] ([ID], [AD], [TABLO]) VALUES (6, N'AKSESUAR RENGI', N'REF_AKSESUARRENK')
GO
INSERT [dbo].[REF_TABLOLAR] ([ID], [AD], [TABLO]) VALUES (7, N'ALUMINYUM RENGI', N'REF_ALUMINYUMRENK')
GO
INSERT [dbo].[REF_TABLOLAR] ([ID], [AD], [TABLO]) VALUES (8, N'CONTA RENGI', N'REF_CONTARENK')
GO
INSERT [dbo].[REF_TABLOLAR] ([ID], [AD], [TABLO]) VALUES (9, N'TAÇ TIP', N'REF_TACTIP')
GO
INSERT [dbo].[REF_TABLOLAR] ([ID], [AD], [TABLO]) VALUES (10, N'PERVAZ TIPI', N'REF_PERVAZTIP')
GO
INSERT [dbo].[REF_TABLOLAR] ([ID], [AD], [TABLO]) VALUES (11, N'MONTAJ SEKLI', N'REF_MONTAJSEKLI')
GO
INSERT [dbo].[REF_TABLOLAR] ([ID], [AD], [TABLO]) VALUES (12, N'TESLIM SEKLI', N'REF_TESLIMSEKLI')
GO
SET IDENTITY_INSERT [dbo].[REF_TABLOLAR] OFF
GO
SET IDENTITY_INSERT [dbo].[REF_TACTIP] ON 

GO
INSERT [dbo].[REF_TACTIP] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (1, N'T1', 0, 0, 1)
GO
INSERT [dbo].[REF_TACTIP] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (2, N'T2', 0, 0, 1)
GO
INSERT [dbo].[REF_TACTIP] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (3, N'T3', 0, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[REF_TACTIP] OFF
GO
SET IDENTITY_INSERT [dbo].[REF_TESLIMSEKLI] ON 

GO
INSERT [dbo].[REF_TESLIMSEKLI] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (1, N'Montajli', 1, 1, 1)
GO
INSERT [dbo].[REF_TESLIMSEKLI] ([ID], [AD], [NOVA], [KROMA], [GUARD]) VALUES (2, N'Sevk', 1, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[REF_TESLIMSEKLI] OFF
GO
SET IDENTITY_INSERT [dbo].[SIPARIS] ON 

GO
INSERT [dbo].[SIPARIS] ([ID], [SIPARISNO], [SIPARISTARIH], [BAYIADI], [MUSTERIAD], [MUSTERISOYAD], [MUSTERIADRES], [MUSTERIIL], [MUSTERIILCE], [MUSTERIEVTEL], [MUSTERIISTEL], [MUSTERICEPTEL], [ICKAPIMODEL], [DISKAPIMODEL], [DISKAPIRENK], [ICKAPIRENK], [KILITSISTEM], [CITA], [ESIK], [ALUMINYUMRENK], [AKSESUARRENK], [CONTARENK], [TACTIP], [PERVAZTIP], [CEKMEKOLU], [KAPINO], [BARELTIP], [BABA], [DURBUN], [TAKTAK], [MONTAJDATAKILACAK], [OLCUMBILGI], [OLCUMTARIH], [OLCUMALANKISI], [MONTAJSEKLI], [TESLIMSEKLI], [PESINAT], [KALANODEME], [FIYAT], [VERGIDAIRESI], [VERGINUMARASI]) VALUES (4, N'N-1', CAST(0x0000A39400ACC2DD AS DateTime), N'asd', N'sdsa', N'', N'asf', N'ÇORUM', N'BOGAZKALE', N'1232323213', N'2132131321', N'1232312331', N'101', N'102', NULL, N'Karaagaç', N'Multlock 15''li', N'H-Eloksal', N'Siyah', N'Seçiniz', N'Saten', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'123', N'wr', N'213', N'Var', N'Var', N'Yok', N'123', N'wrwer', CAST(0xDB380B00 AS Date), N'Seçiniz', N'Betonlu', N'Montajli', N'wer', N'wer', NULL, N'wer', N'wer')
GO
INSERT [dbo].[SIPARIS] ([ID], [SIPARISNO], [SIPARISTARIH], [BAYIADI], [MUSTERIAD], [MUSTERISOYAD], [MUSTERIADRES], [MUSTERIIL], [MUSTERIILCE], [MUSTERIEVTEL], [MUSTERIISTEL], [MUSTERICEPTEL], [ICKAPIMODEL], [DISKAPIMODEL], [DISKAPIRENK], [ICKAPIRENK], [KILITSISTEM], [CITA], [ESIK], [ALUMINYUMRENK], [AKSESUARRENK], [CONTARENK], [TACTIP], [PERVAZTIP], [CEKMEKOLU], [KAPINO], [BARELTIP], [BABA], [DURBUN], [TAKTAK], [MONTAJDATAKILACAK], [OLCUMBILGI], [OLCUMTARIH], [OLCUMALANKISI], [MONTAJSEKLI], [TESLIMSEKLI], [PESINAT], [KALANODEME], [FIYAT], [VERGIDAIRESI], [VERGINUMARASI]) VALUES (10, N'N-2', CAST(0x0000A39400B42739 AS DateTime), N'saasf', N'asf', N'asf', N'asf', N'ÇORUM', N'UGURLUDAG', N'1111111111', N'1111111111', N'', N'101', N'102', NULL, N'Amerikan Ceviz', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'', N'', N'', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'sfsdfsd', N'sdfsd', CAST(0xD4380B00 AS Date), N'Seçiniz', N'Betonlu', N'Montajli', N'', N'', NULL, N'', N'')
GO
INSERT [dbo].[SIPARIS] ([ID], [SIPARISNO], [SIPARISTARIH], [BAYIADI], [MUSTERIAD], [MUSTERISOYAD], [MUSTERIADRES], [MUSTERIIL], [MUSTERIILCE], [MUSTERIEVTEL], [MUSTERIISTEL], [MUSTERICEPTEL], [ICKAPIMODEL], [DISKAPIMODEL], [DISKAPIRENK], [ICKAPIRENK], [KILITSISTEM], [CITA], [ESIK], [ALUMINYUMRENK], [AKSESUARRENK], [CONTARENK], [TACTIP], [PERVAZTIP], [CEKMEKOLU], [KAPINO], [BARELTIP], [BABA], [DURBUN], [TAKTAK], [MONTAJDATAKILACAK], [OLCUMBILGI], [OLCUMTARIH], [OLCUMALANKISI], [MONTAJSEKLI], [TESLIMSEKLI], [PESINAT], [KALANODEME], [FIYAT], [VERGIDAIRESI], [VERGINUMARASI]) VALUES (11, N'N-3', CAST(0x0000A39401019DBA AS DateTime), N'sad', N'ayhan', N'aydda', N'sdsd asdfsf', N'ÇORUM', N'BAYAT', N'1111111111', N'1111111111', N'1111111111', N'101', N'101', NULL, N'Porte Ceviz', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'', N'', N'', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'', N'zsdaf as', CAST(0xD8380B00 AS Date), N'Seçiniz', N'Betonlu', N'Montajli', N'we', N'asd', NULL, N'das', N'asd')
GO
INSERT [dbo].[SIPARIS] ([ID], [SIPARISNO], [SIPARISTARIH], [BAYIADI], [MUSTERIAD], [MUSTERISOYAD], [MUSTERIADRES], [MUSTERIIL], [MUSTERIILCE], [MUSTERIEVTEL], [MUSTERIISTEL], [MUSTERICEPTEL], [ICKAPIMODEL], [DISKAPIMODEL], [DISKAPIRENK], [ICKAPIRENK], [KILITSISTEM], [CITA], [ESIK], [ALUMINYUMRENK], [AKSESUARRENK], [CONTARENK], [TACTIP], [PERVAZTIP], [CEKMEKOLU], [KAPINO], [BARELTIP], [BABA], [DURBUN], [TAKTAK], [MONTAJDATAKILACAK], [OLCUMBILGI], [OLCUMTARIH], [OLCUMALANKISI], [MONTAJSEKLI], [TESLIMSEKLI], [PESINAT], [KALANODEME], [FIYAT], [VERGIDAIRESI], [VERGINUMARASI]) VALUES (12, N'N-4', CAST(0x0000A3940101E754 AS DateTime), N'sad', N'ayhan', N'aydda', N'sdsd asdfsf', N'ÇORUM', N'BAYAT', N'1111111111', N'1111111111', N'1111111111', N'101', N'101', NULL, N'Porte Ceviz', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'', N'', N'', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'', N'zsdaf as', CAST(0xDA380B00 AS Date), N'Seçiniz', N'Betonlu', N'Montajli', N'', N'', NULL, N'', N'')
GO
INSERT [dbo].[SIPARIS] ([ID], [SIPARISNO], [SIPARISTARIH], [BAYIADI], [MUSTERIAD], [MUSTERISOYAD], [MUSTERIADRES], [MUSTERIIL], [MUSTERIILCE], [MUSTERIEVTEL], [MUSTERIISTEL], [MUSTERICEPTEL], [ICKAPIMODEL], [DISKAPIMODEL], [DISKAPIRENK], [ICKAPIRENK], [KILITSISTEM], [CITA], [ESIK], [ALUMINYUMRENK], [AKSESUARRENK], [CONTARENK], [TACTIP], [PERVAZTIP], [CEKMEKOLU], [KAPINO], [BARELTIP], [BABA], [DURBUN], [TAKTAK], [MONTAJDATAKILACAK], [OLCUMBILGI], [OLCUMTARIH], [OLCUMALANKISI], [MONTAJSEKLI], [TESLIMSEKLI], [PESINAT], [KALANODEME], [FIYAT], [VERGIDAIRESI], [VERGINUMARASI]) VALUES (13, N'N-5', CAST(0x0000A3940102614F AS DateTime), N'sad', N'ayhan', N'aydda', N'sdsd asdfsf', N'ÇORUM', N'BAYAT', N'1111111111', N'1111111111', N'1111111111', N'101', N'101', NULL, N'Porte Ceviz', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'', N'', N'', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'', N'zsdaf as', CAST(0xDA380B00 AS Date), N'Seçiniz', N'Betonlu', N'Montajli', N'', N'', NULL, N'', N'')
GO
INSERT [dbo].[SIPARIS] ([ID], [SIPARISNO], [SIPARISTARIH], [BAYIADI], [MUSTERIAD], [MUSTERISOYAD], [MUSTERIADRES], [MUSTERIIL], [MUSTERIILCE], [MUSTERIEVTEL], [MUSTERIISTEL], [MUSTERICEPTEL], [ICKAPIMODEL], [DISKAPIMODEL], [DISKAPIRENK], [ICKAPIRENK], [KILITSISTEM], [CITA], [ESIK], [ALUMINYUMRENK], [AKSESUARRENK], [CONTARENK], [TACTIP], [PERVAZTIP], [CEKMEKOLU], [KAPINO], [BARELTIP], [BABA], [DURBUN], [TAKTAK], [MONTAJDATAKILACAK], [OLCUMBILGI], [OLCUMTARIH], [OLCUMALANKISI], [MONTAJSEKLI], [TESLIMSEKLI], [PESINAT], [KALANODEME], [FIYAT], [VERGIDAIRESI], [VERGINUMARASI]) VALUES (14, N'N-6', CAST(0x0000A394018708D7 AS DateTime), N'ibo', N'NEJLA', N'GÜNER', N'SADSA ADAS', N'ÇANKIRI', N'SABANÖZÜ', N'1111111111', N'1111111111', N'1111111111', N'101', N'102', NULL, N'Venge', N'Mottura 17''li', N'H-Eloksal', N'Carmen Red', N'Seçiniz', N'Saten', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'ASD', N'9', N'AF', N'Var', N'Var', N'Yok', N'', N'ASFDASF', CAST(0xD9380B00 AS Date), N'Seçiniz', N'Betonlu', N'Sevk', N'1233', N'500', NULL, N'AD', N'12123')
GO
INSERT [dbo].[SIPARIS] ([ID], [SIPARISNO], [SIPARISTARIH], [BAYIADI], [MUSTERIAD], [MUSTERISOYAD], [MUSTERIADRES], [MUSTERIIL], [MUSTERIILCE], [MUSTERIEVTEL], [MUSTERIISTEL], [MUSTERICEPTEL], [ICKAPIMODEL], [DISKAPIMODEL], [DISKAPIRENK], [ICKAPIRENK], [KILITSISTEM], [CITA], [ESIK], [ALUMINYUMRENK], [AKSESUARRENK], [CONTARENK], [TACTIP], [PERVAZTIP], [CEKMEKOLU], [KAPINO], [BARELTIP], [BABA], [DURBUN], [TAKTAK], [MONTAJDATAKILACAK], [OLCUMBILGI], [OLCUMTARIH], [OLCUMALANKISI], [MONTAJSEKLI], [TESLIMSEKLI], [PESINAT], [KALANODEME], [FIYAT], [VERGIDAIRESI], [VERGINUMARASI]) VALUES (15, N'N-7', CAST(0x0000A3940188474A AS DateTime), N'SDFSDF', N'SDF', N'SDFSDF', N'SFSDF', N'ÇORUM', N'UGURLUDAG', N'1111111111', N'1111111111', N'1111111111', N'102', N'101', NULL, N'Soke Ceviz', N'Multlock 15''li', N'H-Siyah', N'Siyah', N'Seçiniz', N'Pirinç', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'', N'', N'', N'Yok', N'Var', N'Var', N'SFSAF', N'', CAST(0xD8380B00 AS Date), N'Seçiniz', N'Köpüklü', N'Montajli', N'', N'', NULL, N'', N'')
GO
INSERT [dbo].[SIPARIS] ([ID], [SIPARISNO], [SIPARISTARIH], [BAYIADI], [MUSTERIAD], [MUSTERISOYAD], [MUSTERIADRES], [MUSTERIIL], [MUSTERIILCE], [MUSTERIEVTEL], [MUSTERIISTEL], [MUSTERICEPTEL], [ICKAPIMODEL], [DISKAPIMODEL], [DISKAPIRENK], [ICKAPIRENK], [KILITSISTEM], [CITA], [ESIK], [ALUMINYUMRENK], [AKSESUARRENK], [CONTARENK], [TACTIP], [PERVAZTIP], [CEKMEKOLU], [KAPINO], [BARELTIP], [BABA], [DURBUN], [TAKTAK], [MONTAJDATAKILACAK], [OLCUMBILGI], [OLCUMTARIH], [OLCUMALANKISI], [MONTAJSEKLI], [TESLIMSEKLI], [PESINAT], [KALANODEME], [FIYAT], [VERGIDAIRESI], [VERGINUMARASI]) VALUES (16, N'N-8', CAST(0x0000A39C0184EB70 AS DateTime), N'asda', N'sadsaasd', N'sadas', N'sadsa', N'ARTVIN', N'BORÇKA', N'5454878787', N'8787878878', N'7878787787', N'103', N'102', NULL, N'Karaagaç', N'Multlock 15''li', N'Ince Alüminyum', N'Carmen Red', N'Seçiniz', N'Pirinç', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'asdadsasad', N'asdas', N'asdas', N'Var', N'Yok', N'Yok', N'asdsa', N'sadas', CAST(0xF7380B00 AS Date), N'DERIN', N'Köpüklü', N'Sevk', N'asd', N'asd', NULL, N'ad', N'adasdd')
GO
INSERT [dbo].[SIPARIS] ([ID], [SIPARISNO], [SIPARISTARIH], [BAYIADI], [MUSTERIAD], [MUSTERISOYAD], [MUSTERIADRES], [MUSTERIIL], [MUSTERIILCE], [MUSTERIEVTEL], [MUSTERIISTEL], [MUSTERICEPTEL], [ICKAPIMODEL], [DISKAPIMODEL], [DISKAPIRENK], [ICKAPIRENK], [KILITSISTEM], [CITA], [ESIK], [ALUMINYUMRENK], [AKSESUARRENK], [CONTARENK], [TACTIP], [PERVAZTIP], [CEKMEKOLU], [KAPINO], [BARELTIP], [BABA], [DURBUN], [TAKTAK], [MONTAJDATAKILACAK], [OLCUMBILGI], [OLCUMTARIH], [OLCUMALANKISI], [MONTAJSEKLI], [TESLIMSEKLI], [PESINAT], [KALANODEME], [FIYAT], [VERGIDAIRESI], [VERGINUMARASI]) VALUES (20, N'N-9', CAST(0x0000A3A000F0A60B AS DateTime), N'ados', N'ibo', N'oguz', N'sfsaf', N'ÇANKIRI', N'YAPRAKLI', N'1111111111', N'2222222222', N'2222222222', N'101', N'101', NULL, N'Amerikan Ceviz', N'Seçiniz', N'H-Eloksal', N'Harmankaya', N'Seçiniz', N'Saten', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'arwqar', N'', N'', N'Var', N'Yok', N'Yok', N'wsewq', N'qwerqwr', CAST(0x02390B00 AS Date), N'DERIN', N'Betonlu', N'Sevk', N'', N'', N'', N'', N'')
GO
INSERT [dbo].[SIPARIS] ([ID], [SIPARISNO], [SIPARISTARIH], [BAYIADI], [MUSTERIAD], [MUSTERISOYAD], [MUSTERIADRES], [MUSTERIIL], [MUSTERIILCE], [MUSTERIEVTEL], [MUSTERIISTEL], [MUSTERICEPTEL], [ICKAPIMODEL], [DISKAPIMODEL], [DISKAPIRENK], [ICKAPIRENK], [KILITSISTEM], [CITA], [ESIK], [ALUMINYUMRENK], [AKSESUARRENK], [CONTARENK], [TACTIP], [PERVAZTIP], [CEKMEKOLU], [KAPINO], [BARELTIP], [BABA], [DURBUN], [TAKTAK], [MONTAJDATAKILACAK], [OLCUMBILGI], [OLCUMTARIH], [OLCUMALANKISI], [MONTAJSEKLI], [TESLIMSEKLI], [PESINAT], [KALANODEME], [FIYAT], [VERGIDAIRESI], [VERGINUMARASI]) VALUES (21, N'N-10', CAST(0x0000A3A000F1A8D9 AS DateTime), N'asd', N'mustafa', N'asfasf', N'afafsa', N'ÇORUM', N'UGURLUDAG', N'3333333333', N'3333333333', N'3333333333', N'102', N'104', NULL, N'Amerikan Ceviz', N'Multlock 15''li', N'Ince Alüminyum', N'Carmen Red', N'Seçiniz', N'Pirinç', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'', N'', N'', N'Yok', N'Var', N'Yok', N'sdfsd', N'sdf', CAST(0xF4380B00 AS Date), N'NEJLA', N'Betonlu', N'Sevk', N'', N'', N'', N'', N'')
GO
INSERT [dbo].[SIPARIS] ([ID], [SIPARISNO], [SIPARISTARIH], [BAYIADI], [MUSTERIAD], [MUSTERISOYAD], [MUSTERIADRES], [MUSTERIIL], [MUSTERIILCE], [MUSTERIEVTEL], [MUSTERIISTEL], [MUSTERICEPTEL], [ICKAPIMODEL], [DISKAPIMODEL], [DISKAPIRENK], [ICKAPIRENK], [KILITSISTEM], [CITA], [ESIK], [ALUMINYUMRENK], [AKSESUARRENK], [CONTARENK], [TACTIP], [PERVAZTIP], [CEKMEKOLU], [KAPINO], [BARELTIP], [BABA], [DURBUN], [TAKTAK], [MONTAJDATAKILACAK], [OLCUMBILGI], [OLCUMTARIH], [OLCUMALANKISI], [MONTAJSEKLI], [TESLIMSEKLI], [PESINAT], [KALANODEME], [FIYAT], [VERGIDAIRESI], [VERGINUMARASI]) VALUES (22, N'N-11', CAST(0x0000A3A000F2AF37 AS DateTime), N'fhfgh', N'annnnanan', N'thttytytyt', N'dff', N'ÇORUM', N'SUNGURLU', N'3423432423', N'2523523523', N'2352352352', N'104', N'101', NULL, N'Karaagaç', N'Multlock 15''li', N'H-Eloksal', N'Carmen Red', N'Seçiniz', N'Saten', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'sdg', N'sdgsd', N'sdg', N'Yok', N'Var', N'Var', N'sdgsdg', N'sdgds', CAST(0x02390B00 AS Date), N'IBRAHIM', N'Betonlu', N'Montajli', N'', N'', N'', N'', N'')
GO
INSERT [dbo].[SIPARIS] ([ID], [SIPARISNO], [SIPARISTARIH], [BAYIADI], [MUSTERIAD], [MUSTERISOYAD], [MUSTERIADRES], [MUSTERIIL], [MUSTERIILCE], [MUSTERIEVTEL], [MUSTERIISTEL], [MUSTERICEPTEL], [ICKAPIMODEL], [DISKAPIMODEL], [DISKAPIRENK], [ICKAPIRENK], [KILITSISTEM], [CITA], [ESIK], [ALUMINYUMRENK], [AKSESUARRENK], [CONTARENK], [TACTIP], [PERVAZTIP], [CEKMEKOLU], [KAPINO], [BARELTIP], [BABA], [DURBUN], [TAKTAK], [MONTAJDATAKILACAK], [OLCUMBILGI], [OLCUMTARIH], [OLCUMALANKISI], [MONTAJSEKLI], [TESLIMSEKLI], [PESINAT], [KALANODEME], [FIYAT], [VERGIDAIRESI], [VERGINUMARASI]) VALUES (23, N'N-12', CAST(0x0000A3A000F7D393 AS DateTime), N'sadas', N'aaaa', N'sssss', N'asdsd', N'ÇANKIRI', N'KORGUN', N'1212323123', N'2132132131', N'1231313213', N'101', N'101', NULL, N'Amerikan Ceviz', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'Saten', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'qwewqeqw', N'qwe', N'qweqe', N'Var', N'Var', N'Yok', N'qwe', N'qwew', CAST(0x09390B00 AS Date), N'IBRAHIM', N'Betonlu', N'Montajli', N'', N'', N'', N'', N'')
GO
INSERT [dbo].[SIPARIS] ([ID], [SIPARISNO], [SIPARISTARIH], [BAYIADI], [MUSTERIAD], [MUSTERISOYAD], [MUSTERIADRES], [MUSTERIIL], [MUSTERIILCE], [MUSTERIEVTEL], [MUSTERIISTEL], [MUSTERICEPTEL], [ICKAPIMODEL], [DISKAPIMODEL], [DISKAPIRENK], [ICKAPIRENK], [KILITSISTEM], [CITA], [ESIK], [ALUMINYUMRENK], [AKSESUARRENK], [CONTARENK], [TACTIP], [PERVAZTIP], [CEKMEKOLU], [KAPINO], [BARELTIP], [BABA], [DURBUN], [TAKTAK], [MONTAJDATAKILACAK], [OLCUMBILGI], [OLCUMTARIH], [OLCUMALANKISI], [MONTAJSEKLI], [TESLIMSEKLI], [PESINAT], [KALANODEME], [FIYAT], [VERGIDAIRESI], [VERGINUMARASI]) VALUES (24, N'N-13', CAST(0x0000A3A0010872EE AS DateTime), N'ddddd', N'aaaaaa', N'cccccc', N'asdsd', N'ANKARA', N'PURSAKLAR', N'2222222222', N'2222222222', N'1111111111', N'101', N'102', NULL, N'Porte Ceviz', N'Kale 14''lü', N'Ince Alüminyum', N'Carmen Red', N'Seçiniz', N'Pirinç', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'sadasd', N'asd', N'asd', N'Var', N'Var', N'Yok', N'asdas', N'asdsa', CAST(0xF5380B00 AS Date), N'ALI', N'Vidali', N'Sevk', N'15200', N'456', N'546', N'456', N'456')
GO
INSERT [dbo].[SIPARIS] ([ID], [SIPARISNO], [SIPARISTARIH], [BAYIADI], [MUSTERIAD], [MUSTERISOYAD], [MUSTERIADRES], [MUSTERIIL], [MUSTERIILCE], [MUSTERIEVTEL], [MUSTERIISTEL], [MUSTERICEPTEL], [ICKAPIMODEL], [DISKAPIMODEL], [DISKAPIRENK], [ICKAPIRENK], [KILITSISTEM], [CITA], [ESIK], [ALUMINYUMRENK], [AKSESUARRENK], [CONTARENK], [TACTIP], [PERVAZTIP], [CEKMEKOLU], [KAPINO], [BARELTIP], [BABA], [DURBUN], [TAKTAK], [MONTAJDATAKILACAK], [OLCUMBILGI], [OLCUMTARIH], [OLCUMALANKISI], [MONTAJSEKLI], [TESLIMSEKLI], [PESINAT], [KALANODEME], [FIYAT], [VERGIDAIRESI], [VERGINUMARASI]) VALUES (25, N'N-14', CAST(0x0000A3A00108DFA2 AS DateTime), N'ddddd', N'aaaaaa', N'cccccc', N'asdsd', N'ANKARA', N'PURSAKLAR', N'2222222222', N'2222222222', N'1111111111', N'101', N'102', NULL, N'Porte Ceviz', N'Kale 14''lü', N'Ince Alüminyum', N'Carmen Red', N'Seçiniz', N'Pirinç', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'sadasd', N'asd', N'asd', N'Var', N'Var', N'Yok', N'asdas', N'asdsa', CAST(0xF5380B00 AS Date), N'ALI', N'Vidali', N'Sevk', N'', N'', N'', N'', N'')
GO
INSERT [dbo].[SIPARIS] ([ID], [SIPARISNO], [SIPARISTARIH], [BAYIADI], [MUSTERIAD], [MUSTERISOYAD], [MUSTERIADRES], [MUSTERIIL], [MUSTERIILCE], [MUSTERIEVTEL], [MUSTERIISTEL], [MUSTERICEPTEL], [ICKAPIMODEL], [DISKAPIMODEL], [DISKAPIRENK], [ICKAPIRENK], [KILITSISTEM], [CITA], [ESIK], [ALUMINYUMRENK], [AKSESUARRENK], [CONTARENK], [TACTIP], [PERVAZTIP], [CEKMEKOLU], [KAPINO], [BARELTIP], [BABA], [DURBUN], [TAKTAK], [MONTAJDATAKILACAK], [OLCUMBILGI], [OLCUMTARIH], [OLCUMALANKISI], [MONTAJSEKLI], [TESLIMSEKLI], [PESINAT], [KALANODEME], [FIYAT], [VERGIDAIRESI], [VERGINUMARASI]) VALUES (26, N'N-15', CAST(0x0000A3A0010AA24E AS DateTime), N'assski', N'xxxxx', N'cccccc', N'sdadasda', N'BAYBURT', N'AYDINTEPE', N'1111111111', N'2222222222', N'3333333333', N'101', N'103', NULL, N'Porte Ceviz', N'Multlock 15''li', N'H-Siyah', N'Siyah', N'Seçiniz', N'Pirinç', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'sdfdsf', N'sdf', N'sdfsd', N'Var', N'Yok', N'Var', N'dsfsd', N'dsfsdf', CAST(0x10390B00 AS Date), N'IBRAHIM', N'Vidali', N'Sevk', N'333333', N'3333', N'25000', N'sdsf', N'22222')
GO
INSERT [dbo].[SIPARIS] ([ID], [SIPARISNO], [SIPARISTARIH], [BAYIADI], [MUSTERIAD], [MUSTERISOYAD], [MUSTERIADRES], [MUSTERIIL], [MUSTERIILCE], [MUSTERIEVTEL], [MUSTERIISTEL], [MUSTERICEPTEL], [ICKAPIMODEL], [DISKAPIMODEL], [DISKAPIRENK], [ICKAPIRENK], [KILITSISTEM], [CITA], [ESIK], [ALUMINYUMRENK], [AKSESUARRENK], [CONTARENK], [TACTIP], [PERVAZTIP], [CEKMEKOLU], [KAPINO], [BARELTIP], [BABA], [DURBUN], [TAKTAK], [MONTAJDATAKILACAK], [OLCUMBILGI], [OLCUMTARIH], [OLCUMALANKISI], [MONTAJSEKLI], [TESLIMSEKLI], [PESINAT], [KALANODEME], [FIYAT], [VERGIDAIRESI], [VERGINUMARASI]) VALUES (27, N'K-1', CAST(0x0000A3A0010C01D7 AS DateTime), N'dddddd', N'zzzzzz', N'cccccc', N'zcxc sdas', N'ÇANKIRI', N'KURSUNLU', N'3333333333', N'4444444444', N'4444444444', N'602', N'604', NULL, N'Porte Ceviz', N'Multlock 15''li', N'H-Eloksal', N'Harmankaya', N'Seçiniz', N'Saten', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'wqewq', N'wrrqwr', N'qwrqwr', N'Var', N'Var', N'Yok', N'qrrwqrqw', N'wqrqwr', CAST(0x02390B00 AS Date), N'IBRAHIM', N'Vidali', N'Sevk', N'', N'', N'', N'', N'')
GO
INSERT [dbo].[SIPARIS] ([ID], [SIPARISNO], [SIPARISTARIH], [BAYIADI], [MUSTERIAD], [MUSTERISOYAD], [MUSTERIADRES], [MUSTERIIL], [MUSTERIILCE], [MUSTERIEVTEL], [MUSTERIISTEL], [MUSTERICEPTEL], [ICKAPIMODEL], [DISKAPIMODEL], [DISKAPIRENK], [ICKAPIRENK], [KILITSISTEM], [CITA], [ESIK], [ALUMINYUMRENK], [AKSESUARRENK], [CONTARENK], [TACTIP], [PERVAZTIP], [CEKMEKOLU], [KAPINO], [BARELTIP], [BABA], [DURBUN], [TAKTAK], [MONTAJDATAKILACAK], [OLCUMBILGI], [OLCUMTARIH], [OLCUMALANKISI], [MONTAJSEKLI], [TESLIMSEKLI], [PESINAT], [KALANODEME], [FIYAT], [VERGIDAIRESI], [VERGINUMARASI]) VALUES (28, N'N-16', CAST(0x0000A3A0010E03A8 AS DateTime), N'AAAA', N'ZZZZZ', N'XXXXX', N'ZXZX', N'BITLIS', N'AHLAT', N'3333333333', N'3333333333', N'2222222222', N'101', N'101', NULL, N'Karaagaç', N'Kale 14''lü', N'H-Siyah', N'Siyah', N'Seçiniz', N'Pirinç', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'SDSAD', N'SADAS', N'ASDAS', N'Var', N'Var', N'Yok', N'ASD', N'SADSAD', CAST(0x09390B00 AS Date), N'DERIN', N'Köpüklü', N'Sevk', N'5000', N'34', N'ASSA', N'SAF', N'SAF')
GO
INSERT [dbo].[SIPARIS] ([ID], [SIPARISNO], [SIPARISTARIH], [BAYIADI], [MUSTERIAD], [MUSTERISOYAD], [MUSTERIADRES], [MUSTERIIL], [MUSTERIILCE], [MUSTERIEVTEL], [MUSTERIISTEL], [MUSTERICEPTEL], [ICKAPIMODEL], [DISKAPIMODEL], [DISKAPIRENK], [ICKAPIRENK], [KILITSISTEM], [CITA], [ESIK], [ALUMINYUMRENK], [AKSESUARRENK], [CONTARENK], [TACTIP], [PERVAZTIP], [CEKMEKOLU], [KAPINO], [BARELTIP], [BABA], [DURBUN], [TAKTAK], [MONTAJDATAKILACAK], [OLCUMBILGI], [OLCUMTARIH], [OLCUMALANKISI], [MONTAJSEKLI], [TESLIMSEKLI], [PESINAT], [KALANODEME], [FIYAT], [VERGIDAIRESI], [VERGINUMARASI]) VALUES (29, N'N-17', CAST(0x0000A3A0010F5906 AS DateTime), N'dfdg', N'dfgdfg', N'dfggdfg', N'dfgfdg', N'ÇORUM', N'ÇORUM MERKEZ', N'3434343434', N'3434343434', N'3434343434', N'102', N'103', NULL, N'Amerikan Ceviz', N'Kale 14''lü', N'H-Eloksal', N'Yok', N'Seçiniz', N'Saten', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'dfgdfg', N'dfgdf', N'dfgd', N'Var', N'Var', N'Yok', N'dfg', N'dfgfd', CAST(0xF4380B00 AS Date), N'IBRAHIM', N'Betonlu', N'Sevk', N'34324', N'234', N'fdg', N'dg', N'3434')
GO
INSERT [dbo].[SIPARIS] ([ID], [SIPARISNO], [SIPARISTARIH], [BAYIADI], [MUSTERIAD], [MUSTERISOYAD], [MUSTERIADRES], [MUSTERIIL], [MUSTERIILCE], [MUSTERIEVTEL], [MUSTERIISTEL], [MUSTERICEPTEL], [ICKAPIMODEL], [DISKAPIMODEL], [DISKAPIRENK], [ICKAPIRENK], [KILITSISTEM], [CITA], [ESIK], [ALUMINYUMRENK], [AKSESUARRENK], [CONTARENK], [TACTIP], [PERVAZTIP], [CEKMEKOLU], [KAPINO], [BARELTIP], [BABA], [DURBUN], [TAKTAK], [MONTAJDATAKILACAK], [OLCUMBILGI], [OLCUMTARIH], [OLCUMALANKISI], [MONTAJSEKLI], [TESLIMSEKLI], [PESINAT], [KALANODEME], [FIYAT], [VERGIDAIRESI], [VERGINUMARASI]) VALUES (30, N'N-18', CAST(0x0000A3A00110BDCE AS DateTime), N'ASDS', N'AAAAA', N'DDDDDD', N'ASSDASDASD', N'ÇORUM', N'OSMANCIK', N'1111111111', N'2222222222', N'3333333333', N'101', N'102', N'102', N'Soke Ceviz', N'Multlock 15''li', N'H-Siyah', N'Carmen Red', N'Seçiniz', N'Pirinç', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'121', N'WE', N'QWE', N'Var', N'Var', N'Var', N'QWEQWE', N'QWEQW', CAST(0x02390B00 AS Date), N'NEJLA', N'Vidali', N'Sevk', N'33333', N'4444', N'3555', N'SDFSDF', N'12323323')
GO
INSERT [dbo].[SIPARIS] ([ID], [SIPARISNO], [SIPARISTARIH], [BAYIADI], [MUSTERIAD], [MUSTERISOYAD], [MUSTERIADRES], [MUSTERIIL], [MUSTERIILCE], [MUSTERIEVTEL], [MUSTERIISTEL], [MUSTERICEPTEL], [ICKAPIMODEL], [DISKAPIMODEL], [DISKAPIRENK], [ICKAPIRENK], [KILITSISTEM], [CITA], [ESIK], [ALUMINYUMRENK], [AKSESUARRENK], [CONTARENK], [TACTIP], [PERVAZTIP], [CEKMEKOLU], [KAPINO], [BARELTIP], [BABA], [DURBUN], [TAKTAK], [MONTAJDATAKILACAK], [OLCUMBILGI], [OLCUMTARIH], [OLCUMALANKISI], [MONTAJSEKLI], [TESLIMSEKLI], [PESINAT], [KALANODEME], [FIYAT], [VERGIDAIRESI], [VERGINUMARASI]) VALUES (31, N'N-19', CAST(0x0000A3A00111D5F8 AS DateTime), N'asd', N'aaaa', N'sssss', N'asasasas', N'AYDIN', N'SULTANHISAR', N'4444444444', N'5555555555', N'1111111111', N'103', N'103', N'Amerikan Ceviz', N'Porte Ceviz', N'Kale 14''lü', N'H-Siyah', N'Siyah', N'Seçiniz', N'Pirinç', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'sdfdsf', N'9', N'sdfsd', N'Var', N'Yok', N'Yok', N'dfdsf', N'sdf', CAST(0xF4380B00 AS Date), N'NEJLA', N'Vidali', N'Sevk', N'45', N'323', N'40000', N'dsfsd', N'444444444')
GO
INSERT [dbo].[SIPARIS] ([ID], [SIPARISNO], [SIPARISTARIH], [BAYIADI], [MUSTERIAD], [MUSTERISOYAD], [MUSTERIADRES], [MUSTERIIL], [MUSTERIILCE], [MUSTERIEVTEL], [MUSTERIISTEL], [MUSTERICEPTEL], [ICKAPIMODEL], [DISKAPIMODEL], [DISKAPIRENK], [ICKAPIRENK], [KILITSISTEM], [CITA], [ESIK], [ALUMINYUMRENK], [AKSESUARRENK], [CONTARENK], [TACTIP], [PERVAZTIP], [CEKMEKOLU], [KAPINO], [BARELTIP], [BABA], [DURBUN], [TAKTAK], [MONTAJDATAKILACAK], [OLCUMBILGI], [OLCUMTARIH], [OLCUMALANKISI], [MONTAJSEKLI], [TESLIMSEKLI], [PESINAT], [KALANODEME], [FIYAT], [VERGIDAIRESI], [VERGINUMARASI]) VALUES (32, N'N-20', CAST(0x0000A3A00112B2EC AS DateTime), N'ssss', N'asasd', N'asdsd', N'asdsad', N'BURDUR', N'ALTINYAYLA', N'1121212121', N'1212121212', N'2323232323', N'101', N'103', N'Karaagaç', N'Porte Ceviz', N'Multlock 15''li', N'H-Siyah', N'Siyah', N'Seçiniz', N'Pirinç', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'sdasd', N'asdsa', N'asasd', N'Yok', N'Var', N'Yok', N'asd', N'asdas', CAST(0xF4380B00 AS Date), N'IBRAHIM', N'Betonlu', N'Sevk', N'5000', N'3000', N'8000', N'asdas', N'123145664552')
GO
INSERT [dbo].[SIPARIS] ([ID], [SIPARISNO], [SIPARISTARIH], [BAYIADI], [MUSTERIAD], [MUSTERISOYAD], [MUSTERIADRES], [MUSTERIIL], [MUSTERIILCE], [MUSTERIEVTEL], [MUSTERIISTEL], [MUSTERICEPTEL], [ICKAPIMODEL], [DISKAPIMODEL], [DISKAPIRENK], [ICKAPIRENK], [KILITSISTEM], [CITA], [ESIK], [ALUMINYUMRENK], [AKSESUARRENK], [CONTARENK], [TACTIP], [PERVAZTIP], [CEKMEKOLU], [KAPINO], [BARELTIP], [BABA], [DURBUN], [TAKTAK], [MONTAJDATAKILACAK], [OLCUMBILGI], [OLCUMTARIH], [OLCUMALANKISI], [MONTAJSEKLI], [TESLIMSEKLI], [PESINAT], [KALANODEME], [FIYAT], [VERGIDAIRESI], [VERGINUMARASI]) VALUES (33, N'N-21', CAST(0x0000A3A001143B1F AS DateTime), N'aaaaaaa', N'ssssssssss', N'ssssssssssss', N'ssssssssssss', N'DENIZLI', N'TAVAS', N'3333333333', N'3333333333', N'3333333333', N'101', N'103', N'Soke Ceviz', N'Karaagaç', N'Kale 14''lü', N'Kalin Alüminyum', N'Seçiniz', N'Seçiniz', N'Pirinç', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'sdsa', N'asd', N'asd', N'Yok', N'Yok', N'Var', N'asd', N'asd', CAST(0xF4380B00 AS Date), N'NEJLA', N'Vidali', N'Sevk', N'2323', N'23', N'2333', N'sad', N'23ewew')
GO
INSERT [dbo].[SIPARIS] ([ID], [SIPARISNO], [SIPARISTARIH], [BAYIADI], [MUSTERIAD], [MUSTERISOYAD], [MUSTERIADRES], [MUSTERIIL], [MUSTERIILCE], [MUSTERIEVTEL], [MUSTERIISTEL], [MUSTERICEPTEL], [ICKAPIMODEL], [DISKAPIMODEL], [DISKAPIRENK], [ICKAPIRENK], [KILITSISTEM], [CITA], [ESIK], [ALUMINYUMRENK], [AKSESUARRENK], [CONTARENK], [TACTIP], [PERVAZTIP], [CEKMEKOLU], [KAPINO], [BARELTIP], [BABA], [DURBUN], [TAKTAK], [MONTAJDATAKILACAK], [OLCUMBILGI], [OLCUMTARIH], [OLCUMALANKISI], [MONTAJSEKLI], [TESLIMSEKLI], [PESINAT], [KALANODEME], [FIYAT], [VERGIDAIRESI], [VERGINUMARASI]) VALUES (34, N'K-2', CAST(0x0000A3A001158E84 AS DateTime), N'sds', N'sdfsd', N'sfdsfsd', N'sdfsd', N'ÇANAKKALE', N'GELIBOLU', N'2222222222', N'2222222222', N'', N'602', N'602', N'Porte Ceviz', N'Porte Ceviz', N'Kale 14''lü', N'H-Siyah', N'Carmen Red', N'Seçiniz', N'Pirinç', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'sdfsdf', N'sdf', N'sdf', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'sdf', N'sdfsd', CAST(0xF4380B00 AS Date), N'IBRAHIM', N'Betonlu', N'Montajli', N'', N'', N'', N'', N'')
GO
INSERT [dbo].[SIPARIS] ([ID], [SIPARISNO], [SIPARISTARIH], [BAYIADI], [MUSTERIAD], [MUSTERISOYAD], [MUSTERIADRES], [MUSTERIIL], [MUSTERIILCE], [MUSTERIEVTEL], [MUSTERIISTEL], [MUSTERICEPTEL], [ICKAPIMODEL], [DISKAPIMODEL], [DISKAPIRENK], [ICKAPIRENK], [KILITSISTEM], [CITA], [ESIK], [ALUMINYUMRENK], [AKSESUARRENK], [CONTARENK], [TACTIP], [PERVAZTIP], [CEKMEKOLU], [KAPINO], [BARELTIP], [BABA], [DURBUN], [TAKTAK], [MONTAJDATAKILACAK], [OLCUMBILGI], [OLCUMTARIH], [OLCUMALANKISI], [MONTAJSEKLI], [TESLIMSEKLI], [PESINAT], [KALANODEME], [FIYAT], [VERGIDAIRESI], [VERGINUMARASI]) VALUES (35, N'N-22', CAST(0x0000A3A100F2EA9C AS DateTime), N'gümrük', N'feride', N'eride', N'asd ssfsa afsf', N'ÇANAKKALE', N'BAYRAMIÇ', N'3434343434', N'3434343434', N'', N'102', N'Seçiniz', N'Porte Ceviz', N'Seçiniz', N'Multlock 15''li', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'çeker', N'9', N'tipsiz', N'Var', N'Seçiniz', N'Yok', N'takilacaklar takilmayacaklar', N'ölçümsüz ler dfsdf', CAST(0xF4380B00 AS Date), N'NEJLA', N'Köpüklü', N'Montajli', N'', N'', N'', N'', N'')
GO
INSERT [dbo].[SIPARIS] ([ID], [SIPARISNO], [SIPARISTARIH], [BAYIADI], [MUSTERIAD], [MUSTERISOYAD], [MUSTERIADRES], [MUSTERIIL], [MUSTERIILCE], [MUSTERIEVTEL], [MUSTERIISTEL], [MUSTERICEPTEL], [ICKAPIMODEL], [DISKAPIMODEL], [DISKAPIRENK], [ICKAPIRENK], [KILITSISTEM], [CITA], [ESIK], [ALUMINYUMRENK], [AKSESUARRENK], [CONTARENK], [TACTIP], [PERVAZTIP], [CEKMEKOLU], [KAPINO], [BARELTIP], [BABA], [DURBUN], [TAKTAK], [MONTAJDATAKILACAK], [OLCUMBILGI], [OLCUMTARIH], [OLCUMALANKISI], [MONTAJSEKLI], [TESLIMSEKLI], [PESINAT], [KALANODEME], [FIYAT], [VERGIDAIRESI], [VERGINUMARASI]) VALUES (36, N'N-23', CAST(0x0000A3A100F483C4 AS DateTime), N'asd', N'asf', N'asd', N'asd', N'ÇORUM', N'OSMANCIK', N'', N'', N'', N'101', N'Seçiniz', N'Seçiniz', N'Porte Ceviz', N'Seçiniz', N'Seçiniz', N'Carmen Red', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'', N'', N'', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'afasf', N'asf', CAST(0x02390B00 AS Date), N'NEJLA', N'Vidali', N'Montajli', N'', N'', N'', N'', N'')
GO
INSERT [dbo].[SIPARIS] ([ID], [SIPARISNO], [SIPARISTARIH], [BAYIADI], [MUSTERIAD], [MUSTERISOYAD], [MUSTERIADRES], [MUSTERIIL], [MUSTERIILCE], [MUSTERIEVTEL], [MUSTERIISTEL], [MUSTERICEPTEL], [ICKAPIMODEL], [DISKAPIMODEL], [DISKAPIRENK], [ICKAPIRENK], [KILITSISTEM], [CITA], [ESIK], [ALUMINYUMRENK], [AKSESUARRENK], [CONTARENK], [TACTIP], [PERVAZTIP], [CEKMEKOLU], [KAPINO], [BARELTIP], [BABA], [DURBUN], [TAKTAK], [MONTAJDATAKILACAK], [OLCUMBILGI], [OLCUMTARIH], [OLCUMALANKISI], [MONTAJSEKLI], [TESLIMSEKLI], [PESINAT], [KALANODEME], [FIYAT], [VERGIDAIRESI], [VERGINUMARASI]) VALUES (37, N'N-24', CAST(0x0000A3A100F56294 AS DateTime), N'asd', N'asf', N'asd', N'asd', N'BATMAN', N'GERCÜS', N'1111111111', N'2222222222', N'3333333333', N'101', N'103', NULL, N'Porte Ceviz', N'Kale 14''lü', N'H-Siyah', N'Carmen Red', N'Seçiniz', N'Pirinç', N'Seçiniz', N'Seçiniz', N'Seçiniz', N'', N'', N'', N'Var', N'Var', N'Var', N'afasf', N'asf', CAST(0x02390B00 AS Date), N'HATICE', N'Vidali', N'Montajli', N'', N'', N'', N'', N'')
GO
SET IDENTITY_INSERT [dbo].[SIPARIS] OFF
GO
INSERT [dbo].[SIPARISNOSAYAC] ([YIL], [KAPITUR], [SIRANO]) VALUES (2014, N'Nova', 7)
GO
INSERT [dbo].[SIPARISNOSAYAC] ([YIL], [KAPITUR], [SIRANO]) VALUES (2014, N'Nova', 24)
GO
INSERT [dbo].[SIPARISNOSAYAC] ([YIL], [KAPITUR], [SIRANO]) VALUES (2014, N'Kroma', 2)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_SIPARIS_NO]    Script Date: 12.9.2014 22:12:07 ******/
CREATE NONCLUSTERED INDEX [IX_SIPARIS_NO] ON [dbo].[MONTAJ]
(
	[SIPARISNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [ACKAppDB] SET  READ_WRITE 
GO
