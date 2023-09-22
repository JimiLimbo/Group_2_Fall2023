USE [master]
GO

CREATE DATABASE [HighbrowEntertainment]
GO

USE [HighbrowEntertainment]

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
/****** Object:  Table [dbo].[CustomerPreference]    Script Date: 9/22/2023 10:12:34 AM ******/
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
/****** Object:  Table [dbo].[Customers]    Script Date: 9/22/2023 10:12:34 AM ******/
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
/****** Object:  Table [dbo].[Engagements]    Script Date: 9/22/2023 10:12:34 AM ******/
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
/****** Object:  Table [dbo].[GroupMember]    Script Date: 9/22/2023 10:12:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupMember](
	[GroupKey] [varchar](4) NULL,
	[MemberKey] [varchar](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 9/22/2023 10:12:34 AM ******/
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
/****** Object:  Table [dbo].[GroupStyle]    Script Date: 9/22/2023 10:12:34 AM ******/
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
/****** Object:  Table [dbo].[Members]    Script Date: 9/22/2023 10:12:34 AM ******/
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
/****** Object:  Table [dbo].[MusicStyle]    Script Date: 9/22/2023 10:12:34 AM ******/
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
INSERT [dbo].[Agents] ([AgentKey], [AgentFirstName], [AgentLastName], [AgentAddress], [AgentCity], [AgentState], [AgentZip], [AgentPhone], [AgentDateHired], [AgentSalary], [AgentCommissionRate]) VALUES (N'A001', N'William                            ', N'Thompson                           ', N'122 Spring River Drive             ', N'Redmond                            ', N'WA', N'98053', N'555-2681       ', CAST(N'2018-05-10' AS Date), CAST(45000.00 AS Decimal(9, 2)), CAST(0.040 AS Decimal(4, 3)))
GO
INSERT [dbo].[Agents] ([AgentKey], [AgentFirstName], [AgentLastName], [AgentAddress], [AgentCity], [AgentState], [AgentZip], [AgentPhone], [AgentDateHired], [AgentSalary], [AgentCommissionRate]) VALUES (N'A002', N'Scott                              ', N'Bishop                             ', N'66 Spring Valley Drive             ', N'Seattle                            ', N'WA', N'98125', N'555-2666       ', CAST(N'2019-01-31' AS Date), CAST(37000.00 AS Decimal(9, 2)), CAST(0.040 AS Decimal(4, 3)))
GO
INSERT [dbo].[Agents] ([AgentKey], [AgentFirstName], [AgentLastName], [AgentAddress], [AgentCity], [AgentState], [AgentZip], [AgentPhone], [AgentDateHired], [AgentSalary], [AgentCommissionRate]) VALUES (N'A003', N'Carol                              ', N'Viescas                            ', N'667 Red River Road                 ', N'Bellevue                           ', N'WA', N'98006', N'555-2571       ', CAST(N'2018-11-14' AS Date), CAST(40000.00 AS Decimal(9, 2)), CAST(0.050 AS Decimal(4, 3)))
GO
INSERT [dbo].[Agents] ([AgentKey], [AgentFirstName], [AgentLastName], [AgentAddress], [AgentCity], [AgentState], [AgentZip], [AgentPhone], [AgentDateHired], [AgentSalary], [AgentCommissionRate]) VALUES (N'A004', N'Karen                              ', N'Smith                              ', N'30301 166th Ave. N.E.              ', N'Seattle                            ', N'WA', N'98125', N'555-2551       ', CAST(N'2019-02-28' AS Date), CAST(32000.00 AS Decimal(9, 2)), CAST(0.055 AS Decimal(4, 3)))
GO
INSERT [dbo].[Agents] ([AgentKey], [AgentFirstName], [AgentLastName], [AgentAddress], [AgentCity], [AgentState], [AgentZip], [AgentPhone], [AgentDateHired], [AgentSalary], [AgentCommissionRate]) VALUES (N'A005', N'Marianne                           ', N'Wier                               ', N'908 W. Capital Way                 ', N'Tacoma                             ', N'WA', N'98413', N'555-2606       ', CAST(N'2019-01-28' AS Date), CAST(34500.00 AS Decimal(9, 2)), CAST(0.045 AS Decimal(4, 3)))
GO
INSERT [dbo].[Agents] ([AgentKey], [AgentFirstName], [AgentLastName], [AgentAddress], [AgentCity], [AgentState], [AgentZip], [AgentPhone], [AgentDateHired], [AgentSalary], [AgentCommissionRate]) VALUES (N'A006', N'John                               ', N'Kennedy                            ', N'16679 NE 41st Court                ', N'Seattle                            ', N'WA', N'98125', N'555-2621       ', CAST(N'2018-05-10' AS Date), CAST(43000.00 AS Decimal(9, 2)), CAST(0.060 AS Decimal(4, 3)))
GO
INSERT [dbo].[Agents] ([AgentKey], [AgentFirstName], [AgentLastName], [AgentAddress], [AgentCity], [AgentState], [AgentZip], [AgentPhone], [AgentDateHired], [AgentSalary], [AgentCommissionRate]) VALUES (N'A007', N'Caleb                              ', N'Viescas                            ', N'4501 Wetland Road                  ', N'Redmond                            ', N'WA', N'98052', N'555-0037       ', CAST(N'2019-02-11' AS Date), CAST(32100.00 AS Decimal(9, 2)), CAST(0.035 AS Decimal(4, 3)))
GO
INSERT [dbo].[Agents] ([AgentKey], [AgentFirstName], [AgentLastName], [AgentAddress], [AgentCity], [AgentState], [AgentZip], [AgentPhone], [AgentDateHired], [AgentSalary], [AgentCommissionRate]) VALUES (N'A008', N'Maria                              ', N'Patterson                          ', N'3445 Cheyenne Road                 ', N'Bellevue                           ', N'WA', N'98006', N'555-2291       ', CAST(N'2018-08-29' AS Date), CAST(40000.00 AS Decimal(9, 2)), CAST(0.040 AS Decimal(4, 3)))
GO
INSERT [dbo].[Agents] ([AgentKey], [AgentFirstName], [AgentLastName], [AgentAddress], [AgentCity], [AgentState], [AgentZip], [AgentPhone], [AgentDateHired], [AgentSalary], [AgentCommissionRate]) VALUES (N'A009', N'Darryl                             ', N'Mars                               ', N'1234 Main Street                   ', N'Kirkland                           ', N'WA', N'98033', N'555-1234       ', CAST(N'2021-01-30' AS Date), CAST(50.00 AS Decimal(9, 2)), CAST(0.010 AS Decimal(4, 3)))
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C001', N'S010', N'2')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C001', N'S022', N'1')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C002', N'S003', N'1')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C002', N'S008', N'2')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C003', N'S017', N'2')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C003', N'S019', N'1')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C004', N'S015', N'1')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C004', N'S021', N'2')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C005', N'S007', N'2')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C005', N'S014', N'1')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C006', N'S013', N'2')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C006', N'S023', N'1')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C007', N'S004', N'2')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C007', N'S008', N'1')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C007', N'S019', N'3')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C008', N'S010', N'1')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C008', N'S021', N'2')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C009', N'S006', N'2')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C009', N'S011', N'1')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C009', N'S018', N'3')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C010', N'S015', N'2')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C010', N'S019', N'1')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C010', N'S024', N'3')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C011', N'S001', N'2')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C011', N'S007', N'3')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C011', N'S021', N'1')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C012', N'S010', N'2')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C012', N'S020', N'1')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C013', N'S015', N'1')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C013', N'S024', N'2')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C014', N'S005', N'3')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C014', N'S018', N'2')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C014', N'S022', N'1')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C015', N'S001', N'3')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C015', N'S020', N'2')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C015', N'S021', N'1')
GO
INSERT [dbo].[Customers] ([CustomerKey], [CustFirstName], [CustLastName], [CustStreetAddress], [CustCity], [CustState], [CustZip]) VALUES (N'C001', N'Doris                         ', N'Hartwig                       ', N'4726 11th Ave. N.E.                     ', N'Seattle             ', N'WA', N'98105')
GO
INSERT [dbo].[Customers] ([CustomerKey], [CustFirstName], [CustLastName], [CustStreetAddress], [CustCity], [CustState], [CustZip]) VALUES (N'C002', N'Deb                           ', N'Waldal                        ', N'908 W. Capital Way                      ', N'Tacoma              ', N'WA', N'98413')
GO
INSERT [dbo].[Customers] ([CustomerKey], [CustFirstName], [CustLastName], [CustStreetAddress], [CustCity], [CustState], [CustZip]) VALUES (N'C003', N'Peter                         ', N'Brehm                         ', N'722 Moss Bay Blvd.                      ', N'Kirkland            ', N'WA', N'98033')
GO
INSERT [dbo].[Customers] ([CustomerKey], [CustFirstName], [CustLastName], [CustStreetAddress], [CustCity], [CustState], [CustZip]) VALUES (N'C004', N'Dean                          ', N'McCrae                        ', N'4110 Old Redmond Rd.                    ', N'Redmond             ', N'WA', N'98052')
GO
INSERT [dbo].[Customers] ([CustomerKey], [CustFirstName], [CustLastName], [CustStreetAddress], [CustCity], [CustState], [CustZip]) VALUES (N'C005', N'Elizabeth                     ', N'Hallmark                      ', N'Route 2, Box 203B                       ', N'Auburn              ', N'WA', N'98002')
GO
INSERT [dbo].[Customers] ([CustomerKey], [CustFirstName], [CustLastName], [CustStreetAddress], [CustCity], [CustState], [CustZip]) VALUES (N'C006', N'Matt                          ', N'Berg                          ', N'908 W. Capital Way                      ', N'Tacoma              ', N'WA', N'98413')
GO
INSERT [dbo].[Customers] ([CustomerKey], [CustFirstName], [CustLastName], [CustStreetAddress], [CustCity], [CustState], [CustZip]) VALUES (N'C007', N'Liz                           ', N'Keyser                        ', N'13920 S.E. 40th Street                  ', N'Bellevue            ', N'WA', N'98006')
GO
INSERT [dbo].[Customers] ([CustomerKey], [CustFirstName], [CustLastName], [CustStreetAddress], [CustCity], [CustState], [CustZip]) VALUES (N'C008', N'Darren                        ', N'Gehring                       ', N'2601 Seaview Lane                       ', N'Kirkland            ', N'WA', N'98033')
GO
INSERT [dbo].[Customers] ([CustomerKey], [CustFirstName], [CustLastName], [CustStreetAddress], [CustCity], [CustState], [CustZip]) VALUES (N'C009', N'Sarah                         ', N'Thompson                      ', N'2222 Springer Road                      ', N'Bellevue            ', N'WA', N'98006')
GO
INSERT [dbo].[Customers] ([CustomerKey], [CustFirstName], [CustLastName], [CustStreetAddress], [CustCity], [CustState], [CustZip]) VALUES (N'C010', N'Zachary                       ', N'Ehrlich                       ', N'12330 Kingman Drive                     ', N'Kirkland            ', N'WA', N'98033')
GO
INSERT [dbo].[Customers] ([CustomerKey], [CustFirstName], [CustLastName], [CustStreetAddress], [CustCity], [CustState], [CustZip]) VALUES (N'C011', N'Joyce                         ', N'Bonnicksen                    ', N'2424 Thames Drive                       ', N'Bellevue            ', N'WA', N'98006')
GO
INSERT [dbo].[Customers] ([CustomerKey], [CustFirstName], [CustLastName], [CustStreetAddress], [CustCity], [CustState], [CustZip]) VALUES (N'C012', N'Kerry                         ', N'Patterson                     ', N'777 Fenexet Blvd                        ', N'Redmond             ', N'WA', N'98052')
GO
INSERT [dbo].[Customers] ([CustomerKey], [CustFirstName], [CustLastName], [CustStreetAddress], [CustCity], [CustState], [CustZip]) VALUES (N'C013', N'Estella                       ', N'Pundt                         ', N'2500 Rosales Lane                       ', N'Bellevue            ', N'WA', N'98006')
GO
INSERT [dbo].[Customers] ([CustomerKey], [CustFirstName], [CustLastName], [CustStreetAddress], [CustCity], [CustState], [CustZip]) VALUES (N'C014', N'Mark                          ', N'Rosales                       ', N'323 Advocate Lane                       ', N'Bellevue            ', N'WA', N'98006')
GO
INSERT [dbo].[Customers] ([CustomerKey], [CustFirstName], [CustLastName], [CustStreetAddress], [CustCity], [CustState], [CustZip]) VALUES (N'C015', N'Carol                         ', N'Viescas                       ', N'754 Fourth Ave                          ', N'Seattle             ', N'WA', N'98115')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00002', CAST(N'2022-09-01' AS Date), CAST(N'2022-09-05' AS Date), CAST(N'13:00:00' AS Time), CAST(N'15:00:00' AS Time), CAST(200.00 AS Decimal(10, 2)), N'C006', N'A004', N'G004')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00003', CAST(N'2022-09-10' AS Date), CAST(N'2022-09-15' AS Date), CAST(N'13:00:00' AS Time), CAST(N'15:00:00' AS Time), CAST(590.00 AS Decimal(10, 2)), N'C001', N'A003', N'G005')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00004', CAST(N'2022-09-11' AS Date), CAST(N'2022-09-17' AS Date), CAST(N'20:00:00' AS Time), CAST(N'00:00:00' AS Time), CAST(470.00 AS Decimal(10, 2)), N'C007', N'A003', N'G004')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00005', CAST(N'2022-09-11' AS Date), CAST(N'2022-09-14' AS Date), CAST(N'16:00:00' AS Time), CAST(N'19:00:00' AS Time), CAST(1130.00 AS Decimal(10, 2)), N'C006', N'A005', N'G003')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00006', CAST(N'2022-09-10' AS Date), CAST(N'2022-09-14' AS Date), CAST(N'15:00:00' AS Time), CAST(N'21:00:00' AS Time), CAST(2300.00 AS Decimal(10, 2)), N'C014', N'A007', N'G008')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00007', CAST(N'2022-09-11' AS Date), CAST(N'2022-09-18' AS Date), CAST(N'17:00:00' AS Time), CAST(N'20:00:00' AS Time), CAST(770.00 AS Decimal(10, 2)), N'C004', N'A004', N'G002')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00008', CAST(N'2022-09-18' AS Date), CAST(N'2022-09-25' AS Date), CAST(N'20:00:00' AS Time), CAST(N'23:00:00' AS Time), CAST(1850.00 AS Decimal(10, 2)), N'C006', N'A003', N'G007')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00009', CAST(N'2022-09-18' AS Date), CAST(N'2022-09-28' AS Date), CAST(N'19:00:00' AS Time), CAST(N'21:00:00' AS Time), CAST(1370.00 AS Decimal(10, 2)), N'C010', N'A002', N'G010')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00010', CAST(N'2022-09-17' AS Date), CAST(N'2022-09-26' AS Date), CAST(N'13:00:00' AS Time), CAST(N'17:00:00' AS Time), CAST(3650.00 AS Decimal(10, 2)), N'C005', N'A003', N'G003')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00011', CAST(N'2022-09-15' AS Date), CAST(N'2022-09-16' AS Date), CAST(N'18:00:00' AS Time), CAST(N'00:00:00' AS Time), CAST(950.00 AS Decimal(10, 2)), N'C005', N'A004', N'G008')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00012', CAST(N'2022-09-18' AS Date), CAST(N'2022-09-26' AS Date), CAST(N'18:00:00' AS Time), CAST(N'22:00:00' AS Time), CAST(1670.00 AS Decimal(10, 2)), N'C014', N'A008', N'G001')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00013', CAST(N'2022-09-17' AS Date), CAST(N'2022-09-20' AS Date), CAST(N'20:00:00' AS Time), CAST(N'23:00:00' AS Time), CAST(770.00 AS Decimal(10, 2)), N'C003', N'A001', N'G006')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00014', CAST(N'2022-09-24' AS Date), CAST(N'2022-09-29' AS Date), CAST(N'16:00:00' AS Time), CAST(N'22:00:00' AS Time), CAST(2750.00 AS Decimal(10, 2)), N'C001', N'A001', N'G008')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00015', CAST(N'2022-09-24' AS Date), CAST(N'2022-09-29' AS Date), CAST(N'17:00:00' AS Time), CAST(N'19:00:00' AS Time), CAST(770.00 AS Decimal(10, 2)), N'C007', N'A001', N'G013')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00016', CAST(N'2022-10-02' AS Date), CAST(N'2022-10-06' AS Date), CAST(N'20:00:00' AS Time), CAST(N'01:00:00' AS Time), CAST(1550.00 AS Decimal(10, 2)), N'C010', N'A005', N'G013')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00017', CAST(N'2022-09-29' AS Date), CAST(N'2022-10-02' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:00:00' AS Time), CAST(530.00 AS Decimal(10, 2)), N'C002', N'A008', N'G010')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00019', CAST(N'2022-09-29' AS Date), CAST(N'2022-10-05' AS Date), CAST(N'20:00:00' AS Time), CAST(N'23:00:00' AS Time), CAST(365.00 AS Decimal(10, 2)), N'C009', N'A008', N'G004')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00021', CAST(N'2022-09-30' AS Date), CAST(N'2022-10-03' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time), CAST(1490.00 AS Decimal(10, 2)), N'C005', N'A001', N'G003')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00022', CAST(N'2022-09-30' AS Date), CAST(N'2022-10-05' AS Date), CAST(N'12:00:00' AS Time), CAST(N'15:00:00' AS Time), CAST(590.00 AS Decimal(10, 2)), N'C004', N'A005', N'G002')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00023', CAST(N'2022-09-30' AS Date), CAST(N'2022-09-30' AS Date), CAST(N'20:00:00' AS Time), CAST(N'00:00:00' AS Time), CAST(290.00 AS Decimal(10, 2)), N'C012', N'A004', N'G013')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00024', CAST(N'2022-10-01' AS Date), CAST(N'2022-10-07' AS Date), CAST(N'12:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(1940.00 AS Decimal(10, 2)), N'C001', N'A004', N'G001')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00026', CAST(N'2022-10-09' AS Date), CAST(N'2022-10-14' AS Date), CAST(N'17:00:00' AS Time), CAST(N'22:00:00' AS Time), CAST(950.00 AS Decimal(10, 2)), N'C001', N'A006', N'G002')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00027', CAST(N'2022-10-07' AS Date), CAST(N'2022-10-12' AS Date), CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time), CAST(2210.00 AS Decimal(10, 2)), N'C015', N'A007', N'G003')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00028', CAST(N'2022-10-06' AS Date), CAST(N'2022-10-15' AS Date), CAST(N'17:00:00' AS Time), CAST(N'22:00:00' AS Time), CAST(3800.00 AS Decimal(10, 2)), N'C003', N'A004', N'G007')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00030', CAST(N'2022-10-06' AS Date), CAST(N'2022-10-08' AS Date), CAST(N'17:00:00' AS Time), CAST(N'22:00:00' AS Time), CAST(275.00 AS Decimal(10, 2)), N'C009', N'A005', N'G011')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00031', CAST(N'2022-10-07' AS Date), CAST(N'2022-10-16' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time), CAST(2450.00 AS Decimal(10, 2)), N'C002', N'A008', N'G010')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00032', CAST(N'2022-10-07' AS Date), CAST(N'2022-10-16' AS Date), CAST(N'13:00:00' AS Time), CAST(N'15:00:00' AS Time), CAST(1250.00 AS Decimal(10, 2)), N'C010', N'A007', N'G013')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00034', CAST(N'2022-10-14' AS Date), CAST(N'2022-10-20' AS Date), CAST(N'16:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(680.00 AS Decimal(10, 2)), N'C004', N'A008', N'G005')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00035', CAST(N'2022-10-14' AS Date), CAST(N'2022-10-15' AS Date), CAST(N'19:00:00' AS Time), CAST(N'23:00:00' AS Time), CAST(410.00 AS Decimal(10, 2)), N'C005', N'A008', N'G001')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00036', CAST(N'2022-10-13' AS Date), CAST(N'2022-10-23' AS Date), CAST(N'18:00:00' AS Time), CAST(N'22:00:00' AS Time), CAST(710.00 AS Decimal(10, 2)), N'C014', N'A003', N'G011')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00037', CAST(N'2022-10-13' AS Date), CAST(N'2022-10-19' AS Date), CAST(N'14:00:00' AS Time), CAST(N'19:00:00' AS Time), CAST(2675.00 AS Decimal(10, 2)), N'C006', N'A003', N'G008')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00038', CAST(N'2022-10-14' AS Date), CAST(N'2022-10-18' AS Date), CAST(N'14:00:00' AS Time), CAST(N'20:00:00' AS Time), CAST(1850.00 AS Decimal(10, 2)), N'C013', N'A004', N'G006')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00041', CAST(N'2022-10-20' AS Date), CAST(N'2022-10-28' AS Date), CAST(N'18:00:00' AS Time), CAST(N'21:00:00' AS Time), CAST(860.00 AS Decimal(10, 2)), N'C013', N'A003', N'G002')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00042', CAST(N'2022-10-20' AS Date), CAST(N'2022-10-26' AS Date), CAST(N'17:00:00' AS Time), CAST(N'22:00:00' AS Time), CAST(2150.00 AS Decimal(10, 2)), N'C002', N'A001', N'G013')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00043', CAST(N'2022-10-21' AS Date), CAST(N'2022-10-21' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:00:00' AS Time), CAST(140.00 AS Decimal(10, 2)), N'C001', N'A008', N'G001')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00044', CAST(N'2022-10-22' AS Date), CAST(N'2022-10-26' AS Date), CAST(N'14:00:00' AS Time), CAST(N'19:00:00' AS Time), CAST(1925.00 AS Decimal(10, 2)), N'C006', N'A003', N'G008')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00045', CAST(N'2022-10-21' AS Date), CAST(N'2022-10-28' AS Date), CAST(N'14:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(530.00 AS Decimal(10, 2)), N'C015', N'A001', N'G012')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00046', CAST(N'2022-10-28' AS Date), CAST(N'2022-11-05' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:00:00' AS Time), CAST(1400.00 AS Decimal(10, 2)), N'C009', N'A004', N'G008')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00048', CAST(N'2022-11-05' AS Date), CAST(N'2022-11-06' AS Date), CAST(N'16:00:00' AS Time), CAST(N'22:00:00' AS Time), CAST(950.00 AS Decimal(10, 2)), N'C002', N'A001', N'G007')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00049', CAST(N'2022-11-13' AS Date), CAST(N'2022-11-19' AS Date), CAST(N'12:00:00' AS Time), CAST(N'14:00:00' AS Time), CAST(680.00 AS Decimal(10, 2)), N'C014', N'A005', N'G001')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00051', CAST(N'2022-11-13' AS Date), CAST(N'2022-11-14' AS Date), CAST(N'20:00:00' AS Time), CAST(N'01:00:00' AS Time), CAST(650.00 AS Decimal(10, 2)), N'C013', N'A003', N'G013')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00052', CAST(N'2022-11-13' AS Date), CAST(N'2022-11-14' AS Date), CAST(N'16:00:00' AS Time), CAST(N'21:00:00' AS Time), CAST(650.00 AS Decimal(10, 2)), N'C010', N'A003', N'G006')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00053', CAST(N'2022-11-11' AS Date), CAST(N'2022-11-12' AS Date), CAST(N'17:00:00' AS Time), CAST(N'19:00:00' AS Time), CAST(350.00 AS Decimal(10, 2)), N'C002', N'A005', N'G007')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00055', CAST(N'2022-11-19' AS Date), CAST(N'2022-11-26' AS Date), CAST(N'20:00:00' AS Time), CAST(N'02:00:00' AS Time), CAST(770.00 AS Decimal(10, 2)), N'C002', N'A003', N'G011')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00056', CAST(N'2022-11-25' AS Date), CAST(N'2022-11-28' AS Date), CAST(N'14:00:00' AS Time), CAST(N'19:00:00' AS Time), CAST(1550.00 AS Decimal(10, 2)), N'C010', N'A003', N'G007')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00058', CAST(N'2022-12-01' AS Date), CAST(N'2022-12-04' AS Date), CAST(N'17:00:00' AS Time), CAST(N'23:00:00' AS Time), CAST(770.00 AS Decimal(10, 2)), N'C001', N'A002', N'G002')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00059', CAST(N'2022-12-01' AS Date), CAST(N'2022-12-04' AS Date), CAST(N'15:00:00' AS Time), CAST(N'19:00:00' AS Time), CAST(290.00 AS Decimal(10, 2)), N'C004', N'A006', N'G012')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00060', CAST(N'2022-12-02' AS Date), CAST(N'2022-12-04' AS Date), CAST(N'13:00:00' AS Time), CAST(N'17:00:00' AS Time), CAST(230.00 AS Decimal(10, 2)), N'C010', N'A008', N'G004')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00061', CAST(N'2022-12-03' AS Date), CAST(N'2022-12-10' AS Date), CAST(N'17:00:00' AS Time), CAST(N'20:00:00' AS Time), CAST(410.00 AS Decimal(10, 2)), N'C015', N'A008', N'G011')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00062', CAST(N'2022-12-09' AS Date), CAST(N'2022-12-10' AS Date), CAST(N'20:00:00' AS Time), CAST(N'01:00:00' AS Time), CAST(500.00 AS Decimal(10, 2)), N'C003', N'A002', N'G005')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00063', CAST(N'2022-12-18' AS Date), CAST(N'2022-12-21' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:00:00' AS Time), CAST(650.00 AS Decimal(10, 2)), N'C009', N'A003', N'G008')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00064', CAST(N'2022-12-25' AS Date), CAST(N'2023-01-03' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:00:00' AS Time), CAST(1250.00 AS Decimal(10, 2)), N'C007', N'A003', N'G013')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00066', CAST(N'2022-12-22' AS Date), CAST(N'2022-12-29' AS Date), CAST(N'20:00:00' AS Time), CAST(N'02:00:00' AS Time), CAST(2930.00 AS Decimal(10, 2)), N'C005', N'A005', N'G006')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00068', CAST(N'2022-12-24' AS Date), CAST(N'2022-12-29' AS Date), CAST(N'16:00:00' AS Time), CAST(N'22:00:00' AS Time), CAST(1670.00 AS Decimal(10, 2)), N'C009', N'A001', N'G005')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00069', CAST(N'2022-12-22' AS Date), CAST(N'2022-12-23' AS Date), CAST(N'15:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(500.00 AS Decimal(10, 2)), N'C004', N'A007', N'G008')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00070', CAST(N'2022-12-23' AS Date), CAST(N'2022-12-26' AS Date), CAST(N'13:00:00' AS Time), CAST(N'15:00:00' AS Time), CAST(410.00 AS Decimal(10, 2)), N'C010', N'A006', N'G001')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00071', CAST(N'2022-12-22' AS Date), CAST(N'2022-12-27' AS Date), CAST(N'14:00:00' AS Time), CAST(N'17:00:00' AS Time), CAST(1670.00 AS Decimal(10, 2)), N'C002', N'A001', N'G003')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00072', CAST(N'2022-12-22' AS Date), CAST(N'2023-01-01' AS Date), CAST(N'20:00:00' AS Time), CAST(N'01:00:00' AS Time), CAST(875.00 AS Decimal(10, 2)), N'C012', N'A004', N'G011')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00073', CAST(N'2022-12-29' AS Date), CAST(N'2023-01-07' AS Date), CAST(N'19:00:00' AS Time), CAST(N'22:00:00' AS Time), CAST(1400.00 AS Decimal(10, 2)), N'C014', N'A005', N'G001')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00074', CAST(N'2023-01-01' AS Date), CAST(N'2023-01-06' AS Date), CAST(N'13:00:00' AS Time), CAST(N'15:00:00' AS Time), CAST(590.00 AS Decimal(10, 2)), N'C004', N'A001', N'G005')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00075', CAST(N'2023-01-01' AS Date), CAST(N'2023-01-11' AS Date), CAST(N'17:00:00' AS Time), CAST(N'20:00:00' AS Time), CAST(2525.00 AS Decimal(10, 2)), N'C001', N'A007', N'G007')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00076', CAST(N'2022-12-30' AS Date), CAST(N'2023-01-03' AS Date), CAST(N'16:00:00' AS Time), CAST(N'22:00:00' AS Time), CAST(500.00 AS Decimal(10, 2)), N'C005', N'A007', N'G012')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00077', CAST(N'2022-12-30' AS Date), CAST(N'2023-01-04' AS Date), CAST(N'17:00:00' AS Time), CAST(N'20:00:00' AS Time), CAST(1670.00 AS Decimal(10, 2)), N'C015', N'A005', N'G003')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00078', CAST(N'2023-01-01' AS Date), CAST(N'2023-01-03' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time), CAST(770.00 AS Decimal(10, 2)), N'C010', N'A004', N'G010')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00079', CAST(N'2022-12-30' AS Date), CAST(N'2023-01-03' AS Date), CAST(N'12:00:00' AS Time), CAST(N'17:00:00' AS Time), CAST(1550.00 AS Decimal(10, 2)), N'C006', N'A008', N'G006')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00080', CAST(N'2022-12-31' AS Date), CAST(N'2023-01-01' AS Date), CAST(N'17:00:00' AS Time), CAST(N'21:00:00' AS Time), CAST(650.00 AS Decimal(10, 2)), N'C002', N'A005', N'G008')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00081', CAST(N'2023-01-01' AS Date), CAST(N'2023-01-09' AS Date), CAST(N'13:00:00' AS Time), CAST(N'17:00:00' AS Time), CAST(1130.00 AS Decimal(10, 2)), N'C013', N'A004', N'G002')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00082', CAST(N'2023-01-08' AS Date), CAST(N'2023-01-09' AS Date), CAST(N'20:00:00' AS Time), CAST(N'01:00:00' AS Time), CAST(950.00 AS Decimal(10, 2)), N'C014', N'A008', N'G003')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00083', CAST(N'2023-01-06' AS Date), CAST(N'2023-01-10' AS Date), CAST(N'13:00:00' AS Time), CAST(N'15:00:00' AS Time), CAST(650.00 AS Decimal(10, 2)), N'C010', N'A002', N'G006')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00084', CAST(N'2023-01-06' AS Date), CAST(N'2023-01-11' AS Date), CAST(N'17:00:00' AS Time), CAST(N'19:00:00' AS Time), CAST(230.00 AS Decimal(10, 2)), N'C007', N'A003', N'G012')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00085', CAST(N'2023-01-06' AS Date), CAST(N'2023-01-08' AS Date), CAST(N'14:00:00' AS Time), CAST(N'19:00:00' AS Time), CAST(1175.00 AS Decimal(10, 2)), N'C015', N'A004', N'G008')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00087', CAST(N'2023-01-04' AS Date), CAST(N'2023-01-06' AS Date), CAST(N'16:00:00' AS Time), CAST(N'19:00:00' AS Time), CAST(275.00 AS Decimal(10, 2)), N'C007', N'A006', N'G008')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00088', CAST(N'2023-01-07' AS Date), CAST(N'2023-01-17' AS Date), CAST(N'12:00:00' AS Time), CAST(N'14:00:00' AS Time), CAST(1370.00 AS Decimal(10, 2)), N'C004', N'A008', N'G013')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00089', CAST(N'2023-01-06' AS Date), CAST(N'2023-01-07' AS Date), CAST(N'14:00:00' AS Time), CAST(N'16:00:00' AS Time), CAST(290.00 AS Decimal(10, 2)), N'C003', N'A008', N'G010')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00090', CAST(N'2023-01-08' AS Date), CAST(N'2023-01-08' AS Date), CAST(N'20:00:00' AS Time), CAST(N'02:00:00' AS Time), CAST(320.00 AS Decimal(10, 2)), N'C006', N'A005', N'G001')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00091', CAST(N'2023-01-05' AS Date), CAST(N'2023-01-12' AS Date), CAST(N'13:00:00' AS Time), CAST(N'19:00:00' AS Time), CAST(770.00 AS Decimal(10, 2)), N'C009', N'A003', N'G004')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00092', CAST(N'2023-01-12' AS Date), CAST(N'2023-01-16' AS Date), CAST(N'19:00:00' AS Time), CAST(N'00:00:00' AS Time), CAST(1925.00 AS Decimal(10, 2)), N'C012', N'A006', N'G008')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00095', CAST(N'2023-01-15' AS Date), CAST(N'2023-01-18' AS Date), CAST(N'20:00:00' AS Time), CAST(N'01:00:00' AS Time), CAST(1550.00 AS Decimal(10, 2)), N'C010', N'A006', N'G007')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00096', CAST(N'2023-01-22' AS Date), CAST(N'2023-01-31' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:00:00' AS Time), CAST(950.00 AS Decimal(10, 2)), N'C009', N'A006', N'G005')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00097', CAST(N'2023-01-19' AS Date), CAST(N'2023-01-19' AS Date), CAST(N'17:00:00' AS Time), CAST(N'21:00:00' AS Time), CAST(110.00 AS Decimal(10, 2)), N'C012', N'A008', N'G004')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00098', CAST(N'2023-01-20' AS Date), CAST(N'2023-01-27' AS Date), CAST(N'20:00:00' AS Time), CAST(N'02:00:00' AS Time), CAST(2930.00 AS Decimal(10, 2)), N'C012', N'A002', N'G010')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00099', CAST(N'2023-01-22' AS Date), CAST(N'2023-02-22' AS Date), CAST(N'14:00:00' AS Time), CAST(N'20:00:00' AS Time), CAST(14105.00 AS Decimal(10, 2)), N'C005', N'A006', N'G008')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00100', CAST(N'2023-01-19' AS Date), CAST(N'2023-01-23' AS Date), CAST(N'12:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(1850.00 AS Decimal(10, 2)), N'C015', N'A003', N'G006')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00101', CAST(N'2023-01-22' AS Date), CAST(N'2023-01-30' AS Date), CAST(N'14:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(1670.00 AS Decimal(10, 2)), N'C004', N'A005', N'G001')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00102', CAST(N'2023-01-22' AS Date), CAST(N'2023-01-31' AS Date), CAST(N'12:00:00' AS Time), CAST(N'15:00:00' AS Time), CAST(2300.00 AS Decimal(10, 2)), N'C013', N'A005', N'G007')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00103', CAST(N'2023-01-21' AS Date), CAST(N'2023-01-27' AS Date), CAST(N'12:00:00' AS Time), CAST(N'17:00:00' AS Time), CAST(575.00 AS Decimal(10, 2)), N'C010', N'A004', N'G011')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00104', CAST(N'2023-01-28' AS Date), CAST(N'2023-02-01' AS Date), CAST(N'13:00:00' AS Time), CAST(N'16:00:00' AS Time), CAST(1400.00 AS Decimal(10, 2)), N'C010', N'A006', N'G003')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00105', CAST(N'2023-01-27' AS Date), CAST(N'2023-02-01' AS Date), CAST(N'12:00:00' AS Time), CAST(N'17:00:00' AS Time), CAST(1850.00 AS Decimal(10, 2)), N'C002', N'A004', N'G013')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00106', CAST(N'2023-01-29' AS Date), CAST(N'2023-02-01' AS Date), CAST(N'15:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(770.00 AS Decimal(10, 2)), N'C003', N'A006', N'G006')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00107', CAST(N'2023-01-29' AS Date), CAST(N'2023-01-30' AS Date), CAST(N'16:00:00' AS Time), CAST(N'21:00:00' AS Time), CAST(200.00 AS Decimal(10, 2)), N'C007', N'A004', N'G004')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00108', CAST(N'2023-02-02' AS Date), CAST(N'2023-02-04' AS Date), CAST(N'18:00:00' AS Time), CAST(N'00:00:00' AS Time), CAST(320.00 AS Decimal(10, 2)), N'C004', N'A005', N'G012')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00109', CAST(N'2023-02-11' AS Date), CAST(N'2023-02-15' AS Date), CAST(N'13:00:00' AS Time), CAST(N'19:00:00' AS Time), CAST(1850.00 AS Decimal(10, 2)), N'C014', N'A005', N'G010')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00110', CAST(N'2023-02-11' AS Date), CAST(N'2023-02-19' AS Date), CAST(N'15:00:00' AS Time), CAST(N'19:00:00' AS Time), CAST(1670.00 AS Decimal(10, 2)), N'C006', N'A008', N'G001')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00111', CAST(N'2023-02-12' AS Date), CAST(N'2023-02-14' AS Date), CAST(N'15:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(185.00 AS Decimal(10, 2)), N'C012', N'A001', N'G004')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00112', CAST(N'2023-02-19' AS Date), CAST(N'2023-02-24' AS Date), CAST(N'18:00:00' AS Time), CAST(N'22:00:00' AS Time), CAST(410.00 AS Decimal(10, 2)), N'C015', N'A007', N'G011')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00114', CAST(N'2023-02-19' AS Date), CAST(N'2023-02-28' AS Date), CAST(N'12:00:00' AS Time), CAST(N'17:00:00' AS Time), CAST(1550.00 AS Decimal(10, 2)), N'C005', N'A001', N'G002')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00115', CAST(N'2023-02-19' AS Date), CAST(N'2023-02-22' AS Date), CAST(N'12:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(1490.00 AS Decimal(10, 2)), N'C007', N'A005', N'G013')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00116', CAST(N'2023-02-16' AS Date), CAST(N'2023-02-25' AS Date), CAST(N'14:00:00' AS Time), CAST(N'19:00:00' AS Time), CAST(800.00 AS Decimal(10, 2)), N'C003', N'A006', N'G012')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00118', CAST(N'2023-02-18' AS Date), CAST(N'2023-02-18' AS Date), CAST(N'19:00:00' AS Time), CAST(N'00:00:00' AS Time), CAST(350.00 AS Decimal(10, 2)), N'C014', N'A001', N'G010')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00119', CAST(N'2023-02-19' AS Date), CAST(N'2023-02-28' AS Date), CAST(N'18:00:00' AS Time), CAST(N'21:00:00' AS Time), CAST(500.00 AS Decimal(10, 2)), N'C012', N'A002', N'G004')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00120', CAST(N'2023-02-17' AS Date), CAST(N'2023-02-20' AS Date), CAST(N'20:00:00' AS Time), CAST(N'23:00:00' AS Time), CAST(950.00 AS Decimal(10, 2)), N'C002', N'A007', N'G008')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00121', CAST(N'2023-02-16' AS Date), CAST(N'2023-02-22' AS Date), CAST(N'17:00:00' AS Time), CAST(N'23:00:00' AS Time), CAST(2570.00 AS Decimal(10, 2)), N'C004', N'A003', N'G006')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00122', CAST(N'2023-02-24' AS Date), CAST(N'2023-02-27' AS Date), CAST(N'15:00:00' AS Time), CAST(N'19:00:00' AS Time), CAST(1010.00 AS Decimal(10, 2)), N'C014', N'A005', N'G010')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00123', CAST(N'2023-02-25' AS Date), CAST(N'2023-02-28' AS Date), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time), CAST(770.00 AS Decimal(10, 2)), N'C013', N'A001', N'G001')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00124', CAST(N'2023-02-23' AS Date), CAST(N'2023-03-02' AS Date), CAST(N'14:00:00' AS Time), CAST(N'17:00:00' AS Time), CAST(1850.00 AS Decimal(10, 2)), N'C006', N'A001', N'G008')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00125', CAST(N'2023-02-23' AS Date), CAST(N'2023-02-28' AS Date), CAST(N'13:00:00' AS Time), CAST(N'15:00:00' AS Time), CAST(1130.00 AS Decimal(10, 2)), N'C001', N'A003', N'G003')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00126', CAST(N'2023-02-24' AS Date), CAST(N'2023-03-03' AS Date), CAST(N'18:00:00' AS Time), CAST(N'20:00:00' AS Time), CAST(1010.00 AS Decimal(10, 2)), N'C009', N'A006', N'G006')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00127', CAST(N'2023-02-24' AS Date), CAST(N'2023-02-28' AS Date), CAST(N'20:00:00' AS Time), CAST(N'22:00:00' AS Time), CAST(500.00 AS Decimal(10, 2)), N'C010', N'A004', N'G005')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00128', CAST(N'2023-02-26' AS Date), CAST(N'2023-02-28' AS Date), CAST(N'19:00:00' AS Time), CAST(N'01:00:00' AS Time), CAST(320.00 AS Decimal(10, 2)), N'C003', N'A004', N'G011')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00129', CAST(N'2023-02-24' AS Date), CAST(N'2023-03-05' AS Date), CAST(N'17:00:00' AS Time), CAST(N'21:00:00' AS Time), CAST(2450.00 AS Decimal(10, 2)), N'C004', N'A005', N'G013')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDate], [EngEndDate], [EngStartTime], [EngEndTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00131', CAST(N'2023-03-03' AS Date), CAST(N'2023-03-12' AS Date), CAST(N'15:00:00' AS Time), CAST(N'17:00:00' AS Time), CAST(1850.00 AS Decimal(10, 2)), N'C014', N'A001', N'G003')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G001', N'M006')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G001', N'M007')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G001', N'M018')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G002', N'M020')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G002', N'M021')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G003', N'M002')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G003', N'M003')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G003', N'M004')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G003', N'M009')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G003', N'M017')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G003', N'M019')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G004', N'M025')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G005', N'M016')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G005', N'M020')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G005', N'M021')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G006', N'M004')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G006', N'M013')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G006', N'M018')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G006', N'M020')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G007', N'M001')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G007', N'M002')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G007', N'M005')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G007', N'M007')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G007', N'M010')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G008', N'M003')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G008', N'M005')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G008', N'M011')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G008', N'M014')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G008', N'M015')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G009', N'M021')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G010', N'M008')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G010', N'M012')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G010', N'M023')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G010', N'M024')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G011', N'M022')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G012', N'M023')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G013', N'M012')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G013', N'M014')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G013', N'M017')
GO
INSERT [dbo].[GroupMember] ([GroupKey], [MemberKey]) VALUES (N'G013', N'M024')
GO
INSERT [dbo].[Groups] ([GroupKey], [GroupStageName], [GroupSSN], [GroupStreetAddress], [GroupCity], [GroupState], [GroupZip], [GroupPhone], [GroupWebpage], [GroupEmail], [DateEntered]) VALUES (N'G001', N'Carol Peacock Trio                      ', N'888-90-1121', N'4110 Old Redmond Rd.                    ', N'Redmond             ', N'WA', N'98052', N'555-2691', N'www.cptrio.com                ', N'carolp@cptrio.com             ', N'1997-05-24')
GO
INSERT [dbo].[Groups] ([GroupKey], [GroupStageName], [GroupSSN], [GroupStreetAddress], [GroupCity], [GroupState], [GroupZip], [GroupPhone], [GroupWebpage], [GroupEmail], [DateEntered]) VALUES (N'G002', N'Topazz                                  ', N'888-50-1061', N'16 Maple Lane                           ', N'Auburn              ', N'WA', N'98002', N'555-2591', N'www.topazz.com                ', N'No Email                      ', N'1996-02-14')
GO
INSERT [dbo].[Groups] ([GroupKey], [GroupStageName], [GroupSSN], [GroupStreetAddress], [GroupCity], [GroupState], [GroupZip], [GroupPhone], [GroupWebpage], [GroupEmail], [DateEntered]) VALUES (N'G003', N'JV & the Deep Six                       ', N'888-18-1013', N'15127 NE                                ', N'Redmond             ', N'WA', N'98052', N'555-2511', N'www.jvd6.com                  ', N'jv@myspring.com               ', N'1998-03-18')
GO
INSERT [dbo].[Groups] ([GroupKey], [GroupStageName], [GroupSSN], [GroupStreetAddress], [GroupCity], [GroupState], [GroupZip], [GroupPhone], [GroupWebpage], [GroupEmail], [DateEntered]) VALUES (N'G004', N'Jim Glynn                               ', N'888-26-1025', N'13920 S.E. 40th Street                  ', N'Bellevue            ', N'WA', N'98009', N'555-2531', N'No Page                       ', N'No Email                      ', N'1996-04-01')
GO
INSERT [dbo].[Groups] ([GroupKey], [GroupStageName], [GroupSSN], [GroupStreetAddress], [GroupCity], [GroupState], [GroupZip], [GroupPhone], [GroupWebpage], [GroupEmail], [DateEntered]) VALUES (N'G005', N'Jazz Persuasion                         ', N'888-30-1031', N'233 West Valley Hwy                     ', N'Bellevue            ', N'WA', N'98005', N'555-2541', N'www.jazzper.com               ', N'No Email                      ', N'1997-05-12')
GO
INSERT [dbo].[Groups] ([GroupKey], [GroupStageName], [GroupSSN], [GroupStreetAddress], [GroupCity], [GroupState], [GroupZip], [GroupPhone], [GroupWebpage], [GroupEmail], [DateEntered]) VALUES (N'G006', N'Modern Dance                            ', N'888-66-1085', N'Route 2, Box 203B                       ', N'Woodinville         ', N'WA', N'98072', N'555-2631', N'www.moderndance.com           ', N'mikeh@moderndance.com         ', N'1995-05-16')
GO
INSERT [dbo].[Groups] ([GroupKey], [GroupStageName], [GroupSSN], [GroupStreetAddress], [GroupCity], [GroupState], [GroupZip], [GroupPhone], [GroupWebpage], [GroupEmail], [DateEntered]) VALUES (N'G007', N'Coldwater Cattle Company                ', N'888-38-1043', N'4726 - 11th Ave. N.E.                   ', N'Seattle             ', N'WA', N'98105', N'555-2561', N'www.coldwatercows.com         ', N'No Email                      ', N'1995-11-30')
GO
INSERT [dbo].[Groups] ([GroupKey], [GroupStageName], [GroupSSN], [GroupStreetAddress], [GroupCity], [GroupState], [GroupZip], [GroupPhone], [GroupWebpage], [GroupEmail], [DateEntered]) VALUES (N'G008', N'Country Feeling                         ', N'888-98-1133', N'PO Box 223311                           ', N'Seattle             ', N'WA', N'98125', N'555-2711', N'No Page                       ', N'No Email                      ', N'1996-02-28')
GO
INSERT [dbo].[Groups] ([GroupKey], [GroupStageName], [GroupSSN], [GroupStreetAddress], [GroupCity], [GroupState], [GroupZip], [GroupPhone], [GroupWebpage], [GroupEmail], [DateEntered]) VALUES (N'G009', N'Katherine Ehrlich                       ', N'888-61-1103', N'777 Fenexet Blvd                        ', N'Woodinville         ', N'WA', N'98072', N'555-0399', N'No Page                       ', N'ke@mzo.com                    ', N'1998-09-13')
GO
INSERT [dbo].[Groups] ([GroupKey], [GroupStageName], [GroupSSN], [GroupStreetAddress], [GroupCity], [GroupState], [GroupZip], [GroupPhone], [GroupWebpage], [GroupEmail], [DateEntered]) VALUES (N'G010', N'Saturday Revue                          ', N'888-64-1109', N'3887 Easy Street                        ', N'Seattle             ', N'WA', N'98125', N'555-0039', N'www.satrevue.com              ', N'edz@coolness.com              ', N'1995-01-20')
GO
INSERT [dbo].[Groups] ([GroupKey], [GroupStageName], [GroupSSN], [GroupStreetAddress], [GroupCity], [GroupState], [GroupZip], [GroupPhone], [GroupWebpage], [GroupEmail], [DateEntered]) VALUES (N'G011', N'Julia Schnebly                          ', N'888-65-1111', N'2343 Harmony Lane                       ', N'Seattle             ', N'WA', N'99837', N'555-9936', N'No Page                       ', N'No Email                      ', N'1996-04-12')
GO
INSERT [dbo].[Groups] ([GroupKey], [GroupStageName], [GroupSSN], [GroupStreetAddress], [GroupCity], [GroupState], [GroupZip], [GroupPhone], [GroupWebpage], [GroupEmail], [DateEntered]) VALUES (N'G012', N'Susan McLain                            ', N'888-70-1121', N'511 Lenora Ave                          ', N'Bellevue            ', N'WA', N'98006', N'555-2301', N'www.greensleeves.com          ', N'susan@gs.com                  ', N'1998-10-12')
GO
INSERT [dbo].[Groups] ([GroupKey], [GroupStageName], [GroupSSN], [GroupStreetAddress], [GroupCity], [GroupState], [GroupZip], [GroupPhone], [GroupWebpage], [GroupEmail], [DateEntered]) VALUES (N'G013', N'Caroline Coie Cuartet                   ', N'888-71-1123', N'298 Forest Lane                         ', N'Auburn              ', N'WA', N'98002', N'555-2306', N'No Page                       ', N'carolinec@willow.com          ', N'1997-07-11')
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G001', N'S010', N'2')
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G001', N'S020', N'1')
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G001', N'S021', N'3')
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G002', N'S017', N'2')
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G002', N'S019', N'1')
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G002', N'S023', N'3')
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G003', N'S003', N'1')
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G003', N'S008', N'2')
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G004', N'S013', N'1')
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G005', N'S015', N'3')
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G005', N'S019', N'1')
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G005', N'S024', N'2')
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G006', N'S022', N'3')
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G006', N'S023', N'1')
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G006', N'S024', N'2')
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G007', N'S006', N'2')
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G007', N'S011', N'1')
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G008', N'S003', N'2')
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G008', N'S006', N'1')
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G009', N'S007', N'2')
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G009', N'S014', N'1')
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G009', N'S021', N'3')
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G010', N'S004', N'2')
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G010', N'S021', N'3')
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G010', N'S022', N'1')
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G011', N'S007', N'2')
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G011', N'S014', N'1')
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G011', N'S020', N'3')
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G012', N'S007', N'2')
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G012', N'S013', N'1')
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G013', N'S010', N'2')
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G013', N'S015', N'1')
GO
INSERT [dbo].[Members] ([MemberKey], [MembersFirstName], [MembersLastName], [MemberPhoneNumber], [MemberGender]) VALUES (N'M001', N'David                         ', N'Hamilton                      ', N'555-2701', N'M')
GO
INSERT [dbo].[Members] ([MemberKey], [MembersFirstName], [MembersLastName], [MemberPhoneNumber], [MemberGender]) VALUES (N'M002', N'Suzanne                       ', N'Viescas                       ', N'555-2686', N'F')
GO
INSERT [dbo].[Members] ([MemberKey], [MembersFirstName], [MembersLastName], [MemberPhoneNumber], [MemberGender]) VALUES (N'M003', N'Gary                          ', N'Hallmark                      ', N'555-2676', N'M')
GO
INSERT [dbo].[Members] ([MemberKey], [MembersFirstName], [MembersLastName], [MemberPhoneNumber], [MemberGender]) VALUES (N'M004', N'Jeffrey                       ', N'Smith                         ', N'555-2596', N'M')
GO
INSERT [dbo].[Members] ([MemberKey], [MembersFirstName], [MembersLastName], [MemberPhoneNumber], [MemberGender]) VALUES (N'M005', N'Robert                        ', N'Brown                         ', N'555-2491', N'M')
GO
INSERT [dbo].[Members] ([MemberKey], [MembersFirstName], [MembersLastName], [MemberPhoneNumber], [MemberGender]) VALUES (N'M006', N'Mariya                        ', N'Sergienko                     ', N'555-2526', N'F')
GO
INSERT [dbo].[Members] ([MemberKey], [MembersFirstName], [MembersLastName], [MemberPhoneNumber], [MemberGender]) VALUES (N'M007', N'Sara                          ', N'Sheskey                       ', N'555-2566', N'F')
GO
INSERT [dbo].[Members] ([MemberKey], [MembersFirstName], [MembersLastName], [MemberPhoneNumber], [MemberGender]) VALUES (N'M008', N'Rachel                        ', N'Patterson                     ', N'555-2546', N'F')
GO
INSERT [dbo].[Members] ([MemberKey], [MembersFirstName], [MembersLastName], [MemberPhoneNumber], [MemberGender]) VALUES (N'M009', N'David                         ', N'Viescas                       ', N'555-2661', N'M')
GO
INSERT [dbo].[Members] ([MemberKey], [MembersFirstName], [MembersLastName], [MemberPhoneNumber], [MemberGender]) VALUES (N'M010', N'Manuela                       ', N'Seidel                        ', N'555-2641', N'F')
GO
INSERT [dbo].[Members] ([MemberKey], [MembersFirstName], [MembersLastName], [MemberPhoneNumber], [MemberGender]) VALUES (N'M011', N'Kathryn                       ', N'Patterson                     ', N'555-2651', N'F')
GO
INSERT [dbo].[Members] ([MemberKey], [MembersFirstName], [MembersLastName], [MemberPhoneNumber], [MemberGender]) VALUES (N'M012', N'Kendra                        ', N'Bonnicksen                    ', N'555-2716', N'F')
GO
INSERT [dbo].[Members] ([MemberKey], [MembersFirstName], [MembersLastName], [MemberPhoneNumber], [MemberGender]) VALUES (N'M013', N'Steve                         ', N'Pundt                         ', N'555-9938', N'M')
GO
INSERT [dbo].[Members] ([MemberKey], [MembersFirstName], [MembersLastName], [MemberPhoneNumber], [MemberGender]) VALUES (N'M014', N'George                        ', N'Chavez                        ', N'555-9930', N'M')
GO
INSERT [dbo].[Members] ([MemberKey], [MembersFirstName], [MembersLastName], [MemberPhoneNumber], [MemberGender]) VALUES (N'M015', N'Joe                           ', N'Rosales                       ', N'555-2281', N'M')
GO
INSERT [dbo].[Members] ([MemberKey], [MembersFirstName], [MembersLastName], [MemberPhoneNumber], [MemberGender]) VALUES (N'M016', N'Angel                         ', N'Kennedy                       ', N'555-2311', N'M')
GO
INSERT [dbo].[Members] ([MemberKey], [MembersFirstName], [MembersLastName], [MemberPhoneNumber], [MemberGender]) VALUES (N'M017', N'Luke                          ', N'Patterson                     ', N'555-2316', N'M')
GO
INSERT [dbo].[Members] ([MemberKey], [MembersFirstName], [MembersLastName], [MemberPhoneNumber], [MemberGender]) VALUES (N'M018', N'Janice                        ', N'Galvin                        ', N'555-2691', N'F')
GO
INSERT [dbo].[Members] ([MemberKey], [MembersFirstName], [MembersLastName], [MemberPhoneNumber], [MemberGender]) VALUES (N'M019', N'John                          ', N'Viescas                       ', N'555-2511', N'M')
GO
INSERT [dbo].[Members] ([MemberKey], [MembersFirstName], [MembersLastName], [MemberPhoneNumber], [MemberGender]) VALUES (N'M020', N'Michael                       ', N'Hernandez                     ', N'555-2711', N'M')
GO
INSERT [dbo].[Members] ([MemberKey], [MembersFirstName], [MembersLastName], [MemberPhoneNumber], [MemberGender]) VALUES (N'M021', N'Katherine                     ', N'Ehrlich                       ', N'555-0399', N'F')
GO
INSERT [dbo].[Members] ([MemberKey], [MembersFirstName], [MembersLastName], [MemberPhoneNumber], [MemberGender]) VALUES (N'M022', N'Julia                         ', N'Schnebly                      ', N'555-9936', N'F')
GO
INSERT [dbo].[Members] ([MemberKey], [MembersFirstName], [MembersLastName], [MemberPhoneNumber], [MemberGender]) VALUES (N'M023', N'Susan                         ', N'McLain                        ', N'555-2301', N'F')
GO
INSERT [dbo].[Members] ([MemberKey], [MembersFirstName], [MembersLastName], [MemberPhoneNumber], [MemberGender]) VALUES (N'M024', N'Caroline                      ', N'Coie                          ', N'555-2306', N'F')
GO
INSERT [dbo].[Members] ([MemberKey], [MembersFirstName], [MembersLastName], [MemberPhoneNumber], [MemberGender]) VALUES (N'M025', N'Jim                           ', N'Glynn                         ', N'555-2531', N'M')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S001', N'40''s Ballroom Music           ')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S002', N'50''s Music                    ')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S003', N'60''s Music                    ')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S004', N'70''s Music                    ')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S005', N'80''s Music                    ')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S006', N'Country                       ')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S007', N'Classical                     ')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S008', N'Classic Rock & Roll           ')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S009', N'Rap                           ')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S010', N'Contemporary                  ')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S011', N'Country Rock                  ')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S012', N'Elvis                         ')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S013', N'Folk                          ')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S014', N'Chamber Music                 ')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S015', N'Jazz                          ')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S016', N'Karaoke                       ')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S017', N'Motown                        ')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S018', N'Modern Rock                   ')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S019', N'Rhythm and Blues              ')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S020', N'Show Tunes                    ')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S021', N'Standards                     ')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S022', N'Top 40 Hits                   ')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S023', N'Variety                       ')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S024', N'Salsa                         ')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S025', N'90''s Music                    ')
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
