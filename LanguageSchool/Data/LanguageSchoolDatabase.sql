USE [master]
GO
/****** Object:  Database [LanguageSchool]    Script Date: 01/29/2015 10:45:48 ******/
CREATE DATABASE [LanguageSchool] ON  PRIMARY 
( NAME = N'LanguageSchool', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\LanguageSchool.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LanguageSchool_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\LanguageSchool_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LanguageSchool] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LanguageSchool].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LanguageSchool] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [LanguageSchool] SET ANSI_NULLS OFF
GO
ALTER DATABASE [LanguageSchool] SET ANSI_PADDING OFF
GO
ALTER DATABASE [LanguageSchool] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [LanguageSchool] SET ARITHABORT OFF
GO
ALTER DATABASE [LanguageSchool] SET AUTO_CLOSE ON
GO
ALTER DATABASE [LanguageSchool] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [LanguageSchool] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [LanguageSchool] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [LanguageSchool] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [LanguageSchool] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [LanguageSchool] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [LanguageSchool] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [LanguageSchool] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [LanguageSchool] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [LanguageSchool] SET  DISABLE_BROKER
GO
ALTER DATABASE [LanguageSchool] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [LanguageSchool] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [LanguageSchool] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [LanguageSchool] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [LanguageSchool] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [LanguageSchool] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [LanguageSchool] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [LanguageSchool] SET  READ_WRITE
GO
ALTER DATABASE [LanguageSchool] SET RECOVERY SIMPLE
GO
ALTER DATABASE [LanguageSchool] SET  MULTI_USER
GO
ALTER DATABASE [LanguageSchool] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [LanguageSchool] SET DB_CHAINING OFF
GO
USE [LanguageSchool]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 01/29/2015 10:45:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id Student] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NULL,
	[Family Name] [nvarchar](30) NULL,
	[Address] [nvarchar](250) NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id Student] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Students] ON
INSERT [dbo].[Students] ([Id Student], [Name], [Family Name], [Address]) VALUES (1, N'Eleonora', N'Dineva', N'Pleven')
INSERT [dbo].[Students] ([Id Student], [Name], [Family Name], [Address]) VALUES (2, N'Ivana', N'Teneva', N'Sofia')
INSERT [dbo].[Students] ([Id Student], [Name], [Family Name], [Address]) VALUES (3, N'Grigor', N'Penchev', N'Silistra')
INSERT [dbo].[Students] ([Id Student], [Name], [Family Name], [Address]) VALUES (4, N'Petur', N'Ivanov', N'Smolyan')
INSERT [dbo].[Students] ([Id Student], [Name], [Family Name], [Address]) VALUES (5, N'Dilyana', N'Gineva', N'Sofia')
INSERT [dbo].[Students] ([Id Student], [Name], [Family Name], [Address]) VALUES (6, N'Dimitur', N'Mitev', N'Smolyan')
INSERT [dbo].[Students] ([Id Student], [Name], [Family Name], [Address]) VALUES (7, N'Blagovest', N'Dechev', N'Burgas')
INSERT [dbo].[Students] ([Id Student], [Name], [Family Name], [Address]) VALUES (8, N'Branimir', N'Milev', N'Razgrad')
INSERT [dbo].[Students] ([Id Student], [Name], [Family Name], [Address]) VALUES (9, N'Elisaveta', N'Kotzeva', N'Plovdiv')
INSERT [dbo].[Students] ([Id Student], [Name], [Family Name], [Address]) VALUES (10, N'Borislav', N'Monev', N'Etropole')
INSERT [dbo].[Students] ([Id Student], [Name], [Family Name], [Address]) VALUES (11, N'Kiril', N'Gochev', N'Varna')
INSERT [dbo].[Students] ([Id Student], [Name], [Family Name], [Address]) VALUES (12, N'Krum', N'Bachev', N'Radnevo')
INSERT [dbo].[Students] ([Id Student], [Name], [Family Name], [Address]) VALUES (13, N'Mariya', N'Evstatieva', N'Varna')
INSERT [dbo].[Students] ([Id Student], [Name], [Family Name], [Address]) VALUES (14, N'Manol', N'Lazarov', N'Dobrich')
INSERT [dbo].[Students] ([Id Student], [Name], [Family Name], [Address]) VALUES (15, N'Lazar', N'Ginev', N'Koprivshtitza')
INSERT [dbo].[Students] ([Id Student], [Name], [Family Name], [Address]) VALUES (16, N'Andrey', N'Enev', N'Kustendil')
INSERT [dbo].[Students] ([Id Student], [Name], [Family Name], [Address]) VALUES (17, N'Ivan', N'Ivanov', N'Blagoevgrad')
INSERT [dbo].[Students] ([Id Student], [Name], [Family Name], [Address]) VALUES (18, N'Georgi', N'Petev', N'Tryavna')
INSERT [dbo].[Students] ([Id Student], [Name], [Family Name], [Address]) VALUES (19, N'Dimitur', N'Vasilev', N'Teteven')
INSERT [dbo].[Students] ([Id Student], [Name], [Family Name], [Address]) VALUES (20, N'Dimana', N'Gineva', N'Pleven')
INSERT [dbo].[Students] ([Id Student], [Name], [Family Name], [Address]) VALUES (21, N'Radostina', N'Peneva', N'Pleven')
INSERT [dbo].[Students] ([Id Student], [Name], [Family Name], [Address]) VALUES (23, N'Veneta', N'Deneva', N'Bansko')
INSERT [dbo].[Students] ([Id Student], [Name], [Family Name], [Address]) VALUES (25, N'Evgeni', N'Benev', N'Ravda')
SET IDENTITY_INSERT [dbo].[Students] OFF
/****** Object:  Table [dbo].[EducationFields]    Script Date: 01/29/2015 10:45:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EducationFields](
	[Code] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_EducationFields] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[EducationFields] ([Code], [Name]) VALUES (N'C1', N'General Computer Skills')
INSERT [dbo].[EducationFields] ([Code], [Name]) VALUES (N'C2', N'Internet Skills')
INSERT [dbo].[EducationFields] ([Code], [Name]) VALUES (N'C3', N'MS Word')
INSERT [dbo].[EducationFields] ([Code], [Name]) VALUES (N'C4', N'MS Access')
INSERT [dbo].[EducationFields] ([Code], [Name]) VALUES (N'C5', N'MS Powerpoint')
INSERT [dbo].[EducationFields] ([Code], [Name]) VALUES (N'C6', N'MS Excel')
INSERT [dbo].[EducationFields] ([Code], [Name]) VALUES (N'L1', N'English')
INSERT [dbo].[EducationFields] ([Code], [Name]) VALUES (N'L2', N'German')
INSERT [dbo].[EducationFields] ([Code], [Name]) VALUES (N'L3', N'French')
/****** Object:  Table [dbo].[Teachers]    Script Date: 01/29/2015 10:45:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[PIN] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](30) NULL,
	[Family Name] [nvarchar](30) NULL,
	[Address] [nvarchar](250) NULL,
 CONSTRAINT [PK_Teachers] PRIMARY KEY CLUSTERED 
(
	[PIN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Teachers] ([PIN], [Name], [Family Name], [Address]) VALUES (N'6904257630', N'Miglena ', N'Boneva', N'Ivaylovgrad')
INSERT [dbo].[Teachers] ([PIN], [Name], [Family Name], [Address]) VALUES (N'6909147630', N'Evelin', N'Milev', N'Vidin')
INSERT [dbo].[Teachers] ([PIN], [Name], [Family Name], [Address]) VALUES (N'7006127630', N'Petur', N'Madjarov', N'Petrich')
INSERT [dbo].[Teachers] ([PIN], [Name], [Family Name], [Address]) VALUES (N'7011167630', N'Milena', N'Bandeva', N'Sofia')
INSERT [dbo].[Teachers] ([PIN], [Name], [Family Name], [Address]) VALUES (N'7101677630', N'Neda', N'Teneva', N'Radnevo')
INSERT [dbo].[Teachers] ([PIN], [Name], [Family Name], [Address]) VALUES (N'7108277630', N'Fani', N'Stefanova', N'Radnevo')
INSERT [dbo].[Teachers] ([PIN], [Name], [Family Name], [Address]) VALUES (N'7312187630', N'Boris', N'Stratiev', N'Velingrad')
INSERT [dbo].[Teachers] ([PIN], [Name], [Family Name], [Address]) VALUES (N'7502187630', N'Mladen', N'Dinev', N'Blagoevgrad')
INSERT [dbo].[Teachers] ([PIN], [Name], [Family Name], [Address]) VALUES (N'7511257630', N'Vasilena', N'Ivanova', N'Kustendil')
INSERT [dbo].[Teachers] ([PIN], [Name], [Family Name], [Address]) VALUES (N'7606207630', N'Evgeni', N'Borisov', N'Asenovgrad')
INSERT [dbo].[Teachers] ([PIN], [Name], [Family Name], [Address]) VALUES (N'7804287630', N'Nedyalko', N'Grigorov', N'Gotze Delchev')
INSERT [dbo].[Teachers] ([PIN], [Name], [Family Name], [Address]) VALUES (N'7908217630', N'Nadejda', N'Staneva', N'Sozopol')
INSERT [dbo].[Teachers] ([PIN], [Name], [Family Name], [Address]) VALUES (N'8002057630', N'Gergana', N'Vasileva', N'Sofia')
INSERT [dbo].[Teachers] ([PIN], [Name], [Family Name], [Address]) VALUES (N'8310277630', N'Vladimira', N'Dimitrova', N'Kustendil')
INSERT [dbo].[Teachers] ([PIN], [Name], [Family Name], [Address]) VALUES (N'8503127630', N'Gabriela', N'Kirilova', N'Sofia')
INSERT [dbo].[Teachers] ([PIN], [Name], [Family Name], [Address]) VALUES (N'8504227630', N'Vladimir', N'Kanev', N'Simeonovgrad')
INSERT [dbo].[Teachers] ([PIN], [Name], [Family Name], [Address]) VALUES (N'8510227630', N'Vasil', N'Nedelchev', N'Ruse')
INSERT [dbo].[Teachers] ([PIN], [Name], [Family Name], [Address]) VALUES (N'8709307630', N'Kostadinka', N'Ilieva', N'Gabrovo')
INSERT [dbo].[Teachers] ([PIN], [Name], [Family Name], [Address]) VALUES (N'8805307630', N'Ivan', N'Marinov', N'Stara Zagora')
INSERT [dbo].[Teachers] ([PIN], [Name], [Family Name], [Address]) VALUES (N'8807137630', N'Ilia', N'Genov', N'Yambol')
/****** Object:  Table [dbo].[Buildings]    Script Date: 01/29/2015 10:45:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buildings](
	[Id Building] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](250) NULL,
 CONSTRAINT [PK_Buildings] PRIMARY KEY CLUSTERED 
(
	[Id Building] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Buildings] ON
INSERT [dbo].[Buildings] ([Id Building], [Address]) VALUES (1, N'Sofia, bul. Knyaz Aleksander Dondukov 57G')
SET IDENTITY_INSERT [dbo].[Buildings] OFF
/****** Object:  Table [dbo].[Teachers-EducationFields]    Script Date: 01/29/2015 10:45:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers-EducationFields](
	[PIN] [nvarchar](10) NOT NULL,
	[Code] [nvarchar](10) NOT NULL,
	[Certificate] [nvarchar](100) NULL,
 CONSTRAINT [PK_Teachers-EducationFields] PRIMARY KEY CLUSTERED 
(
	[PIN] ASC,
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'6904257630', N'L2', N'Zertifikat Deutsch')
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'7006127630', N'L1', N'TKT')
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'7006127630', N'L2', N'Zertifikat Deutsch')
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'7011167630', N'C2', NULL)
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'7011167630', N'L2', N'Zertifikat Deutsch')
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'7101677630', N'L2', N'Zertifikat Deutsch')
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'7108277630', N'C3', NULL)
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'7108277630', N'C4', NULL)
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'7108277630', N'L1', N'TKT')
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'7312187630', N'L2', N'Zertifikat Deutsch')
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'7502187630', N'L1', N'CELTA')
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'7502187630', N'L2', N'Zertifikat Deutsch')
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'7511257630', N'L1', N'TKT')
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'7606207630', N'L2', N'Zertifikat Deutsch')
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'7606207630', N'L3', N'TCF')
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'7804287630', N'L1', N'CELTA')
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'7804287630', N'L2', N'Zertifikat Deutsch')
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'7804287630', N'L3', N'TCF')
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'7908217630', N'L2', N'Zertifikat Deutsch')
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'8002057630', N'C5', NULL)
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'8002057630', N'C6', NULL)
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'8002057630', N'L1', N'TKT')
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'8002057630', N'L2', N'Zertifikat Deutsch')
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'8310277630', N'L1', N'CELTA')
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'8310277630', N'L2', N'Zertifikat Deutsch')
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'8310277630', N'L3', N'TCF')
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'8503127630', N'C1', N'')
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'8503127630', N'C3', N'')
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'8503127630', N'L1', N'CELTA')
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'8503127630', N'L3', N'TCF')
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'8504227630', N'L1', N'TKT')
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'8504227630', N'L3', N'TCF')
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'8510227630', N'L3', N'TCF')
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'8709307630', N'C1', NULL)
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'8709307630', N'C2', NULL)
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'8709307630', N'L1', N'TKT')
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'8709307630', N'L2', N'Zertifikat Deutsch')
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'8805307630', N'L1', N'CELTA')
INSERT [dbo].[Teachers-EducationFields] ([PIN], [Code], [Certificate]) VALUES (N'8807137630', N'L1', N'TKT')
/****** Object:  Table [dbo].[Courses]    Script Date: 01/29/2015 10:45:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[Id Course] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](10) NULL,
	[Type] [nvarchar](30) NULL,
	[Kind] [nvarchar](50) NULL,
	[Specification] [nvarchar](50) NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[Id Course] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Courses] ON
INSERT [dbo].[Courses] ([Id Course], [Code], [Type], [Kind], [Specification]) VALUES (1, N'C1', N'Students', N'', N'')
INSERT [dbo].[Courses] ([Id Course], [Code], [Type], [Kind], [Specification]) VALUES (2, N'C2', N'Students', NULL, NULL)
INSERT [dbo].[Courses] ([Id Course], [Code], [Type], [Kind], [Specification]) VALUES (3, N'C1', N'Adults', NULL, NULL)
INSERT [dbo].[Courses] ([Id Course], [Code], [Type], [Kind], [Specification]) VALUES (4, N'C2', N'Adults', NULL, NULL)
INSERT [dbo].[Courses] ([Id Course], [Code], [Type], [Kind], [Specification]) VALUES (5, N'C3', N'Adults', NULL, NULL)
INSERT [dbo].[Courses] ([Id Course], [Code], [Type], [Kind], [Specification]) VALUES (6, N'C4', N'Adults', NULL, NULL)
INSERT [dbo].[Courses] ([Id Course], [Code], [Type], [Kind], [Specification]) VALUES (7, N'C5', N'Adults', NULL, NULL)
INSERT [dbo].[Courses] ([Id Course], [Code], [Type], [Kind], [Specification]) VALUES (8, N'C6', N'Adults', NULL, NULL)
INSERT [dbo].[Courses] ([Id Course], [Code], [Type], [Kind], [Specification]) VALUES (9, N'L1', N'Adults', N'General English', N'A1')
INSERT [dbo].[Courses] ([Id Course], [Code], [Type], [Kind], [Specification]) VALUES (10, N'L1', N'Adults', N'General English', N'A2')
INSERT [dbo].[Courses] ([Id Course], [Code], [Type], [Kind], [Specification]) VALUES (11, N'L1', N'Adults', N'General English', N'B1')
INSERT [dbo].[Courses] ([Id Course], [Code], [Type], [Kind], [Specification]) VALUES (12, N'L1', N'Adults', N'General English', N'B2')
INSERT [dbo].[Courses] ([Id Course], [Code], [Type], [Kind], [Specification]) VALUES (13, N'L1', N'Adults', N'General English', N'C1')
INSERT [dbo].[Courses] ([Id Course], [Code], [Type], [Kind], [Specification]) VALUES (14, N'L2', N'Adults', N'General German', N'A1')
INSERT [dbo].[Courses] ([Id Course], [Code], [Type], [Kind], [Specification]) VALUES (15, N'L2', N'Adults', N'General German', N'A2')
INSERT [dbo].[Courses] ([Id Course], [Code], [Type], [Kind], [Specification]) VALUES (16, N'L2', N'Adults', N'General German', N'B1')
INSERT [dbo].[Courses] ([Id Course], [Code], [Type], [Kind], [Specification]) VALUES (17, N'L2', N'Adults', N'General German', N'B2')
INSERT [dbo].[Courses] ([Id Course], [Code], [Type], [Kind], [Specification]) VALUES (18, N'L1', N'Adults', N'Certificate Preparation', N'TOEFL')
INSERT [dbo].[Courses] ([Id Course], [Code], [Type], [Kind], [Specification]) VALUES (19, N'L1', N'Adults', N'Certificate Preparation', N'FCE')
INSERT [dbo].[Courses] ([Id Course], [Code], [Type], [Kind], [Specification]) VALUES (20, N'L1', N'Adults', N'Certificate Preparation', N'CAE')
INSERT [dbo].[Courses] ([Id Course], [Code], [Type], [Kind], [Specification]) VALUES (21, N'L1', N'Adults', N'Business English', NULL)
INSERT [dbo].[Courses] ([Id Course], [Code], [Type], [Kind], [Specification]) VALUES (22, N'L2', N'Adults', N'Business German', NULL)
SET IDENTITY_INSERT [dbo].[Courses] OFF
/****** Object:  Table [dbo].[Groups]    Script Date: 01/29/2015 10:45:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[Id Group] [int] IDENTITY(1,1) NOT NULL,
	[Id Course] [int] NULL,
	[Start Date] [date] NULL,
	[End Date] [date] NULL,
	[Schedule] [nvarchar](50) NULL,
	[Start Time] [time](7) NULL,
	[End Time] [time](7) NULL,
	[PIN] [nvarchar](10) NULL,
	[Id Building] [int] NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[Id Group] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Groups] ON
INSERT [dbo].[Groups] ([Id Group], [Id Course], [Start Date], [End Date], [Schedule], [Start Time], [End Time], [PIN], [Id Building]) VALUES (2, 17, CAST(0xB3370B00 AS Date), CAST(0x15380B00 AS Date), N'Tue Thur', CAST(0x0700DCC9A04F0000 AS Time), CAST(0x07002E88DE6A0000 AS Time), N'7502187630', 1)
INSERT [dbo].[Groups] ([Id Group], [Id Course], [Start Date], [End Date], [Schedule], [Start Time], [End Time], [PIN], [Id Building]) VALUES (3, 19, CAST(0xB7370B00 AS Date), CAST(0x20380B00 AS Date), N'Sat Sun', CAST(0x0700C258884D0000 AS Time), CAST(0x07001417C6680000 AS Time), N'6904257630', 1)
INSERT [dbo].[Groups] ([Id Group], [Id Course], [Start Date], [End Date], [Schedule], [Start Time], [End Time], [PIN], [Id Building]) VALUES (4, 21, CAST(0xB2370B00 AS Date), CAST(0xDE370B00 AS Date), N'Mon Wed Fr', CAST(0x0700626A0F6F0000 AS Time), CAST(0x07001CEDAE920000 AS Time), N'6904257630', 1)
INSERT [dbo].[Groups] ([Id Group], [Id Course], [Start Date], [End Date], [Schedule], [Start Time], [End Time], [PIN], [Id Building]) VALUES (6, 14, CAST(0x2B380B00 AS Date), CAST(0x86380B00 AS Date), N'Sat Sun', CAST(0x0700E80A7E8E0000 AS Time), CAST(0x07003AC9BBA90000 AS Time), N'7511257630', 1)
INSERT [dbo].[Groups] ([Id Group], [Id Course], [Start Date], [End Date], [Schedule], [Start Time], [End Time], [PIN], [Id Building]) VALUES (8, 2, CAST(0x2A380B00 AS Date), CAST(0x18370B00 AS Date), N'Tue Thur', CAST(0x0700CA2E71770000 AS Time), CAST(0x07001CEDAE920000 AS Time), N'7011167630', 1)
INSERT [dbo].[Groups] ([Id Group], [Id Course], [Start Date], [End Date], [Schedule], [Start Time], [End Time], [PIN], [Id Building]) VALUES (9, 5, CAST(0x29380B00 AS Date), CAST(0x8B380B00 AS Date), N'Mon Thur', CAST(0x070050CFDF960000 AS Time), CAST(0x0700A28D1DB20000 AS Time), N'7108277630', 1)
INSERT [dbo].[Groups] ([Id Group], [Id Course], [Start Date], [End Date], [Schedule], [Start Time], [End Time], [PIN], [Id Building]) VALUES (10, 6, CAST(0x29380B00 AS Date), CAST(0x57380B00 AS Date), N'Mon Wed Fr', CAST(0x070074053F470000 AS Time), CAST(0x07002E88DE6A0000 AS Time), N'7108277630', 1)
INSERT [dbo].[Groups] ([Id Group], [Id Course], [Start Date], [End Date], [Schedule], [Start Time], [End Time], [PIN], [Id Building]) VALUES (11, 13, CAST(0x4F380B00 AS Date), CAST(0xAB380B00 AS Date), N'Tue Thur', CAST(0x070074053F470000 AS Time), CAST(0x07002E88DE6A0000 AS Time), N'7312187630', 1)
INSERT [dbo].[Groups] ([Id Group], [Id Course], [Start Date], [End Date], [Schedule], [Start Time], [End Time], [PIN], [Id Building]) VALUES (12, 13, CAST(0x4F380B00 AS Date), CAST(0xAB380B00 AS Date), N'Tue Thur', CAST(0x070074053F470000 AS Time), CAST(0x07002E88DE6A0000 AS Time), N'7006127630', 1)
SET IDENTITY_INSERT [dbo].[Groups] OFF
/****** Object:  Table [dbo].[Students-Groups]    Script Date: 01/29/2015 10:45:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students-Groups](
	[Id Student] [int] NOT NULL,
	[Id Group] [int] NOT NULL,
 CONSTRAINT [PK_Students-Groups] PRIMARY KEY CLUSTERED 
(
	[Id Student] ASC,
	[Id Group] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Students-Groups] ([Id Student], [Id Group]) VALUES (1, 2)
INSERT [dbo].[Students-Groups] ([Id Student], [Id Group]) VALUES (2, 6)
INSERT [dbo].[Students-Groups] ([Id Student], [Id Group]) VALUES (3, 3)
INSERT [dbo].[Students-Groups] ([Id Student], [Id Group]) VALUES (3, 10)
INSERT [dbo].[Students-Groups] ([Id Student], [Id Group]) VALUES (6, 3)
INSERT [dbo].[Students-Groups] ([Id Student], [Id Group]) VALUES (6, 8)
INSERT [dbo].[Students-Groups] ([Id Student], [Id Group]) VALUES (7, 4)
INSERT [dbo].[Students-Groups] ([Id Student], [Id Group]) VALUES (8, 6)
INSERT [dbo].[Students-Groups] ([Id Student], [Id Group]) VALUES (8, 9)
INSERT [dbo].[Students-Groups] ([Id Student], [Id Group]) VALUES (9, 2)
INSERT [dbo].[Students-Groups] ([Id Student], [Id Group]) VALUES (9, 10)
INSERT [dbo].[Students-Groups] ([Id Student], [Id Group]) VALUES (10, 3)
INSERT [dbo].[Students-Groups] ([Id Student], [Id Group]) VALUES (10, 4)
/****** Object:  ForeignKey [FK_Teachers-EducationFields_EducationFields]    Script Date: 01/29/2015 10:45:49 ******/
ALTER TABLE [dbo].[Teachers-EducationFields]  WITH CHECK ADD  CONSTRAINT [FK_Teachers-EducationFields_EducationFields] FOREIGN KEY([Code])
REFERENCES [dbo].[EducationFields] ([Code])
GO
ALTER TABLE [dbo].[Teachers-EducationFields] CHECK CONSTRAINT [FK_Teachers-EducationFields_EducationFields]
GO
/****** Object:  ForeignKey [FK_Teachers-EducationFields_Teachers]    Script Date: 01/29/2015 10:45:49 ******/
ALTER TABLE [dbo].[Teachers-EducationFields]  WITH CHECK ADD  CONSTRAINT [FK_Teachers-EducationFields_Teachers] FOREIGN KEY([PIN])
REFERENCES [dbo].[Teachers] ([PIN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Teachers-EducationFields] CHECK CONSTRAINT [FK_Teachers-EducationFields_Teachers]
GO
/****** Object:  ForeignKey [FK_Courses_EducationFields]    Script Date: 01/29/2015 10:45:49 ******/
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Courses_EducationFields] FOREIGN KEY([Code])
REFERENCES [dbo].[EducationFields] ([Code])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Courses_EducationFields]
GO
/****** Object:  ForeignKey [FK_Groups_Buildings]    Script Date: 01/29/2015 10:45:49 ******/
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [FK_Groups_Buildings] FOREIGN KEY([Id Building])
REFERENCES [dbo].[Buildings] ([Id Building])
ON UPDATE SET NULL
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [FK_Groups_Buildings]
GO
/****** Object:  ForeignKey [FK_Groups_Courses]    Script Date: 01/29/2015 10:45:49 ******/
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [FK_Groups_Courses] FOREIGN KEY([Id Course])
REFERENCES [dbo].[Courses] ([Id Course])
ON UPDATE SET NULL
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [FK_Groups_Courses]
GO
/****** Object:  ForeignKey [FK_Groups_Teachers]    Script Date: 01/29/2015 10:45:49 ******/
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [FK_Groups_Teachers] FOREIGN KEY([PIN])
REFERENCES [dbo].[Teachers] ([PIN])
ON UPDATE SET NULL
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [FK_Groups_Teachers]
GO
/****** Object:  ForeignKey [FK_Students-Groups_Groups]    Script Date: 01/29/2015 10:45:49 ******/
ALTER TABLE [dbo].[Students-Groups]  WITH CHECK ADD  CONSTRAINT [FK_Students-Groups_Groups] FOREIGN KEY([Id Group])
REFERENCES [dbo].[Groups] ([Id Group])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Students-Groups] CHECK CONSTRAINT [FK_Students-Groups_Groups]
GO
/****** Object:  ForeignKey [FK_Students-Groups_Students]    Script Date: 01/29/2015 10:45:49 ******/
ALTER TABLE [dbo].[Students-Groups]  WITH CHECK ADD  CONSTRAINT [FK_Students-Groups_Students] FOREIGN KEY([Id Student])
REFERENCES [dbo].[Students] ([Id Student])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Students-Groups] CHECK CONSTRAINT [FK_Students-Groups_Students]
GO
