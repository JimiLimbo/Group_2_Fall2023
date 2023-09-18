USE [master]
GO
/****** Object:  Database [Condos]    Script Date: 9/18/2023 9:06:03 AM ******/
--Small change
CREATE DATABASE [Condos]
GO

USE [Condos]
GO

CREATE TABLE [dbo].[CONDO_UNIT](
	[CONDO_ID] [decimal](4, 0) NOT NULL,
	[LOCATION_NUM] [decimal](2, 0) NULL,
	[UNIT_NUM] [char](3) NULL,
	[SQR_FT] [decimal](5, 0) NULL,
	[BDRMS] [decimal](2, 0) NULL,
	[BATHS] [decimal](2, 0) NULL,
	[CONDO_FEE] [decimal](6, 2) NULL,
	[OWNER_NUM] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[CONDO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOCATION]    Script Date: 9/18/2023 9:06:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOCATION](
	[LOCATION_NUM] [decimal](2, 0) NOT NULL,
	[LOCATION_NAME] [char](25) NULL,
	[ADDRESS] [char](25) NULL,
	[CITY] [char](25) NULL,
	[STATE] [char](2) NULL,
	[POSTAL_CODE] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[LOCATION_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OWNER]    Script Date: 9/18/2023 9:06:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OWNER](
	[OWNER_NUM] [char](5) NOT NULL,
	[LAST_NAME] [char](25) NULL,
	[FIRST_NAME] [char](25) NULL,
	[ADDRESS] [char](25) NULL,
	[CITY] [char](25) NULL,
	[STATE] [char](2) NULL,
	[POSTAL_CODE] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[OWNER_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SERVICE_CATEGORY]    Script Date: 9/18/2023 9:06:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SERVICE_CATEGORY](
	[CATEGORY_NUM] [decimal](4, 0) NOT NULL,
	[CATEGORY_DESCRIPTION] [char](35) NULL,
PRIMARY KEY CLUSTERED 
(
	[CATEGORY_NUM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SERVICE_REQUEST]    Script Date: 9/18/2023 9:06:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SERVICE_REQUEST](
	[SERVICE_ID] [decimal](4, 0) NOT NULL,
	[CONDO_ID] [decimal](4, 0) NULL,
	[CATEGORY_NUM] [decimal](4, 0) NULL,
	[DESCRIPTION] [char](255) NULL,
	[STATUS] [char](255) NULL,
	[EST_HOURS] [decimal](4, 2) NULL,
	[SPENT_HOURS] [decimal](4, 2) NULL,
	[NEXT_SERVICE_DATE] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[SERVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CONDO_UNIT] ([CONDO_ID], [LOCATION_NUM], [UNIT_NUM], [SQR_FT], [BDRMS], [BATHS], [CONDO_FEE], [OWNER_NUM]) VALUES (CAST(1 AS Decimal(4, 0)), CAST(1 AS Decimal(2, 0)), N'102', CAST(675 AS Decimal(5, 0)), CAST(1 AS Decimal(2, 0)), CAST(1 AS Decimal(2, 0)), CAST(475.00 AS Decimal(6, 2)), N'AD057')
GO
INSERT [dbo].[CONDO_UNIT] ([CONDO_ID], [LOCATION_NUM], [UNIT_NUM], [SQR_FT], [BDRMS], [BATHS], [CONDO_FEE], [OWNER_NUM]) VALUES (CAST(2 AS Decimal(4, 0)), CAST(1 AS Decimal(2, 0)), N'201', CAST(1030 AS Decimal(5, 0)), CAST(2 AS Decimal(2, 0)), CAST(1 AS Decimal(2, 0)), CAST(550.00 AS Decimal(6, 2)), N'EL025')
GO
INSERT [dbo].[CONDO_UNIT] ([CONDO_ID], [LOCATION_NUM], [UNIT_NUM], [SQR_FT], [BDRMS], [BATHS], [CONDO_FEE], [OWNER_NUM]) VALUES (CAST(3 AS Decimal(4, 0)), CAST(1 AS Decimal(2, 0)), N'306', CAST(1575 AS Decimal(5, 0)), CAST(3 AS Decimal(2, 0)), CAST(2 AS Decimal(2, 0)), CAST(625.00 AS Decimal(6, 2)), N'AN175')
GO
INSERT [dbo].[CONDO_UNIT] ([CONDO_ID], [LOCATION_NUM], [UNIT_NUM], [SQR_FT], [BDRMS], [BATHS], [CONDO_FEE], [OWNER_NUM]) VALUES (CAST(4 AS Decimal(4, 0)), CAST(1 AS Decimal(2, 0)), N'204', CAST(1164 AS Decimal(5, 0)), CAST(2 AS Decimal(2, 0)), CAST(2 AS Decimal(2, 0)), CAST(575.00 AS Decimal(6, 2)), N'BL720')
GO
INSERT [dbo].[CONDO_UNIT] ([CONDO_ID], [LOCATION_NUM], [UNIT_NUM], [SQR_FT], [BDRMS], [BATHS], [CONDO_FEE], [OWNER_NUM]) VALUES (CAST(5 AS Decimal(4, 0)), CAST(1 AS Decimal(2, 0)), N'405', CAST(1575 AS Decimal(5, 0)), CAST(3 AS Decimal(2, 0)), CAST(2 AS Decimal(2, 0)), CAST(625.00 AS Decimal(6, 2)), N'FE182')
GO
INSERT [dbo].[CONDO_UNIT] ([CONDO_ID], [LOCATION_NUM], [UNIT_NUM], [SQR_FT], [BDRMS], [BATHS], [CONDO_FEE], [OWNER_NUM]) VALUES (CAST(6 AS Decimal(4, 0)), CAST(1 AS Decimal(2, 0)), N'401', CAST(1030 AS Decimal(5, 0)), CAST(2 AS Decimal(2, 0)), CAST(2 AS Decimal(2, 0)), CAST(550.00 AS Decimal(6, 2)), N'KE122')
GO
INSERT [dbo].[CONDO_UNIT] ([CONDO_ID], [LOCATION_NUM], [UNIT_NUM], [SQR_FT], [BDRMS], [BATHS], [CONDO_FEE], [OWNER_NUM]) VALUES (CAST(7 AS Decimal(4, 0)), CAST(1 AS Decimal(2, 0)), N'502', CAST(745 AS Decimal(5, 0)), CAST(1 AS Decimal(2, 0)), CAST(1 AS Decimal(2, 0)), CAST(490.00 AS Decimal(6, 2)), N'JU092')
GO
INSERT [dbo].[CONDO_UNIT] ([CONDO_ID], [LOCATION_NUM], [UNIT_NUM], [SQR_FT], [BDRMS], [BATHS], [CONDO_FEE], [OWNER_NUM]) VALUES (CAST(8 AS Decimal(4, 0)), CAST(1 AS Decimal(2, 0)), N'503', CAST(1680 AS Decimal(5, 0)), CAST(3 AS Decimal(2, 0)), CAST(3 AS Decimal(2, 0)), CAST(670.00 AS Decimal(6, 2)), N'RO123')
GO
INSERT [dbo].[CONDO_UNIT] ([CONDO_ID], [LOCATION_NUM], [UNIT_NUM], [SQR_FT], [BDRMS], [BATHS], [CONDO_FEE], [OWNER_NUM]) VALUES (CAST(9 AS Decimal(4, 0)), CAST(2 AS Decimal(2, 0)), N'A03', CAST(725 AS Decimal(5, 0)), CAST(1 AS Decimal(2, 0)), CAST(1 AS Decimal(2, 0)), CAST(190.00 AS Decimal(6, 2)), N'TR222')
GO
INSERT [dbo].[CONDO_UNIT] ([CONDO_ID], [LOCATION_NUM], [UNIT_NUM], [SQR_FT], [BDRMS], [BATHS], [CONDO_FEE], [OWNER_NUM]) VALUES (CAST(10 AS Decimal(4, 0)), CAST(2 AS Decimal(2, 0)), N'A01', CAST(1084 AS Decimal(5, 0)), CAST(2 AS Decimal(2, 0)), CAST(1 AS Decimal(2, 0)), CAST(235.00 AS Decimal(6, 2)), N'NO225')
GO
INSERT [dbo].[CONDO_UNIT] ([CONDO_ID], [LOCATION_NUM], [UNIT_NUM], [SQR_FT], [BDRMS], [BATHS], [CONDO_FEE], [OWNER_NUM]) VALUES (CAST(11 AS Decimal(4, 0)), CAST(2 AS Decimal(2, 0)), N'B01', CAST(1084 AS Decimal(5, 0)), CAST(2 AS Decimal(2, 0)), CAST(2 AS Decimal(2, 0)), CAST(250.00 AS Decimal(6, 2)), N'SM072')
GO
INSERT [dbo].[CONDO_UNIT] ([CONDO_ID], [LOCATION_NUM], [UNIT_NUM], [SQR_FT], [BDRMS], [BATHS], [CONDO_FEE], [OWNER_NUM]) VALUES (CAST(12 AS Decimal(4, 0)), CAST(2 AS Decimal(2, 0)), N'C01', CAST(750 AS Decimal(5, 0)), CAST(1 AS Decimal(2, 0)), CAST(1 AS Decimal(2, 0)), CAST(190.00 AS Decimal(6, 2)), N'AN175')
GO
INSERT [dbo].[CONDO_UNIT] ([CONDO_ID], [LOCATION_NUM], [UNIT_NUM], [SQR_FT], [BDRMS], [BATHS], [CONDO_FEE], [OWNER_NUM]) VALUES (CAST(13 AS Decimal(4, 0)), CAST(2 AS Decimal(2, 0)), N'C02', CAST(1245 AS Decimal(5, 0)), CAST(2 AS Decimal(2, 0)), CAST(2 AS Decimal(2, 0)), CAST(250.00 AS Decimal(6, 2)), N'WS032')
GO
INSERT [dbo].[CONDO_UNIT] ([CONDO_ID], [LOCATION_NUM], [UNIT_NUM], [SQR_FT], [BDRMS], [BATHS], [CONDO_FEE], [OWNER_NUM]) VALUES (CAST(14 AS Decimal(4, 0)), CAST(2 AS Decimal(2, 0)), N'C06', CAST(1540 AS Decimal(5, 0)), CAST(3 AS Decimal(2, 0)), CAST(2 AS Decimal(2, 0)), CAST(300.00 AS Decimal(6, 2)), N'RO123')
GO
INSERT [dbo].[LOCATION] ([LOCATION_NUM], [LOCATION_NAME], [ADDRESS], [CITY], [STATE], [POSTAL_CODE]) VALUES (CAST(1 AS Decimal(2, 0)), N'Solmaris Ocean           ', N'100 Ocean Ave.           ', N'Bowton                   ', N'FL', N'31313')
GO
INSERT [dbo].[LOCATION] ([LOCATION_NUM], [LOCATION_NAME], [ADDRESS], [CITY], [STATE], [POSTAL_CODE]) VALUES (CAST(2 AS Decimal(2, 0)), N'Solmaris Bayside         ', N'405 Bayside Blvd.        ', N'Glander Bay              ', N'FL', N'31044')
GO
INSERT [dbo].[OWNER] ([OWNER_NUM], [LAST_NAME], [FIRST_NAME], [ADDRESS], [CITY], [STATE], [POSTAL_CODE]) VALUES (N'AD057', N'Adney                    ', N'Bruce and Jean           ', N'100 Ocean Ave.           ', N'Bowton                   ', N'FL', N'31313')
GO
INSERT [dbo].[OWNER] ([OWNER_NUM], [LAST_NAME], [FIRST_NAME], [ADDRESS], [CITY], [STATE], [POSTAL_CODE]) VALUES (N'AN175', N'Anderson                 ', N'Bill                     ', N'18 Wilcox St.            ', N'Brunswick                ', N'GA', N'31522')
GO
INSERT [dbo].[OWNER] ([OWNER_NUM], [LAST_NAME], [FIRST_NAME], [ADDRESS], [CITY], [STATE], [POSTAL_CODE]) VALUES (N'BL720', N'Blake                    ', N'Jack                     ', N'2672 Condor St.          ', N'Mills                    ', N'SC', N'29707')
GO
INSERT [dbo].[OWNER] ([OWNER_NUM], [LAST_NAME], [FIRST_NAME], [ADDRESS], [CITY], [STATE], [POSTAL_CODE]) VALUES (N'EL025', N'Elend                    ', N'Bill and Sandy           ', N'100 Ocean Ave.           ', N'Bowton                   ', N'FL', N'31313')
GO
INSERT [dbo].[OWNER] ([OWNER_NUM], [LAST_NAME], [FIRST_NAME], [ADDRESS], [CITY], [STATE], [POSTAL_CODE]) VALUES (N'FE182', N'Feenstra                 ', N'Daniel                   ', N'7822 Coventry Dr.        ', N'Rivard                   ', N'FL', N'31062')
GO
INSERT [dbo].[OWNER] ([OWNER_NUM], [LAST_NAME], [FIRST_NAME], [ADDRESS], [CITY], [STATE], [POSTAL_CODE]) VALUES (N'JU092', N'Juarez                   ', N'Maria                    ', N'892 Oak St.              ', N'Kaleva                   ', N'FL', N'31521')
GO
INSERT [dbo].[OWNER] ([OWNER_NUM], [LAST_NAME], [FIRST_NAME], [ADDRESS], [CITY], [STATE], [POSTAL_CODE]) VALUES (N'KE122', N'Kelly                    ', N'Alyssa                   ', N'527 Waters St.           ', N'Norton                   ', N'MI', N'49441')
GO
INSERT [dbo].[OWNER] ([OWNER_NUM], [LAST_NAME], [FIRST_NAME], [ADDRESS], [CITY], [STATE], [POSTAL_CODE]) VALUES (N'NO225', N'Norton                   ', N'Peter and Caitlin        ', N'281 Lakewood Ave.        ', N'Lawndale                 ', N'PA', N'19111')
GO
INSERT [dbo].[OWNER] ([OWNER_NUM], [LAST_NAME], [FIRST_NAME], [ADDRESS], [CITY], [STATE], [POSTAL_CODE]) VALUES (N'RO123', N'Robinson                 ', N'Mike and Jane            ', N'900 Spring Lake Dr.      ', N'Springs                  ', N'MI', N'49456')
GO
INSERT [dbo].[OWNER] ([OWNER_NUM], [LAST_NAME], [FIRST_NAME], [ADDRESS], [CITY], [STATE], [POSTAL_CODE]) VALUES (N'SM072', N'Smeltz                   ', N'Jim and Cathy            ', N'922 Garland Dr.          ', N'Lewiston                 ', N'FL', N'32765')
GO
INSERT [dbo].[OWNER] ([OWNER_NUM], [LAST_NAME], [FIRST_NAME], [ADDRESS], [CITY], [STATE], [POSTAL_CODE]) VALUES (N'TR222', N'Trent                    ', N'Michael                  ', N'405 Bayside Blvd.        ', N'Glander Bay              ', N'FL', N'31044')
GO
INSERT [dbo].[OWNER] ([OWNER_NUM], [LAST_NAME], [FIRST_NAME], [ADDRESS], [CITY], [STATE], [POSTAL_CODE]) VALUES (N'WS032', N'Wilson                   ', N'Henry and Karen          ', N'25 Nichols St.           ', N'Lewiston                 ', N'FL', N'32765')
GO
INSERT [dbo].[SERVICE_CATEGORY] ([CATEGORY_NUM], [CATEGORY_DESCRIPTION]) VALUES (CAST(1 AS Decimal(4, 0)), N'Plumbing                           ')
GO
INSERT [dbo].[SERVICE_CATEGORY] ([CATEGORY_NUM], [CATEGORY_DESCRIPTION]) VALUES (CAST(2 AS Decimal(4, 0)), N'Heating/Air Conditioning           ')
GO
INSERT [dbo].[SERVICE_CATEGORY] ([CATEGORY_NUM], [CATEGORY_DESCRIPTION]) VALUES (CAST(3 AS Decimal(4, 0)), N'Painting                           ')
GO
INSERT [dbo].[SERVICE_CATEGORY] ([CATEGORY_NUM], [CATEGORY_DESCRIPTION]) VALUES (CAST(4 AS Decimal(4, 0)), N'Electrical Systems                 ')
GO
INSERT [dbo].[SERVICE_CATEGORY] ([CATEGORY_NUM], [CATEGORY_DESCRIPTION]) VALUES (CAST(5 AS Decimal(4, 0)), N'Carpentry                          ')
GO
INSERT [dbo].[SERVICE_CATEGORY] ([CATEGORY_NUM], [CATEGORY_DESCRIPTION]) VALUES (CAST(6 AS Decimal(4, 0)), N'Janitorial                         ')
GO
INSERT [dbo].[SERVICE_REQUEST] ([SERVICE_ID], [CONDO_ID], [CATEGORY_NUM], [DESCRIPTION], [STATUS], [EST_HOURS], [SPENT_HOURS], [NEXT_SERVICE_DATE]) VALUES (CAST(1 AS Decimal(4, 0)), CAST(2 AS Decimal(4, 0)), CAST(1 AS Decimal(4, 0)), N'Back wall in pantry has mold indicating water seepage. Diagnose and repair.                                                                                                                                                                                    ', N'Service rep has verified the problem. Plumbing contractor has been called.                                                                                                                                                                                     ', CAST(4.00 AS Decimal(4, 2)), CAST(2.00 AS Decimal(4, 2)), CAST(N'2015-10-12' AS Date))
GO
INSERT [dbo].[SERVICE_REQUEST] ([SERVICE_ID], [CONDO_ID], [CATEGORY_NUM], [DESCRIPTION], [STATUS], [EST_HOURS], [SPENT_HOURS], [NEXT_SERVICE_DATE]) VALUES (CAST(2 AS Decimal(4, 0)), CAST(5 AS Decimal(4, 0)), CAST(2 AS Decimal(4, 0)), N'Air conditioning doesn’t cool.                                                                                                                                                                                                                                 ', N'Service rep has verified problem. Air conditioning contractor has been called.                                                                                                                                                                                 ', CAST(3.00 AS Decimal(4, 2)), CAST(1.00 AS Decimal(4, 2)), CAST(N'2015-10-12' AS Date))
GO
INSERT [dbo].[SERVICE_REQUEST] ([SERVICE_ID], [CONDO_ID], [CATEGORY_NUM], [DESCRIPTION], [STATUS], [EST_HOURS], [SPENT_HOURS], [NEXT_SERVICE_DATE]) VALUES (CAST(3 AS Decimal(4, 0)), CAST(4 AS Decimal(4, 0)), CAST(6 AS Decimal(4, 0)), N'Hardwood floors must be refinished.                                                                                                                                                                                                                            ', N'Service call has been scheduled.                                                                                                                                                                                                                               ', CAST(8.00 AS Decimal(4, 2)), CAST(0.00 AS Decimal(4, 2)), CAST(N'2015-10-16' AS Date))
GO
INSERT [dbo].[SERVICE_REQUEST] ([SERVICE_ID], [CONDO_ID], [CATEGORY_NUM], [DESCRIPTION], [STATUS], [EST_HOURS], [SPENT_HOURS], [NEXT_SERVICE_DATE]) VALUES (CAST(4 AS Decimal(4, 0)), CAST(1 AS Decimal(4, 0)), CAST(4 AS Decimal(4, 0)), N'Switches in kitchen and adjoining dining room are reversed.                                                                                                                                                                                                    ', N'Open                                                                                                                                                                                                                                                           ', CAST(1.00 AS Decimal(4, 2)), CAST(0.00 AS Decimal(4, 2)), CAST(N'2015-10-13' AS Date))
GO
INSERT [dbo].[SERVICE_REQUEST] ([SERVICE_ID], [CONDO_ID], [CATEGORY_NUM], [DESCRIPTION], [STATUS], [EST_HOURS], [SPENT_HOURS], [NEXT_SERVICE_DATE]) VALUES (CAST(5 AS Decimal(4, 0)), CAST(2 AS Decimal(4, 0)), CAST(5 AS Decimal(4, 0)), N'Molding in pantry must be replaced.                                                                                                                                                                                                                            ', N'Cannot schedule until water leak is corrected.                                                                                                                                                                                                                 ', CAST(2.00 AS Decimal(4, 2)), CAST(0.00 AS Decimal(4, 2)), NULL)
GO
INSERT [dbo].[SERVICE_REQUEST] ([SERVICE_ID], [CONDO_ID], [CATEGORY_NUM], [DESCRIPTION], [STATUS], [EST_HOURS], [SPENT_HOURS], [NEXT_SERVICE_DATE]) VALUES (CAST(6 AS Decimal(4, 0)), CAST(14 AS Decimal(4, 0)), CAST(3 AS Decimal(4, 0)), N'Unit needs to be repainted due to previous tenant damage.                                                                                                                                                                                                      ', N'Scheduled                                                                                                                                                                                                                                                      ', CAST(7.00 AS Decimal(4, 2)), CAST(0.00 AS Decimal(4, 2)), CAST(N'2015-10-19' AS Date))
GO
INSERT [dbo].[SERVICE_REQUEST] ([SERVICE_ID], [CONDO_ID], [CATEGORY_NUM], [DESCRIPTION], [STATUS], [EST_HOURS], [SPENT_HOURS], [NEXT_SERVICE_DATE]) VALUES (CAST(7 AS Decimal(4, 0)), CAST(11 AS Decimal(4, 0)), CAST(4 AS Decimal(4, 0)), N'Tenant complained that using microwave caused short circuits on two occasions.                                                                                                                                                                                 ', N'Service rep unable to duplicate problem. Tenant to notify condo management if problem recurs.                                                                                                                                                                  ', CAST(1.00 AS Decimal(4, 2)), CAST(1.00 AS Decimal(4, 2)), NULL)
GO
INSERT [dbo].[SERVICE_REQUEST] ([SERVICE_ID], [CONDO_ID], [CATEGORY_NUM], [DESCRIPTION], [STATUS], [EST_HOURS], [SPENT_HOURS], [NEXT_SERVICE_DATE]) VALUES (CAST(8 AS Decimal(4, 0)), CAST(9 AS Decimal(4, 0)), CAST(3 AS Decimal(4, 0)), N'Kitchen must be repainted. Walls discolored due to kitchen fire.                                                                                                                                                                                               ', N'Scheduled                                                                                                                                                                                                                                                      ', CAST(5.00 AS Decimal(4, 2)), CAST(0.00 AS Decimal(4, 2)), CAST(N'2015-10-16' AS Date))
GO
INSERT [dbo].[SERVICE_REQUEST] ([SERVICE_ID], [CONDO_ID], [CATEGORY_NUM], [DESCRIPTION], [STATUS], [EST_HOURS], [SPENT_HOURS], [NEXT_SERVICE_DATE]) VALUES (CAST(9 AS Decimal(4, 0)), CAST(7 AS Decimal(4, 0)), CAST(6 AS Decimal(4, 0)), N'Shampoo all carpets.                                                                                                                                                                                                                                           ', N'Open                                                                                                                                                                                                                                                           ', CAST(5.00 AS Decimal(4, 2)), CAST(0.00 AS Decimal(4, 2)), CAST(N'2015-10-19' AS Date))
GO
INSERT [dbo].[SERVICE_REQUEST] ([SERVICE_ID], [CONDO_ID], [CATEGORY_NUM], [DESCRIPTION], [STATUS], [EST_HOURS], [SPENT_HOURS], [NEXT_SERVICE_DATE]) VALUES (CAST(10 AS Decimal(4, 0)), CAST(9 AS Decimal(4, 0)), CAST(5 AS Decimal(4, 0)), N'Repair window sills.                                                                                                                                                                                                                                           ', N'Scheduled                                                                                                                                                                                                                                                      ', CAST(4.00 AS Decimal(4, 2)), CAST(0.00 AS Decimal(4, 2)), CAST(N'2015-10-20' AS Date))
GO
USE [master]
GO
ALTER DATABASE [Condos] SET  READ_WRITE 
GO
