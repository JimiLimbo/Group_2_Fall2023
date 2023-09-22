USE [master]
GO
/****** Object:  Database [HighbrowEntertainment]    Script Date: 9/21/2023 9:09:52 PM ******/
CREATE DATABASE [HighbrowEntertainment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HighbrowEntertainment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\HighbrowEntertainment.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HighbrowEntertainment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\HighbrowEntertainment_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [HighbrowEntertainment] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HighbrowEntertainment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HighbrowEntertainment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HighbrowEntertainment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HighbrowEntertainment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HighbrowEntertainment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HighbrowEntertainment] SET ARITHABORT OFF 
GO
ALTER DATABASE [HighbrowEntertainment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HighbrowEntertainment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HighbrowEntertainment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HighbrowEntertainment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HighbrowEntertainment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HighbrowEntertainment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HighbrowEntertainment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HighbrowEntertainment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HighbrowEntertainment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HighbrowEntertainment] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HighbrowEntertainment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HighbrowEntertainment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HighbrowEntertainment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HighbrowEntertainment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HighbrowEntertainment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HighbrowEntertainment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HighbrowEntertainment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HighbrowEntertainment] SET RECOVERY FULL 
GO
ALTER DATABASE [HighbrowEntertainment] SET  MULTI_USER 
GO
ALTER DATABASE [HighbrowEntertainment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HighbrowEntertainment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HighbrowEntertainment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HighbrowEntertainment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HighbrowEntertainment] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'HighbrowEntertainment', N'ON'
GO
ALTER DATABASE [HighbrowEntertainment] SET QUERY_STORE = OFF
GO
USE [HighbrowEntertainment]
GO
/****** Object:  Table [dbo].[Agents]    Script Date: 9/21/2023 9:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agents](
	[AgentKey] [varchar](4) NOT NULL,
	[AgentFirstName] [char](35) NULL,
	[AgentLastName] [char](35) NULL,
	[AgentAddress] [char](35) NULL,
	[AgentCity] [char](35) NULL,
	[AgentState] [char](2) NULL,
	[AgentZip] [char](5) NULL,
	[AgentPhone] [char](15) NULL,
	[AgentDateHired] [date] NULL,
	[AgentSalary] [decimal](9, 2) NULL,
	[AgentCommissionRate] [decimal](4, 3) NULL,
 CONSTRAINT [PK_AgentKey] PRIMARY KEY CLUSTERED 
(
	[AgentKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerPreference]    Script Date: 9/21/2023 9:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerPreference](
	[CustomerKey] [varchar](4) NULL,
	[StyleKey] [varchar](4) NULL,
	[StylePreferenceRating] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 9/21/2023 9:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerKey] [varchar](4) NOT NULL,
	[CustFirstName] [char](30) NULL,
	[CustLastName] [char](30) NULL,
	[CustStreetAddress] [char](40) NULL,
	[CustCity] [char](20) NULL,
	[CustState] [varchar](2) NULL,
	[CustZip] [varchar](5) NULL,
 CONSTRAINT [PK_CustomerKey] PRIMARY KEY CLUSTERED 
(
	[CustomerKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Engagements]    Script Date: 9/21/2023 9:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Engagements](
	[EngagementKey] [varchar](6) NOT NULL,
	[EngStartDate] [date] NULL,
	[EngEndDate] [date] NULL,
	[EngStartTime] [time](7) NULL,
	[EngEndTime] [time](7) NULL,
	[EngContractPrice] [decimal](10, 2) NULL,
	[CustomerKey] [varchar](4) NULL,
	[AgentKey] [varchar](4) NULL,
	[GroupKey] [varchar](4) NULL,
 CONSTRAINT [PK_EngagementKey] PRIMARY KEY CLUSTERED 
(
	[EngagementKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupMember]    Script Date: 9/21/2023 9:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupMember](
	[GroupKey] [varchar](4) NULL,
	[MemberKey] [varchar](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 9/21/2023 9:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[GroupKey] [varchar](4) NOT NULL,
	[GroupStageName] [char](40) NULL,
	[GroupSSN] [char](11) NULL,
	[GroupStreetAddress] [char](40) NULL,
	[GroupCity] [char](20) NULL,
	[GroupState] [varchar](2) NULL,
	[GroupZip] [varchar](5) NULL,
	[GroupPhone] [varchar](15) NULL,
	[GroupWebpage] [char](30) NULL,
	[GroupEmail] [char](30) NULL,
	[DateEntered] [char](10) NULL,
 CONSTRAINT [PK_GroupKey] PRIMARY KEY CLUSTERED 
(
	[GroupKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupStyle]    Script Date: 9/21/2023 9:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupStyle](
	[GroupKey] [varchar](4) NULL,
	[StyleKey] [varchar](4) NULL,
	[StyleStrength] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Members]    Script Date: 9/21/2023 9:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Members](
	[MemberKey] [varchar](4) NOT NULL,
	[MembersFirstName] [char](30) NULL,
	[MembersLastName] [char](30) NULL,
	[MemberPhoneNumber] [varchar](15) NULL,
	[MemberGender] [varchar](1) NULL,
 CONSTRAINT [PK_MemberKey] PRIMARY KEY CLUSTERED 
(
	[MemberKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MusicStyle]    Script Date: 9/21/2023 9:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MusicStyle](
	[StyleKey] [varchar](4) NOT NULL,
	[StyleName] [char](30) NULL,
 CONSTRAINT [PK_StyleKey] PRIMARY KEY CLUSTERED 
(
	[StyleKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CustomerPreference]  WITH CHECK ADD  CONSTRAINT [FK_CustomerKey1] FOREIGN KEY([CustomerKey])
REFERENCES [dbo].[Customers] ([CustomerKey])
GO
ALTER TABLE [dbo].[CustomerPreference] CHECK CONSTRAINT [FK_CustomerKey1]
GO
ALTER TABLE [dbo].[CustomerPreference]  WITH CHECK ADD  CONSTRAINT [FK_StyleKey1] FOREIGN KEY([StyleKey])
REFERENCES [dbo].[MusicStyle] ([StyleKey])
GO
ALTER TABLE [dbo].[CustomerPreference] CHECK CONSTRAINT [FK_StyleKey1]
GO
ALTER TABLE [dbo].[Engagements]  WITH CHECK ADD  CONSTRAINT [FK_AgentKey] FOREIGN KEY([AgentKey])
REFERENCES [dbo].[Agents] ([AgentKey])
GO
ALTER TABLE [dbo].[Engagements] CHECK CONSTRAINT [FK_AgentKey]
GO
ALTER TABLE [dbo].[Engagements]  WITH CHECK ADD  CONSTRAINT [FK_CustomerKey] FOREIGN KEY([CustomerKey])
REFERENCES [dbo].[Customers] ([CustomerKey])
GO
ALTER TABLE [dbo].[Engagements] CHECK CONSTRAINT [FK_CustomerKey]
GO
ALTER TABLE [dbo].[Engagements]  WITH CHECK ADD  CONSTRAINT [FK_GroupKey] FOREIGN KEY([GroupKey])
REFERENCES [dbo].[Groups] ([GroupKey])
GO
ALTER TABLE [dbo].[Engagements] CHECK CONSTRAINT [FK_GroupKey]
GO
ALTER TABLE [dbo].[GroupMember]  WITH CHECK ADD  CONSTRAINT [FK_GroupKey1] FOREIGN KEY([GroupKey])
REFERENCES [dbo].[Groups] ([GroupKey])
GO
ALTER TABLE [dbo].[GroupMember] CHECK CONSTRAINT [FK_GroupKey1]
GO
ALTER TABLE [dbo].[GroupMember]  WITH CHECK ADD  CONSTRAINT [FK_MemberKey] FOREIGN KEY([MemberKey])
REFERENCES [dbo].[Members] ([MemberKey])
GO
ALTER TABLE [dbo].[GroupMember] CHECK CONSTRAINT [FK_MemberKey]
GO
ALTER TABLE [dbo].[GroupStyle]  WITH CHECK ADD  CONSTRAINT [FK_GroupKey2] FOREIGN KEY([GroupKey])
REFERENCES [dbo].[Groups] ([GroupKey])
GO
ALTER TABLE [dbo].[GroupStyle] CHECK CONSTRAINT [FK_GroupKey2]
GO
ALTER TABLE [dbo].[GroupStyle]  WITH CHECK ADD  CONSTRAINT [FK_StyleKey] FOREIGN KEY([StyleKey])
REFERENCES [dbo].[MusicStyle] ([StyleKey])
GO
ALTER TABLE [dbo].[GroupStyle] CHECK CONSTRAINT [FK_StyleKey]
GO
USE [master]
GO
ALTER DATABASE [HighbrowEntertainment] SET  READ_WRITE 
GO
