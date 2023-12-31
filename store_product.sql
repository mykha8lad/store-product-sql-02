USE [master]
GO
/****** Object:  Database [Store]    Script Date: 22.07.2023 16:40:29 ******/
CREATE DATABASE [Store]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Store', FILENAME = N'E:\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Store.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Store_log', FILENAME = N'E:\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Store_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Store] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Store].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Store] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Store] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Store] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Store] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Store] SET ARITHABORT OFF 
GO
ALTER DATABASE [Store] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Store] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Store] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Store] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Store] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Store] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Store] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Store] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Store] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Store] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Store] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Store] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Store] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Store] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Store] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Store] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Store] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Store] SET RECOVERY FULL 
GO
ALTER DATABASE [Store] SET  MULTI_USER 
GO
ALTER DATABASE [Store] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Store] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Store] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Store] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Store] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Store] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Store', N'ON'
GO
ALTER DATABASE [Store] SET QUERY_STORE = ON
GO
ALTER DATABASE [Store] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Store]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 22.07.2023 16:40:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[category] [nvarchar](50) NULL,
	[price] [float] NULL,
	[discount] [int] NULL,
	[quantity] [int] NULL,
	[measurement] [nvarchar](50) NULL,
	[producer] [nvarchar](50) NULL,
	[country] [nvarchar](50) NULL,
	[supplier] [nvarchar](50) NULL,
	[date_of_delivery] [date] NULL,
	[expire_date] [date] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (0, N'Revo', N'Alcohol', 43, 10, 420, N'Banks', N'Revo', N'Ukraine', N'RevoUkraine', CAST(N'2023-07-20' AS Date), CAST(N'2024-05-20' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (1, N'Marlboro', N'Tobacco products', 92, 0, 120, N'Block', N'Philip Morris International', N'USA', N'Philip Morris', CAST(N'2023-07-20' AS Date), CAST(N'2027-07-20' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (2, N'Farm', N'Dairy products', 39.8, 5, 20, N'Plastic bag', N'Tulchinka', N'Ukraine', N'Tulchinka', CAST(N'2023-07-20' AS Date), CAST(N'2023-08-05' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (3, N'Sadochok', N'Juice', 45.5, 0, 33, N'Plastic bag', N'Sadochok', N'Ukraine', N'Sadochok', CAST(N'2023-07-20' AS Date), CAST(N'2024-09-15' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (6, N'Orange Juice', N'Beverages', 34.2, 0, 80, N'liters', N'Sunny Juices', N'Spain', N'Juice Supply Co.', CAST(N'2023-07-21' AS Date), CAST(N'2023-08-10' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (7, N'Chicken', N'Meat', 74.5, 0, 20, N'kg', N'Healthy Poultry Farms', N'USA', N'Meat Supply Co.', CAST(N'2023-07-21' AS Date), CAST(N'2023-07-24' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (8, N'Pasta', N'Grains', 29.2, 0, 100, N'kg', N'Italian Pasta Masters', N'Italy', N'Pasta Emporium', CAST(N'2023-07-21' AS Date), CAST(N'2024-01-31' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (9, N'Tomato', N'Vegetables', 10.75, 0, 150, N'kg', N'Vineyard Gardens', N'Spain', N'Fresh Veggies Ltd.', CAST(N'2023-07-21' AS Date), CAST(N'2023-08-10' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (10, N'Water', N'Beverages', 30.99, 0, 200, N'bottles', N'Aqua Springs', N'Canada', N'Beverage Co.', CAST(N'2023-07-21' AS Date), CAST(N'2024-06-30' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (11, N'Cheese', N'Dairy', 43.5, 0, 40, N'kg', N'Artisan Dairy Delights', N'France', N'Cheese World Ltd.', CAST(N'2023-07-21' AS Date), CAST(N'2023-08-05' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (12, N'Carrot', N'Vegetables', 76.5, 0, 120, N'kg', N'Fresh Farms', N'USA', N'Vegetable Distributors Inc.', CAST(N'2023-07-21' AS Date), CAST(N'2023-07-28' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (13, N'Orange Juice', N'Beverages', 32.2, 0, 60, N'liters', N'Sunny Juices', N'Spain', N'Juice Supply Co.', CAST(N'2023-07-21' AS Date), CAST(N'2023-08-10' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (14, N'Beef', N'Meat', 99.75, 0, 25, N'kg', N'Prime Beef Farms', N'Argentina', N'Premium Meats Ltd.', CAST(N'2023-07-21' AS Date), CAST(N'2023-07-23' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (15, N'Rice', N'Grains', 13.8, 0, 90, N'kg', N'Asian Rice Traders', N'Thailand', N'Global Grains Inc.', CAST(N'2023-07-21' AS Date), CAST(N'2024-01-31' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (16, N'Cucumber', N'Vegetables', 50.6, 0, 140, N'pcs', N'Fresh Greens', N'USA', N'Vegetable Emporium', CAST(N'2023-07-21' AS Date), CAST(N'2023-07-27' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (17, N'Soda', N'Beverages', 15.2, 0, 100, N'cans', N'Fizzy Bubbles', N'USA', N'Beverage Central', CAST(N'2023-07-21' AS Date), CAST(N'2023-08-31' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (18, N'Salmon', N'Seafood', 12.5, 0, 20, N'kg', N'Ocean Harvest', N'Norway', N'Seafood Direct', CAST(N'2023-07-21' AS Date), CAST(N'2023-07-22' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (19, N'Peanut Butter', N'Spreads', 4.2, 0, 40, N'jars', N'Nutty Delights', N'USA', N'Peanut Co.', CAST(N'2023-07-21' AS Date), CAST(N'2024-01-31' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (20, N'Spinach', N'Vegetables', 0.7, 0, 80, N'bunch', N'Fresh Harvest', N'USA', N'Greens Galore', CAST(N'2023-07-21' AS Date), CAST(N'2023-07-30' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (21, N'Coffee', N'Beverages', 5.8, 0, 60, N'bags', N'Morning Brew', N'Brazil', N'Coffee World', CAST(N'2023-07-21' AS Date), CAST(N'2023-09-30' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (22, N'Salami', N'Meat', 8.5, 0, 25, N'kg', N'Italian Deli Meats', N'Italy', N'Salami Specialists', CAST(N'2023-07-21' AS Date), CAST(N'2023-07-22' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (23, N'Oats', N'Grains', 1.6, 0, 100, N'kg', N'Healthy Harvest', N'Canada', N'Whole Grain Co.', CAST(N'2023-07-21' AS Date), CAST(N'2024-03-31' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (24, N'Onion', N'Vegetables', 0.45, 0, 150, N'kg', N'Sweet Fields Farm', N'USA', N'Onion Express', CAST(N'2023-07-21' AS Date), CAST(N'2023-07-27' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (25, N'Orange', N'Fruits', 1.2, 0, 50, N'kg', N'Citrus Grove', N'USA', N'Fruit World', CAST(N'2023-07-21' AS Date), CAST(N'2023-07-28' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (26, N'Juice Box', N'Beverages', 2, 0, 100, N'boxes', N'Fresh Squeezes', N'USA', N'Juice Co.', CAST(N'2023-07-21' AS Date), CAST(N'2023-08-31' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (27, N'Turkey', N'Meat', 9.25, 0, 30, N'kg', N'Turkey Time Farm', N'USA', N'Poultry Partners', CAST(N'2023-07-21' AS Date), CAST(N'2023-07-25' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (28, N'Nutella', N'Spreads', 5.9, 0, 40, N'jars', N'Nutty Delights', N'USA', N'Hazelnut Co.', CAST(N'2023-07-21' AS Date), CAST(N'2024-02-29' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (29, N'Strawberry', N'Fruits', 1.8, 0, 80, N'kg', N'Berry Fields', N'USA', N'Fruit Emporium', CAST(N'2023-07-21' AS Date), CAST(N'2023-07-29' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (30, N'Mineral Water', N'Beverages', 1.5, 0, 120, N'bottles', N'Crystal Springs', N'France', N'Mineral Waters Inc.', CAST(N'2023-07-21' AS Date), CAST(N'2023-08-31' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (31, N'Sausages', N'Meat', 6.75, 0, 35, N'kg', N'Delicious Meats', N'Germany', N'Sausage Deli Ltd.', CAST(N'2023-07-21' AS Date), CAST(N'2023-07-24' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (32, N'Brown Bread', N'Bakery', 2.2, 0, 80, N'loaf', N'Golden Bakery', N'USA', N'Bread Distributors Inc.', CAST(N'2023-07-21' AS Date), CAST(N'2023-07-25' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (33, N'Coffee Beans', N'Beverages', 6.8, 0, 50, N'kg', N'Morning Brew', N'Brazil', N'Coffee World', CAST(N'2023-07-21' AS Date), CAST(N'2023-09-30' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (34, N'Pineapple', N'Fruits', 2.5, 0, 30, N'pcs', N'Tropical Harvest', N'Costa Rica', N'Fruit Co-op Ltd.', CAST(N'2023-07-21' AS Date), CAST(N'2023-07-28' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (35, N'Mineral Water', N'Beverages', 1.5, 0, 100, N'bottles', N'Crystal Springs', N'France', N'Mineral Waters Inc.', CAST(N'2023-07-21' AS Date), CAST(N'2023-08-31' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (36, N'Chocolate Bar', N'Snacks', 1.25, 0, 200, N'bars', N'Sweet Delights', N'USA', N'Candy Co.', CAST(N'2023-07-21' AS Date), CAST(N'2023-12-31' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (37, N'Yogurt', N'Dairy', 1.8, 0, 60, N'cups', N'Healthy Dairies', N'USA', N'Yogurt Producers', CAST(N'2023-07-21' AS Date), CAST(N'2023-08-15' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (38, N'Salmon', N'Seafood', 14.5, 0, 15, N'kg', N'Ocean Harvest', N'Norway', N'Seafood Direct', CAST(N'2023-07-21' AS Date), CAST(N'2023-07-22' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (39, N'Peanuts', N'Snacks', 1.8, 0, 100, N'bags', N'Tasty Treats', N'USA', N'Snack World Inc.', CAST(N'2023-07-21' AS Date), CAST(N'2023-12-31' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (40, N'Potato', N'Vegetables', 0.35, 0, 200, N'kg', N'Fresh Farms', N'USA', N'Vegetable Distributors Inc.', CAST(N'2023-07-21' AS Date), CAST(N'2023-07-28' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (41, N'Tea Bags', N'Beverages', 3.8, 0, 80, N'boxes', N'Tea Gardens', N'China', N'Tea Co.', CAST(N'2023-07-21' AS Date), CAST(N'2024-02-29' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (42, N'Hamburger', N'Meat', 5.25, 0, 40, N'pcs', N'Premium Meats', N'USA', N'Meat Co.', CAST(N'2023-07-21' AS Date), CAST(N'2023-07-23' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (43, N'Raisins', N'Snacks', 1.5, 0, 120, N'boxes', N'Tasty Treats', N'USA', N'Snack World Inc.', CAST(N'2023-07-21' AS Date), CAST(N'2023-12-31' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (44, N'Soy Milk', N'Dairy', 2.4, 0, 50, N'liters', N'Healthy Dairies', N'USA', N'Milk Producers', CAST(N'2023-07-21' AS Date), CAST(N'2023-08-15' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (45, N'Chicken Wings', N'Meat', 8.5, 0, 30, N'kg', N'Healthy Poultry Farms', N'USA', N'Meat Supply Co.', CAST(N'2023-07-21' AS Date), CAST(N'2023-07-24' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (46, N'Butter', N'Dairy', 3, 0, 40, N'kg', N'Fresh Dairies Ltd.', N'Germany', N'Dairy Products Corp.', CAST(N'2023-07-21' AS Date), CAST(N'2023-08-15' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (47, N'Pear', N'Fruits', 1.2, 0, 60, N'kg', N'Fruit Grove', N'USA', N'Fruit World', CAST(N'2023-07-21' AS Date), CAST(N'2023-07-28' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (48, N'Ice Cream', N'Desserts', 4.5, 0, 25, N'liters', N'Creamy Delights', N'USA', N'Ice Cream Co.', CAST(N'2023-07-21' AS Date), CAST(N'2024-01-31' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (49, N'Broccoli', N'Vegetables', 0.75, 0, 100, N'kg', N'Fresh Farms', N'USA', N'Vegetable Distributors Inc.', CAST(N'2023-07-21' AS Date), CAST(N'2023-07-28' AS Date))
INSERT [dbo].[Product] ([id], [name], [category], [price], [discount], [quantity], [measurement], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (50, N'Soda', N'Beverages', 1.2, 0, 100, N'cans', N'Fizzy Bubbles', N'USA', N'Beverage Central', CAST(N'2023-07-21' AS Date), CAST(N'2023-08-31' AS Date))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
USE [master]
GO
ALTER DATABASE [Store] SET  READ_WRITE 
GO
