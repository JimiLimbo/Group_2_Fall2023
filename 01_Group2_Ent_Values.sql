USE [HighbrowEntertainment]
GO
INSERT [dbo].[Agents] ([AgentKey], [AgentFirstName], [AgentLastName], [AgentStreetAddress], [AgentCity], [AgentState], [AgentZip], [AgentPhone], [AgentDateHired], [AgentSalary], [AgentCommissionRate]) VALUES (N'A001', N'William', N'Thompson', N'122 Spring River Drive', N'Redmond', N'WA', N'98053', N'253-555-2681', CAST(N'2018-05-10' AS Date), CAST(45000.0000 AS Decimal(14, 4)), CAST(0.0400 AS Decimal(14, 4)))
GO
INSERT [dbo].[Agents] ([AgentKey], [AgentFirstName], [AgentLastName], [AgentStreetAddress], [AgentCity], [AgentState], [AgentZip], [AgentPhone], [AgentDateHired], [AgentSalary], [AgentCommissionRate]) VALUES (N'A002', N'Scott', N'Bishop', N'66 Spring Valley Drive', N'Seattle', N'WA', N'98125', N'253-555-2666', CAST(N'2019-01-31' AS Date), CAST(37000.0000 AS Decimal(14, 4)), CAST(0.0400 AS Decimal(14, 4)))
GO
INSERT [dbo].[Agents] ([AgentKey], [AgentFirstName], [AgentLastName], [AgentStreetAddress], [AgentCity], [AgentState], [AgentZip], [AgentPhone], [AgentDateHired], [AgentSalary], [AgentCommissionRate]) VALUES (N'A003', N'Carol', N'Viescas', N'667 Red River Road', N'Bellevue', N'WA', N'98006', N'253-555-2571', CAST(N'2018-11-14' AS Date), CAST(40000.0000 AS Decimal(14, 4)), CAST(0.0500 AS Decimal(14, 4)))
GO
INSERT [dbo].[Agents] ([AgentKey], [AgentFirstName], [AgentLastName], [AgentStreetAddress], [AgentCity], [AgentState], [AgentZip], [AgentPhone], [AgentDateHired], [AgentSalary], [AgentCommissionRate]) VALUES (N'A004', N'Karen', N'Smith', N'30301 166th Ave. N.E.', N'Seattle', N'WA', N'98125', N'253-555-2551', CAST(N'2019-02-28' AS Date), CAST(32000.0000 AS Decimal(14, 4)), CAST(0.0550 AS Decimal(14, 4)))
GO
INSERT [dbo].[Agents] ([AgentKey], [AgentFirstName], [AgentLastName], [AgentStreetAddress], [AgentCity], [AgentState], [AgentZip], [AgentPhone], [AgentDateHired], [AgentSalary], [AgentCommissionRate]) VALUES (N'A005', N'Marianne', N'Wier', N'908 W. Capital Way', N'Tacoma', N'WA', N'98413', N'253-555-2606', CAST(N'2019-01-28' AS Date), CAST(34500.0000 AS Decimal(14, 4)), CAST(0.0450 AS Decimal(14, 4)))
GO
INSERT [dbo].[Agents] ([AgentKey], [AgentFirstName], [AgentLastName], [AgentStreetAddress], [AgentCity], [AgentState], [AgentZip], [AgentPhone], [AgentDateHired], [AgentSalary], [AgentCommissionRate]) VALUES (N'A006', N'John', N'Kennedy', N'16679 NE 41st Court', N'Seattle', N'WA', N'98125', N'253-555-2621', CAST(N'2018-05-10' AS Date), CAST(43000.0000 AS Decimal(14, 4)), CAST(0.0600 AS Decimal(14, 4)))
GO
INSERT [dbo].[Agents] ([AgentKey], [AgentFirstName], [AgentLastName], [AgentStreetAddress], [AgentCity], [AgentState], [AgentZip], [AgentPhone], [AgentDateHired], [AgentSalary], [AgentCommissionRate]) VALUES (N'A007', N'Caleb', N'Viescas', N'4501 Wetland Road', N'Redmond', N'WA', N'98052', N'253-555-0037', CAST(N'2019-02-11' AS Date), CAST(32100.0000 AS Decimal(14, 4)), CAST(0.0350 AS Decimal(14, 4)))
GO
INSERT [dbo].[Agents] ([AgentKey], [AgentFirstName], [AgentLastName], [AgentStreetAddress], [AgentCity], [AgentState], [AgentZip], [AgentPhone], [AgentDateHired], [AgentSalary], [AgentCommissionRate]) VALUES (N'A008', N'Maria', N'Patterson', N'3445 Cheyenne Road', N'Bellevue', N'WA', N'98006', N'253-555-2291', CAST(N'2018-08-29' AS Date), CAST(40000.0000 AS Decimal(14, 4)), CAST(0.0400 AS Decimal(14, 4)))
GO
INSERT [dbo].[Agents] ([AgentKey], [AgentFirstName], [AgentLastName], [AgentStreetAddress], [AgentCity], [AgentState], [AgentZip], [AgentPhone], [AgentDateHired], [AgentSalary], [AgentCommissionRate]) VALUES (N'A009', N'Darryl', N'Mars', N'1234 Main Street', N'Kirkland', N'WA', N'98033', N'253-555-1234', CAST(N'2021-01-30' AS Date), CAST(50.0000 AS Decimal(14, 4)), CAST(0.0100 AS Decimal(14, 4)))
GO
INSERT [dbo].[Customers] ([CustomerKey], [CustFirstName], [CustLastName], [CustStreetAddress], [CustCity], [CustState], [CustZip]) VALUES (N'C001', N'Doris', N'Hartwig', N'4726 11th Ave. N.E.', N'Seattle', N'WA', N'98105')
GO
INSERT [dbo].[Customers] ([CustomerKey], [CustFirstName], [CustLastName], [CustStreetAddress], [CustCity], [CustState], [CustZip]) VALUES (N'C002', N'Deb', N'Waldal', N'908 W. Capital Way', N'Tacoma', N'WA', N'98413')
GO
INSERT [dbo].[Customers] ([CustomerKey], [CustFirstName], [CustLastName], [CustStreetAddress], [CustCity], [CustState], [CustZip]) VALUES (N'C003', N'Peter', N'Brehm', N'722 Moss Bay Blvd.', N'Kirkland', N'WA', N'98033')
GO
INSERT [dbo].[Customers] ([CustomerKey], [CustFirstName], [CustLastName], [CustStreetAddress], [CustCity], [CustState], [CustZip]) VALUES (N'C004', N'Dean', N'McCrae', N'4110 Old Redmond Rd.', N'Redmond', N'WA', N'98052')
GO
INSERT [dbo].[Customers] ([CustomerKey], [CustFirstName], [CustLastName], [CustStreetAddress], [CustCity], [CustState], [CustZip]) VALUES (N'C005', N'Elizabeth', N'Hallmark', N'Route 2, Box 203B', N'Auburn', N'WA', N'98002')
GO
INSERT [dbo].[Customers] ([CustomerKey], [CustFirstName], [CustLastName], [CustStreetAddress], [CustCity], [CustState], [CustZip]) VALUES (N'C006', N'Matt', N'Berg', N'908 W. Capital Way', N'Tacoma', N'WA', N'98413')
GO
INSERT [dbo].[Customers] ([CustomerKey], [CustFirstName], [CustLastName], [CustStreetAddress], [CustCity], [CustState], [CustZip]) VALUES (N'C007', N'Liz', N'Keyser', N'13920 S.E. 40th Street', N'Bellevue', N'WA', N'98006')
GO
INSERT [dbo].[Customers] ([CustomerKey], [CustFirstName], [CustLastName], [CustStreetAddress], [CustCity], [CustState], [CustZip]) VALUES (N'C008', N'Darren', N'Gehring', N'2601 Seaview Lane', N'Kirkland', N'WA', N'98033')
GO
INSERT [dbo].[Customers] ([CustomerKey], [CustFirstName], [CustLastName], [CustStreetAddress], [CustCity], [CustState], [CustZip]) VALUES (N'C009', N'Sarah', N'Thompson', N'2222 Springer Road', N'Bellevue', N'WA', N'98006')
GO
INSERT [dbo].[Customers] ([CustomerKey], [CustFirstName], [CustLastName], [CustStreetAddress], [CustCity], [CustState], [CustZip]) VALUES (N'C010', N'Zachary', N'Ehrlich', N'12330 Kingman Drive', N'Kirkland', N'WA', N'98033')
GO
INSERT [dbo].[Customers] ([CustomerKey], [CustFirstName], [CustLastName], [CustStreetAddress], [CustCity], [CustState], [CustZip]) VALUES (N'C011', N'Joyce', N'Bonnicksen', N'2424 Thames Drive', N'Bellevue', N'WA', N'98006')
GO
INSERT [dbo].[Customers] ([CustomerKey], [CustFirstName], [CustLastName], [CustStreetAddress], [CustCity], [CustState], [CustZip]) VALUES (N'C012', N'Kerry', N'Patterson', N'777 Fenexet Blvd', N'Redmond', N'WA', N'98052')
GO
INSERT [dbo].[Customers] ([CustomerKey], [CustFirstName], [CustLastName], [CustStreetAddress], [CustCity], [CustState], [CustZip]) VALUES (N'C013', N'Estella', N'Pundt', N'2500 Rosales Lane', N'Bellevue', N'WA', N'98006')
GO
INSERT [dbo].[Customers] ([CustomerKey], [CustFirstName], [CustLastName], [CustStreetAddress], [CustCity], [CustState], [CustZip]) VALUES (N'C014', N'Mark', N'Rosales', N'323 Advocate Lane', N'Bellevue', N'WA', N'98006')
GO
INSERT [dbo].[Customers] ([CustomerKey], [CustFirstName], [CustLastName], [CustStreetAddress], [CustCity], [CustState], [CustZip]) VALUES (N'C015', N'Carol', N'Viescas', N'754 Fourth Ave', N'Seattle', N'WA', N'98115')
GO
INSERT [dbo].[Groups] ([GroupKey], [GroupStageName], [GroupTIN], [GroupStreetAddress], [GroupCity], [GroupState], [GroupZip], [GroupPhone], [GroupWebpage], [GroupEmail]) VALUES (N'G001', N'Carol Peacock Trio', N'01-888-90-1121', N'4110 Old Redmond Rd.', N'Redmond', N'WA', N'98052', N'253-555-2691', N'www.cptrio.com', N'carolp@cptrio.com')
GO
INSERT [dbo].[Groups] ([GroupKey], [GroupStageName], [GroupTIN], [GroupStreetAddress], [GroupCity], [GroupState], [GroupZip], [GroupPhone], [GroupWebpage], [GroupEmail]) VALUES (N'G002', N'Topazz', N'01-888-50-1061', N'16 Maple Lane', N'Auburn', N'WA', N'98002', N'253-555-2591', N'www.topazz.com', NULL)
GO
INSERT [dbo].[Groups] ([GroupKey], [GroupStageName], [GroupTIN], [GroupStreetAddress], [GroupCity], [GroupState], [GroupZip], [GroupPhone], [GroupWebpage], [GroupEmail]) VALUES (N'G003', N'JV & the Deep Six', N'01-888-18-1013', N'15127 NE', N'Redmond', N'WA', N'98052', N'253-555-2511', N'www.jvd6.com', N'jv@myspring.com')
GO
INSERT [dbo].[Groups] ([GroupKey], [GroupStageName], [GroupTIN], [GroupStreetAddress], [GroupCity], [GroupState], [GroupZip], [GroupPhone], [GroupWebpage], [GroupEmail]) VALUES (N'G004', N'Jim Glynn', N'01-888-26-1025', N'13920 S.E. 40th Street', N'Bellevue', N'WA', N'98009', N'253-555-2531', NULL, NULL)
GO
INSERT [dbo].[Groups] ([GroupKey], [GroupStageName], [GroupTIN], [GroupStreetAddress], [GroupCity], [GroupState], [GroupZip], [GroupPhone], [GroupWebpage], [GroupEmail]) VALUES (N'G005', N'Jazz Persuasion', N'01-888-30-1031', N'233 West Valley Hwy', N'Bellevue', N'WA', N'98005', N'253-555-2541', N'www.jazzper.com', NULL)
GO
INSERT [dbo].[Groups] ([GroupKey], [GroupStageName], [GroupTIN], [GroupStreetAddress], [GroupCity], [GroupState], [GroupZip], [GroupPhone], [GroupWebpage], [GroupEmail]) VALUES (N'G006', N'Modern Dance', N'01-888-66-1085', N'Route 2, Box 203B', N'Woodinville', N'WA', N'98072', N'253-555-2631', N'www.moderndance.com', N'mikeh@moderndance.com')
GO
INSERT [dbo].[Groups] ([GroupKey], [GroupStageName], [GroupTIN], [GroupStreetAddress], [GroupCity], [GroupState], [GroupZip], [GroupPhone], [GroupWebpage], [GroupEmail]) VALUES (N'G007', N'Coldwater Cattle Company', N'01-888-38-1043', N'4726 - 11th Ave. N.E.', N'Seattle', N'WA', N'98105', N'253-555-2561', N'www.coldwatercows.com', NULL)
GO
INSERT [dbo].[Groups] ([GroupKey], [GroupStageName], [GroupTIN], [GroupStreetAddress], [GroupCity], [GroupState], [GroupZip], [GroupPhone], [GroupWebpage], [GroupEmail]) VALUES (N'G008', N'Country Feeling', N'01-888-98-1133', N'PO Box 223311', N'Seattle', N'WA', N'98125', N'253-555-2711', NULL, NULL)
GO
INSERT [dbo].[Groups] ([GroupKey], [GroupStageName], [GroupTIN], [GroupStreetAddress], [GroupCity], [GroupState], [GroupZip], [GroupPhone], [GroupWebpage], [GroupEmail]) VALUES (N'G009', N'Katherine Ehrlich', N'01-888-61-1103', N'777 Fenexet Blvd', N'Woodinville', N'WA', N'98072', N'253-555-0399', NULL, N'ke@mzo.com')
GO
INSERT [dbo].[Groups] ([GroupKey], [GroupStageName], [GroupTIN], [GroupStreetAddress], [GroupCity], [GroupState], [GroupZip], [GroupPhone], [GroupWebpage], [GroupEmail]) VALUES (N'G010', N'Saturday Revue', N'01-888-64-1109', N'3887 Easy Street', N'Seattle', N'WA', N'98125', N'253-555-0039', N'www.satrevue.com', N'edz@coolness.com')
GO
INSERT [dbo].[Groups] ([GroupKey], [GroupStageName], [GroupTIN], [GroupStreetAddress], [GroupCity], [GroupState], [GroupZip], [GroupPhone], [GroupWebpage], [GroupEmail]) VALUES (N'G011', N'Julia Schnebly', N'01-888-65-1111', N'2343 Harmony Lane', N'Seattle', N'WA', N'99837', N'253-555-9936', NULL, NULL)
GO
INSERT [dbo].[Groups] ([GroupKey], [GroupStageName], [GroupTIN], [GroupStreetAddress], [GroupCity], [GroupState], [GroupZip], [GroupPhone], [GroupWebpage], [GroupEmail]) VALUES (N'G012', N'Susan McLain', N'01-888-70-1121', N'511 Lenora Ave', N'Bellevue', N'WA', N'98006', N'253-555-2301', N'www.greensleeves.com', N'susan@gs.com')
GO
INSERT [dbo].[Groups] ([GroupKey], [GroupStageName], [GroupTIN], [GroupStreetAddress], [GroupCity], [GroupState], [GroupZip], [GroupPhone], [GroupWebpage], [GroupEmail]) VALUES (N'G013', N'Caroline Coie Cuartet', N'01-888-71-1123', N'298 Forest Lane', N'Auburn', N'WA', N'98002', N'253-555-2306', NULL, N'carolinec@willow.com')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00001', CAST(N'2022-09-01T13:00:00.000' AS DateTime), CAST(N'2022-09-05T15:00:00.000' AS DateTime), CAST(200.0000 AS Decimal(14, 4)), N'C006', N'A004', N'G004')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00002', CAST(N'2022-09-10T13:00:00.000' AS DateTime), CAST(N'2022-09-15T15:00:00.000' AS DateTime), CAST(590.0000 AS Decimal(14, 4)), N'C001', N'A003', N'G005')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00003', CAST(N'2022-09-11T20:00:00.000' AS DateTime), CAST(N'2022-09-17T00:00:00.000' AS DateTime), CAST(470.0000 AS Decimal(14, 4)), N'C007', N'A003', N'G004')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00004', CAST(N'2022-09-11T16:00:00.000' AS DateTime), CAST(N'2022-09-14T19:00:00.000' AS DateTime), CAST(1130.0000 AS Decimal(14, 4)), N'C006', N'A005', N'G003')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00005', CAST(N'2022-09-10T15:00:00.000' AS DateTime), CAST(N'2022-09-14T21:00:00.000' AS DateTime), CAST(2300.0000 AS Decimal(14, 4)), N'C014', N'A007', N'G008')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00006', CAST(N'2022-09-11T17:00:00.000' AS DateTime), CAST(N'2022-09-18T20:00:00.000' AS DateTime), CAST(770.0000 AS Decimal(14, 4)), N'C004', N'A004', N'G002')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00007', CAST(N'2022-09-18T20:00:00.000' AS DateTime), CAST(N'2022-09-25T23:00:00.000' AS DateTime), CAST(1850.0000 AS Decimal(14, 4)), N'C006', N'A003', N'G007')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00008', CAST(N'2022-09-18T19:00:00.000' AS DateTime), CAST(N'2022-09-28T21:00:00.000' AS DateTime), CAST(1370.0000 AS Decimal(14, 4)), N'C010', N'A002', N'G010')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00009', CAST(N'2022-09-17T13:00:00.000' AS DateTime), CAST(N'2022-09-26T17:00:00.000' AS DateTime), CAST(3650.0000 AS Decimal(14, 4)), N'C005', N'A003', N'G003')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00010', CAST(N'2022-09-15T18:00:00.000' AS DateTime), CAST(N'2022-09-17T00:00:00.000' AS DateTime), CAST(950.0000 AS Decimal(14, 4)), N'C005', N'A004', N'G008')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00011', CAST(N'2022-09-18T18:00:00.000' AS DateTime), CAST(N'2022-09-26T22:00:00.000' AS DateTime), CAST(1670.0000 AS Decimal(14, 4)), N'C014', N'A008', N'G001')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00012', CAST(N'2022-09-17T20:00:00.000' AS DateTime), CAST(N'2022-09-20T23:00:00.000' AS DateTime), CAST(770.0000 AS Decimal(14, 4)), N'C003', N'A001', N'G006')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00013', CAST(N'2022-09-24T16:00:00.000' AS DateTime), CAST(N'2022-09-29T22:00:00.000' AS DateTime), CAST(2750.0000 AS Decimal(14, 4)), N'C001', N'A001', N'G008')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00014', CAST(N'2022-09-24T17:00:00.000' AS DateTime), CAST(N'2022-09-29T19:00:00.000' AS DateTime), CAST(770.0000 AS Decimal(14, 4)), N'C007', N'A001', N'G013')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00015', CAST(N'2022-10-02T20:00:00.000' AS DateTime), CAST(N'2022-10-06T01:00:00.000' AS DateTime), CAST(1550.0000 AS Decimal(14, 4)), N'C010', N'A005', N'G013')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00016', CAST(N'2022-09-29T18:00:00.000' AS DateTime), CAST(N'2022-10-02T20:00:00.000' AS DateTime), CAST(530.0000 AS Decimal(14, 4)), N'C002', N'A008', N'G010')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00017', CAST(N'2022-09-29T20:00:00.000' AS DateTime), CAST(N'2022-10-05T23:00:00.000' AS DateTime), CAST(365.0000 AS Decimal(14, 4)), N'C009', N'A008', N'G004')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00018', CAST(N'2022-09-30T12:00:00.000' AS DateTime), CAST(N'2022-10-03T16:00:00.000' AS DateTime), CAST(1490.0000 AS Decimal(14, 4)), N'C005', N'A001', N'G003')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00019', CAST(N'2022-09-30T12:00:00.000' AS DateTime), CAST(N'2022-10-05T15:00:00.000' AS DateTime), CAST(590.0000 AS Decimal(14, 4)), N'C004', N'A005', N'G002')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00020', CAST(N'2022-09-30T20:00:00.000' AS DateTime), CAST(N'2022-10-01T00:00:00.000' AS DateTime), CAST(290.0000 AS Decimal(14, 4)), N'C012', N'A004', N'G013')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00021', CAST(N'2022-10-01T12:00:00.000' AS DateTime), CAST(N'2022-10-07T18:00:00.000' AS DateTime), CAST(1940.0000 AS Decimal(14, 4)), N'C001', N'A004', N'G001')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00022', CAST(N'2022-10-09T17:00:00.000' AS DateTime), CAST(N'2022-10-14T22:00:00.000' AS DateTime), CAST(950.0000 AS Decimal(14, 4)), N'C001', N'A006', N'G002')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00023', CAST(N'2022-10-07T12:00:00.000' AS DateTime), CAST(N'2022-10-12T16:00:00.000' AS DateTime), CAST(2210.0000 AS Decimal(14, 4)), N'C015', N'A007', N'G003')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00024', CAST(N'2022-10-06T17:00:00.000' AS DateTime), CAST(N'2022-10-15T22:00:00.000' AS DateTime), CAST(3800.0000 AS Decimal(14, 4)), N'C003', N'A004', N'G007')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00025', CAST(N'2022-10-06T17:00:00.000' AS DateTime), CAST(N'2022-10-08T22:00:00.000' AS DateTime), CAST(275.0000 AS Decimal(14, 4)), N'C009', N'A005', N'G011')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00026', CAST(N'2022-10-07T16:00:00.000' AS DateTime), CAST(N'2022-10-16T20:00:00.000' AS DateTime), CAST(2450.0000 AS Decimal(14, 4)), N'C002', N'A008', N'G010')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00027', CAST(N'2022-10-07T13:00:00.000' AS DateTime), CAST(N'2022-10-16T15:00:00.000' AS DateTime), CAST(1250.0000 AS Decimal(14, 4)), N'C010', N'A007', N'G013')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00028', CAST(N'2022-10-14T16:00:00.000' AS DateTime), CAST(N'2022-10-20T18:00:00.000' AS DateTime), CAST(680.0000 AS Decimal(14, 4)), N'C004', N'A008', N'G005')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00029', CAST(N'2022-10-14T19:00:00.000' AS DateTime), CAST(N'2022-10-15T23:00:00.000' AS DateTime), CAST(410.0000 AS Decimal(14, 4)), N'C005', N'A008', N'G001')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00030', CAST(N'2022-10-13T18:00:00.000' AS DateTime), CAST(N'2022-10-23T22:00:00.000' AS DateTime), CAST(710.0000 AS Decimal(14, 4)), N'C014', N'A003', N'G011')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00031', CAST(N'2022-10-13T14:00:00.000' AS DateTime), CAST(N'2022-10-19T19:00:00.000' AS DateTime), CAST(2675.0000 AS Decimal(14, 4)), N'C006', N'A003', N'G008')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00032', CAST(N'2022-10-14T14:00:00.000' AS DateTime), CAST(N'2022-10-18T20:00:00.000' AS DateTime), CAST(1850.0000 AS Decimal(14, 4)), N'C013', N'A004', N'G006')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00033', CAST(N'2022-10-20T18:00:00.000' AS DateTime), CAST(N'2022-10-28T21:00:00.000' AS DateTime), CAST(860.0000 AS Decimal(14, 4)), N'C013', N'A003', N'G002')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00034', CAST(N'2022-10-20T17:00:00.000' AS DateTime), CAST(N'2022-10-26T22:00:00.000' AS DateTime), CAST(2150.0000 AS Decimal(14, 4)), N'C002', N'A001', N'G013')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00035', CAST(N'2022-10-21T14:00:00.000' AS DateTime), CAST(N'2022-10-21T16:00:00.000' AS DateTime), CAST(140.0000 AS Decimal(14, 4)), N'C001', N'A008', N'G001')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00036', CAST(N'2022-10-22T14:00:00.000' AS DateTime), CAST(N'2022-10-26T19:00:00.000' AS DateTime), CAST(1925.0000 AS Decimal(14, 4)), N'C006', N'A003', N'G008')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00037', CAST(N'2022-10-21T14:00:00.000' AS DateTime), CAST(N'2022-10-28T18:00:00.000' AS DateTime), CAST(530.0000 AS Decimal(14, 4)), N'C015', N'A001', N'G012')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00038', CAST(N'2022-10-28T15:00:00.000' AS DateTime), CAST(N'2022-11-05T17:00:00.000' AS DateTime), CAST(1400.0000 AS Decimal(14, 4)), N'C009', N'A004', N'G008')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00039', CAST(N'2022-11-05T16:00:00.000' AS DateTime), CAST(N'2022-11-06T22:00:00.000' AS DateTime), CAST(950.0000 AS Decimal(14, 4)), N'C002', N'A001', N'G007')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00040', CAST(N'2022-11-13T12:00:00.000' AS DateTime), CAST(N'2022-11-19T14:00:00.000' AS DateTime), CAST(680.0000 AS Decimal(14, 4)), N'C014', N'A005', N'G001')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00041', CAST(N'2022-11-13T20:00:00.000' AS DateTime), CAST(N'2022-11-14T01:00:00.000' AS DateTime), CAST(650.0000 AS Decimal(14, 4)), N'C013', N'A003', N'G013')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00042', CAST(N'2022-11-13T16:00:00.000' AS DateTime), CAST(N'2022-11-14T21:00:00.000' AS DateTime), CAST(650.0000 AS Decimal(14, 4)), N'C010', N'A003', N'G006')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00043', CAST(N'2022-11-11T17:00:00.000' AS DateTime), CAST(N'2022-11-12T19:00:00.000' AS DateTime), CAST(350.0000 AS Decimal(14, 4)), N'C002', N'A005', N'G007')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00044', CAST(N'2022-11-19T20:00:00.000' AS DateTime), CAST(N'2022-11-26T02:00:00.000' AS DateTime), CAST(770.0000 AS Decimal(14, 4)), N'C002', N'A003', N'G011')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00045', CAST(N'2022-11-25T14:00:00.000' AS DateTime), CAST(N'2022-11-28T19:00:00.000' AS DateTime), CAST(1550.0000 AS Decimal(14, 4)), N'C010', N'A003', N'G007')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00046', CAST(N'2022-12-01T17:00:00.000' AS DateTime), CAST(N'2022-12-04T23:00:00.000' AS DateTime), CAST(770.0000 AS Decimal(14, 4)), N'C001', N'A002', N'G002')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00047', CAST(N'2022-12-01T15:00:00.000' AS DateTime), CAST(N'2022-12-04T19:00:00.000' AS DateTime), CAST(290.0000 AS Decimal(14, 4)), N'C004', N'A006', N'G012')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00048', CAST(N'2022-12-02T13:00:00.000' AS DateTime), CAST(N'2022-12-04T17:00:00.000' AS DateTime), CAST(230.0000 AS Decimal(14, 4)), N'C010', N'A008', N'G004')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00049', CAST(N'2022-12-03T17:00:00.000' AS DateTime), CAST(N'2022-12-10T20:00:00.000' AS DateTime), CAST(410.0000 AS Decimal(14, 4)), N'C015', N'A008', N'G011')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00050', CAST(N'2022-12-09T20:00:00.000' AS DateTime), CAST(N'2022-12-10T01:00:00.000' AS DateTime), CAST(500.0000 AS Decimal(14, 4)), N'C003', N'A002', N'G005')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00051', CAST(N'2022-12-18T14:00:00.000' AS DateTime), CAST(N'2022-12-21T16:00:00.000' AS DateTime), CAST(650.0000 AS Decimal(14, 4)), N'C009', N'A003', N'G008')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00052', CAST(N'2022-12-25T14:00:00.000' AS DateTime), CAST(N'2023-01-03T16:00:00.000' AS DateTime), CAST(1250.0000 AS Decimal(14, 4)), N'C007', N'A003', N'G013')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00053', CAST(N'2022-12-22T20:00:00.000' AS DateTime), CAST(N'2022-12-29T02:00:00.000' AS DateTime), CAST(2930.0000 AS Decimal(14, 4)), N'C005', N'A005', N'G006')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00054', CAST(N'2022-12-24T16:00:00.000' AS DateTime), CAST(N'2022-12-29T22:00:00.000' AS DateTime), CAST(1670.0000 AS Decimal(14, 4)), N'C009', N'A001', N'G005')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00055', CAST(N'2022-12-22T15:00:00.000' AS DateTime), CAST(N'2022-12-23T18:00:00.000' AS DateTime), CAST(500.0000 AS Decimal(14, 4)), N'C004', N'A007', N'G008')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00056', CAST(N'2022-12-23T13:00:00.000' AS DateTime), CAST(N'2022-12-26T15:00:00.000' AS DateTime), CAST(410.0000 AS Decimal(14, 4)), N'C010', N'A006', N'G001')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00057', CAST(N'2022-12-22T14:00:00.000' AS DateTime), CAST(N'2022-12-27T17:00:00.000' AS DateTime), CAST(1670.0000 AS Decimal(14, 4)), N'C002', N'A001', N'G003')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00058', CAST(N'2022-12-22T20:00:00.000' AS DateTime), CAST(N'2023-01-01T01:00:00.000' AS DateTime), CAST(875.0000 AS Decimal(14, 4)), N'C012', N'A004', N'G011')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00059', CAST(N'2022-12-29T19:00:00.000' AS DateTime), CAST(N'2023-01-07T22:00:00.000' AS DateTime), CAST(1400.0000 AS Decimal(14, 4)), N'C014', N'A005', N'G001')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00060', CAST(N'2023-01-01T13:00:00.000' AS DateTime), CAST(N'2023-01-06T15:00:00.000' AS DateTime), CAST(590.0000 AS Decimal(14, 4)), N'C004', N'A001', N'G005')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00061', CAST(N'2023-01-01T17:00:00.000' AS DateTime), CAST(N'2023-01-11T20:00:00.000' AS DateTime), CAST(2525.0000 AS Decimal(14, 4)), N'C001', N'A007', N'G007')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00062', CAST(N'2022-12-30T16:00:00.000' AS DateTime), CAST(N'2023-01-03T22:00:00.000' AS DateTime), CAST(500.0000 AS Decimal(14, 4)), N'C005', N'A007', N'G012')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00063', CAST(N'2022-12-30T17:00:00.000' AS DateTime), CAST(N'2023-01-04T20:00:00.000' AS DateTime), CAST(1670.0000 AS Decimal(14, 4)), N'C015', N'A005', N'G003')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00064', CAST(N'2023-01-01T16:00:00.000' AS DateTime), CAST(N'2023-01-03T20:00:00.000' AS DateTime), CAST(770.0000 AS Decimal(14, 4)), N'C010', N'A004', N'G010')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00065', CAST(N'2022-12-30T12:00:00.000' AS DateTime), CAST(N'2023-01-03T17:00:00.000' AS DateTime), CAST(1550.0000 AS Decimal(14, 4)), N'C006', N'A008', N'G006')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00066', CAST(N'2022-12-31T17:00:00.000' AS DateTime), CAST(N'2023-01-01T21:00:00.000' AS DateTime), CAST(650.0000 AS Decimal(14, 4)), N'C002', N'A005', N'G008')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00067', CAST(N'2023-01-01T13:00:00.000' AS DateTime), CAST(N'2023-01-09T17:00:00.000' AS DateTime), CAST(1130.0000 AS Decimal(14, 4)), N'C013', N'A004', N'G002')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00068', CAST(N'2023-01-08T20:00:00.000' AS DateTime), CAST(N'2023-01-09T01:00:00.000' AS DateTime), CAST(950.0000 AS Decimal(14, 4)), N'C014', N'A008', N'G003')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00069', CAST(N'2023-01-06T13:00:00.000' AS DateTime), CAST(N'2023-01-10T15:00:00.000' AS DateTime), CAST(650.0000 AS Decimal(14, 4)), N'C010', N'A002', N'G006')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00070', CAST(N'2023-01-06T17:00:00.000' AS DateTime), CAST(N'2023-01-11T19:00:00.000' AS DateTime), CAST(230.0000 AS Decimal(14, 4)), N'C007', N'A003', N'G012')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00071', CAST(N'2023-01-06T14:00:00.000' AS DateTime), CAST(N'2023-01-08T19:00:00.000' AS DateTime), CAST(1175.0000 AS Decimal(14, 4)), N'C015', N'A004', N'G008')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00072', CAST(N'2023-01-04T16:00:00.000' AS DateTime), CAST(N'2023-01-06T19:00:00.000' AS DateTime), CAST(275.0000 AS Decimal(14, 4)), N'C007', N'A006', N'G008')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00073', CAST(N'2023-01-07T12:00:00.000' AS DateTime), CAST(N'2023-01-17T14:00:00.000' AS DateTime), CAST(1370.0000 AS Decimal(14, 4)), N'C004', N'A008', N'G013')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00074', CAST(N'2023-01-06T14:00:00.000' AS DateTime), CAST(N'2023-01-07T16:00:00.000' AS DateTime), CAST(290.0000 AS Decimal(14, 4)), N'C003', N'A008', N'G010')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00075', CAST(N'2023-01-08T20:00:00.000' AS DateTime), CAST(N'2023-01-09T02:00:00.000' AS DateTime), CAST(320.0000 AS Decimal(14, 4)), N'C006', N'A005', N'G001')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00076', CAST(N'2023-01-05T13:00:00.000' AS DateTime), CAST(N'2023-01-12T19:00:00.000' AS DateTime), CAST(770.0000 AS Decimal(14, 4)), N'C009', N'A003', N'G004')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00077', CAST(N'2023-01-12T19:00:00.000' AS DateTime), CAST(N'2023-01-16T00:00:00.000' AS DateTime), CAST(1925.0000 AS Decimal(14, 4)), N'C012', N'A006', N'G008')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00078', CAST(N'2023-01-15T20:00:00.000' AS DateTime), CAST(N'2023-01-18T01:00:00.000' AS DateTime), CAST(1550.0000 AS Decimal(14, 4)), N'C010', N'A006', N'G007')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00079', CAST(N'2023-01-22T15:00:00.000' AS DateTime), CAST(N'2023-01-31T17:00:00.000' AS DateTime), CAST(950.0000 AS Decimal(14, 4)), N'C009', N'A006', N'G005')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00080', CAST(N'2023-01-19T17:00:00.000' AS DateTime), CAST(N'2023-01-19T21:00:00.000' AS DateTime), CAST(110.0000 AS Decimal(14, 4)), N'C012', N'A008', N'G004')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00081', CAST(N'2023-01-20T20:00:00.000' AS DateTime), CAST(N'2023-01-27T02:00:00.000' AS DateTime), CAST(2930.0000 AS Decimal(14, 4)), N'C012', N'A002', N'G010')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00082', CAST(N'2023-01-22T14:00:00.000' AS DateTime), CAST(N'2023-01-22T20:00:00.000' AS DateTime), CAST(14105.0000 AS Decimal(14, 4)), N'C005', N'A006', N'G008')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00083', CAST(N'2023-01-19T12:00:00.000' AS DateTime), CAST(N'2023-01-23T18:00:00.000' AS DateTime), CAST(1850.0000 AS Decimal(14, 4)), N'C015', N'A003', N'G006')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00084', CAST(N'2023-01-22T14:00:00.000' AS DateTime), CAST(N'2023-01-30T18:00:00.000' AS DateTime), CAST(1670.0000 AS Decimal(14, 4)), N'C004', N'A005', N'G001')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00085', CAST(N'2023-01-22T12:00:00.000' AS DateTime), CAST(N'2023-01-31T15:00:00.000' AS DateTime), CAST(2300.0000 AS Decimal(14, 4)), N'C013', N'A005', N'G007')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00086', CAST(N'2023-01-21T12:00:00.000' AS DateTime), CAST(N'2023-01-27T17:00:00.000' AS DateTime), CAST(575.0000 AS Decimal(14, 4)), N'C010', N'A004', N'G011')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00087', CAST(N'2023-01-28T13:00:00.000' AS DateTime), CAST(N'2023-02-01T16:00:00.000' AS DateTime), CAST(1400.0000 AS Decimal(14, 4)), N'C010', N'A006', N'G003')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00088', CAST(N'2023-01-27T12:00:00.000' AS DateTime), CAST(N'2023-02-01T17:00:00.000' AS DateTime), CAST(1850.0000 AS Decimal(14, 4)), N'C002', N'A004', N'G013')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00089', CAST(N'2023-01-29T15:00:00.000' AS DateTime), CAST(N'2023-02-01T18:00:00.000' AS DateTime), CAST(770.0000 AS Decimal(14, 4)), N'C003', N'A006', N'G006')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00090', CAST(N'2023-01-29T16:00:00.000' AS DateTime), CAST(N'2023-01-30T21:00:00.000' AS DateTime), CAST(200.0000 AS Decimal(14, 4)), N'C007', N'A004', N'G004')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00091', CAST(N'2023-02-02T18:00:00.000' AS DateTime), CAST(N'2023-02-04T00:00:00.000' AS DateTime), CAST(320.0000 AS Decimal(14, 4)), N'C004', N'A005', N'G012')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00092', CAST(N'2023-02-11T13:00:00.000' AS DateTime), CAST(N'2023-02-15T19:00:00.000' AS DateTime), CAST(1850.0000 AS Decimal(14, 4)), N'C014', N'A005', N'G010')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00093', CAST(N'2023-02-11T15:00:00.000' AS DateTime), CAST(N'2023-02-19T19:00:00.000' AS DateTime), CAST(1670.0000 AS Decimal(14, 4)), N'C006', N'A008', N'G001')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00094', CAST(N'2023-02-12T15:00:00.000' AS DateTime), CAST(N'2023-02-14T18:00:00.000' AS DateTime), CAST(185.0000 AS Decimal(14, 4)), N'C012', N'A001', N'G004')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00095', CAST(N'2023-02-19T18:00:00.000' AS DateTime), CAST(N'2023-02-24T22:00:00.000' AS DateTime), CAST(410.0000 AS Decimal(14, 4)), N'C015', N'A007', N'G011')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00096', CAST(N'2023-02-19T12:00:00.000' AS DateTime), CAST(N'2023-02-28T17:00:00.000' AS DateTime), CAST(1550.0000 AS Decimal(14, 4)), N'C005', N'A001', N'G002')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00097', CAST(N'2023-02-19T12:00:00.000' AS DateTime), CAST(N'2023-02-22T18:00:00.000' AS DateTime), CAST(1490.0000 AS Decimal(14, 4)), N'C007', N'A005', N'G013')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00098', CAST(N'2023-02-16T14:00:00.000' AS DateTime), CAST(N'2023-02-25T19:00:00.000' AS DateTime), CAST(800.0000 AS Decimal(14, 4)), N'C003', N'A006', N'G012')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00099', CAST(N'2023-02-18T19:00:00.000' AS DateTime), CAST(N'2023-02-19T00:00:00.000' AS DateTime), CAST(350.0000 AS Decimal(14, 4)), N'C014', N'A001', N'G010')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00100', CAST(N'2023-02-19T18:00:00.000' AS DateTime), CAST(N'2023-02-28T21:00:00.000' AS DateTime), CAST(500.0000 AS Decimal(14, 4)), N'C012', N'A002', N'G004')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00101', CAST(N'2023-02-17T20:00:00.000' AS DateTime), CAST(N'2023-02-20T23:00:00.000' AS DateTime), CAST(950.0000 AS Decimal(14, 4)), N'C002', N'A007', N'G008')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00102', CAST(N'2023-02-16T17:00:00.000' AS DateTime), CAST(N'2023-02-22T23:00:00.000' AS DateTime), CAST(2570.0000 AS Decimal(14, 4)), N'C004', N'A003', N'G006')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00103', CAST(N'2023-02-24T15:00:00.000' AS DateTime), CAST(N'2023-02-27T19:00:00.000' AS DateTime), CAST(1010.0000 AS Decimal(14, 4)), N'C014', N'A005', N'G010')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00104', CAST(N'2023-02-25T16:00:00.000' AS DateTime), CAST(N'2023-02-28T20:00:00.000' AS DateTime), CAST(770.0000 AS Decimal(14, 4)), N'C013', N'A001', N'G001')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00105', CAST(N'2023-02-23T14:00:00.000' AS DateTime), CAST(N'2023-03-02T17:00:00.000' AS DateTime), CAST(1850.0000 AS Decimal(14, 4)), N'C006', N'A001', N'G008')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00106', CAST(N'2023-02-23T13:00:00.000' AS DateTime), CAST(N'2023-02-28T15:00:00.000' AS DateTime), CAST(1130.0000 AS Decimal(14, 4)), N'C001', N'A003', N'G003')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00107', CAST(N'2023-02-24T18:00:00.000' AS DateTime), CAST(N'2023-03-03T20:00:00.000' AS DateTime), CAST(1010.0000 AS Decimal(14, 4)), N'C009', N'A006', N'G006')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00108', CAST(N'2023-02-24T20:00:00.000' AS DateTime), CAST(N'2023-02-28T22:00:00.000' AS DateTime), CAST(500.0000 AS Decimal(14, 4)), N'C010', N'A004', N'G005')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00109', CAST(N'2023-02-26T19:00:00.000' AS DateTime), CAST(N'2023-02-28T01:00:00.000' AS DateTime), CAST(320.0000 AS Decimal(14, 4)), N'C003', N'A004', N'G011')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00110', CAST(N'2023-02-24T17:00:00.000' AS DateTime), CAST(N'2023-03-05T21:00:00.000' AS DateTime), CAST(2450.0000 AS Decimal(14, 4)), N'C004', N'A005', N'G013')
GO
INSERT [dbo].[Engagements] ([EngagementKey], [EngStartDateTime], [EngEndDateTime], [EngContractPrice], [CustomerKey], [AgentKey], [GroupKey]) VALUES (N'E00111', CAST(N'2023-03-03T15:00:00.000' AS DateTime), CAST(N'2023-03-12T17:00:00.000' AS DateTime), CAST(1850.0000 AS Decimal(14, 4)), N'C014', N'A001', N'G003')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S001', N'40''s Ballroom Music')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S002', N'50''s Music')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S003', N'60''s Music')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S004', N'70''s Music')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S005', N'80''s Music')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S006', N'Country')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S007', N'Classical')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S008', N'Classic Rock & Roll')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S009', N'Rap')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S010', N'Contemporary')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S011', N'Country Rock')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S012', N'Elvis')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S013', N'Folk')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S014', N'Chamber Music')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S015', N'Jazz')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S016', N'Karaoke')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S017', N'Motown')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S018', N'Modern Rock')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S019', N'Rhythm and Blues')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S020', N'Show Tunes')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S021', N'Standards')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S022', N'Top 40 Hits')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S023', N'Variety')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S024', N'Salsa')
GO
INSERT [dbo].[MusicStyle] ([StyleKey], [StyleName]) VALUES (N'S025', N'90''s Music')
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C001', N'S010', 2)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C001', N'S022', 1)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C002', N'S003', 1)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C002', N'S008', 2)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C003', N'S017', 2)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C003', N'S019', 1)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C004', N'S015', 1)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C004', N'S021', 2)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C005', N'S007', 2)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C005', N'S014', 1)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C006', N'S013', 2)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C006', N'S023', 1)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C007', N'S004', 2)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C007', N'S008', 1)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C007', N'S019', 3)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C008', N'S010', 1)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C008', N'S021', 2)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C009', N'S006', 2)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C009', N'S011', 1)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C009', N'S018', 3)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C010', N'S015', 2)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C010', N'S019', 1)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C010', N'S024', 3)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C011', N'S001', 2)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C011', N'S007', 3)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C011', N'S021', 1)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C012', N'S010', 2)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C012', N'S020', 1)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C013', N'S015', 1)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C013', N'S024', 2)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C014', N'S005', 3)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C014', N'S018', 2)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C014', N'S022', 1)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C015', N'S001', 3)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C015', N'S020', 2)
GO
INSERT [dbo].[CustomerPreference] ([CustomerKey], [StyleKey], [StylePreferenceRating]) VALUES (N'C015', N'S021', 1)
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G001', N'S010', 2)
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G001', N'S020', 1)
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G001', N'S021', 3)
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G002', N'S017', 2)
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G002', N'S019', 1)
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G002', N'S023', 3)
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G003', N'S003', 1)
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G003', N'S008', 2)
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G004', N'S013', 1)
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G005', N'S015', 3)
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G005', N'S019', 1)
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G005', N'S024', 2)
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G006', N'S022', 3)
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G006', N'S023', 1)
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G006', N'S024', 2)
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G007', N'S006', 2)
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G007', N'S011', 1)
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G008', N'S003', 2)
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G008', N'S006', 1)
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G009', N'S007', 2)
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G009', N'S014', 1)
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G009', N'S021', 3)
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G010', N'S004', 2)
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G010', N'S021', 3)
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G010', N'S022', 1)
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G011', N'S007', 2)
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G011', N'S014', 1)
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G011', N'S020', 3)
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G012', N'S007', 2)
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G012', N'S013', 1)
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G013', N'S010', 2)
GO
INSERT [dbo].[GroupStyle] ([GroupKey], [StyleKey], [StyleStrength]) VALUES (N'G013', N'S015', 1)
GO
INSERT [dbo].[Members] ([MemberKey], [MemberFirstName], [MemberLastName], [MemberPhone], [MemberGender]) VALUES (N'M001', N'David', N'Hamilton', N'253-555-2701', N'M')
GO
INSERT [dbo].[Members] ([MemberKey], [MemberFirstName], [MemberLastName], [MemberPhone], [MemberGender]) VALUES (N'M002', N'Suzanne', N'Viescas', N'253-555-2686', N'F')
GO
INSERT [dbo].[Members] ([MemberKey], [MemberFirstName], [MemberLastName], [MemberPhone], [MemberGender]) VALUES (N'M003', N'Gary', N'Hallmark', N'253-555-2676', N'M')
GO
INSERT [dbo].[Members] ([MemberKey], [MemberFirstName], [MemberLastName], [MemberPhone], [MemberGender]) VALUES (N'M004', N'Jeffrey', N'Smith', N'253-555-2596', N'M')
GO
INSERT [dbo].[Members] ([MemberKey], [MemberFirstName], [MemberLastName], [MemberPhone], [MemberGender]) VALUES (N'M005', N'Robert', N'Brown', N'253-555-2491', N'M')
GO
INSERT [dbo].[Members] ([MemberKey], [MemberFirstName], [MemberLastName], [MemberPhone], [MemberGender]) VALUES (N'M006', N'Mariya', N'Sergienko', N'253-555-2526', N'F')
GO
INSERT [dbo].[Members] ([MemberKey], [MemberFirstName], [MemberLastName], [MemberPhone], [MemberGender]) VALUES (N'M007', N'Sara', N'Sheskey', N'253-555-2566', N'F')
GO
INSERT [dbo].[Members] ([MemberKey], [MemberFirstName], [MemberLastName], [MemberPhone], [MemberGender]) VALUES (N'M008', N'Rachel', N'Patterson', N'253-555-2546', N'F')
GO
INSERT [dbo].[Members] ([MemberKey], [MemberFirstName], [MemberLastName], [MemberPhone], [MemberGender]) VALUES (N'M009', N'David', N'Viescas', N'253-555-2661', N'M')
GO
INSERT [dbo].[Members] ([MemberKey], [MemberFirstName], [MemberLastName], [MemberPhone], [MemberGender]) VALUES (N'M010', N'Manuela', N'Seidel', N'253-555-2641', N'F')
GO
INSERT [dbo].[Members] ([MemberKey], [MemberFirstName], [MemberLastName], [MemberPhone], [MemberGender]) VALUES (N'M011', N'Kathryn', N'Patterson', N'253-555-2651', N'F')
GO
INSERT [dbo].[Members] ([MemberKey], [MemberFirstName], [MemberLastName], [MemberPhone], [MemberGender]) VALUES (N'M012', N'Kendra', N'Bonnicksen', N'253-555-2716', N'F')
GO
INSERT [dbo].[Members] ([MemberKey], [MemberFirstName], [MemberLastName], [MemberPhone], [MemberGender]) VALUES (N'M013', N'Steve', N'Pundt', N'253-555-9938', N'M')
GO
INSERT [dbo].[Members] ([MemberKey], [MemberFirstName], [MemberLastName], [MemberPhone], [MemberGender]) VALUES (N'M014', N'George', N'Chavez', N'253-555-9930', N'M')
GO
INSERT [dbo].[Members] ([MemberKey], [MemberFirstName], [MemberLastName], [MemberPhone], [MemberGender]) VALUES (N'M015', N'Joe', N'Rosales', N'253-555-2281', N'M')
GO
INSERT [dbo].[Members] ([MemberKey], [MemberFirstName], [MemberLastName], [MemberPhone], [MemberGender]) VALUES (N'M016', N'Angel', N'Kennedy', N'253-555-2311', N'M')
GO
INSERT [dbo].[Members] ([MemberKey], [MemberFirstName], [MemberLastName], [MemberPhone], [MemberGender]) VALUES (N'M017', N'Luke', N'Patterson', N'253-555-2316', N'M')
GO
INSERT [dbo].[Members] ([MemberKey], [MemberFirstName], [MemberLastName], [MemberPhone], [MemberGender]) VALUES (N'M018', N'Janice', N'Galvin', N'253-555-2691', N'F')
GO
INSERT [dbo].[Members] ([MemberKey], [MemberFirstName], [MemberLastName], [MemberPhone], [MemberGender]) VALUES (N'M019', N'John', N'Viescas', N'253-555-2511', N'M')
GO
INSERT [dbo].[Members] ([MemberKey], [MemberFirstName], [MemberLastName], [MemberPhone], [MemberGender]) VALUES (N'M020', N'Michael', N'Hernandez', N'253-555-2711', N'M')
GO
INSERT [dbo].[Members] ([MemberKey], [MemberFirstName], [MemberLastName], [MemberPhone], [MemberGender]) VALUES (N'M021', N'Katherine', N'Ehrlich', N'253-555-0399', N'F')
GO
INSERT [dbo].[Members] ([MemberKey], [MemberFirstName], [MemberLastName], [MemberPhone], [MemberGender]) VALUES (N'M022', N'Julia', N'Schnebly', N'253-555-9936', N'F')
GO
INSERT [dbo].[Members] ([MemberKey], [MemberFirstName], [MemberLastName], [MemberPhone], [MemberGender]) VALUES (N'M023', N'Susan', N'McLain', N'253-555-2301', N'F')
GO
INSERT [dbo].[Members] ([MemberKey], [MemberFirstName], [MemberLastName], [MemberPhone], [MemberGender]) VALUES (N'M024', N'Caroline', N'Coie', N'253-555-2306', N'F')
GO
INSERT [dbo].[Members] ([MemberKey], [MemberFirstName], [MemberLastName], [MemberPhone], [MemberGender]) VALUES (N'M025', N'Jim', N'Glynn', N'253-555-2531', N'M')
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
