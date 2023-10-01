--add data
INSERT INTO Agents(AgentKey, AgentFirstName, AgentLastName, AgentStreetAddress, AgentCity, AgentState, AgentZip, AgentPhone, AgentDateHired, AgentSalary, AgentCommissionRate)
VALUES ('A001', 'William', 'Thompson', '122 Spring River Drive', 'Redmond', 'WA', '98053', '253-555-2681', '2018-05-10', 45000.00, 0.04),
	   ('A002', 'Scott', 'Bishop', '66 Spring Valley Drive', 'Seattle', 'WA', '98125', '253-555-2666', '2019-01-31', 37000.00, 0.04),
	   ('A003', 'Carol', 'Viescas', '667 Red River Road', 'Bellevue', 'WA', '98006', '253-555-2571', '2018-11-14', 40000.00, 0.05),
	   ('A004', 'Karen', 'Smith', '30301 166th Ave. N.E.', 'Seattle', 'WA', '98125', '253-555-2551', '2019-02-28', 32000.00, 0.055),
	   ('A005', 'Marianne', 'Wier', '908 W. Capital Way', 'Tacoma', 'WA', '98413', '253-555-2606', '2019-01-28', 34500.00, 0.045),
	   ('A006', 'John', 'Kennedy', '16679 NE 41st Court', 'Seattle', 'WA', '98125', '253-555-2621', '2018-05-10', 43000.00, 0.06),
	   ('A007', 'Caleb', 'Viescas', '4501 Wetland Road', 'Redmond', 'WA', '98052', '253-555-0037', '2019-02-11', 32100.00, 0.035),
	   ('A008', 'Maria', 'Patterson', '3445 Cheyenne Road', 'Bellevue', 'WA', '98006', '253-555-2291', '2018-08-29', 40000.00, 0.04),
	   ('A009', 'Darryl', 'Mars', '1234 Main Street', 'Kirkland', 'WA', '98033', '253-555-1234', '2021-01-30', 50.00, 0.01);
GO

INSERT INTO MusicStyle(StyleKey, StyleName)
VALUES ('S001', '40''s Ballroom Music'),
       ('S002', '50''s Music'),
       ('S003', '60''s Music'),
       ('S004', '70''s Music'),
       ('S005', '80''s Music'),
       ('S006', 'Country'),
       ('S007', 'Classical'),
       ('S008', 'Classic Rock & Roll'),
       ('S009', 'Rap'),
       ('S010', 'Contemporary'),
       ('S011', 'Country Rock'),
       ('S012', 'Elvis'),
       ('S013', 'Folk'),
       ('S014', 'Chamber Music'),
       ('S015', 'Jazz'),
       ('S016', 'Karaoke'),
       ('S017', 'Motown'),
       ('S018', 'Modern Rock'),
       ('S019', 'Rhythm and Blues'),
       ('S020', 'Show Tunes'),
       ('S021', 'Standards'),
       ('S022', 'Top 40 Hits'),
       ('S023', 'Variety'),
       ('S024', 'Salsa'),
       ('S025', '90''s Music');
GO

INSERT INTO Customers(CustomerKey, CustFirstName, CustLastName, CustStreetAddress, CustCity, CustState, CustZip)
VALUES ('C001', 'Doris', 'Hartwig', '4726 11th Ave. N.E.', 'Seattle', 'WA', '98105'),
	   ('C002', 'Deb', 'Waldal', '908 W. Capital Way', 'Tacoma', 'WA', '98413'),
	   ('C003', 'Peter', 'Brehm', '722 Moss Bay Blvd.', 'Kirkland', 'WA', '98033'),
	   ('C004', 'Dean', 'McCrae', '4110 Old Redmond Rd.', 'Redmond', 'WA', '98052'),
	   ('C005', 'Elizabeth','Hallmark', 'Route 2, Box 203B', 'Auburn', 'WA', '98002'),
	   ('C006', 'Matt', 'Berg', '908 W. Capital Way', 'Tacoma', 'WA', '98413'),
	   ('C007', 'Liz', 'Keyser', '13920 S.E. 40th Street', 'Bellevue', 'WA', '98006'),
	   ('C008', 'Darren', 'Gehring', '2601 Seaview Lane', 'Kirkland', 'WA', '98033'),
	   ('C009', 'Sarah', 'Thompson', '2222 Springer Road', 'Bellevue', 'WA', '98006'),
	   ('C010', 'Zachary', 'Ehrlich', '12330 Kingman Drive', 'Kirkland', 'WA', '98033'),
	   ('C011', 'Joyce', 'Bonnicksen', '2424 Thames Drive', 'Bellevue', 'WA', '98006'),
	   ('C012', 'Kerry', 'Patterson', '777 Fenexet Blvd', 'Redmond', 'WA', 	'98052'),
	   ('C013', 'Estella', 'Pundt', '2500 Rosales Lane', 'Bellevue', 'WA', '98006'),
	   ('C014', 'Mark', 'Rosales', '323 Advocate Lane', 'Bellevue', 'WA', '98006'),
	   ('C015', 'Carol', 'Viescas', '754 Fourth Ave', 'Seattle', 'WA', '98115');
GO

INSERT INTO Groups(GroupKey, GroupStageName, GroupTIN, GroupStreetAddress, GroupCity, GroupState, GroupZip, GroupPhone, GroupWebpage, GroupEmail)
VALUES ('G001', 'Carol Peacock Trio', '01-888-90-1121', '4110 Old Redmond Rd.', 'Redmond', 'WA', '98052', '253-555-2691', 'www.cptrio.com', 'carolp@cptrio.com'),
	   ('G002', 'Topazz', '01-888-50-1061', '16 Maple Lane', 'Auburn', 'WA', '98002', '253-555-2591', 'www.topazz.com', NULL),
	   ('G003', 'JV & the Deep Six', '01-888-18-1013', '15127 NE', 'Redmond', 'WA', '98052', '253-555-2511', 'www.jvd6.com', 'jv@myspring.com'),
	   ('G004', 'Jim Glynn', '01-888-26-1025', '13920 S.E. 40th Street', 'Bellevue', 'WA', '98009', '253-555-2531', NULL, NULL),
	   ('G005', 'Jazz Persuasion', '01-888-30-1031', '233 West Valley Hwy', 'Bellevue', 'WA', '98005', '253-555-2541', 'www.jazzper.com', NULL),
	   ('G006', 'Modern Dance', '01-888-66-1085', 'Route 2, Box 203B', 'Woodinville', 'WA', '98072', '253-555-2631', 'www.moderndance.com', 'mikeh@moderndance.com'),
	   ('G007', 'Coldwater Cattle Company', '01-888-38-1043', '4726 - 11th Ave. N.E.', 'Seattle', 'WA', '98105', '253-555-2561', 'www.coldwatercows.com', NULL),
	   ('G008', 'Country Feeling', '01-888-98-1133', 'PO Box 223311', 'Seattle', 'WA', '98125', '253-555-2711', NULL, NULL),
	   ('G009', 'Katherine Ehrlich', '01-888-61-1103', '777 Fenexet Blvd', 'Woodinville', 'WA', '98072', '253-555-0399', NULL, 'ke@mzo.com'),
	   ('G010', 'Saturday Revue', '01-888-64-1109', '3887 Easy Street', 'Seattle', 'WA', '98125', '253-555-0039', 'www.satrevue.com', 'edz@coolness.com'),
	   ('G011', 'Julia Schnebly', '01-888-65-1111', '2343 Harmony Lane', 'Seattle', 'WA', '99837', '253-555-9936', NULL, NULL),
	   ('G012', 'Susan McLain', '01-888-70-1121', '511 Lenora Ave', 'Bellevue', 'WA', '98006', '253-555-2301', 'www.greensleeves.com', 'susan@gs.com'),
	   ('G013', 'Caroline Coie Cuartet', '01-888-71-1123', '298 Forest Lane', 'Auburn', 'WA', '98002', '253-555-2306', NULL, 'carolinec@willow.com');
GO

USE [HighbrowEntertainment]
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


INSERT INTO Members (MemberKey, MemberFirstName, MemberLastName, MemberPhone, MemberGender)
VALUES  ('M001', 'David', 'Hamilton', '253-555-2701', 'M'),
		('M002', 'Suzanne', 'Viescas', '253-555-2686', 'F'),
		('M003', 'Gary', 'Hallmark', '253-555-2676', 'M'),
		('M004', 'Jeffrey', 'Smith', '253-555-2596', 'M'),
		('M005', 'Robert', 'Brown', '253-555-2491', 'M'),
		('M006', 'Mariya', 'Sergienko', '253-555-2526', 'F'),
		('M007', 'Sara', 'Sheskey', '253-555-2566', 'F'),
		('M008', 'Rachel', 'Patterson', '253-555-2546', 'F'),
		('M009', 'David', 'Viescas', '253-555-2661', 'M'),
		('M010', 'Manuela', 'Seidel', '253-555-2641', 'F'),
		('M011', 'Kathryn', 'Patterson', '253-555-2651', 'F'),
		('M012', 'Kendra', 'Bonnicksen', '253-555-2716', 'F'),
		('M013', 'Steve', 'Pundt', '253-555-9938', 'M'),
		('M014', 'George', 'Chavez', '253-555-9930', 'M'),
		('M015', 'Joe', 'Rosales', '253-555-2281', 'M'),
		('M016', 'Angel', 'Kennedy', '253-555-2311', 'M'),
		('M017', 'Luke', 'Patterson', '253-555-2316', 'M'),
		('M018', 'Janice', 'Galvin', '253-555-2691', 'F'),
		('M019', 'John', 'Viescas', '253-555-2511', 'M'),
		('M020', 'Michael', 'Hernandez', '253-555-2711', 'M'),
		('M021', 'Katherine', 'Ehrlich', '253-555-0399', 'F'),
		('M022', 'Julia', 'Schnebly', '253-555-9936', 'F'),
		('M023', 'Susan', 'McLain', '253-555-2301', 'F'),
		('M024', 'Caroline', 'Coie', '253-555-2306', 'F'),
		('M025', 'Jim', 'Glynn', '253-555-2531', 'M');
GO

INSERT INTO GroupMember(GroupKey, MemberKey)
VALUES  ('G001', 'M006'),
		('G001', 'M007'),
		('G001', 'M018'),
		('G002', 'M020'),
		('G002', 'M021'),
		('G003', 'M002'),
		('G003', 'M003'),
		('G003', 'M004'),
		('G003', 'M009'),
		('G003', 'M017'),
		('G003', 'M019'),
		('G004', 'M025'),
		('G005', 'M016'),
		('G005', 'M020'),
		('G005', 'M021'),
		('G006', 'M004'),
		('G006', 'M013'),
		('G006', 'M018'),
		('G006', 'M020'),
		('G007', 'M001'),
		('G007', 'M002'),
		('G007', 'M005'),
		('G007', 'M007'),
		('G007', 'M010'),
		('G008', 'M003'),
		('G008', 'M005'),
		('G008', 'M011'),
		('G008', 'M014'),
		('G008', 'M015'),
		('G009', 'M021'),
		('G010', 'M008'),
		('G010', 'M012'),
		('G010', 'M023'),
		('G010', 'M024'),
		('G011', 'M022'),
		('G012', 'M023'),
		('G013', 'M012'),
		('G013', 'M014'),
		('G013', 'M017'),
		('G013', 'M024');
GO

INSERT INTO CustomerPreference(CustomerKey, StyleKey, StylePreferenceRating)
VALUES  ('C001', 'S010', 2),
		('C001', 'S022', 1),
		('C002', 'S003', 1),
		('C002', 'S008', 2),
		('C003', 'S017', 2),
		('C003', 'S019', 1),
		('C004', 'S015', 1),
		('C004', 'S021', 2),
		('C005', 'S007', 2),
		('C005', 'S014', 1),
		('C006', 'S013', 2),
		('C006', 'S023', 1),
		('C007', 'S004', 2),
		('C007', 'S008', 1),
		('C007', 'S019', 3),
		('C008', 'S010', 1),
		('C008', 'S021', 2),
		('C009', 'S006', 2),
		('C009', 'S011', 1),
		('C009', 'S018', 3),
		('C010', 'S015', 2),
		('C010', 'S019', 1),
		('C010', 'S024', 3),
		('C011', 'S001', 2),
		('C011', 'S007', 3),
		('C011', 'S021', 1),
		('C012', 'S010', 2),
		('C012', 'S020', 1),
		('C013', 'S015', 1),
		('C013', 'S024', 2),
		('C014', 'S005', 3),
		('C014', 'S018', 2),
		('C014', 'S022', 1),
		('C015', 'S001', 3),
		('C015', 'S020', 2),
		('C015', 'S021', 1);
GO

INSERT INTO GroupStyle(GroupKey, StyleKey, StyleStrength)
VALUES  ('G001', 'S010', 2),
		('G001', 'S020', 1),
		('G001', 'S021', 3),
		('G002', 'S017', 2),
		('G002', 'S019', 1),
		('G002', 'S023', 3),
		('G003', 'S003', 1),
		('G003', 'S008', 2),
		('G004', 'S013', 1),
		('G005', 'S015', 3),
		('G005', 'S019', 1),
		('G005', 'S024', 2),
		('G006', 'S022', 3),
		('G006', 'S023', 1),
		('G006', 'S024', 2),
		('G007', 'S006', 2),
		('G007', 'S011', 1),
		('G008', 'S003', 2),
		('G008', 'S006', 1),
		('G009', 'S007', 2),
		('G009', 'S014', 1),
		('G009', 'S021', 3),
		('G010', 'S004', 2),
		('G010', 'S021', 3),
		('G010', 'S022', 1),
		('G011', 'S007', 2),
		('G011', 'S014', 1),
		('G011', 'S020', 3),
		('G012', 'S007', 2),
		('G012', 'S013', 1),
		('G013', 'S010', 2),
		('G013', 'S015', 1);
GO