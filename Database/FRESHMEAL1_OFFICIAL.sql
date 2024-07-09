USE [master]

GO
/****** Object:  Database [F.R.E.S.H_Meal]    Script Date: 6/26/2024 1:03:03 PM ******/
CREATE DATABASE [F.R.E.S.H_Meal_2]
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [F.R.E.S.H_Meal_2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET ARITHABORT OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET  MULTI_USER 
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET QUERY_STORE = OFF
GO
USE [F.R.E.S.H_Meal_2]
GO
/****** Object:  Table [dbo].[tb_Address]    Script Date: 6/26/2024 1:03:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Address](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](250) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_tb_Address] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_BoxIngredient]    Script Date: 6/26/2024 1:03:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_BoxIngredient](
	[BoxIngredient_ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[IngredientID] [int] NULL,
	[Quantity] [nvarchar](50) NULL,
	[Unit] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_tb_BoxIngredient] PRIMARY KEY CLUSTERED 
(
	[BoxIngredient_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Category]    Script Date: 6/26/2024 1:03:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](250) NOT NULL,
	[SeoTitle] [nvarchar](50) NULL,
	[Status] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_tb_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Ingredient]    Script Date: 6/26/2024 1:03:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Ingredient](
	[IngredientID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_tb_Ingredient] PRIMARY KEY CLUSTERED 
(
	[IngredientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Meal_Type]    Script Date: 6/26/2024 1:03:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Meal_Type](
	[MealID] [int] IDENTITY(1,1) NOT NULL,
	[MeadName] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_Meal_Type] PRIMARY KEY CLUSTERED 
(
	[MealID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Order]    Script Date: 6/26/2024 1:03:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[AddressID] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[ShipDate] [datetime] NOT NULL,
	[Shipping_Price] [int] NOT NULL,
	[Discount] [int] NOT NULL,
	[TotalPrice] [int] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[PayingMethod] [nvarchar](50) NOT NULL,
	[Promotional_Campain_ID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_tb_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Order_Detail]    Script Date: 6/26/2024 1:03:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Order_Detail](
	[Order_Detail_ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[OrderID] [int] NULL,
	[Price] [int] NULL,
	[Quantity] [int] NULL,
	[Total_Price] [int] NULL,
	[Product_Type_Status] [bit] NOT NULL,
 CONSTRAINT [PK_tb_Order_Detail] PRIMARY KEY CLUSTERED 
(
	[Order_Detail_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Personal_Plan]    Script Date: 6/26/2024 1:03:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Personal_Plan](
	[Personal_Plan_ID] [int] IDENTITY(1,1) NOT NULL,
	[Weekly_Plan_Product_ID] [int] NOT NULL,
	[DayPick] [date] NOT NULL,
	[MealID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_tb_Personal_Plan] PRIMARY KEY CLUSTERED 
(
	[Personal_Plan_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Product]    Script Date: 6/26/2024 1:03:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](250) NOT NULL,
	[Image] [nvarchar](250) NULL,
	[Price] [int] NOT NULL,
	[Title] [ntext] NOT NULL,
	[Description] [ntext] NOT NULL,
	[CookingTime] [int] NOT NULL,
	[Status] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_tb_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Product_Category]    Script Date: 6/26/2024 1:03:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Product_Category](
	[Product_Category_ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[CategoryID] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_tb_Product_Category] PRIMARY KEY CLUSTERED 
(
	[Product_Category_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Promotional_Campain]    Script Date: 6/26/2024 1:03:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Promotional_Campain](
	[Promotional_Campain_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Description] [ntext] NOT NULL,
	[DiscountPrice] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Status] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_tb_Promotional_Campain] PRIMARY KEY CLUSTERED 
(
	[Promotional_Campain_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Recipe_Product]    Script Date: 6/26/2024 1:03:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Recipe_Product](
	[RecipeProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Instruction] [ntext] NOT NULL,
	[Image] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_tb_Recipe_Product] PRIMARY KEY CLUSTERED 
(
	[RecipeProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Role]    Script Date: 6/26/2024 1:03:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tb_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_User]    Script Date: 6/26/2024 1:03:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[DateOfBirth] [datetime] NULL,
	[Gender] [nvarchar](10) NULL,
	[Email] [nvarchar](250) NOT NULL,
	[Phone] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](250) NULL,
	[RoleID] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_tb_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_User_Address]    Script Date: 6/26/2024 1:03:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_User_Address](
	[User_Address_ID] [int] IDENTITY(1,1) NOT NULL,
	[AddressID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_tb_User_Address] PRIMARY KEY CLUSTERED 
(
	[User_Address_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Weekly_Plan]    Script Date: 6/26/2024 1:03:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Weekly_Plan](
	[Weekly_Plan_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Status] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_tb_Weekly_Plan] PRIMARY KEY CLUSTERED 
(
	[Weekly_Plan_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Weekly_Plan_Product]    Script Date: 6/26/2024 1:03:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Weekly_Plan_Product](
	[Weekly_Plan_Product_ID] [int] IDENTITY(1,1) NOT NULL,
	[Weekly_Plan_ID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_tb_Weekly_Plan_Product] PRIMARY KEY CLUSTERED 
(
	[Weekly_Plan_Product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_Address] ON 

INSERT [dbo].[tb_Address] ([AddressID], [Address], [City], [CreatedDate], [UpdatedDate]) VALUES (1, N'Kế 2837/3b, An Phú Đông, Quận 12', N'Thành Phố Hồ Chí Minh', CAST(N'2024-06-23T23:41:32.853' AS DateTime), CAST(N'2024-06-23T23:41:32.853' AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_Address] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Category] ON 

INSERT [dbo].[tb_Category] ([CategoryID], [CategoryName], [SeoTitle], [Status], [CreatedDate], [UpdateDate]) VALUES (1, N'Noodle', NULL, 1, CAST(N'2024-06-23T00:54:09.033' AS DateTime), CAST(N'2024-06-23T00:54:09.033' AS DateTime))
INSERT [dbo].[tb_Category] ([CategoryID], [CategoryName], [SeoTitle], [Status], [CreatedDate], [UpdateDate]) VALUES (2, N'Rice', NULL, 1, CAST(N'2024-06-23T00:54:09.033' AS DateTime), CAST(N'2024-06-23T00:54:09.033' AS DateTime))
INSERT [dbo].[tb_Category] ([CategoryID], [CategoryName], [SeoTitle], [Status], [CreatedDate], [UpdateDate]) VALUES (3, N'Diet', NULL, 1, CAST(N'2024-06-23T00:54:09.033' AS DateTime), CAST(N'2024-06-23T00:54:09.033' AS DateTime))
INSERT [dbo].[tb_Category] ([CategoryID], [CategoryName], [SeoTitle], [Status], [CreatedDate], [UpdateDate]) VALUES (4, N'Rolls', NULL, 1, CAST(N'2024-06-23T00:54:09.033' AS DateTime), CAST(N'2024-06-23T00:54:09.033' AS DateTime))
INSERT [dbo].[tb_Category] ([CategoryID], [CategoryName], [SeoTitle], [Status], [CreatedDate], [UpdateDate]) VALUES (5, N'Veggie', NULL, 1, CAST(N'2024-06-23T00:54:09.033' AS DateTime), CAST(N'2024-06-23T00:54:09.033' AS DateTime))
INSERT [dbo].[tb_Category] ([CategoryID], [CategoryName], [SeoTitle], [Status], [CreatedDate], [UpdateDate]) VALUES (6, N'Foreign Food', NULL, 1, CAST(N'2024-06-23T00:54:09.033' AS DateTime), CAST(N'2024-06-23T00:54:09.033' AS DateTime))
INSERT [dbo].[tb_Category] ([CategoryID], [CategoryName], [SeoTitle], [Status], [CreatedDate], [UpdateDate]) VALUES (7, N'Hotpot', NULL, 1, CAST(N'2024-06-23T00:54:09.033' AS DateTime), CAST(N'2024-06-23T00:54:09.033' AS DateTime))
INSERT [dbo].[tb_Category] ([CategoryID], [CategoryName], [SeoTitle], [Status], [CreatedDate], [UpdateDate]) VALUES (8, N'Deserts', NULL, 1, CAST(N'2024-06-23T00:54:09.033' AS DateTime), CAST(N'2024-06-23T00:54:09.033' AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_Category] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Ingredient] ON 

INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (1, N'Sườn heo', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (2, N'Tôm', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (3, N'Đùi Gà', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (4, N'Thịt Bò', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (5, N'Xương Bò', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (6, N'Ức Gà', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (7, N'Hành tím', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (8, N'Tỏi', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (9, N'Ớt chuông', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (10, N'Dầu ăn', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (11, N'Nước mắm', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (12, N'Đường', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (13, N'Bột năng', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (14, N'Muối', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (15, N'Bột ngọt', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (16, N'Hạt nêm', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (17, N'Tiêu', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (18, N'Dầu hào', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (19, N'Nước tương', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (20, N'Giấm', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (21, N'Gừng', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (22, N'Nghệ', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (23, N'Ớt hiểm', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (24, N'Sả', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (25, N'Hành lá', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (26, N'Rau Thì là', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (27, N'Ngũ vị hương', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (28, N'Bột cà ri', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (29, N'Đinh hương', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (30, N'Quế', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (31, N'Hoa hồi', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (32, N'Hương thảo', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (33, N'Lá nguyệt quế', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (34, N'Tương ớt', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (35, N'Sốt Cà', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (36, N'Chao', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (37, N'Sốt Mayonnaise', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (38, N'Bơ', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (39, N'Mật ong', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (40, N'Mắm tôm', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
INSERT [dbo].[tb_Ingredient] ([IngredientID], [Name], [CreatedDate], [UpdatedDate]) VALUES (41, N'Mắm ruốc', CAST(N'2024-06-23T00:49:23.740' AS DateTime), CAST(N'2024-06-23T00:49:23.740' AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_Ingredient] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Product] ON 

INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (1, N'Sườn Xào Chua Ngọt', NULL, 35000, N'Món ăn ngon tuyệt, kết hợp vị chua ngọt hài hòa, hấp dẫn mọi khẩu vị. Món này dễ nấu, chỉ cần sườn heo, gia vị đơn giản và một chút khéo léo là bạn đã có ngay bữa ăn ngon miệng, đậm đà.', N'Sườn xào chua ngọt là một món ăn truyền thống của Việt Nam, nổi bật với sự kết hợp hoàn hảo giữa vị chua, ngọt, mặn và thơm. Món ăn này được chế biến từ sườn heo non, được chiên giòn rồi xào với nước sốt chua ngọt đậm đà từ giấm, đường, nước mắm và cà chua. Hương vị phong phú của món ăn được làm nổi bật thêm bởi các loại rau củ như hành tây, ớt chuông và dứa. Sườn xào chua ngọt không chỉ hấp dẫn bởi màu sắc rực rỡ mà còn bởi hương vị thơm ngon, tạo nên một trải nghiệm ẩm thực khó quên. Món ăn này thường được dùng kèm với cơm trắng, tạo nên bữa ăn hài hòa và cân bằng dinh dưỡng.', 30, 1, CAST(N'2024-06-23T00:49:28.813' AS DateTime), CAST(N'2024-06-23T00:49:28.813' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (2, N'Tôm Hùm Nướng', NULL, 100000, N'Món ngon tinh tế, dễ làm, kết hợp vị ngọt tự nhiên của tôm hùm với hương thơm từ bơ tỏi và chanh. Món ăn này mang đến trải nghiệm ẩm thực sang trọng, phù hợp cho mọi dịp đặc biệt.', N'Tôm hùm nướng (Grilled Lobster) là món ngon ẩm thực được ưa chuộng ở nhiều nền ẩm thực trên thế giới, trong đó có Việt Nam. Nó liên quan đến việc chuẩn bị và nấu toàn bộ tôm hùm trên nguồn nhiệt, thường là vỉ nướng hoặc lò nướng, tạo ra một món ăn ngon và đầy hương vị. Sự đơn giản trong quá trình chuẩn bị cho phép tỏa sáng vị ngọt tự nhiên và vị umami của tôm hùm, khiến nó trở thành món ăn yêu thích của những người đam mê hải sản.', 10, 1, CAST(N'2024-06-23T00:49:28.813' AS DateTime), CAST(N'2024-06-23T00:49:28.813' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (3, N'Lẩu Thái', NULL, 70000, N'Món ăn đậm đà, chua cay từ nước dùng sả, ớt, và lá chanh. Dễ nấu với tôm, mực, thịt bò và rau tươi, lẩu Thái mang đến bữa ăn thơm ngon, hấp dẫn cho mọi dịp.', N'Lẩu Thái là món ăn nổi tiếng với vị chua cay đậm đà từ nước dùng được nấu cùng sả, ớt, và lá chanh. Món lẩu này dễ làm, chỉ cần thêm tôm, mực, thịt bò và các loại rau tươi, bạn đã có ngay một nồi lẩu thơm ngon, hấp dẫn, phù hợp cho các bữa tiệc gia đình hay bạn bè.', 45, 1, CAST(N'2024-06-23T00:49:28.813' AS DateTime), CAST(N'2024-06-23T00:49:28.813' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (4, N'Kho Quẹt', NULL, 30000, N'Món ăn truyền thống, mang hương vị đậm đà từ mắm, thịt ba chỉ và tôm khô. Dễ nấu, chỉ cần chưng cùng hành tỏi, tiêu và ớt, kho quẹt thường được dùng kèm rau luộc, tạo nên bữa ăn dân dã, ngon miệng.', N'Kho quẹt là món ăn truyền thống của vùng miền Trung Việt Nam, nổi bật với hương vị đậm đà và mộc mạc. Món này được làm từ thịt ba chỉ và tôm khô, được chưng cùng mắm, hành, tỏi, tiêu và ớt. Quá trình chế biến kho quẹt không chỉ đơn giản mà còn rất tinh tế, từ việc thái thịt ba chỉ thành từng miếng nhỏ, cho đến khi thịt thấm đều gia vị và màu sắc. Hành, tỏi được phi thơm cùng với ớt để tạo nên nước sốt đậm đà và thơm ngon, làm nổi bật hương vị đặc trưng của món kho quẹt.', 25, 1, CAST(N'2024-06-23T00:49:28.813' AS DateTime), CAST(N'2024-06-23T00:49:28.813' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (5, N'Đậu Hũ Sốt Cà', NULL, 30000, N'Món ăn dân dã, với đậu hũ chiên vàng xào cùng sốt cà chua thơm ngon, hấp dẫn và dễ chế biến.', N'Đậu hũ sốt cà là món ăn dân dã, nhẹ nhàng nhưng vô cùng hấp dẫn trong ẩm thực Việt Nam. Món này sử dụng đậu hũ tươi được chiên vàng, sau đó xào cùng sốt cà chua thơm ngon từ cà chua tươi, hành, tỏi và gia vị như muối, đường. Màu sắc và vị ngon đặc trưng của sốt cà chua hòa quyện cùng sự giòn rụm của đậu hũ tạo nên một hương vị đặc biệt, hài hòa. Món đậu hũ sốt cà thường được dùng kèm với cơm trắng, hoặc như một món nhậu ngon miệng trong các bữa tiệc gia đình hoặc bạn bè.', 25, 1, CAST(N'2024-06-23T00:49:28.813' AS DateTime), CAST(N'2024-06-23T00:49:28.813' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (6, N'Chả Ram Bắp Nhân Thịt', NULL, 30000, N'Món ăn truyền thống, với lớp vỏ giòn và nhân thịt thơm ngon bên trong, dễ thương và hấp dẫn.', N'Chả ram bắp nhân thịt là món ăn truyền thống của Việt Nam, nổi bật với lớp vỏ giòn và nhân thịt mềm mại bên trong. Bắp được xay nhuyễn và trộn cùng thịt heo, hành tây, nấm và các gia vị như tiêu, đường và nước mắm, tạo nên hương vị đặc trưng và phong phú. Khi chiên vàng, chả ram mang đến hương thơm bắp và thịt thơm ngon, kết hợp hoàn hảo với cơm trắng nóng hổi hoặc như món nhậu hấp dẫn.', 35, 1, CAST(N'2024-06-23T00:49:28.813' AS DateTime), CAST(N'2024-06-23T00:49:28.813' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (7, N'Gỏi Đu Đủ', NULL, 30000, N'Món ăn truyền thống của Việt Nam, với đu đủ xanh thái sợi, trộn đều với tôm, thịt, rau sống, dậu phộng và gia vị như tỏi, ớt, nước mắm. Mang đến hương vị tươi mát và đậm đà, phù hợp cho mọi dịp ăn nhẹ.', N'Gỏi đu đủ là món ăn truyền thống của Việt Nam, được làm từ đu đủ xanh thái sợi mỏng, trộn đều với các thành phần như tôm, thịt, rau sống, dậu phộng và gia vị như tỏi, ớt, nước mắm và chanh. Món ăn này không chỉ mang lại cảm giác tươi mát mà còn hấp dẫn với hương vị đậm đà và đa dạng. Gỏi đu đủ thường được dùng làm món nhắm trong các bữa tiệc gia đình hoặc như món ăn nhẹ giữa các bữa chính.', 20, 1, CAST(N'2024-06-23T00:49:28.813' AS DateTime), CAST(N'2024-06-23T00:49:28.813' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (8, N'Phở', NULL, 35000, N'Món ăn Việt Nam nổi tiếng với nước dùng đậm đà từ xương, kèm bánh phở, thịt và rau thơm.', N'Phở là món ăn nổi tiếng của Việt Nam, có hương vị đậm đà từ nước dùng phở làm từ xương gà, bò, gia vị như hành, gừng, và các loại thảo mộc. Món ăn này thường được dùng với bánh phở mềm mại, thịt bò hoặc gà, rau thơm và rau sống. Phở không chỉ ngon miệng mà còn là biểu tượng văn hóa ẩm thực của Việt Nam, thường được thưởng thức vào buổi sáng hoặc bữa ăn chiều.', 300, 1, CAST(N'2024-06-23T00:49:28.813' AS DateTime), CAST(N'2024-06-23T00:49:28.813' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (9, N'Đậu Hũ Chiên Sả Ớt', NULL, 25000, N'Món ăn đơn giản và ngon miệng của Việt Nam, với đậu hũ chiên vàng giòn, được xào cùng sả và ớt phi thơm nức.', N'Đậu hũ chiên sả ớt là món ăn đơn giản và ngon miệng của Việt Nam, với đậu hũ chiên vàng giòn, được chấm cùng sả và ớt phi thơm nức. Món đậu hũ chiên sả ớt không chỉ dễ làm mà còn rất ngon và bổ dưỡng. Nó là một trong những món ăn ưa thích của người dân Việt Nam, thích hợp để thưởng thức trong các bữa tiệc gia đình hoặc những buổi tiệc nhỏ.', 25, 1, CAST(N'2024-06-23T00:49:28.813' AS DateTime), CAST(N'2024-06-23T00:49:28.813' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (10, N'Giá Xào Đậu Hũ', NULL, 20000, N'Món ăn đơn giản, ngon miệng với giá xanh tươi mát và đậu hũ giòn sần sật, được xào cùng tỏi và hành lá thơm ngon. Phù hợp làm món nhắm hoặc món ăn kèm cơm trắng.', N'Giá xào đậu hũ là một món ăn dân dã phổ biến trong ẩm thực Việt Nam, kết hợp giữa giá xanh tươi mát và đậu hũ giòn sần sật. Món ăn này được chế biến nhanh chóng bằng cách xào giá với tỏi, hành và đậu hũ, tạo nên hương vị thơm ngon và bổ dưỡng. Giá xào đậu hũ thường được dùng làm món nhắm, hoặc món ăn kèm với cơm trắng, phù hợp cho các bữa ăn gia đình hoặc những bữa tiệc nhẹ.', 20, 1, CAST(N'2024-06-23T00:49:28.813' AS DateTime), CAST(N'2024-06-23T00:49:28.813' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (11, N'Đậu Hũ Non Sốt Nấm Đông Cô', NULL, 35000, N'Món ăn ngon và bổ dưỡng, với đậu hũ non mềm mại được sốt nấm Đông Cô thấm đều, mang đến hương vị đặc trưng và thơm ngon phù hợp cho mọi dịp.', N'Đậu hũ non sốt nấm Đông Cô là món ăn ngon, phong phú dinh dưỡng với sự kết hợp độc đáo giữa đậu hũ non mềm mại và nấm Đông Cô thơm ngon. Đậu hũ non được xào chín với sốt nấm Đông Cô từ nấm tươi, hành tây, tỏi và các gia vị như tiêu, nước tương. Món ăn này không chỉ hấp dẫn mà còn giàu dinh dưỡng, thích hợp cho bữa ăn gia đình hoặc những dịp đặc biệt.', 30, 1, CAST(N'2024-06-23T00:49:28.813' AS DateTime), CAST(N'2024-06-23T00:49:28.813' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (12, N'Mì Xào Nấm Chay', NULL, 25000, N'Món ăn ngon và giàu dinh dưỡng, với sợi mì xào chín đều cùng nấm thơm ngon và rau củ tươi, mang đến hương vị đậm đà và phong phú.', N'Mì xào nấm chay là món ăn đậm đà và giàu dinh dưỡng, kết hợp giữa sợi mì dai ngon, nấm chay thơm ngon và rau củ tươi. Món ăn này được chế biến nhanh chóng bằng cách xào mì với nấm chay, tỏi, hành và các loại rau khác, gia vị như nước tương và tiêu. Mì xào nấm chay không chỉ là món ăn ngon mà còn là lựa chọn lý tưởng cho những người ăn chay hoặc muốn thực đơn đa dạng.', 25, 1, CAST(N'2024-06-23T00:49:28.813' AS DateTime), CAST(N'2024-06-23T00:49:28.813' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (13, N'Canh Hẹ Đậu Hũ Non', NULL, 20000, N'Món canh tươi mát với hương vị đậm đà từ hẹ xanh và đậu hũ non mềm mại, phù hợp cho một bữa ăn dễ tiêu hoá và giàu dinh dưỡng.', N'Canh hẹ đậu hũ non là món canh dân dã, với hương vị tươi mát từ hẹ xanh và đậu hũ non mềm mại. Món canh này được nấu trong nước dùng thanh mát, kết hợp với hẹ và đậu hũ non, tạo nên một bữa ăn dễ tiêu hoá và giàu dinh dưỡng. Canh hẹ đậu hũ non thường được dùng như món nhắm trong các bữa cơm gia đình hoặc những ngày hè nóng bức.', 25, 1, CAST(N'2024-06-23T00:49:28.813' AS DateTime), CAST(N'2024-06-23T00:49:28.813' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (14, N'Kem Chuối Sữa Dừa Đậu Phộng', NULL, 20000, N'Món tráng miệng ngon, với kem chuối mềm mịn, sữa dừa thơm và đậu phộng giòn tan, mang đến hương vị độc đáo và thơm ngon.', N'Kem chuối sữa dừa đậu phộng là món tráng miệng ngon và độc đáo, kết hợp giữa kem chuối mềm mịn, sữa dừa thơm và đậu phộng giòn tan. Món này thường được làm từ chuối chín, sữa dừa tươi và đậu phộng rang giã nhuyễn, tạo nên hương vị ngọt ngào và béo ngậy, là lựa chọn hoàn hảo sau bữa ăn.', 30, 1, CAST(N'2024-06-23T00:49:28.813' AS DateTime), CAST(N'2024-06-23T00:49:28.813' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (15, N'Chè Thập Cẩm', NULL, 20000, N'Món tráng miệng phổ biến trong ẩm thực Việt Nam, kết hợp từ nhiều loại nguyên liệu như đậu xanh, đỗ đen, bánh lọt, thạch sen, trái cây tươi và hạt như đậu phộng, mè rang, mang đến hương vị đa dạng và phong phú.', N'Chè thập cẩm là món tráng miệng truyền thống của Việt Nam, kết hợp từ nhiều loại nguyên liệu như đậu xanh, đỗ đen, bánh lọt, thạch sen, trái cây tươi, thạch phô mai và một số hạt như đậu phộng, mè rang. Mỗi thành phần đều được nấu hoặc ngâm ướp một cách tỉ mỉ để tạo ra hương vị đặc trưng cho từng loại. Chè thập cẩm thường được dùng làm món tráng miệng ngọt ngào và mát lạnh, phù hợp cho các dịp sum họp gia đình hoặc bạn bè.', 15, 1, CAST(N'2024-06-23T00:49:28.813' AS DateTime), CAST(N'2024-06-23T00:49:28.813' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (16, N'Cá Thu Kho Nước Tương', NULL, 30000, N'Món ăn truyền thống Việt Nam, kết hợp giữa cá thu chiên sơ và nước tương, đường, tỏi, hành tím. Món ăn mang hương vị đậm đà, thơm ngon, hoàn hảo khi ăn cùng cơm trắng.', N'Cá thu kho nước tương là một sự kết hợp tinh tế giữa cá thu tươi ngon và nước tương đậm đà, mang đến hương vị khó quên cho bữa cơm gia đình. Cá thu, sau khi được chiên sơ, được kho cùng nước tương, đường, tỏi, hành tím và gia vị, tạo nên một món ăn với màu nâu bóng hấp dẫn và vị ngon đặc trưng. Cá thu thấm đẫm gia vị, thơm ngon, mềm mại và đậm đà, đặc biệt khi ăn kèm với cơm trắng. Món cá thu kho nước tương không chỉ đơn giản trong cách làm mà còn giữ được hương vị truyền thống của ẩm thực Việt Nam, chắc chắn sẽ làm hài lòng mọi thành viên trong gia đình.', 40, 1, CAST(N'2024-06-24T12:50:39.807' AS DateTime), CAST(N'2024-06-24T12:50:39.807' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (17, N'Thịt Kho Tàu', NULL, 35000, N'Món ăn truyền thống Việt Nam, gồm thịt ba chỉ và trứng luộc kho mềm với nước dừa tươi và gia vị đậm đà. Món ăn có màu nâu cánh gián, vị ngọt thanh của nước dừa, thịt béo ngậy và thơm ngon, rất đưa cơm.', N'Thịt kho tàu là một món ăn truyền thống không thể thiếu trong ẩm thực Việt Nam, đặc biệt là trong những dịp lễ Tết. Món ăn kết hợp giữa thịt ba chỉ béo ngậy, trứng luộc và nước dừa, được kho mềm trong hỗn hợp gia vị đậm đà. Thịt kho tàu có màu nâu cánh gián hấp dẫn, vị ngọt thanh của nước dừa, thơm mùi hành tỏi, và béo ngậy từ thịt, tạo nên một món ăn đưa cơm, dễ ăn và thích hợp cho cả gia đình.', 60, 1, CAST(N'2024-06-24T12:50:39.807' AS DateTime), CAST(N'2024-06-24T12:50:39.807' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (18, N'Rau Câu Nước Cốt Dừa', NULL, 30000, N'Món tráng miệng Việt Nam, kết hợp giữa rau câu dẻo dai và nước cốt dừa béo ngậy. Hương vị ngọt thanh mát cùng màu sắc bắt mắt của món ăn này rất lý tưởng để giải nhiệt trong những ngày hè nóng bức. Thưởng thức rau câu nước cốt dừa để cảm nhận sự tinh tế của ẩm thực Việt.', N'Rau câu nước cốt dừa là một món tráng miệng truyền thống của ẩm thực Việt Nam, mang đến hương vị tươi mát và ngọt ngào. Món này được làm từ rau câu dẻo dai, kết hợp cùng nước cốt dừa béo ngậy, tạo nên sự hài hòa giữa vị ngọt thanh của rau câu và vị béo thơm của dừa. Màu sắc bắt mắt của rau câu cùng hương thơm đặc trưng của nước cốt dừa chắc chắn sẽ làm say lòng bất kỳ ai ngay từ lần đầu thưởng thức. Đây là món ăn lý tưởng cho những ngày hè nóng bức, giúp giải nhiệt và mang lại cảm giác sảng khoái, dễ chịu. Hãy thử ngay rau câu nước cốt dừa để cảm nhận sự độc đáo và hấp dẫn của ẩm thực Việt Nam.', 15, 1, CAST(N'2024-06-24T12:50:39.807' AS DateTime), CAST(N'2024-06-24T12:50:39.807' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (19, N'Lẩu Riêu Cua Bắp Bò', NULL, 55000, N'Món ăn kết hợp giữa riêu cua thơm ngon và bắp bò thịt mềm, tạo nên hương vị đậm đà, hấp dẫn. Món ăn này là lựa chọn lý tưởng cho các buổi tiệc gia đình hay bạn bè.', N'Lẩu riêu cua bắp bò là món ăn đặc trưng với hương vị đậm đà của riêu cua thơm ngon, kết hợp cùng sự thơm ngon của bắp bò thịt. Mỗi miếng bắp bò thịt mềm mịn, ngấm đều vào nước dùng riêu cua chua chua, ngọt ngọt, giúp cho món ăn trở nên phong phú mà không bị nhàm chán. Một nồi lẩu riêu cua bắp bò hứa hẹn làm hài lòng cả gia đình vào những ngày cuối tuần hay khi có bạn bè đến chơi.', 40, 1, CAST(N'2024-06-24T12:50:39.807' AS DateTime), CAST(N'2024-06-24T12:50:39.807' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (20, N'Cà Ri Chay', NULL, 25000, N'Món ăn chay ngon, được nấu từ cà rốt, khoai tây, cà chua và nước dừa, gia vị tự nhiên như sả và ớt. Món ăn này thích hợp cho những ai yêu thích ẩm thực chay hoặc muốn thưởng thức một bữa ăn dễ tiêu hóa và giàu dinh dưỡng.', N'Cà ri chay là một món ăn chay phổ biến với hương vị đậm đà, hấp dẫn. Món này được làm từ cà rốt, khoai tây, cà chua và các loại rau củ khác, nấu cùng nước dừa và gia vị tự nhiên như sả, ớt và mùi. Hương thơm của cà ri phủ đầy không gian, và hương vị của nó hoàn toàn thay đổi', 30, 1, CAST(N'2024-06-24T12:50:39.807' AS DateTime), CAST(N'2024-06-24T12:50:39.807' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (21, N'Vịt Quay Bắc Kinh', NULL, 150000, N'Món ăn truyền thống với da giòn, thịt mềm, và hương vị đặc trưng của gia vị truyền thống như tỏi, gừng. Món ăn này là sự lựa chọn hoàn hảo cho bữa tiệc hay dịp họp mặt gia đình.', N'Vịt quay Bắc Kinh là món ăn nổi tiếng với vẻ ngoài giòn và vị thơm ngon đặc trưng. Thịt vịt được quay đều vàng óng, da giòn tan, thịt mềm mại, thấm đượm vị gia vị như tỏi, gừng và mật ong. Món ăn này thường được ăn kèm với bánh bao hoặc bánh mì, tạo nên một trải nghiệm ẩm thực tuyệt vời, đặc biệt là trong các dịp lễ hội và tiệc tùng.', 120, 1, CAST(N'2024-06-24T12:50:39.807' AS DateTime), CAST(N'2024-06-24T12:50:39.807' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (22, N'Canh Khổ Qua Nhồi Thịt', NULL, 40000, N'Món ăn truyền thống của Việt Nam, hương vị thanh mát từ khổ qua và thịt băm nhân nhồi. Món canh này có màu sắc hấp dẫn và thường được ưa chuộng trong các bữa cơm gia đình.', N'Canh khổ qua nhồi thịt là một món ăn truyền thống của Việt Nam, nổi bật với hương vị thanh mát và ngọt dịu của khổ qua, cùng với sự thơm ngon từ nhân nhồi thịt băm bên trong. Món canh này thường có màu xanh tươi từ khổ qua và màu nâu vàng của thịt băm, tạo nên một hình ảnh hấp dẫn trên bàn ăn. Đây là món canh được nhiều gia đình yêu thích và thường được chế biến vào các dịp gia đình sum họp.', 40, 1, CAST(N'2024-06-24T12:50:39.807' AS DateTime), CAST(N'2024-06-24T12:50:39.807' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (23, N'Sushi Cá Hồi', NULL, 75000, N'Món sushi đặc trưng của Nhật Bản, với cá hồi tươi ngon và cơm sushi dẻo mịn. Hương vị ngọt nhẹ của cá hồi hoà quyện với giấm gạo trong cơm sushi, tạo nên một trải nghiệm ẩm thực đầy hấp dẫn và đặc biệt.', N'Sushi cá hồi là một trong những món sushi đặc trưng của ẩm thực Nhật Bản, với sự kết hợp tinh tế giữa miếng cá hồi tươi ngon và cơm sushi dẻo mịn. Miếng cá hồi được cắt mỏng, có màu đỏ tươi rực rỡ, tạo nên một hình ảnh hấp dẫn trên dĩa sushi. Hương vị của sushi cá hồi thường ngọt nhẹ, thỉnh thoảng có một chút mỡ ngọt của cá hồi, hoà quyện với vị chua dịu của giấm gạo trong cơm sushi. Món ăn này không chỉ là sự lựa chọn lý tưởng cho những người yêu thích ẩm thực Nhật Bản mà còn là một trải nghiệm tuyệt vời cho bất kỳ ai muốn thưởng thức hương vị tươi mát và đậm đà của sushi cá hồi.', 120, 1, CAST(N'2024-06-24T12:50:39.807' AS DateTime), CAST(N'2024-06-24T12:50:39.807' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (24, N'Gỏi Cuốn Tôm Thịt', NULL, 25000, N'Món ăn phổ biến trong ẩm thực Đông Nam Á, đặc biệt là tại Việt Nam. Đây là một món ăn nhẹ và bổ dưỡng, được làm từ các nguyên liệu tươi ngon và thường được ăn kèm với nước chấm chua ngọt.', N'Gỏi cuốn tôm thịt là món ăn truyền thống của Việt Nam, với những lớp bánh tráng mỏng mịn bọc quanh nhân tôm thịt tươi ngon. Mỗi cuốn gỏi mang đến sự hòa quyện giữa vị ngọt của tôm, vị thơm của thịt, cùng với sự tươi mát từ rau sống và gia vị như ngò, rau thơm. Món ăn này thường được kèm với nước chấm chua ngọt đậm đà, tạo nên một trải nghiệm ẩm thực dễ ăn và đáp ứng nhu cầu dinh dưỡng.', 25, 1, CAST(N'2024-06-24T12:50:39.807' AS DateTime), CAST(N'2024-06-24T12:50:39.807' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (25, N'Nem Nướng Nha Trang', NULL, 35000, N'Món ăn đặc trưng của vùng biển Nha Trang, được làm từ thịt nướng cuộn trong lá chuối, ăn kèm rau sống và bánh tráng mềm. Hương vị cay nồng của món nem nướng thường đi kèm với nước chấm chua ngọt hoặc nước mắm pha thêm gia vị, tạo nên một trải nghiệm ẩm thực phong phú và độc đáo từ vùng biển xanh.', N'Nem nướng Nha Trang là một món ăn đặc trưng của vùng biển Nha Trang, nổi tiếng với hương vị đậm đà và phong phú. Món này thường được làm từ những nguyên liệu đơn giản như thịt heo hoặc thịt nướng, cuộn trong lá chuối và ăn kèm với rau sống và bánh tráng mềm. Hương vị của nem nướng Nha Trang độc đáo, cay nồng, thường được thưởng thức với nước chấm chua ngọt hoặc nước mắm pha thêm gia vị.', 35, 1, CAST(N'2024-06-24T12:50:39.807' AS DateTime), CAST(N'2024-06-24T12:50:39.807' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (26, N'Mì Xào Thịt Bò', NULL, 25000, N'Món ăn phổ biến với sợi mì dai và thịt bò xào thơm ngon, gia vị đậm đà. Món ăn này thường được ưa chuộng và dễ dàng chuẩn bị trong các bữa ăn gia đình hay tiệc nhỏ.', N'Mì xào thịt bò là một món ăn phổ biến, với sợi mì dai và thịt bò xào cùng rau củ như cà rốt, hành tây và ớt chuông. Hương vị của món ăn được nâng lên nhờ sự hòa quyện của nước sốt xào đậm đà, gia vị như tỏi, tiêu và xì dầu. Món mì xào thịt bò thường được trang trí bằng rau thơm như ngò và húng quế, tạo nên một bữa ăn hấp dẫn và giàu dinh dưỡng.', 20, 1, CAST(N'2024-06-24T12:50:39.807' AS DateTime), CAST(N'2024-06-24T12:50:39.807' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (27, N'Sữa Chua Nếp Cẩm', NULL, 20000, N'Món tráng miệng truyền thống của Việt Nam, kết hợp hài hoà giữa sự ngọt ngào của sữa chua và hương vị đặc trưng của nếp cẩm. Món ăn này thường xuất hiện trong các dịp lễ tết và tiệc nhỏ, vừa ngon miệng vừa mang tính chất trang trí đặc biệt.', N'Sữa chua nếp cẩm là một món tráng miệng truyền thống của Việt Nam, kết hợp giữa sự ngọt ngào của sữa chua và hương vị đặc trưng của nếp cẩm. Đây là một món ăn vừa ngon miệng vừa mang tính chất trang trí, thường được chuẩn bị trong các dịp lễ tết và các buổi tiệc.', 15, 1, CAST(N'2024-06-24T12:50:39.807' AS DateTime), CAST(N'2024-06-24T12:50:39.807' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (28, N'Soup Nấm ', NULL, 25000, N'Món ăn thanh đạm, được làm từ nấm tươi, rau củ và gia vị nhẹ nhàng, ít chất béo. Món ăn này giàu dinh dưỡng và phù hợp cho chế độ ăn kiêng và giảm cân.', N'Soup nấm phù hợp cho chế độ ăn kiêng thường được làm từ các loại nấm tươi, rau củ và gia vị nhẹ nhàng, ít chất béo. Đây là một món ăn thanh đạm, giàu dinh dưỡng và thích hợp cho những người đang tuân thủ chế độ ăn kiêng hoặc muốn giảm cân.', 20, 1, CAST(N'2024-06-24T12:50:39.807' AS DateTime), CAST(N'2024-06-24T12:50:39.807' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (29, N'Bánh Mì Nướng Ngũ Cốc', NULL, 30000, N'Món ăn giàu dinh dưỡng được làm từ ngũ cốc, hạt giống và các loại hạt khác. Món ăn này mang lại lợi ích sức khỏe cao và thường được ưa chuộng trong các chế độ ăn uống lành mạnh.', N'Bánh mì nướng ngũ cốc là một loại bánh mì được làm từ nguyên liệu giàu dinh dưỡng như ngũ cốc, hạt giống và các loại hạt khác, mang lại lợi ích sức khỏe cao và thường được ưa chuộng trong các chế độ ăn uống lành mạnh.', 20, 1, CAST(N'2024-06-24T12:50:39.807' AS DateTime), CAST(N'2024-06-24T12:50:39.807' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (30, N'Chả Giò Chay', NULL, 25000, N'Món chay phổ biến trong ẩm thực Việt Nam, thường được làm từ các nguyên liệu thực vật và thường được chế biến để thay thế cho các loại chả thịt. Đây là một món ăn thanh đạm, giàu chất dinh dưỡng và thường được dùng trong các dịp cúng tổ tiên, ngày lễ và các buổi tiệc sinh nhật.', N'Chả giò chay là món ăn chay phổ biến, được làm từ những nguyên liệu như nấm hương, hành tây, cà rốt và một số rau khác, được cuộn trong bánh tráng và chiên giòn. Món ăn này thường được ăn kèm với nước chấm chua ngọt và rau sống, mang lại hương vị thơm ngon và sự hài hòa giữa các nguyên liệu chay.', 30, 1, CAST(N'2024-06-24T12:50:39.807' AS DateTime), CAST(N'2024-06-24T12:50:39.807' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (31, N'Bánh Su Kem', NULL, 30000, N'Món tráng miệng Pháp gồm vỏ bánh su giòn và nhân kem béo. Thường được trang trí đường kem và hoa quả tươi, món này vừa ngon vừa đẹp mắt.', N'Bánh su kem là một món tráng miệng phổ biến và được yêu thích trên toàn thế giới, có nguồn gốc từ Pháp. Món bánh này gồm hai phần chính: vỏ bánh su giòn tan và nhân kem béo ngậy bên trong. Bánh su kem thường được trang trí bằng đường kem và các loại hoa quả tươi, tạo nên một món ăn không chỉ ngon mà còn rất bắt mắt.', 45, 1, CAST(N'2024-06-24T12:50:39.807' AS DateTime), CAST(N'2024-06-24T12:50:39.807' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (32, N'Trái Cây Dầm', NULL, 25000, N'Món ăn vặt phổ biến, làm từ các loại trái cây tươi mát. Thích hợp cho ngày nắng nóng, giàu vitamin và chất dinh dưỡng, thường được ưa chuộng trong các buổi tiệc và vào mùa hè để giải khát.', N'Trái cây dầm là một món ăn vặt phổ biến và rất thích hợp trong những ngày nắng nóng, được làm từ các loại trái cây tươi và mát lạnh. Đây là một món ăn nhẹ, giàu vitamin và chất dinh dưỡng, thường được yêu thích trong các buổi tiệc, sinh nhật hoặc dùng để giải khát vào mùa hè.', 10, 1, CAST(N'2024-06-24T12:50:39.807' AS DateTime), CAST(N'2024-06-24T12:50:39.807' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (33, N'Canh Cà Chua Trứng', NULL, 30000, N'Một món canh rất đơn giản và ngon miệng trong ẩm thực Việt Nam. Canh này thường được làm từ các nguyên liệu cơ bản như cà chua, trứng gà, và một số gia vị để tạo nên một hương vị dịu nhẹ và hấp dẫn.', N'Canh cà chua trứng là một món canh phổ biến trong ẩm thực Việt Nam. Nó được làm từ cà chua thái lát nấu với nước và gia vị cho đến khi cà chua mềm. Sau đó, trứng gà được đánh đều và đổ vào canh để thêm hương vị và chất dinh dưỡng. Canh thường được thêm ít rau mùi và hành lá cho thơm ngon.', 20, 1, CAST(N'2024-06-24T12:50:39.807' AS DateTime), CAST(N'2024-06-24T12:50:39.807' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (34, N'Bún Xào Chay', NULL, 30000, N'Món ăn chay đơn giản và ngon miệng trong ẩm thực Việt Nam. Món ăn này được chế biến từ những nguyên liệu đơn giản như bún mì sợi, rau củ, nấm và đậu hũ, kết hợp với các gia vị tạo nên hương vị đặc trưng và hấp dẫn.', N'Bún xào chay là món ăn chay phổ biến trong ẩm thực Việt Nam. Nó được làm từ bún (một loại mì sợi), xào cùng các loại rau củ như cà rốt, cải thảo, nấm, đậu hũ và các loại gia vị như tỏi, hành để tạo nên hương vị đậm đà. Món ăn này thường được phục vụ nóng, có thể ăn kèm với nước sốt chua ngọt và rau sống như giá, xà lách để thêm ngon miệng và cân bằng dinh dưỡng', 25, 1, CAST(N'2024-06-24T12:50:39.807' AS DateTime), CAST(N'2024-06-24T12:50:39.807' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (35, N'Panna Cotta', NULL, 40000, N'Một món tráng miệng ngọt ngào từ Italy, được làm từ sữa, kem, đường và gelatin để tạo độ đặc. Thường được kèm sốt trái cây hoặc caramel, và trang trí bằng trái cây tươi hoặc quả khô.', N'Panna cotta là một món tráng miệng truyền thống của Italy, có nghĩa là "sữa đun". Đây là một món ăn ngọt, mềm mại và mịn màng, được làm từ sữa, kem, đường và gelatin để đông lại. Panna cotta thường được phục vụ với sốt trái cây hoặc caramel và có thể được trang trí bằng trái cây tươi hoặc quả khô.', 120, 1, CAST(N'2024-06-24T12:50:39.807' AS DateTime), CAST(N'2024-06-24T12:50:39.807' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (36, N'Đậu Hũ Sốt Tứ Xuyên', NULL, 45000, N'Món ăn phổ biến từ vùng Tứ Xuyên Trung Quốc, nổi tiếng với gia vị cay nồng. Món này gồm đậu hũ chiên giòn, nấu với sốt ớt và gia vị đặc trưng của Tứ Xuyên. Thường được ăn như món khai vị hoặc món chính.', N'Đậu hũ sốt tứ xuyên là một món ăn phổ biến trong ẩm thực Trung Quốc, có nguồn gốc từ vùng Tứ Xuyên (Sichuan) nổi tiếng với gia vị cay nồng. Món này được làm từ đậu hũ chiên giòn và được nấu với sốt có hương vị đặc trưng của ớt và gia vị Tứ Xuyên. Đậu hũ sốt tứ xuyên thường được thưởng thức như một món khai vị hoặc món chính trong bữa ăn.', 30, 1, CAST(N'2024-06-24T12:50:39.807' AS DateTime), CAST(N'2024-06-24T12:50:39.807' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (37, N'Bánh Cuốn Nóng', NULL, 25000, N'Món ăn truyền thống của Việt Nam, được làm từ bột gạo pha với nước, sau đó đánh mịn và đổ thành lớp bánh mỏng trên mặt nướng. Món bánh cuốn thường được cuộn với nhân thịt heo xắn bột mỡ, hành phi, và nấm hương.', N'Bánh cuốn nóng là một món ăn truyền thống của Việt Nam. Nó bao gồm các lớp bánh mỏng được làm từ bột gạo, cuộn lại với nhân thịt lợn xay hoặc tôm, nấm và rau mùi. Thường được phục vụ nóng với nước chấm và rau sống như giá, xà lách để tạo hương vị và cảm giác mát lạnh.', 30, 1, CAST(N'2024-06-24T12:50:39.807' AS DateTime), CAST(N'2024-06-24T12:50:39.807' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (38, N'Lẩu Mắm', NULL, 80000, N'Món ăn đặc trưng miền Nam Việt Nam, có hương vị đậm đà, thích hợp vào mùa lạnh. Chủ yếu là mắm tôm hoặc mắm cá lóc, kết hợp rau xanh, thịt cá, thịt heo và rau củ. Hương vị chua ngọt của mắm kết hợp hài hòa.', N'Lẩu mắm là một món ăn đặc trưng của vùng miền Nam Việt Nam, có hương vị đậm đà và thường được thưởng thức vào mùa lạnh. Món ăn này có thành phần chính là mắm tôm hoặc mắm cá lóc, kết hợp với nhiều loại rau xanh, thịt cá, thịt heo và các loại rau củ. Nó mang đến hương vị đặc trưng của mắm chua ngọt và có sự cân bằng hài hòa giữa các thành phần.', 60, 1, CAST(N'2024-06-24T12:50:39.807' AS DateTime), CAST(N'2024-06-24T12:50:39.807' AS DateTime))
INSERT [dbo].[tb_Product] ([ProductID], [ProductName], [Image], [Price], [Title], [Description], [CookingTime], [Status], [CreatedDate], [UpdatedDate]) VALUES (39, N'Pad Thái', NULL, 45000, N'Món ăn đặc trưng của Thái Lan, nổi tiếng với hương vị ngọt dịu, chua chua, cay cay và đầy đủ các hương vị. Đây là một món ăn được làm từ sợi bánh phở xào chung với các loại gia vị như nước mắm', N'Pad Thai là một món ăn đặc trưng của Thái Lan, nổi tiếng với sự pha trộn gia vị và hương vị đặc trưng. Món này được làm từ sợi bánh phở hoặc bánh xèo rang với trứng, tôm hoặc thịt gà, hành tây, hành lá, đậu phụng và gia vị như tương ớt, tamarind và đường. Pad Thai thường được phục vụ với chanh và rau sống như giá, xà lách để thêm hương vị và tươi mát.', 45, 1, CAST(N'2024-06-24T12:50:39.807' AS DateTime), CAST(N'2024-06-24T12:50:39.807' AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_Product] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Product_Category] ON 

INSERT [dbo].[tb_Product_Category] ([Product_Category_ID], [ProductID], [CategoryID], [UpdateDate], [CreatedDate]) VALUES (1, 8, 1, CAST(N'2024-06-23T01:05:21.640' AS DateTime), CAST(N'2024-06-23T01:05:21.640' AS DateTime))
INSERT [dbo].[tb_Product_Category] ([Product_Category_ID], [ProductID], [CategoryID], [UpdateDate], [CreatedDate]) VALUES (2, 12, 1, CAST(N'2024-06-23T01:05:21.640' AS DateTime), CAST(N'2024-06-23T01:05:21.640' AS DateTime))
INSERT [dbo].[tb_Product_Category] ([Product_Category_ID], [ProductID], [CategoryID], [UpdateDate], [CreatedDate]) VALUES (3, 12, 5, CAST(N'2024-06-23T01:05:21.640' AS DateTime), CAST(N'2024-06-23T01:05:21.640' AS DateTime))
INSERT [dbo].[tb_Product_Category] ([Product_Category_ID], [ProductID], [CategoryID], [UpdateDate], [CreatedDate]) VALUES (4, 3, 7, CAST(N'2024-06-23T01:05:21.640' AS DateTime), CAST(N'2024-06-23T01:05:21.640' AS DateTime))
INSERT [dbo].[tb_Product_Category] ([Product_Category_ID], [ProductID], [CategoryID], [UpdateDate], [CreatedDate]) VALUES (5, 1, 2, CAST(N'2024-06-23T01:05:21.640' AS DateTime), CAST(N'2024-06-23T01:05:21.640' AS DateTime))
INSERT [dbo].[tb_Product_Category] ([Product_Category_ID], [ProductID], [CategoryID], [UpdateDate], [CreatedDate]) VALUES (6, 6, 4, CAST(N'2024-06-23T01:05:21.640' AS DateTime), CAST(N'2024-06-23T01:05:21.640' AS DateTime))
INSERT [dbo].[tb_Product_Category] ([Product_Category_ID], [ProductID], [CategoryID], [UpdateDate], [CreatedDate]) VALUES (7, 14, 8, CAST(N'2024-06-23T01:05:21.640' AS DateTime), CAST(N'2024-06-23T01:05:21.640' AS DateTime))
INSERT [dbo].[tb_Product_Category] ([Product_Category_ID], [ProductID], [CategoryID], [UpdateDate], [CreatedDate]) VALUES (8, 15, 8, CAST(N'2024-06-23T01:05:21.640' AS DateTime), CAST(N'2024-06-23T01:05:21.640' AS DateTime))
INSERT [dbo].[tb_Product_Category] ([Product_Category_ID], [ProductID], [CategoryID], [UpdateDate], [CreatedDate]) VALUES (9, 2, 6, CAST(N'2024-06-23T01:05:21.640' AS DateTime), CAST(N'2024-06-23T01:05:21.640' AS DateTime))
INSERT [dbo].[tb_Product_Category] ([Product_Category_ID], [ProductID], [CategoryID], [UpdateDate], [CreatedDate]) VALUES (10, 4, 2, CAST(N'2024-06-23T17:32:13.353' AS DateTime), CAST(N'2024-06-23T17:32:13.353' AS DateTime))
INSERT [dbo].[tb_Product_Category] ([Product_Category_ID], [ProductID], [CategoryID], [UpdateDate], [CreatedDate]) VALUES (11, 5, 2, CAST(N'2024-06-23T17:32:13.353' AS DateTime), CAST(N'2024-06-23T17:32:13.353' AS DateTime))
INSERT [dbo].[tb_Product_Category] ([Product_Category_ID], [ProductID], [CategoryID], [UpdateDate], [CreatedDate]) VALUES (12, 7, 2, CAST(N'2024-06-23T17:32:13.353' AS DateTime), CAST(N'2024-06-23T17:32:13.353' AS DateTime))
INSERT [dbo].[tb_Product_Category] ([Product_Category_ID], [ProductID], [CategoryID], [UpdateDate], [CreatedDate]) VALUES (13, 9, 2, CAST(N'2024-06-23T17:32:13.353' AS DateTime), CAST(N'2024-06-23T17:32:13.353' AS DateTime))
INSERT [dbo].[tb_Product_Category] ([Product_Category_ID], [ProductID], [CategoryID], [UpdateDate], [CreatedDate]) VALUES (14, 9, 5, CAST(N'2024-06-23T17:32:13.353' AS DateTime), CAST(N'2024-06-23T17:32:13.353' AS DateTime))
INSERT [dbo].[tb_Product_Category] ([Product_Category_ID], [ProductID], [CategoryID], [UpdateDate], [CreatedDate]) VALUES (15, 10, 2, CAST(N'2024-06-23T17:32:13.353' AS DateTime), CAST(N'2024-06-23T17:32:13.353' AS DateTime))
INSERT [dbo].[tb_Product_Category] ([Product_Category_ID], [ProductID], [CategoryID], [UpdateDate], [CreatedDate]) VALUES (16, 10, 5, CAST(N'2024-06-23T17:32:13.353' AS DateTime), CAST(N'2024-06-23T17:32:13.353' AS DateTime))
INSERT [dbo].[tb_Product_Category] ([Product_Category_ID], [ProductID], [CategoryID], [UpdateDate], [CreatedDate]) VALUES (17, 11, 2, CAST(N'2024-06-23T17:32:13.353' AS DateTime), CAST(N'2024-06-23T17:32:13.353' AS DateTime))
INSERT [dbo].[tb_Product_Category] ([Product_Category_ID], [ProductID], [CategoryID], [UpdateDate], [CreatedDate]) VALUES (18, 11, 5, CAST(N'2024-06-23T17:32:13.353' AS DateTime), CAST(N'2024-06-23T17:32:13.353' AS DateTime))
INSERT [dbo].[tb_Product_Category] ([Product_Category_ID], [ProductID], [CategoryID], [UpdateDate], [CreatedDate]) VALUES (19, 13, 2, CAST(N'2024-06-23T17:32:13.353' AS DateTime), CAST(N'2024-06-23T17:32:13.353' AS DateTime))
INSERT [dbo].[tb_Product_Category] ([Product_Category_ID], [ProductID], [CategoryID], [UpdateDate], [CreatedDate]) VALUES (20, 13, 5, CAST(N'2024-06-23T17:32:13.353' AS DateTime), CAST(N'2024-06-23T17:32:13.353' AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_Product_Category] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Recipe_Product] ON 

INSERT [dbo].[tb_Recipe_Product] ([RecipeProductID], [ProductID], [Name], [Instruction], [Image], [CreatedDate], [UpdatedDate]) VALUES (1, 1, N'Recipe Of Sườn Chua Ngọt', N'Bước 1 - Sơ chế sườn: Sườn non mua về, rửa sạch, chặt miếng vừa ăn. Đun nước sôi, cho chút muối, cho sườn vào trần qua khoảng 2-3 phút để loại bỏ bọt bẩn. Sau đó vớt ra để ráo nước.', NULL, CAST(N'2024-06-23T22:58:44.603' AS DateTime), CAST(N'2024-06-23T22:58:44.603' AS DateTime))
INSERT [dbo].[tb_Recipe_Product] ([RecipeProductID], [ProductID], [Name], [Instruction], [Image], [CreatedDate], [UpdatedDate]) VALUES (2, 1, N'Recipe Of Sườn Chua Ngọt', N'Bước 2 - Ướp sườn: Cho sườn vào tô, ướp với 1/2 muỗng cà phê muối, 1/2 muỗng cà phê tiêu, 1/2 muỗng cà phê hạt nêm. Trộn đều và để khoảng 15-20 phút cho ngấm gia vị.', NULL, CAST(N'2024-06-23T22:58:44.603' AS DateTime), CAST(N'2024-06-23T22:58:44.603' AS DateTime))
INSERT [dbo].[tb_Recipe_Product] ([RecipeProductID], [ProductID], [Name], [Instruction], [Image], [CreatedDate], [UpdatedDate]) VALUES (3, 1, N'Recipe Of Sườn Chua Ngọt', N'Bước 3 - Chuẩn bị các nguyên liệu khác: Hành tây, ớt chuông xanh, ớt chuông đỏ, và cà chua rửa sạch, cắt miếng vừa ăn. Tỏi, hành tím và gừng bóc vỏ, băm nhỏ.', NULL, CAST(N'2024-06-23T22:58:44.603' AS DateTime), CAST(N'2024-06-23T22:58:44.603' AS DateTime))
INSERT [dbo].[tb_Recipe_Product] ([RecipeProductID], [ProductID], [Name], [Instruction], [Image], [CreatedDate], [UpdatedDate]) VALUES (4, 1, N'Recipe Of Sườn Chua Ngọt', N'Bước 4 - Chiên sườn: Cho dầu vào chảo, đun nóng. Cho sườn vào chiên vàng đều các mặt, sau đó vớt ra để ráo dầu.', NULL, CAST(N'2024-06-23T22:58:44.603' AS DateTime), CAST(N'2024-06-23T22:58:44.603' AS DateTime))
INSERT [dbo].[tb_Recipe_Product] ([RecipeProductID], [ProductID], [Name], [Instruction], [Image], [CreatedDate], [UpdatedDate]) VALUES (5, 1, N'Recipe Of Sườn Chua Ngọt', N'Bước 5 - Làm nước sốt: Trong chảo khác, cho chút dầu, phi thơm tỏi, hành tím và gừng băm. Cho hành tây, ớt chuông và cà chua vào xào sơ qua. Thêm giấm, đường, nước mắm, tương cà và tương ớt vào chảo. Khuấy đều để các nguyên liệu hòa quyện với nhau.', NULL, CAST(N'2024-06-23T22:58:44.603' AS DateTime), CAST(N'2024-06-23T22:58:44.603' AS DateTime))
INSERT [dbo].[tb_Recipe_Product] ([RecipeProductID], [ProductID], [Name], [Instruction], [Image], [CreatedDate], [UpdatedDate]) VALUES (6, 1, N'Recipe Of Sườn Chua Ngọt', N'Bước 6 - Xào sườn: Cho sườn đã chiên vào chảo nước sốt, đảo đều để sườn thấm đều nước sốt. Đun nhỏ lửa khoảng 10-15 phút để sườn chín mềm và ngấm gia vị. Nếu nước sốt hơi cạn, bạn có thể thêm một chút nước lọc.', NULL, CAST(N'2024-06-23T22:58:44.603' AS DateTime), CAST(N'2024-06-23T22:58:44.603' AS DateTime))
INSERT [dbo].[tb_Recipe_Product] ([RecipeProductID], [ProductID], [Name], [Instruction], [Image], [CreatedDate], [UpdatedDate]) VALUES (7, 1, N'Recipe Of Sườn Chua Ngọt', N'Bước 7 - Hoàn thành: Khi sườn đã chín mềm và nước sốt sệt lại, tắt bếp. Múc sườn ra đĩa, rắc chút rau mùi lên trên để trang trí.', NULL, CAST(N'2024-06-23T22:58:44.603' AS DateTime), CAST(N'2024-06-23T22:58:44.603' AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_Recipe_Product] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Role] ON 

INSERT [dbo].[tb_Role] ([RoleID], [Name]) VALUES (1, N'Customer')
INSERT [dbo].[tb_Role] ([RoleID], [Name]) VALUES (2, N'Admin')
SET IDENTITY_INSERT [dbo].[tb_Role] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_User] ON 

INSERT [dbo].[tb_User] ([UserID], [FirstName], [LastName], [UserName], [DateOfBirth], [Gender], [Email], [Phone], [Password], [Image], [RoleID], [Status], [CreatedDate], [UpdatedDate]) VALUES (2, NULL, NULL, N'quangtran12', NULL, NULL, N'quangtnvse183008@fpt.edu.vn', NULL, N'quangtran12', NULL, 1, 1, CAST(N'2024-06-23T23:39:29.027' AS DateTime), CAST(N'2024-06-23T23:39:29.027' AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_User] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Weekly_Plan] ON 

INSERT [dbo].[tb_Weekly_Plan] ([Weekly_Plan_ID], [Name], [StartDate], [EndDate], [Status], [CreatedDate], [UpdatedDate]) VALUES (1, NULL, CAST(N'2024-06-10T00:00:00.000' AS DateTime), CAST(N'2024-06-16T00:00:00.000' AS DateTime), 1, CAST(N'2024-06-23T00:52:34.230' AS DateTime), CAST(N'2024-06-23T00:52:34.230' AS DateTime))
INSERT [dbo].[tb_Weekly_Plan] ([Weekly_Plan_ID], [Name], [StartDate], [EndDate], [Status], [CreatedDate], [UpdatedDate]) VALUES (2, NULL, CAST(N'2024-06-17T00:00:00.000' AS DateTime), CAST(N'2024-06-23T00:00:00.000' AS DateTime), 1, CAST(N'2024-06-23T00:52:34.230' AS DateTime), CAST(N'2024-06-23T00:52:34.230' AS DateTime))
INSERT [dbo].[tb_Weekly_Plan] ([Weekly_Plan_ID], [Name], [StartDate], [EndDate], [Status], [CreatedDate], [UpdatedDate]) VALUES (3, NULL, CAST(N'2024-06-24T00:00:00.000' AS DateTime), CAST(N'2024-06-30T00:00:00.000' AS DateTime), 1, CAST(N'2024-06-23T00:52:34.230' AS DateTime), CAST(N'2024-06-23T00:52:34.230' AS DateTime))
INSERT [dbo].[tb_Weekly_Plan] ([Weekly_Plan_ID], [Name], [StartDate], [EndDate], [Status], [CreatedDate], [UpdatedDate]) VALUES (4, NULL, CAST(N'2024-07-01T00:00:00.000' AS DateTime), CAST(N'2024-07-07T00:00:00.000' AS DateTime), 1, CAST(N'2024-06-23T00:52:34.230' AS DateTime), CAST(N'2024-06-23T00:52:34.230' AS DateTime))
INSERT [dbo].[tb_Weekly_Plan] ([Weekly_Plan_ID], [Name], [StartDate], [EndDate], [Status], [CreatedDate], [UpdatedDate]) VALUES (5, NULL, CAST(N'2024-07-08T00:00:00.000' AS DateTime), CAST(N'2024-07-15T00:00:00.000' AS DateTime), 1, CAST(N'2024-06-23T00:52:34.230' AS DateTime), CAST(N'2024-06-23T00:52:34.230' AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_Weekly_Plan] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Weekly_Plan_Product] ON 

INSERT [dbo].[tb_Weekly_Plan_Product] ([Weekly_Plan_Product_ID], [Weekly_Plan_ID], [ProductID], [Status], [CreatedDate], [UpdateDate]) VALUES (1, 1, 1, 1, CAST(N'2024-06-23T01:12:10.083' AS DateTime), CAST(N'2024-06-23T01:12:10.083' AS DateTime))
INSERT [dbo].[tb_Weekly_Plan_Product] ([Weekly_Plan_Product_ID], [Weekly_Plan_ID], [ProductID], [Status], [CreatedDate], [UpdateDate]) VALUES (2, 1, 2, 1, CAST(N'2024-06-23T01:12:10.083' AS DateTime), CAST(N'2024-06-23T01:12:10.083' AS DateTime))
INSERT [dbo].[tb_Weekly_Plan_Product] ([Weekly_Plan_Product_ID], [Weekly_Plan_ID], [ProductID], [Status], [CreatedDate], [UpdateDate]) VALUES (3, 1, 3, 1, CAST(N'2024-06-23T01:12:10.083' AS DateTime), CAST(N'2024-06-23T01:12:10.083' AS DateTime))
INSERT [dbo].[tb_Weekly_Plan_Product] ([Weekly_Plan_Product_ID], [Weekly_Plan_ID], [ProductID], [Status], [CreatedDate], [UpdateDate]) VALUES (4, 1, 4, 1, CAST(N'2024-06-23T01:12:10.083' AS DateTime), CAST(N'2024-06-23T01:12:10.083' AS DateTime))
INSERT [dbo].[tb_Weekly_Plan_Product] ([Weekly_Plan_Product_ID], [Weekly_Plan_ID], [ProductID], [Status], [CreatedDate], [UpdateDate]) VALUES (5, 1, 5, 1, CAST(N'2024-06-23T01:12:10.083' AS DateTime), CAST(N'2024-06-23T01:12:10.083' AS DateTime))
INSERT [dbo].[tb_Weekly_Plan_Product] ([Weekly_Plan_Product_ID], [Weekly_Plan_ID], [ProductID], [Status], [CreatedDate], [UpdateDate]) VALUES (6, 1, 6, 1, CAST(N'2024-06-23T01:12:10.083' AS DateTime), CAST(N'2024-06-23T01:12:10.083' AS DateTime))
INSERT [dbo].[tb_Weekly_Plan_Product] ([Weekly_Plan_Product_ID], [Weekly_Plan_ID], [ProductID], [Status], [CreatedDate], [UpdateDate]) VALUES (7, 2, 7, 1, CAST(N'2024-06-23T01:12:10.083' AS DateTime), CAST(N'2024-06-23T01:12:10.083' AS DateTime))
INSERT [dbo].[tb_Weekly_Plan_Product] ([Weekly_Plan_Product_ID], [Weekly_Plan_ID], [ProductID], [Status], [CreatedDate], [UpdateDate]) VALUES (8, 2, 8, 1, CAST(N'2024-06-23T01:12:10.083' AS DateTime), CAST(N'2024-06-23T01:12:10.083' AS DateTime))
INSERT [dbo].[tb_Weekly_Plan_Product] ([Weekly_Plan_Product_ID], [Weekly_Plan_ID], [ProductID], [Status], [CreatedDate], [UpdateDate]) VALUES (9, 2, 9, 1, CAST(N'2024-06-23T01:12:10.083' AS DateTime), CAST(N'2024-06-23T01:12:10.083' AS DateTime))
INSERT [dbo].[tb_Weekly_Plan_Product] ([Weekly_Plan_Product_ID], [Weekly_Plan_ID], [ProductID], [Status], [CreatedDate], [UpdateDate]) VALUES (10, 2, 10, 1, CAST(N'2024-06-23T01:12:10.083' AS DateTime), CAST(N'2024-06-23T01:12:10.083' AS DateTime))
INSERT [dbo].[tb_Weekly_Plan_Product] ([Weekly_Plan_Product_ID], [Weekly_Plan_ID], [ProductID], [Status], [CreatedDate], [UpdateDate]) VALUES (11, 2, 11, 1, CAST(N'2024-06-23T01:12:10.083' AS DateTime), CAST(N'2024-06-23T01:12:10.083' AS DateTime))
INSERT [dbo].[tb_Weekly_Plan_Product] ([Weekly_Plan_Product_ID], [Weekly_Plan_ID], [ProductID], [Status], [CreatedDate], [UpdateDate]) VALUES (12, 2, 12, 1, CAST(N'2024-06-23T01:12:10.083' AS DateTime), CAST(N'2024-06-23T01:12:10.083' AS DateTime))
INSERT [dbo].[tb_Weekly_Plan_Product] ([Weekly_Plan_Product_ID], [Weekly_Plan_ID], [ProductID], [Status], [CreatedDate], [UpdateDate]) VALUES (13, 3, 13, 1, CAST(N'2024-06-23T01:12:10.083' AS DateTime), CAST(N'2024-06-23T01:12:10.083' AS DateTime))
INSERT [dbo].[tb_Weekly_Plan_Product] ([Weekly_Plan_Product_ID], [Weekly_Plan_ID], [ProductID], [Status], [CreatedDate], [UpdateDate]) VALUES (14, 3, 14, 1, CAST(N'2024-06-23T01:12:10.083' AS DateTime), CAST(N'2024-06-23T01:12:10.083' AS DateTime))
INSERT [dbo].[tb_Weekly_Plan_Product] ([Weekly_Plan_Product_ID], [Weekly_Plan_ID], [ProductID], [Status], [CreatedDate], [UpdateDate]) VALUES (15, 3, 15, 1, CAST(N'2024-06-23T01:12:10.083' AS DateTime), CAST(N'2024-06-23T01:12:10.083' AS DateTime))
INSERT [dbo].[tb_Weekly_Plan_Product] ([Weekly_Plan_Product_ID], [Weekly_Plan_ID], [ProductID], [Status], [CreatedDate], [UpdateDate]) VALUES (16, 3, 1, 1, CAST(N'2024-06-23T01:12:10.083' AS DateTime), CAST(N'2024-06-23T01:12:10.083' AS DateTime))
INSERT [dbo].[tb_Weekly_Plan_Product] ([Weekly_Plan_Product_ID], [Weekly_Plan_ID], [ProductID], [Status], [CreatedDate], [UpdateDate]) VALUES (17, 3, 2, 1, CAST(N'2024-06-23T01:12:10.083' AS DateTime), CAST(N'2024-06-23T01:12:10.083' AS DateTime))
INSERT [dbo].[tb_Weekly_Plan_Product] ([Weekly_Plan_Product_ID], [Weekly_Plan_ID], [ProductID], [Status], [CreatedDate], [UpdateDate]) VALUES (18, 3, 3, 1, CAST(N'2024-06-23T01:12:10.083' AS DateTime), CAST(N'2024-06-23T01:12:10.083' AS DateTime))
INSERT [dbo].[tb_Weekly_Plan_Product] ([Weekly_Plan_Product_ID], [Weekly_Plan_ID], [ProductID], [Status], [CreatedDate], [UpdateDate]) VALUES (19, 4, 4, 1, CAST(N'2024-06-23T01:12:10.083' AS DateTime), CAST(N'2024-06-23T01:12:10.083' AS DateTime))
INSERT [dbo].[tb_Weekly_Plan_Product] ([Weekly_Plan_Product_ID], [Weekly_Plan_ID], [ProductID], [Status], [CreatedDate], [UpdateDate]) VALUES (20, 4, 5, 1, CAST(N'2024-06-23T01:12:10.083' AS DateTime), CAST(N'2024-06-23T01:12:10.083' AS DateTime))
INSERT [dbo].[tb_Weekly_Plan_Product] ([Weekly_Plan_Product_ID], [Weekly_Plan_ID], [ProductID], [Status], [CreatedDate], [UpdateDate]) VALUES (21, 4, 6, 1, CAST(N'2024-06-23T01:12:10.083' AS DateTime), CAST(N'2024-06-23T01:12:10.083' AS DateTime))
INSERT [dbo].[tb_Weekly_Plan_Product] ([Weekly_Plan_Product_ID], [Weekly_Plan_ID], [ProductID], [Status], [CreatedDate], [UpdateDate]) VALUES (22, 4, 7, 1, CAST(N'2024-06-23T01:12:10.083' AS DateTime), CAST(N'2024-06-23T01:12:10.083' AS DateTime))
INSERT [dbo].[tb_Weekly_Plan_Product] ([Weekly_Plan_Product_ID], [Weekly_Plan_ID], [ProductID], [Status], [CreatedDate], [UpdateDate]) VALUES (23, 4, 8, 1, CAST(N'2024-06-23T01:12:10.083' AS DateTime), CAST(N'2024-06-23T01:12:10.083' AS DateTime))
INSERT [dbo].[tb_Weekly_Plan_Product] ([Weekly_Plan_Product_ID], [Weekly_Plan_ID], [ProductID], [Status], [CreatedDate], [UpdateDate]) VALUES (24, 4, 9, 1, CAST(N'2024-06-23T01:12:10.083' AS DateTime), CAST(N'2024-06-23T01:12:10.083' AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_Weekly_Plan_Product] OFF
GO
ALTER TABLE [dbo].[tb_Address] ADD  CONSTRAINT [DF_tb_Address_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_Address] ADD  CONSTRAINT [DF_tb_Address_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[tb_BoxIngredient] ADD  CONSTRAINT [DF_tb_BoxIngredient_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_BoxIngredient] ADD  CONSTRAINT [DF_tb_BoxIngredient_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
ALTER TABLE [dbo].[tb_Category] ADD  CONSTRAINT [DF_tb_Category_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[tb_Category] ADD  CONSTRAINT [DF_tb_Category_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_Category] ADD  CONSTRAINT [DF_tb_Category_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
ALTER TABLE [dbo].[tb_Ingredient] ADD  CONSTRAINT [DF_tb_Ingredient_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_Ingredient] ADD  CONSTRAINT [DF_tb_Ingredient_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[tb_Order] ADD  CONSTRAINT [DF_tb_Order_OrderDate]  DEFAULT (getdate()) FOR [OrderDate]
GO
ALTER TABLE [dbo].[tb_Order] ADD  CONSTRAINT [DF_tb_Order_Shipping_Price]  DEFAULT ((0)) FOR [Shipping_Price]
GO
ALTER TABLE [dbo].[tb_Order] ADD  CONSTRAINT [DF_tb_Order_Discount]  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[tb_Order] ADD  CONSTRAINT [DF_tb_Order_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[tb_Order] ADD  CONSTRAINT [DF_tb_Order_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_Order] ADD  CONSTRAINT [DF_tb_Order_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[tb_Order_Detail] ADD  CONSTRAINT [DF_tb_Order_Detail_Product_Type_Status]  DEFAULT ((1)) FOR [Product_Type_Status]
GO
ALTER TABLE [dbo].[tb_Personal_Plan] ADD  CONSTRAINT [DF_tb_Personal_Plan_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[tb_Personal_Plan] ADD  CONSTRAINT [DF_tb_Personal_Plan_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_Personal_Plan] ADD  CONSTRAINT [DF_tb_Personal_Plan_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[tb_Product] ADD  CONSTRAINT [DF_tb_Product_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[tb_Product] ADD  CONSTRAINT [DF_tb_Product_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_Product] ADD  CONSTRAINT [DF_tb_Product_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[tb_Product_Category] ADD  CONSTRAINT [DF_tb_Product_Category_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
ALTER TABLE [dbo].[tb_Product_Category] ADD  CONSTRAINT [DF_tb_Product_Category_CreatedDate_1]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_Promotional_Campain] ADD  CONSTRAINT [DF_tb_Promotional_Campain_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[tb_Promotional_Campain] ADD  CONSTRAINT [DF_tb_Promotional_Campain_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_Promotional_Campain] ADD  CONSTRAINT [DF_tb_Promotional_Campain_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
ALTER TABLE [dbo].[tb_Recipe_Product] ADD  CONSTRAINT [DF_tb_Recipe_Product_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_Recipe_Product] ADD  CONSTRAINT [DF_tb_Recipe_Product_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[tb_User] ADD  CONSTRAINT [DF_tb_User_RoleID]  DEFAULT ((1)) FOR [RoleID]
GO
ALTER TABLE [dbo].[tb_User] ADD  CONSTRAINT [DF_tb_User_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[tb_User] ADD  CONSTRAINT [DF_tb_User_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_User] ADD  CONSTRAINT [DF_tb_User_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[tb_Weekly_Plan] ADD  CONSTRAINT [DF_tb_Weekly_Plan_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[tb_Weekly_Plan] ADD  CONSTRAINT [DF_tb_Weekly_Plan_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_Weekly_Plan] ADD  CONSTRAINT [DF_tb_Weekly_Plan_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[tb_Weekly_Plan_Product] ADD  CONSTRAINT [DF_tb_Weekly_Plan_Product_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[tb_Weekly_Plan_Product] ADD  CONSTRAINT [DF_tb_Weekly_Plan_Product_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_Weekly_Plan_Product] ADD  CONSTRAINT [DF_tb_Weekly_Plan_Product_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
ALTER TABLE [dbo].[tb_BoxIngredient]  WITH CHECK ADD  CONSTRAINT [FK_tb_BoxIngredient_tb_Ingredient] FOREIGN KEY([IngredientID])
REFERENCES [dbo].[tb_Ingredient] ([IngredientID])
GO
ALTER TABLE [dbo].[tb_BoxIngredient] CHECK CONSTRAINT [FK_tb_BoxIngredient_tb_Ingredient]
GO
ALTER TABLE [dbo].[tb_BoxIngredient]  WITH CHECK ADD  CONSTRAINT [FK_tb_BoxIngredient_tb_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[tb_Product] ([ProductID])
GO
ALTER TABLE [dbo].[tb_BoxIngredient] CHECK CONSTRAINT [FK_tb_BoxIngredient_tb_Product]
GO
ALTER TABLE [dbo].[tb_Order]  WITH CHECK ADD  CONSTRAINT [FK_tb_Order_tb_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[tb_Address] ([AddressID])
GO
ALTER TABLE [dbo].[tb_Order] CHECK CONSTRAINT [FK_tb_Order_tb_Address]
GO
ALTER TABLE [dbo].[tb_Order]  WITH CHECK ADD  CONSTRAINT [FK_tb_Order_tb_Promotional_Campain] FOREIGN KEY([Promotional_Campain_ID])
REFERENCES [dbo].[tb_Promotional_Campain] ([Promotional_Campain_ID])
GO
ALTER TABLE [dbo].[tb_Order] CHECK CONSTRAINT [FK_tb_Order_tb_Promotional_Campain]
GO
ALTER TABLE [dbo].[tb_Order]  WITH CHECK ADD  CONSTRAINT [FK_tb_Order_tb_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[tb_User] ([UserID])
GO
ALTER TABLE [dbo].[tb_Order] CHECK CONSTRAINT [FK_tb_Order_tb_User]
GO
ALTER TABLE [dbo].[tb_Order_Detail]  WITH CHECK ADD  CONSTRAINT [FK_tb_Order_Detail_tb_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[tb_Order] ([OrderID])
GO
ALTER TABLE [dbo].[tb_Order_Detail] CHECK CONSTRAINT [FK_tb_Order_Detail_tb_Order]
GO
ALTER TABLE [dbo].[tb_Order_Detail]  WITH CHECK ADD  CONSTRAINT [FK_tb_Order_Detail_tb_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[tb_Product] ([ProductID])
GO
ALTER TABLE [dbo].[tb_Order_Detail] CHECK CONSTRAINT [FK_tb_Order_Detail_tb_Product]
GO
ALTER TABLE [dbo].[tb_Personal_Plan]  WITH CHECK ADD  CONSTRAINT [FK_tb_Personal_Plan_tb_Meal_Type] FOREIGN KEY([MealID])
REFERENCES [dbo].[tb_Meal_Type] ([MealID])
GO
ALTER TABLE [dbo].[tb_Personal_Plan] CHECK CONSTRAINT [FK_tb_Personal_Plan_tb_Meal_Type]
GO
ALTER TABLE [dbo].[tb_Personal_Plan]  WITH CHECK ADD  CONSTRAINT [FK_tb_Personal_Plan_tb_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[tb_User] ([UserID])
GO
ALTER TABLE [dbo].[tb_Personal_Plan] CHECK CONSTRAINT [FK_tb_Personal_Plan_tb_User]
GO
ALTER TABLE [dbo].[tb_Personal_Plan]  WITH CHECK ADD  CONSTRAINT [FK_tb_Personal_Plan_tb_Weekly_Plan_Product] FOREIGN KEY([Weekly_Plan_Product_ID])
REFERENCES [dbo].[tb_Weekly_Plan_Product] ([Weekly_Plan_Product_ID])
GO
ALTER TABLE [dbo].[tb_Personal_Plan] CHECK CONSTRAINT [FK_tb_Personal_Plan_tb_Weekly_Plan_Product]
GO
ALTER TABLE [dbo].[tb_Product_Category]  WITH CHECK ADD  CONSTRAINT [FK_tb_Product_Category_tb_Category1] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tb_Category] ([CategoryID])
GO
ALTER TABLE [dbo].[tb_Product_Category] CHECK CONSTRAINT [FK_tb_Product_Category_tb_Category1]
GO
ALTER TABLE [dbo].[tb_Product_Category]  WITH CHECK ADD  CONSTRAINT [FK_tb_Product_Category_tb_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[tb_Product] ([ProductID])
GO
ALTER TABLE [dbo].[tb_Product_Category] CHECK CONSTRAINT [FK_tb_Product_Category_tb_Product]
GO
ALTER TABLE [dbo].[tb_Recipe_Product]  WITH CHECK ADD  CONSTRAINT [FK_tb_Recipe_Product_tb_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[tb_Product] ([ProductID])
GO
ALTER TABLE [dbo].[tb_Recipe_Product] CHECK CONSTRAINT [FK_tb_Recipe_Product_tb_Product]
GO
ALTER TABLE [dbo].[tb_User]  WITH CHECK ADD  CONSTRAINT [FK_tb_User_tb_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[tb_Role] ([RoleID])
GO
ALTER TABLE [dbo].[tb_User] CHECK CONSTRAINT [FK_tb_User_tb_Role]
GO
ALTER TABLE [dbo].[tb_User_Address]  WITH CHECK ADD  CONSTRAINT [FK_tb_User_Address_tb_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[tb_Address] ([AddressID])
GO
ALTER TABLE [dbo].[tb_User_Address] CHECK CONSTRAINT [FK_tb_User_Address_tb_Address]
GO
ALTER TABLE [dbo].[tb_User_Address]  WITH CHECK ADD  CONSTRAINT [FK_tb_User_Address_tb_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[tb_User] ([UserID])
GO
ALTER TABLE [dbo].[tb_User_Address] CHECK CONSTRAINT [FK_tb_User_Address_tb_User]
GO
ALTER TABLE [dbo].[tb_Weekly_Plan_Product]  WITH CHECK ADD  CONSTRAINT [FK_tb_Weekly_Plan_Product_tb_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[tb_Product] ([ProductID])
GO
ALTER TABLE [dbo].[tb_Weekly_Plan_Product] CHECK CONSTRAINT [FK_tb_Weekly_Plan_Product_tb_Product]
GO
ALTER TABLE [dbo].[tb_Weekly_Plan_Product]  WITH CHECK ADD  CONSTRAINT [FK_tb_Weekly_Plan_Product_tb_Weekly_Plan] FOREIGN KEY([Weekly_Plan_ID])
REFERENCES [dbo].[tb_Weekly_Plan] ([Weekly_Plan_ID])
GO
ALTER TABLE [dbo].[tb_Weekly_Plan_Product] CHECK CONSTRAINT [FK_tb_Weekly_Plan_Product_tb_Weekly_Plan]
GO
USE [master]
GO
ALTER DATABASE [F.R.E.S.H_Meal_2] SET  READ_WRITE 
GO
