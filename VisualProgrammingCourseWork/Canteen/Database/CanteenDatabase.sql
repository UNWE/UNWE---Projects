USE [master]
GO
/****** Object:  Database [Canteen]    Script Date: 01/29/2015 11:01:20 ******/
CREATE DATABASE [Canteen] ON  PRIMARY 
( NAME = N'Canteen', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\DBProgramming - CourseWork.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Canteen_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\DBProgramming - CourseWork_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Canteen] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Canteen].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Canteen] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Canteen] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Canteen] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Canteen] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Canteen] SET ARITHABORT OFF
GO
ALTER DATABASE [Canteen] SET AUTO_CLOSE ON
GO
ALTER DATABASE [Canteen] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Canteen] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Canteen] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Canteen] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Canteen] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Canteen] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Canteen] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Canteen] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Canteen] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Canteen] SET  DISABLE_BROKER
GO
ALTER DATABASE [Canteen] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Canteen] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Canteen] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Canteen] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Canteen] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Canteen] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Canteen] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Canteen] SET  READ_WRITE
GO
ALTER DATABASE [Canteen] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Canteen] SET  MULTI_USER
GO
ALTER DATABASE [Canteen] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Canteen] SET DB_CHAINING OFF
GO
USE [Canteen]
GO
/****** Object:  StoredProcedure [dbo].[SearchProducts]    Script Date: 01/29/2015 11:01:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SearchProducts]
@productName nvarchar(50) = null,
@measurementUnit nvarchar(50) = null

as
begin
	declare @SQL_String varchar(max)
	set @SQL_String = 'select * from Продукти where 1 = 1 '
	if @productName is not null 
		set @SQL_String = @SQL_String + 'and Наименование = ''' + @productName + ''' '
	if @measurementUnit is not null 
		set @SQL_String = @SQL_String + 'ánd МернаЕдиница = ''' + @measurementUnit + ''''
	print @SQL_String
	exec (@SQL_String)
end
GO
/****** Object:  StoredProcedure [dbo].[SearchMenus]    Script Date: 01/29/2015 11:01:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SearchMenus]
@date varchar(30),
@mealType nvarchar(50),
@calories int
as
begin
	declare @SQL_String varchar(max)
	set @SQL_String = 'select m.Дата, mls.Код, mls.Наименование, mls.Грамаж, mls.Калории, mls.Тип, m.Брой
					  from Менюта m inner join Ястия mls on mls.Код = m.КодНаЯстие where 1 = 1 '
	if @date is not null 
		set @SQL_String = @SQL_String + 'and cast(m.Дата as varchar(30)) = ' + @date + ' '
	if @mealType is not null 
		set @SQL_String = @SQL_String + 'ánd mls.Тип = ' + @mealType + ' '
	if @calories is not null 
		set @SQL_String = @SQL_String + 'and mls.Калории >= ' + cast(@calories as varchar(5)) + ''
	print @SQL_String
	exec (@SQL_String)
end
GO
/****** Object:  StoredProcedure [dbo].[SearchMeals]    Script Date: 01/29/2015 11:01:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SearchMeals]
@mealName varchar(30),
@mealType nvarchar(50),
@caloriesStartRange int,
@caloriesEndRange int,
@quantityStartRange int,
@quantityEndRange int
as
begin
	declare @SQL_String varchar(max)
	set @SQL_String = 'select * from Ястия where 1 = 1 '
	if @mealName is not null 
		set @SQL_String = @SQL_String + 'and Наименование like ''%' + @mealName + '%'' '
	if @mealType is not null 
		set @SQL_String = @SQL_String + 'ánd Тип = ''' + @mealType + ''' '
	if @caloriesStartRange is not null and @caloriesEndRange is not null
		set @SQL_String = @SQL_String + 'and Калории >= ' + cast(@caloriesStartRange as varchar(5)) +
		'and Калории <= ' + cast(@caloriesEndRange as varchar(5)) + ''
	if @quantityStartRange is not null and @quantityEndRange is not null
		set @SQL_String = @SQL_String + 'and Грамаж >= ' + cast(@quantityStartRange as varchar(5)) +
		'and Грамаж <= ' + cast(@quantityEndRange as varchar(5)) + ''
	print @SQL_String
	exec (@SQL_String)
end
GO
/****** Object:  Table [dbo].[Продукти]    Script Date: 01/29/2015 11:01:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Продукти](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[Наименование] [nvarchar](50) NULL,
	[МернаЕдиница] [nvarchar](50) NULL,
	[ДатаНаМодификация] [date] NULL,
 CONSTRAINT [PK_Продукти] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Продукти] ON
INSERT [dbo].[Продукти] ([Код], [Наименование], [МернаЕдиница], [ДатаНаМодификация]) VALUES (11, N'Картофи', N'кг', CAST(0x7B390B00 AS Date))
INSERT [dbo].[Продукти] ([Код], [Наименование], [МернаЕдиница], [ДатаНаМодификация]) VALUES (12, N'Зеле', N'кг', CAST(0x5D390B00 AS Date))
INSERT [dbo].[Продукти] ([Код], [Наименование], [МернаЕдиница], [ДатаНаМодификация]) VALUES (13, N'Моркови', N'кг', CAST(0x7D390B00 AS Date))
INSERT [dbo].[Продукти] ([Код], [Наименование], [МернаЕдиница], [ДатаНаМодификация]) VALUES (14, N'Домати', N'кг', CAST(0x5D390B00 AS Date))
INSERT [dbo].[Продукти] ([Код], [Наименование], [МернаЕдиница], [ДатаНаМодификация]) VALUES (15, N'Чушки', N'кг', CAST(0x5D390B00 AS Date))
INSERT [dbo].[Продукти] ([Код], [Наименование], [МернаЕдиница], [ДатаНаМодификация]) VALUES (16, N'Ябълки', N'кг', CAST(0x5D390B00 AS Date))
INSERT [dbo].[Продукти] ([Код], [Наименование], [МернаЕдиница], [ДатаНаМодификация]) VALUES (17, N'Круши', N'кг', CAST(0x5D390B00 AS Date))
INSERT [dbo].[Продукти] ([Код], [Наименование], [МернаЕдиница], [ДатаНаМодификация]) VALUES (51, N'Леща', N'кг', CAST(0x79390B00 AS Date))
INSERT [dbo].[Продукти] ([Код], [Наименование], [МернаЕдиница], [ДатаНаМодификация]) VALUES (61, N'dsgdsg', N'кг', CAST(0x7B390B00 AS Date))
SET IDENTITY_INSERT [dbo].[Продукти] OFF
/****** Object:  Table [dbo].[Потребители]    Script Date: 01/29/2015 11:01:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Потребители](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[Име] [nvarchar](50) NULL,
	[Фамилия] [nvarchar](50) NULL,
	[ПотребителскоИме] [nvarchar](50) NULL,
	[Парола] [nvarchar](50) NULL,
	[ДатаНаМодификация] [date] NULL,
 CONSTRAINT [PK_Потребители] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Потребители] ON
INSERT [dbo].[Потребители] ([Код], [Име], [Фамилия], [ПотребителскоИме], [Парола], [ДатаНаМодификация]) VALUES (1, N'Мария', N'Петрова', N'maria', N'123456', CAST(0x56390B00 AS Date))
INSERT [dbo].[Потребители] ([Код], [Име], [Фамилия], [ПотребителскоИме], [Парола], [ДатаНаМодификация]) VALUES (2, N'Иван', N'Денев', N'ivan', N'123456', CAST(0x56390B00 AS Date))
INSERT [dbo].[Потребители] ([Код], [Име], [Фамилия], [ПотребителскоИме], [Парола], [ДатаНаМодификация]) VALUES (8, N'Gabriela', N'Gabriela', N'gaby', N'123456', CAST(0x6A390B00 AS Date))
INSERT [dbo].[Потребители] ([Код], [Име], [Фамилия], [ПотребителскоИме], [Парола], [ДатаНаМодификация]) VALUES (9, N'NewUser', N'NewUser', N'username', N'123456', CAST(0x7B390B00 AS Date))
SET IDENTITY_INSERT [dbo].[Потребители] OFF
/****** Object:  Table [dbo].[Ястия]    Script Date: 01/29/2015 11:01:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ястия](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[Наименование] [nvarchar](50) NULL,
	[Грамаж] [int] NULL,
	[Калории] [int] NULL,
	[Тип] [nvarchar](50) NULL,
	[Порции] [int] NULL,
	[ДатаНаМодификация] [date] NULL,
 CONSTRAINT [PK_Ястия] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ястия] ON
INSERT [dbo].[Ястия] ([Код], [Наименование], [Грамаж], [Калории], [Тип], [Порции], [ДатаНаМодификация]) VALUES (11, N'Огретен', 200, 350, N'Основно', 100, CAST(0x7A390B00 AS Date))
INSERT [dbo].[Ястия] ([Код], [Наименование], [Грамаж], [Калории], [Тип], [Порции], [ДатаНаМодификация]) VALUES (12, N'Яхния', 200, 250, N'Основно', 100, CAST(0x5D390B00 AS Date))
INSERT [dbo].[Ястия] ([Код], [Наименование], [Грамаж], [Калории], [Тип], [Порции], [ДатаНаМодификация]) VALUES (13, N'Мусака', 340, 200, N'Основно', 100, CAST(0x5D390B00 AS Date))
INSERT [dbo].[Ястия] ([Код], [Наименование], [Грамаж], [Калории], [Тип], [Порции], [ДатаНаМодификация]) VALUES (14, N'Супа', 200, 250, N'Предястие', 100, CAST(0x5D390B00 AS Date))
INSERT [dbo].[Ястия] ([Код], [Наименование], [Грамаж], [Калории], [Тип], [Порции], [ДатаНаМодификация]) VALUES (15, N'Крем супа', 150, 200, N'Предястие', 100, CAST(0x5D390B00 AS Date))
INSERT [dbo].[Ястия] ([Код], [Наименование], [Грамаж], [Калории], [Тип], [Порции], [ДатаНаМодификация]) VALUES (16, N'Крем', 250, 200, N'Десерт', 100, CAST(0x5D390B00 AS Date))
INSERT [dbo].[Ястия] ([Код], [Наименование], [Грамаж], [Калории], [Тип], [Порции], [ДатаНаМодификация]) VALUES (21, N'Салата', 150, 165, N'Предястие', 100, CAST(0x7A390B00 AS Date))
INSERT [dbo].[Ястия] ([Код], [Наименование], [Грамаж], [Калории], [Тип], [Порции], [ДатаНаМодификация]) VALUES (24, N'Торта', 150, 185, N'Десерт', 100, CAST(0x7B390B00 AS Date))
INSERT [dbo].[Ястия] ([Код], [Наименование], [Грамаж], [Калории], [Тип], [Порции], [ДатаНаМодификация]) VALUES (25, N'Пиле фрикасе', 250, 230, N'Основно', 100, CAST(0x7D390B00 AS Date))
INSERT [dbo].[Ястия] ([Код], [Наименование], [Грамаж], [Калории], [Тип], [Порции], [ДатаНаМодификация]) VALUES (26, N'Зеленчукова супа', 150, 150, N'Предястие', 100, CAST(0x7D390B00 AS Date))
SET IDENTITY_INSERT [dbo].[Ястия] OFF
/****** Object:  Table [dbo].[Рецепти]    Script Date: 01/29/2015 11:01:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Рецепти](
	[КодНаЯстие] [int] NOT NULL,
	[КодНаПродукт] [int] NOT NULL,
	[Количество] [numeric](18, 0) NULL,
	[ДатаНаМодификация] [date] NULL,
 CONSTRAINT [PK_Рецепти] PRIMARY KEY CLUSTERED 
(
	[КодНаЯстие] ASC,
	[КодНаПродукт] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Рецепти] ([КодНаЯстие], [КодНаПродукт], [Количество], [ДатаНаМодификация]) VALUES (12, 11, CAST(250 AS Numeric(18, 0)), CAST(0x7B390B00 AS Date))
INSERT [dbo].[Рецепти] ([КодНаЯстие], [КодНаПродукт], [Количество], [ДатаНаМодификация]) VALUES (12, 12, CAST(600 AS Numeric(18, 0)), CAST(0x5D390B00 AS Date))
INSERT [dbo].[Рецепти] ([КодНаЯстие], [КодНаПродукт], [Количество], [ДатаНаМодификация]) VALUES (12, 13, CAST(125 AS Numeric(18, 0)), CAST(0x7D390B00 AS Date))
INSERT [dbo].[Рецепти] ([КодНаЯстие], [КодНаПродукт], [Количество], [ДатаНаМодификация]) VALUES (13, 12, CAST(250 AS Numeric(18, 0)), CAST(0x5D390B00 AS Date))
INSERT [dbo].[Рецепти] ([КодНаЯстие], [КодНаПродукт], [Количество], [ДатаНаМодификация]) VALUES (13, 15, CAST(300 AS Numeric(18, 0)), CAST(0x5D390B00 AS Date))
INSERT [dbo].[Рецепти] ([КодНаЯстие], [КодНаПродукт], [Количество], [ДатаНаМодификация]) VALUES (14, 51, CAST(52 AS Numeric(18, 0)), CAST(0x7C390B00 AS Date))
INSERT [dbo].[Рецепти] ([КодНаЯстие], [КодНаПродукт], [Количество], [ДатаНаМодификация]) VALUES (15, 13, CAST(629 AS Numeric(18, 0)), CAST(0x7C390B00 AS Date))
INSERT [dbo].[Рецепти] ([КодНаЯстие], [КодНаПродукт], [Количество], [ДатаНаМодификация]) VALUES (15, 17, CAST(639 AS Numeric(18, 0)), CAST(0x7C390B00 AS Date))
INSERT [dbo].[Рецепти] ([КодНаЯстие], [КодНаПродукт], [Количество], [ДатаНаМодификация]) VALUES (16, 11, CAST(256 AS Numeric(18, 0)), CAST(0x7B390B00 AS Date))
INSERT [dbo].[Рецепти] ([КодНаЯстие], [КодНаПродукт], [Количество], [ДатаНаМодификация]) VALUES (16, 13, CAST(250 AS Numeric(18, 0)), CAST(0x5D390B00 AS Date))
INSERT [dbo].[Рецепти] ([КодНаЯстие], [КодНаПродукт], [Количество], [ДатаНаМодификация]) VALUES (21, 11, CAST(369 AS Numeric(18, 0)), CAST(0x7C390B00 AS Date))
INSERT [dbo].[Рецепти] ([КодНаЯстие], [КодНаПродукт], [Количество], [ДатаНаМодификация]) VALUES (24, 13, CAST(300 AS Numeric(18, 0)), CAST(0x7B390B00 AS Date))
INSERT [dbo].[Рецепти] ([КодНаЯстие], [КодНаПродукт], [Количество], [ДатаНаМодификация]) VALUES (24, 15, CAST(250 AS Numeric(18, 0)), CAST(0x7C390B00 AS Date))
INSERT [dbo].[Рецепти] ([КодНаЯстие], [КодНаПродукт], [Количество], [ДатаНаМодификация]) VALUES (24, 17, CAST(520 AS Numeric(18, 0)), CAST(0x7C390B00 AS Date))
INSERT [dbo].[Рецепти] ([КодНаЯстие], [КодНаПродукт], [Количество], [ДатаНаМодификация]) VALUES (24, 51, CAST(248 AS Numeric(18, 0)), CAST(0x7C390B00 AS Date))
/****** Object:  Table [dbo].[Менюта]    Script Date: 01/29/2015 11:01:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Менюта](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[Дата] [date] NULL,
	[КодНаЯстие] [int] NULL,
	[Брой] [int] NULL,
	[ДатаНаМодификация] [date] NULL,
 CONSTRAINT [PK_Менюта] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Менюта] ON
INSERT [dbo].[Менюта] ([Код], [Дата], [КодНаЯстие], [Брой], [ДатаНаМодификация]) VALUES (13, CAST(0x5A390B00 AS Date), 11, 25, CAST(0x5D390B00 AS Date))
INSERT [dbo].[Менюта] ([Код], [Дата], [КодНаЯстие], [Брой], [ДатаНаМодификация]) VALUES (14, CAST(0x5A390B00 AS Date), 12, 30, CAST(0x5D390B00 AS Date))
INSERT [dbo].[Менюта] ([Код], [Дата], [КодНаЯстие], [Брой], [ДатаНаМодификация]) VALUES (15, CAST(0x5B390B00 AS Date), 13, 35, CAST(0x5D390B00 AS Date))
INSERT [dbo].[Менюта] ([Код], [Дата], [КодНаЯстие], [Брой], [ДатаНаМодификация]) VALUES (16, CAST(0x5B390B00 AS Date), 13, 25, CAST(0x5D390B00 AS Date))
INSERT [dbo].[Менюта] ([Код], [Дата], [КодНаЯстие], [Брой], [ДатаНаМодификация]) VALUES (17, CAST(0x5C390B00 AS Date), 14, 50, CAST(0x5D390B00 AS Date))
INSERT [dbo].[Менюта] ([Код], [Дата], [КодНаЯстие], [Брой], [ДатаНаМодификация]) VALUES (18, CAST(0x5D390B00 AS Date), 13, 30, CAST(0x5D390B00 AS Date))
INSERT [dbo].[Менюта] ([Код], [Дата], [КодНаЯстие], [Брой], [ДатаНаМодификация]) VALUES (19, CAST(0x5D390B00 AS Date), 14, 25, CAST(0x5D390B00 AS Date))
INSERT [dbo].[Менюта] ([Код], [Дата], [КодНаЯстие], [Брой], [ДатаНаМодификация]) VALUES (21, CAST(0x7C390B00 AS Date), 24, 25, CAST(0x7C390B00 AS Date))
INSERT [dbo].[Менюта] ([Код], [Дата], [КодНаЯстие], [Брой], [ДатаНаМодификация]) VALUES (24, CAST(0x7C390B00 AS Date), 14, 25, CAST(0x7C390B00 AS Date))
INSERT [dbo].[Менюта] ([Код], [Дата], [КодНаЯстие], [Брой], [ДатаНаМодификация]) VALUES (25, CAST(0x7C390B00 AS Date), 11, 25, CAST(0x7C390B00 AS Date))
INSERT [dbo].[Менюта] ([Код], [Дата], [КодНаЯстие], [Брой], [ДатаНаМодификация]) VALUES (26, CAST(0x7C390B00 AS Date), 16, 25, CAST(0x7C390B00 AS Date))
INSERT [dbo].[Менюта] ([Код], [Дата], [КодНаЯстие], [Брой], [ДатаНаМодификация]) VALUES (27, CAST(0x74390B00 AS Date), 14, 25, CAST(0x7C390B00 AS Date))
INSERT [dbo].[Менюта] ([Код], [Дата], [КодНаЯстие], [Брой], [ДатаНаМодификация]) VALUES (28, CAST(0x74390B00 AS Date), 11, 25, CAST(0x7C390B00 AS Date))
INSERT [dbo].[Менюта] ([Код], [Дата], [КодНаЯстие], [Брой], [ДатаНаМодификация]) VALUES (29, CAST(0x74390B00 AS Date), 16, 25, CAST(0x7C390B00 AS Date))
INSERT [dbo].[Менюта] ([Код], [Дата], [КодНаЯстие], [Брой], [ДатаНаМодификация]) VALUES (30, CAST(0x7C390B00 AS Date), 15, 12, CAST(0x7C390B00 AS Date))
INSERT [dbo].[Менюта] ([Код], [Дата], [КодНаЯстие], [Брой], [ДатаНаМодификация]) VALUES (31, CAST(0x7C390B00 AS Date), 11, 12, CAST(0x7C390B00 AS Date))
INSERT [dbo].[Менюта] ([Код], [Дата], [КодНаЯстие], [Брой], [ДатаНаМодификация]) VALUES (32, CAST(0x7C390B00 AS Date), 16, 12, CAST(0x7C390B00 AS Date))
INSERT [dbo].[Менюта] ([Код], [Дата], [КодНаЯстие], [Брой], [ДатаНаМодификация]) VALUES (33, CAST(0x83390B00 AS Date), 15, 34, CAST(0x7C390B00 AS Date))
INSERT [dbo].[Менюта] ([Код], [Дата], [КодНаЯстие], [Брой], [ДатаНаМодификация]) VALUES (34, CAST(0x83390B00 AS Date), 13, 34, CAST(0x7C390B00 AS Date))
INSERT [dbo].[Менюта] ([Код], [Дата], [КодНаЯстие], [Брой], [ДатаНаМодификация]) VALUES (35, CAST(0x83390B00 AS Date), 24, 34, CAST(0x7C390B00 AS Date))
INSERT [dbo].[Менюта] ([Код], [Дата], [КодНаЯстие], [Брой], [ДатаНаМодификация]) VALUES (36, CAST(0x73390B00 AS Date), 14, 25, CAST(0x7C390B00 AS Date))
INSERT [dbo].[Менюта] ([Код], [Дата], [КодНаЯстие], [Брой], [ДатаНаМодификация]) VALUES (37, CAST(0x73390B00 AS Date), 11, 14, CAST(0x7C390B00 AS Date))
INSERT [dbo].[Менюта] ([Код], [Дата], [КодНаЯстие], [Брой], [ДатаНаМодификация]) VALUES (38, CAST(0x73390B00 AS Date), 16, 36, CAST(0x7C390B00 AS Date))
INSERT [dbo].[Менюта] ([Код], [Дата], [КодНаЯстие], [Брой], [ДатаНаМодификация]) VALUES (39, CAST(0x80390B00 AS Date), 16, 2, CAST(0x7C390B00 AS Date))
SET IDENTITY_INSERT [dbo].[Менюта] OFF
/****** Object:  UserDefinedFunction [dbo].[ValidateUserAccess]    Script Date: 01/29/2015 11:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[ValidateUserAccess](@userName nvarchar(50), @userPass nvarchar(50))
returns int
as
begin
	declare @result int
	if exists( select Код from Потребители where ПотребителскоИме = @userName and Парола = @userPass)
		set @result = 1
	else
		set @result = -1
	return @result
end
GO
/****** Object:  StoredProcedure [dbo].[InsertMeal]    Script Date: 01/29/2015 11:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertMeal]
@mealName nvarchar(50) = NULL,
@quantity int = NULL,
@calories int = NULL,
@type nvarchar(50) = NULL,
@portions int = NULL
as
begin
	declare @msg nvarchar(30)
	begin try
		insert into Ястия (Наименование, Грамаж, Калории, Тип, Порции)
		values (@mealName, @quantity, @calories, @type, @portions)
	end try
	begin catch
		set @msg = N'Ястието не може да бъде добавено!'
		Raiserror(@msg, 16, 1)
		return
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[GetProducts]    Script Date: 01/29/2015 11:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetProducts]
as
begin
	select Код, Наименование
	from Продукти
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteProduct]    Script Date: 01/29/2015 11:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[DeleteProduct]
@productCode int = NULL
as
begin
	declare @msg nvarchar(30),
			@exists int
	select @exists = COUNT(*) from Продукти
	where Код = @productCode
	if @exists = 0
		begin
			set @msg = 'Записът не съществува!'
			raiserror(@msg, 16, 1)
			return
		end
	begin try
		delete from Продукти
		where Код = @productCode
	end try
	begin catch
		set @msg = N'Записът не може да бъде изтрит!'
		raiserror(@msg, 16, 1)
		return
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteMeal]    Script Date: 01/29/2015 11:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[DeleteMeal]
@mealCode int = NULL
as
begin
	declare @msg nvarchar(30),
			@exists int
	select @exists = COUNT(*) from Ястия
	where Код = @mealCode
	if @exists = 0
		begin
			set @msg = 'Записът не съществува!'
			raiserror(@msg, 16, 1)
			return
		end
	begin try
		delete from Ястия
		where Код = @mealCode
	end try
	begin catch
		set @msg = N'Записът не може да бъде изтрит!'
		raiserror(@msg, 16, 1)
		return
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[delete_meals]    Script Date: 01/29/2015 11:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[delete_meals]
@meal_id int = NULL
as
begin
	declare @msg nvarchar(30),
			@exists int
	select @exists = COUNT(*) from Ястия
	where Код = @meal_id
	if @exists = 0
		begin
			set @msg = 'Записът не съществува!'
			raiserror(@msg, 16, 1)
			return
		end
	begin try
		delete from Ястия
		where Код = @meal_id
	end try
	begin catch
		set @msg = N'Записът не може да бъде изтрит!'
		raiserror(@msg, 16, 1)
		return
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[AuthenticateUser]    Script Date: 01/29/2015 11:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[AuthenticateUser]
@username nvarchar(50),
@password nvarchar(50),
@result int output
as
begin
	if exists(select Код from Потребители where ПотребителскоИме = @username and Парола = @password)
		set @result = 1
	else
		set @result = -1
	return @result
end

declare @test int
exec @test = AuthenticateUser 'maria', '123456'
print @test
GO
/****** Object:  StoredProcedure [dbo].[EditProduct]    Script Date: 01/29/2015 11:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[EditProduct]
@productCode int = NULL,
@productName nvarchar(50) = NULL,
@measurementUnit nvarchar(50) = NULL
as
begin
	declare @msg nvarchar(30)
	begin try
		update Продукти 
		set Наименование = @productName,
			МернаЕдиница = @measurementUnit
		where Код = @productCode
	end try
	begin catch
		set @msg = N'Продуктът не може да бъде обновен!'
		Raiserror(@msg, 16, 1)
		return
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[EditMeal]    Script Date: 01/29/2015 11:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[EditMeal]
@mealCode int = NULL,
@mealName nvarchar(50) = NULL,
@quantity int = NULL,
@calories int = NULL,
@type nvarchar(50) = NULL,
@portions int = NULL

as
begin
	declare @msg nvarchar(30)
	begin try
		update Ястия 
		set Наименование = @mealName,
			Грамаж = @quantity,
			Калории = @calories,
			Тип = @type,
			Порции = @portions
		where Код = @mealCode
	end try
	begin catch
		set @msg = N'Ястието не може да бъде обновено!'
		Raiserror(@msg, 16, 1)
		return
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[RegisterUser]    Script Date: 01/29/2015 11:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[RegisterUser]
@firstName nvarchar(50),
@lastName nvarchar(50),
@username nvarchar(50),
@password nvarchar(50),
@procedureResult int output
as
begin
	set @procedureResult = 1;
	if not exists(select Код from Потребители where ПотребителскоИме = @username)
		insert into Потребители (Име, Фамилия, ПотребителскоИме, Парола)
		values (@firstName, @lastName, @username, @password)
	else
		set @procedureResult = -1;
	return @procedureResult
end
GO
/****** Object:  View [dbo].[Recipes]    Script Date: 01/29/2015 11:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Recipes]
as
select Код, Наименование
from Ястия
GO
/****** Object:  StoredProcedure [dbo].[InsertProduct]    Script Date: 01/29/2015 11:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[InsertProduct]
@productName nvarchar(50) = NULL,
@measurementUnit nvarchar(50) = NULL
as
begin
	declare @msg nvarchar(30)
	begin try
		insert into Продукти (Наименование, МернаЕдиница)
		values (@productName, @measurementUnit)
	end try
	begin catch
		set @msg = N'Продуктът не може да бъде добавен!'
		Raiserror(@msg, 16, 1)
		return
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[InsertMenu]    Script Date: 01/29/2015 11:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[InsertMenu]
@date nvarchar(50),
@mealCode int,
@mealsCount int

as
begin
	insert into Менюта(Дата, КодНаЯстие, Брой)
	values(cast(@date as DateTime), @mealCode, @mealsCount)
end
GO
/****** Object:  StoredProcedure [dbo].[GetProductsForMeal]    Script Date: 01/29/2015 11:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetProductsForMeal]
@date nvarchar(50)
as
begin
	select Продукти.Наименование, SUM(Менюта.Брой * Рецепти.Количество) as Количество
	from Менюта inner join Ястия on КодНаЯстие = Ястия.Код inner join
	Рецепти on Рецепти.КодНаЯстие = Ястия.Код inner join
	Продукти on Продукти.Код = Рецепти.КодНаПродукт
	where CAST(Дата as nvarchar(30)) = @date
	group by Продукти.Наименование
end
GO
/****** Object:  UserDefinedFunction [dbo].[getProductsByRecipeCode]    Script Date: 01/29/2015 11:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[getProductsByRecipeCode](@recipeCode int)
returns table
as
return
select products.Код, products.Наименование,
	recipes.Количество
from Рецепти as recipes inner join Продукти as products on
	recipes.КодНаПродукт = products.Код
where recipes.КодНаЯстие = @recipeCode
group by products.Код, products.Наименование,
	recipes.Количество
GO
/****** Object:  View [dbo].[productsView]    Script Date: 01/29/2015 11:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[productsView]
as 
select p.Код, p.Наименование, p.МернаЕдиница, (select COUNT(*) from Рецепти where КодНаПродукт = p.Код) as [Брой рецепти]
from Продукти p inner join Рецепти r on p.Код = r.КодНаПродукт
group by p.Код, p.Наименование, p.МернаЕдиница
GO
/****** Object:  View [dbo].[mealsView]    Script Date: 01/29/2015 11:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[mealsView]
as 
select m.Код, m.Наименование, m.Грамаж, m.Калории, m.Тип, (select count(*) from Рецепти where КодНаЯстие = m.Код) as [Брой продукти]
from Ястия m inner join Рецепти r on r.КодНаЯстие = m.Код
group by m.Код, m.Наименование, m.Грамаж, m.Калории, m.Тип
GO
/****** Object:  StoredProcedure [dbo].[InsertRecipe]    Script Date: 01/29/2015 11:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[InsertRecipe]
@recipeCode int,
@productCode int,
@quantity int

as
begin
	insert into Рецепти (КодНаЯстие, КодНаПродукт, Количество)
	values(@recipeCode, @productCode, @quantity)
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteRecipe]    Script Date: 01/29/2015 11:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[DeleteRecipe]
@recipeCode int
as
begin
	delete from Рецепти
	where КодНаЯстие = @recipeCode
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteProductFromRecipe]    Script Date: 01/29/2015 11:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[DeleteProductFromRecipe]
@recipeCode int,
@productCode int
as
begin
	delete from Рецепти
	where КодНаЯстие  = @recipeCode and КодНаПродукт = @productCode
end
GO
/****** Object:  View [dbo].[allMenus]    Script Date: 01/29/2015 11:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[allMenus]
as
select m.Дата, mls.Код, mls.Наименование, mls.Грамаж, mls.Калории, m.Брой
from Менюта m inner join Ястия mls on m.КодНаЯстие = mls.Код
GO
/****** Object:  StoredProcedure [dbo].[AddProductToRecipe]    Script Date: 01/29/2015 11:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[AddProductToRecipe]
@recipeCode int,
@productCode int,
@quantity int
as
begin
	insert into Рецепти (КодНаЯстие, КодНаПродукт, Количество)
	values(@recipeCode, @productCode, @quantity)
end
GO
/****** Object:  StoredProcedure [dbo].[GetMealsWithoutRecipe]    Script Date: 01/29/2015 11:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetMealsWithoutRecipe]
as
begin
	select Код, Наименование
	from Ястия left outer join Рецепти on Код = КодНаЯстие
	where Код not in (select КодНаЯстие from Рецепти)
end
GO
/****** Object:  StoredProcedure [dbo].[GetMealsCountByDate]    Script Date: 01/29/2015 11:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetMealsCountByDate]
as
begin
	select menus.Дата, SUM(menus.Брой) as [Брой ястия]
	from Менюта menus inner join Ястия meals on menus.КодНаЯстие = meals.Код
	group by menus.Дата
end
GO
/****** Object:  StoredProcedure [dbo].[GetFirstMealsAvailableForMenus]    Script Date: 01/29/2015 11:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetFirstMealsAvailableForMenus]
as
begin
	select distinct Код, Наименование
	from Ястия inner join Рецепти on Код = КодНаЯстие
	where Тип = 'Предястие' and
	Код in (select КодНаЯстие from Рецепти)
end
GO
/****** Object:  StoredProcedure [dbo].[GetAvailableRecipeProducts]    Script Date: 01/29/2015 11:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetAvailableRecipeProducts]
@recipeCode int

as
begin
	select distinct Код, Наименование
	from Продукти left outer join Рецепти on Код = КодНаПродукт
	where Код not in (select КодНаПродукт from Рецепти where КодНаЯстие = @recipeCode)
end
GO
/****** Object:  StoredProcedure [dbo].[EditRecipeProduct]    Script Date: 01/29/2015 11:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[EditRecipeProduct]
@recipeCode int,
@productCode int,
@quantity int
as
begin
	update Рецепти
	set Количество = @quantity
	where КодНаЯстие  = @recipeCode and КодНаПродукт = @productCode
end
GO
/****** Object:  StoredProcedure [dbo].[GetThirdMealsAvailableForMenus]    Script Date: 01/29/2015 11:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetThirdMealsAvailableForMenus]
as
begin
	select distinct Код, Наименование
	from Ястия inner join Рецепти on Код = КодНаЯстие
	where Тип = 'Десерт' and
	Код in (select КодНаЯстие from Рецепти)
end
GO
/****** Object:  StoredProcedure [dbo].[GetSecondMealsAvailableForMenus]    Script Date: 01/29/2015 11:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetSecondMealsAvailableForMenus]
as
begin
	select distinct Код, Наименование
	from Ястия inner join Рецепти on Код = КодНаЯстие
	where Тип = 'Основно' and
	Код in (select КодНаЯстие from Рецепти)
end
GO
/****** Object:  StoredProcedure [dbo].[GetRecipes]    Script Date: 01/29/2015 11:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetRecipes]
as
begin
	select distinct Код, Наименование
	from Ястия inner join Рецепти on Код = КодНаЯстие
end
GO
/****** Object:  StoredProcedure [dbo].[GetRecipeProductsProcedure]    Script Date: 01/29/2015 11:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetRecipeProductsProcedure]
@recipeCode int
as
begin
	select * from getProductsByRecipeCode(@recipeCode)
end
GO
/****** Object:  ForeignKey [FK_Рецепти_Продукти]    Script Date: 01/29/2015 11:01:22 ******/
ALTER TABLE [dbo].[Рецепти]  WITH CHECK ADD  CONSTRAINT [FK_Рецепти_Продукти] FOREIGN KEY([КодНаПродукт])
REFERENCES [dbo].[Продукти] ([Код])
GO
ALTER TABLE [dbo].[Рецепти] CHECK CONSTRAINT [FK_Рецепти_Продукти]
GO
/****** Object:  ForeignKey [FK_Рецепти_Ястия]    Script Date: 01/29/2015 11:01:22 ******/
ALTER TABLE [dbo].[Рецепти]  WITH CHECK ADD  CONSTRAINT [FK_Рецепти_Ястия] FOREIGN KEY([КодНаЯстие])
REFERENCES [dbo].[Ястия] ([Код])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Рецепти] CHECK CONSTRAINT [FK_Рецепти_Ястия]
GO
/****** Object:  ForeignKey [FK_Менюта_Ястия]    Script Date: 01/29/2015 11:01:22 ******/
ALTER TABLE [dbo].[Менюта]  WITH CHECK ADD  CONSTRAINT [FK_Менюта_Ястия] FOREIGN KEY([КодНаЯстие])
REFERENCES [dbo].[Ястия] ([Код])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Менюта] CHECK CONSTRAINT [FK_Менюта_Ястия]
GO
