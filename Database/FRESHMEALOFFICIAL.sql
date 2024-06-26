USE [master]
GO

/*******************************************************************************
   Drop database if it exists
********************************************************************************/
IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'Assignment')
BEGIN
	ALTER DATABASE [Assignment] SET OFFLINE WITH ROLLBACK IMMEDIATE;
	ALTER DATABASE [Assignment] SET ONLINE;
	DROP DATABASE [Assignment];
END


GO
/****** Object:  Database [F.R.E.S.H_Meal]    Script Date: 5/28/2024 11:17:39 PM ******/
CREATE DATABASE [F.R.E.S.H_Meal]
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [F.R.E.S.H_Meal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET ARITHABORT OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET  DISABLE_BROKER 
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET  MULTI_USER 
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET QUERY_STORE = OFF
GO
USE [F.R.E.S.H_Meal]
GO
/****** Object:  Table [dbo].[tb_Address]    Script Date: 5/28/2024 11:17:39 PM ******/
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
/****** Object:  Table [dbo].[tb_BoxIngredient]    Script Date: 5/28/2024 11:17:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_BoxIngredient](
	[BoxIngredient_ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[IngredientID] [int] NULL,
	[Quantity] [int] NULL,
	[Unit] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK_tb_BoxIngredient] PRIMARY KEY CLUSTERED 
(
	[BoxIngredient_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Category]    Script Date: 5/28/2024 11:17:39 PM ******/
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
/****** Object:  Table [dbo].[tb_Comment]    Script Date: 5/28/2024 11:17:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Comment](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[UserID] [int] NULL,
	[text] [ntext] NULL,
	[Status] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_tb_Comment] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Ingredient]    Script Date: 5/28/2024 11:17:39 PM ******/
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
/****** Object:  Table [dbo].[tb_Order]    Script Date: 5/28/2024 11:17:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[AddressID] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[ShipDate] [datetime] NOT NULL,
	[Shipping_Price] [decimal](18, 0) NULL,
	[Discount] [decimal](18, 0) NULL,
	[TotalPrice] [decimal](18, 0) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[PayingMethod] [nvarchar](50) NOT NULL,
	[Promotional_Campain_ID] [int] NULL,
	[UserID] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_tb_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Order_Detail]    Script Date: 5/28/2024 11:17:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Order_Detail](
	[Order_Detail_ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[OrderID] [int] NULL,
	[Price] [decimal](18, 0) NULL,
	[Quantity] [int] NULL,
	[Total_Price] [decimal](18, 0) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_tb_Order_Detail] PRIMARY KEY CLUSTERED 
(
	[Order_Detail_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Personal_Plan]    Script Date: 5/28/2024 11:17:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Personal_Plan](
	[Personal_Plan_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
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
/****** Object:  Table [dbo].[tb_Product]    Script Date: 5/28/2024 11:17:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](250) NOT NULL,
	[Image] [nvarchar](250) NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Description] [ntext] NULL,
	[CookingTime] [int] NOT NULL,
	[RecipeProductID] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_tb_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Product_Category]    Script Date: 5/28/2024 11:17:39 PM ******/
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
/****** Object:  Table [dbo].[tb_Product_PersonalPlan]    Script Date: 5/28/2024 11:17:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Product_PersonalPlan](
	[Product_Personal_Plan_ID] [int] IDENTITY(1,1) NOT NULL,
	[Weekly_Plan_ID] [int] NULL,
	[Personal_Plan_ID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_tb_Product_PersonalPlan] PRIMARY KEY CLUSTERED 
(
	[Product_Personal_Plan_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Promotional_Campain]    Script Date: 5/28/2024 11:17:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Promotional_Campain](
	[Promotional_Campain_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Description] [ntext] NULL,
	[DiscountPrice] [decimal](18, 0) NOT NULL,
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
/****** Object:  Table [dbo].[tb_Recipe_Product]    Script Date: 5/28/2024 11:17:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Recipe_Product](
	[RecipeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[StepDescription] [ntext] NOT NULL,
	[ListImage] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_tb_Recipe_Product] PRIMARY KEY CLUSTERED 
(
	[RecipeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Role]    Script Date: 5/28/2024 11:17:39 PM ******/
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
/****** Object:  Table [dbo].[tb_Type_Product]    Script Date: 5/28/2024 11:17:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Type_Product](
	[Type_Product_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_tb_Type_Product] PRIMARY KEY CLUSTERED 
(
	[Type_Product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_User]    Script Date: 5/28/2024 11:17:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[DateOfBirth] [datetime] NULL,
	[Gender] [nvarchar](10) NULL,
	[Email] [nvarchar](250) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
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
/****** Object:  Table [dbo].[tb_User_Address]    Script Date: 5/28/2024 11:17:39 PM ******/
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
/****** Object:  Table [dbo].[tb_Weekly_Plan]    Script Date: 5/28/2024 11:17:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Weekly_Plan](
	[Weekly_Plan_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[ProductID] [int] NULL,
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
ALTER TABLE [dbo].[tb_Address] ADD  CONSTRAINT [DF_tb_Address_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_Address] ADD  CONSTRAINT [DF_tb_Address_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[tb_BoxIngredient] ADD  CONSTRAINT [DF_tb_BoxIngredient_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_BoxIngredient] ADD  CONSTRAINT [DF_tb_BoxIngredient_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
ALTER TABLE [dbo].[tb_Category] ADD  CONSTRAINT [DF_tb_Category_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_Category] ADD  CONSTRAINT [DF_tb_Category_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
ALTER TABLE [dbo].[tb_Comment] ADD  CONSTRAINT [DF_tb_Comment_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_Comment] ADD  CONSTRAINT [DF_tb_Comment_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[tb_Ingredient] ADD  CONSTRAINT [DF_tb_Ingredient_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_Ingredient] ADD  CONSTRAINT [DF_tb_Ingredient_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[tb_Order] ADD  CONSTRAINT [DF_tb_Order_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_Order] ADD  CONSTRAINT [DF_tb_Order_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[tb_Personal_Plan] ADD  CONSTRAINT [DF_tb_Personal_Plan_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_Personal_Plan] ADD  CONSTRAINT [DF_tb_Personal_Plan_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[tb_Product] ADD  CONSTRAINT [DF_tb_Product_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_Product] ADD  CONSTRAINT [DF_tb_Product_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[tb_Product_Category] ADD  CONSTRAINT [DF_tb_Product_Category_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
ALTER TABLE [dbo].[tb_Product_Category] ADD  CONSTRAINT [DF_tb_Product_Category_CreatedDate_1]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_Product_PersonalPlan] ADD  CONSTRAINT [DF_tb_Product_PersonalPlan_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_Product_PersonalPlan] ADD  CONSTRAINT [DF_tb_Product_PersonalPlan_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[tb_Promotional_Campain] ADD  CONSTRAINT [DF_tb_Promotional_Campain_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_Promotional_Campain] ADD  CONSTRAINT [DF_tb_Promotional_Campain_UpdateDate]  DEFAULT (getdate()) FOR [UpdateDate]
GO
ALTER TABLE [dbo].[tb_Recipe_Product] ADD  CONSTRAINT [DF_tb_Recipe_Product_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_Recipe_Product] ADD  CONSTRAINT [DF_tb_Recipe_Product_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[tb_Type_Product] ADD  CONSTRAINT [DF_tb_Type_Product_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_Type_Product] ADD  CONSTRAINT [DF_tb_Type_Product_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[tb_User] ADD  CONSTRAINT [DF_tb_User_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_User] ADD  CONSTRAINT [DF_tb_User_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
GO
ALTER TABLE [dbo].[tb_Weekly_Plan] ADD  CONSTRAINT [DF_tb_Weekly_Plan_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[tb_Weekly_Plan] ADD  CONSTRAINT [DF_tb_Weekly_Plan_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
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
ALTER TABLE [dbo].[tb_Comment]  WITH CHECK ADD  CONSTRAINT [FK_tb_Comment_tb_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[tb_Product] ([ProductID])
GO
ALTER TABLE [dbo].[tb_Comment] CHECK CONSTRAINT [FK_tb_Comment_tb_Product]
GO
ALTER TABLE [dbo].[tb_Comment]  WITH CHECK ADD  CONSTRAINT [FK_tb_Comment_tb_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[tb_User] ([UserID])
GO
ALTER TABLE [dbo].[tb_Comment] CHECK CONSTRAINT [FK_tb_Comment_tb_User]
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
ALTER TABLE [dbo].[tb_Personal_Plan]  WITH CHECK ADD  CONSTRAINT [FK_tb_Personal_Plan_tb_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[tb_User] ([UserID])
GO
ALTER TABLE [dbo].[tb_Personal_Plan] CHECK CONSTRAINT [FK_tb_Personal_Plan_tb_User]
GO
ALTER TABLE [dbo].[tb_Product]  WITH CHECK ADD  CONSTRAINT [FK_tb_Product_tb_Recipe_Product] FOREIGN KEY([RecipeProductID])
REFERENCES [dbo].[tb_Recipe_Product] ([RecipeID])
GO
ALTER TABLE [dbo].[tb_Product] CHECK CONSTRAINT [FK_tb_Product_tb_Recipe_Product]
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
ALTER TABLE [dbo].[tb_Product_PersonalPlan]  WITH CHECK ADD  CONSTRAINT [FK_tb_Product_PersonalPlan_tb_Personal_Plan] FOREIGN KEY([Personal_Plan_ID])
REFERENCES [dbo].[tb_Personal_Plan] ([Personal_Plan_ID])
GO
ALTER TABLE [dbo].[tb_Product_PersonalPlan] CHECK CONSTRAINT [FK_tb_Product_PersonalPlan_tb_Personal_Plan]
GO
ALTER TABLE [dbo].[tb_Product_PersonalPlan]  WITH CHECK ADD  CONSTRAINT [FK_tb_Product_PersonalPlan_tb_Weekly_Plan] FOREIGN KEY([Weekly_Plan_ID])
REFERENCES [dbo].[tb_Weekly_Plan] ([Weekly_Plan_ID])
GO
ALTER TABLE [dbo].[tb_Product_PersonalPlan] CHECK CONSTRAINT [FK_tb_Product_PersonalPlan_tb_Weekly_Plan]
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
ALTER TABLE [dbo].[tb_Weekly_Plan]  WITH CHECK ADD  CONSTRAINT [FK_tb_Weekly_Plan_tb_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[tb_Product] ([ProductID])
GO
ALTER TABLE [dbo].[tb_Weekly_Plan] CHECK CONSTRAINT [FK_tb_Weekly_Plan_tb_Product]
GO
USE [master]
GO
ALTER DATABASE [F.R.E.S.H_Meal] SET  READ_WRITE 
GO
