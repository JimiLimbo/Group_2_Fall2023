USE [HighbrowEntertainment]
GO
/****** Object:  Table [dbo].[Agents]    Script Date: 9/20/2023 1:41:25 PM ******/
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
	[AgentSalary] [decimal](9, 2) NULL,
	[AgentCommissionRate] [decimal](4, 3) NULL,
 CONSTRAINT [PK_AuthorKey] PRIMARY KEY CLUSTERED 
(
	[AgentKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Agents] ([AgentKey], [AgentFirstName], [AgentLastName], [AgentAddress], [AgentCity], [AgentState], [AgentZip], [AgentPhone], [AgentSalary], [AgentCommissionRate]) VALUES (N'A001', N'William                            ', N'Thompson                           ', N'122 Spring River Drive             ', N'Redmond                            ', N'WA', N'98053', N'555-2681       ', CAST(45000.00 AS Decimal(9, 2)), CAST(0.040 AS Decimal(4, 3)))
GO
INSERT [dbo].[Agents] ([AgentKey], [AgentFirstName], [AgentLastName], [AgentAddress], [AgentCity], [AgentState], [AgentZip], [AgentPhone], [AgentSalary], [AgentCommissionRate]) VALUES (N'A002', N'Scott                              ', N'Bishop                             ', N'66 Spring Valley Drive             ', N'Seattle                            ', N'WA', N'98125', N'555-2666       ', CAST(37000.00 AS Decimal(9, 2)), CAST(0.040 AS Decimal(4, 3)))
GO
INSERT [dbo].[Agents] ([AgentKey], [AgentFirstName], [AgentLastName], [AgentAddress], [AgentCity], [AgentState], [AgentZip], [AgentPhone], [AgentSalary], [AgentCommissionRate]) VALUES (N'A003', N'Carol                              ', N'Viescas                            ', N'667 Red River Road                 ', N'Bellevue                           ', N'WA', N'98006', N'555-2571       ', CAST(40000.00 AS Decimal(9, 2)), CAST(0.050 AS Decimal(4, 3)))
GO
INSERT [dbo].[Agents] ([AgentKey], [AgentFirstName], [AgentLastName], [AgentAddress], [AgentCity], [AgentState], [AgentZip], [AgentPhone], [AgentSalary], [AgentCommissionRate]) VALUES (N'A004', N'Karen                              ', N'Smith                              ', N'30301 166th Ave. N.E.              ', N'Seattle                            ', N'WA', N'98125', N'555-2551       ', CAST(32000.00 AS Decimal(9, 2)), CAST(0.055 AS Decimal(4, 3)))
GO
INSERT [dbo].[Agents] ([AgentKey], [AgentFirstName], [AgentLastName], [AgentAddress], [AgentCity], [AgentState], [AgentZip], [AgentPhone], [AgentSalary], [AgentCommissionRate]) VALUES (N'A005', N'Marianne                           ', N'Wier                               ', N'908 W. Capital Way                 ', N'Tacoma                             ', N'WA', N'98413', N'555-2606       ', CAST(34500.00 AS Decimal(9, 2)), CAST(0.045 AS Decimal(4, 3)))
GO
INSERT [dbo].[Agents] ([AgentKey], [AgentFirstName], [AgentLastName], [AgentAddress], [AgentCity], [AgentState], [AgentZip], [AgentPhone], [AgentSalary], [AgentCommissionRate]) VALUES (N'A006', N'John                               ', N'Kennedy                            ', N'16679 NE 41st Court                ', N'Seattle                            ', N'WA', N'98125', N'555-2621       ', CAST(43000.00 AS Decimal(9, 2)), CAST(0.060 AS Decimal(4, 3)))
GO
INSERT [dbo].[Agents] ([AgentKey], [AgentFirstName], [AgentLastName], [AgentAddress], [AgentCity], [AgentState], [AgentZip], [AgentPhone], [AgentSalary], [AgentCommissionRate]) VALUES (N'A007', N'Caleb                              ', N'Viescas                            ', N'4501 Wetland Road                  ', N'Redmond                            ', N'WA', N'98052', N'555-0037       ', CAST(32100.00 AS Decimal(9, 2)), CAST(0.035 AS Decimal(4, 3)))
GO
INSERT [dbo].[Agents] ([AgentKey], [AgentFirstName], [AgentLastName], [AgentAddress], [AgentCity], [AgentState], [AgentZip], [AgentPhone], [AgentSalary], [AgentCommissionRate]) VALUES (N'A008', N'Maria                              ', N'Patterson                          ', N'3445 Cheyenne Road                 ', N'Bellevue                           ', N'WA', N'98006', N'555-2291       ', CAST(40000.00 AS Decimal(9, 2)), CAST(0.040 AS Decimal(4, 3)))
GO
INSERT [dbo].[Agents] ([AgentKey], [AgentFirstName], [AgentLastName], [AgentAddress], [AgentCity], [AgentState], [AgentZip], [AgentPhone], [AgentSalary], [AgentCommissionRate]) VALUES (N'A009', N'Darryl                             ', N'Mars                               ', N'1234 Main Street                   ', N'Kirkland                           ', N'WA', N'98033', N'555-1234       ', CAST(50.00 AS Decimal(9, 2)), CAST(0.010 AS Decimal(4, 3)))
GO
