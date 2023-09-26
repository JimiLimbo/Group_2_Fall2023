--db creation
USE [master]
GO

CREATE DATABASE [HighbrowEntertainment]
GO

USE [HighbrowEntertainment]
GO

--table creation
CREATE TABLE Agents(
	AgentKey VARCHAR(4) NOT NULL,
	AgentFirstName VARCHAR(35),
	AgentLastName VARCHAR(35),
	AgentStreetAddress VARCHAR(40),
	AgentCity VARCHAR(35),
	AgentState CHAR(2),
	AgentZip CHAR(5),
	AgentPhone VARCHAR(15),
	AgentDateHired DATE,
	AgentSalary DECIMAL(14,4),
	AgentCommissionRate DECIMAL(14,4),
	CONSTRAINT PK_AgentKey PRIMARY KEY (AgentKey)
);
GO

CREATE TABLE MusicStyle(
	StyleKey VARCHAR(4) NOT NULL,
	StyleName VARCHAR(50),
	CONSTRAINT PK_StyleKey PRIMARY KEY (StyleKey)
);
GO

CREATE TABLE Customers(
	CustomerKey VARCHAR(4) NOT NULL,
	CustFirstName VARCHAR(35),
	CustLastName VARCHAR(35),
	CustStreetAddress VARCHAR(40),
	CustCity VARCHAR(35),
	CustState CHAR(2),
	CustZip CHAR(5),
	CONSTRAINT PK_CustomerKey PRIMARY KEY (CustomerKey)
);
GO

CREATE TABLE Groups(
	GroupKey VARCHAR(4) NOT NULL,
	GroupStageName VARCHAR(40),
	GroupSSN VARCHAR(11),
	GroupStreetAddress VARCHAR(40),
	GroupCity VARCHAR(35),
	GroupState CHAR(2),
	GroupZip CHAR(5),
	GroupPhone VARCHAR(15),
	GroupWebpage VARCHAR(150) DEFAULT('No Page'),
	GroupEmail VARCHAR(75) DEFAULT('No Email'),
	GroupDateEntered DATE,
	CONSTRAINT PK_GroupKey PRIMARY KEY (GroupKey),
    CONSTRAINT CK_GroupDateEntered CHECK (GroupDateEntered <= GETDATE())
);
GO

CREATE TABLE Members(
	MemberKey VARCHAR(4) NOT NULL,
	MemberFirstName VARCHAR(35),
	MemberLastName VARCHAR(35),
	MemberPhone VARCHAR(15),
	MemberGender VARCHAR(1),
	CONSTRAINT PK_MemberKey PRIMARY KEY (MemberKey),
	CONSTRAINT CK_MemberGender CHECK (MemberGender IN ('M', 'F') OR MemberGender IS NULL)

);
GO

CREATE TABLE Engagements(
	EngagementKey VARCHAR(6) NOT NULL,
	EngStartDateTime DATETIME,
	EngEndDateTime DATETIME,
	EngContractPrice DECIMAL(14,4),
	CustomerKey VARCHAR(4) NOT NULL FOREIGN KEY REFERENCES Customers(CustomerKey),
	AgentKey VARCHAR(4) NOT NULL FOREIGN KEY REFERENCES Agents(AgentKey),
	GroupKey VARCHAR(4) NOT NULL FOREIGN KEY REFERENCES Groups(GroupKey),
	CONSTRAINT PK_EngagementKey PRIMARY KEY (EngagementKey),
	CONSTRAINT CK_EngDates CHECK (EngEndDateTime >= EngStartDateTime OR EngEndDateTime IS NULL)
);
GO

CREATE TABLE GroupMember(
	GroupKey VARCHAR(4) NOT NULL FOREIGN KEY REFERENCES Groups(GroupKey),
	MemberKey VARCHAR(4) NOT NULL FOREIGN KEY REFERENCES Members(MemberKey)
);
GO

CREATE TABLE CustomerPreference(
	CustomerKey VARCHAR(4) NOT NULL FOREIGN KEY REFERENCES Customers(CustomerKey),
	StyleKey VARCHAR(4) NOT NULL FOREIGN KEY REFERENCES MusicStyle(StyleKey),
	StylePreferenceRating TINYINT NOT NULL,
    CONSTRAINT CK_StylePreferenceRating CHECK (StylePreferenceRating IN (1, 2, 3))

);
GO

CREATE TABLE GroupStyle(
	GroupKey VARCHAR(4) NOT NULL FOREIGN KEY REFERENCES Groups(GroupKey),
	StyleKey VARCHAR(4) NOT NULL FOREIGN KEY REFERENCES MusicStyle(StyleKey),
	StyleStrength TINYINT NOT NULL,
	CONSTRAINT CK_StyleStrength CHECK (StyleStrength IN (1, 2, 3)),
	CONSTRAINT UNIQUE_GroupKey_StyleStrength UNIQUE(GroupKey, StyleStrength)
);
GO

--add data
INSERT INTO Agents(AgentKey, AgentFirstName, AgentLastName, AgentStreetAddress, AgentCity, AgentState, AgentZip, AgentPhone, AgentDateHired, AgentSalary, AgentCommissionRate)
VALUES ('A001', 'William', 'Thompson', '122 Spring River Drive', 'Redmond', 'WA', '98053', '555-2681', '2018-05-10', 45000.00, 0.04),
	   ('A002', 'Scott', 'Bishop', '66 Spring Valley Drive', 'Seattle', 'WA', '98125', '555-2666', '2019-01-31', 37000.00, 0.04),
	   ('A003', 'Carol', 'Viescas', '667 Red River Road', 'Bellevue', 'WA', '98006', '555-2571', '2018-11-14', 40000.00, 0.05),
	   ('A004', 'Karen', 'Smith', '30301 166th Ave. N.E.', 'Seattle', 'WA', '98125', '555-2551', '2019-02-28', 32000.00, 0.055),
	   ('A005', 'Marianne', 'Wier', '908 W. Capital Way', 'Tacoma', 'WA', '98413', '555-2606', '2019-01-28', 34500.00, 0.045),
	   ('A006', 'John', 'Kennedy', '16679 NE 41st Court', 'Seattle', 'WA', '98125', '555-2621', '2018-05-10', 43000.00, 0.06),
	   ('A007', 'Caleb', 'Viescas', '4501 Wetland Road', 'Redmond', 'WA', '98052', '555-0037', '2019-02-11', 32100.00, 0.035),
	   ('A008', 'Maria', 'Patterson', '3445 Cheyenne Road', 'Bellevue', 'WA', '98006', '555-2291', '2018-08-29', 40000.00, 0.04),
	   ('A009', 'Darryl', 'Mars', '1234 Main Street', 'Kirkland', 'WA', '98033', '555-1234', '2021-01-30', 50.00, 0.01);
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

INSERT INTO Groups(GroupKey, GroupStageName, GroupSSN, GroupStreetAddress, GroupCity, GroupState, GroupZip, GroupPhone, GroupWebpage, GroupEmail, GroupDateEntered)
VALUES ('G001', 'Carol Peacock Trio', '888-90-1121', '4110 Old Redmond Rd.', 'Redmond', 'WA', '98052', '555-2691', 'www.cptrio.com', 'carolp@cptrio.com', '1997-05-24'),
	   ('G002', 'Topazz', '888-50-1061', '16 Maple Lane', 'Auburn', 'WA', '98002', '555-2591', 'www.topazz.com', 'No Email', '1996-02-14'),
	   ('G003', 'JV & the Deep Six', '888-18-1013', '15127 NE', 'Redmond', 'WA', '98052', '555-2511', 'www.jvd6.com', 'jv@myspring.com', '1998-03-18'),
	   ('G004', 'Jim Glynn', '888-26-1025', '13920 S.E. 40th Street', 'Bellevue', 'WA', '98009', '555-2531', 'No Page', 'No Email', '1996-04-01'),
	   ('G005', 'Jazz Persuasion', '888-30-1031', '233 West Valley Hwy', 'Bellevue', 'WA', '98005', '555-2541', 'www.jazzper.com', 'No Email', '1997-05-12'),
	   ('G006', 'Modern Dance', '888-66-1085', 'Route 2, Box 203B', 'Woodinville', 'WA', '98072', '555-2631', 'www.moderndance.com', 'mikeh@moderndance.com', '1995-05-16'),
	   ('G007', 'Coldwater Cattle Company', '888-38-1043', '4726 - 11th Ave. N.E.', 'Seattle', 'WA', '98105', '555-2561', 'www.coldwatercows.com', 'No Email', '1995-11-30'),
	   ('G008', 'Country Feeling', '888-98-1133', 'PO Box 223311', 'Seattle', 'WA', '98125', '555-2711', 'No Page', 'No Email', '1996-02-28'),
	   ('G009', 'Katherine Ehrlich', '888-61-1103', '777 Fenexet Blvd', 'Woodinville', 'WA', '98072', '555-0399', 'No Page', 'ke@mzo.com', '1998-09-13'),
	   ('G010', 'Saturday Revue', '888-64-1109', '3887 Easy Street', 'Seattle', 'WA', '98125', '555-0039', 'www.satrevue.com', 'edz@coolness.com', '1995-01-20'),
	   ('G011', 'Julia Schnebly', '888-65-1111', '2343 Harmony Lane', 'Seattle', 'WA', '99837', '555-9936', 'No Page', 'No Email', '1996-04-12'),
	   ('G012', 'Susan McLain', '888-70-1121', '511 Lenora Ave', 'Bellevue', 'WA', '98006', '555-2301', 'www.greensleeves.com', 'susan@gs.com', '1998-10-12'),
	   ('G013', 'Caroline Coie Cuartet', '888-71-1123', '298 Forest Lane', 'Auburn', 'WA', '98002', '555-2306', 'No Page', 'carolinec@willow.com', '1997-07-11');
GO

INSERT INTO Engagements(EngagementKey, EngStartDateTime, EngEndDateTime, EngContractPrice, CustomerKey, AgentKey, GroupKey)
VALUES ('E00002', '2022-09-01 13:00:00', '2022-09-05 15:00:00', 200, 'C006', 'A004', 'G004'),
		('E00003', '2022-09-10 13:00:00', '2022-09-15 15:00:00', 590, 'C001', 'A003', 'G005'),
		('E00004', '2022-09-11 20:00:00', '2022-09-17 00:00:00', 470, 'C007', 'A003', 'G004'),
		('E00005', '2022-09-11 16:00:00', '2022-09-14 19:00:00', 1130, 'C006', 'A005', 'G003'),
		('E00006', '2022-09-10 15:00:00', '2022-09-14 21:00:00', 2300, 'C014', 'A007', 'G008'),
		('E00007', '2022-09-11 17:00:00', '2022-09-18 20:00:00', 770, 'C004', 'A004', 'G002'),
		('E00008', '2022-09-18 20:00:00', '2022-09-25 23:00:00', 1850, 'C006', 'A003', 'G007'),
		('E00009', '2022-09-18 19:00:00', '2022-09-28 21:00:00', 1370, 'C010', 'A002', 'G010'),
		('E00010', '2022-09-17 13:00:00', '2022-09-26 17:00:00', 3650, 'C005', 'A003', 'G003'),
		('E00011', '2022-09-15 18:00:00', '2022-09-16 00:00:00', 950, 'C005', 'A004', 'G008'),
		('E00012', '2022-09-18 18:00:00', '2022-09-26 22:00:00', 1670, 'C014', 'A008', 'G001'),
		('E00013', '2022-09-17 20:00:00', '2022-09-20 23:00:00', 770, 'C003', 'A001', 'G006'),
		('E00014', '2022-09-24 16:00:00', '2022-09-29 22:00:00', 2750, 'C001', 'A001', 'G008'),
		('E00015', '2022-09-24 17:00:00', '2022-09-29 19:00:00', 770, 'C007', 'A001', 'G013'),
		('E00016', '2022-10-02 20:00:00', '2022-10-06 01:00:00', 1550, 'C010', 'A005', 'G013'),
		('E00017', '2022-09-29 18:00:00', '2022-10-02 20:00:00', 530, 'C002', 'A008', 'G010'),
		('E00019', '2022-09-29 20:00:00', '2022-10-05 23:00:00', 365, 'C009', 'A008', 'G004'),
		('E00021', '2022-09-30 12:00:00', '2022-10-03 16:00:00', 1490, 'C005', 'A001', 'G003'),
		('E00022', '2022-09-30 12:00:00', '2022-10-05 15:00:00', 590, 'C004', 'A005', 'G002'),
		('E00023', '2022-09-30 20:00:00', '2022-09-30 00:00:00', 290, 'C012', 'A004', 'G013'),
		('E00024', '2022-10-01 12:00:00', '2022-10-07 18:00:00', 1940, 'C001', 'A004', 'G001'),
		('E00026', '2022-10-09 17:00:00', '2022-10-14 22:00:00', 950, 'C001', 'A006', 'G002'),
		('E00027', '2022-10-07 12:00:00', '2022-10-12 16:00:00', 2210, 'C015', 'A007', 'G003'),
		('E00028', '2022-10-06 17:00:00', '2022-10-15 22:00:00', 3800, 'C003', 'A004', 'G007'),
		('E00030', '2022-10-06 17:00:00', '2022-10-08 22:00:00', 275, 'C009', 'A005', 'G011'),
		('E00031', '2022-10-07 16:00:00', '2022-10-16 20:00:00', 2450, 'C002', 'A008', 'G010'),
		('E00032', '2022-10-07 13:00:00', '2022-10-16 15:00:00', 1250, 'C010', 'A007', 'G013'),
		('E00034', '2022-10-14 16:00:00', '2022-10-20 18:00:00', 680, 'C004', 'A008', 'G005'),
		('E00035', '2022-10-14 19:00:00', '2022-10-15 23:00:00', 410, 'C005', 'A008', 'G001'),
		('E00036', '2022-10-13 18:00:00', '2022-10-23 22:00:00', 710, 'C014', 'A003', 'G011'),
		('E00037', '2022-10-13 14:00:00', '2022-10-19 19:00:00', 2675, 'C006', 'A003', 'G008'),
		('E00038', '2022-10-14 14:00:00', '2022-10-18 20:00:00', 1850, 'C013', 'A004', 'G006'),
		('E00041', '2022-10-20 18:00:00', '2022-10-28 21:00:00', 860, 'C013', 'A003', 'G002'),
		('E00042', '2022-10-20 17:00:00', '2022-10-26 22:00:00', 2150, 'C002', 'A001', 'G013'),
		('E00043', '2022-10-21 14:00:00', '2022-10-21 16:00:00', 140, 'C001', 'A008', 'G001'),
		('E00044', '2022-10-22 14:00:00', '2022-10-26 19:00:00', 1925, 'C006', 'A003', 'G008'),
		('E00045', '2022-10-21 14:00:00', '2022-10-28 18:00:00', 530, 'C015', 'A001', 'G012'),
		('E00046', '2022-10-28 15:00:00', '2022-11-05 17:00:00', 1400, 'C009', 'A004', 'G008'),
		('E00048', '2022-11-05 16:00:00', '2022-11-06 22:00:00', 950, 'C002', 'A001', 'G007'),
		('E00049', '2022-11-13 12:00:00', '2022-11-19 14:00:00', 680, 'C014', 'A005', 'G001'),
		('E00051', '2022-11-13 20:00:00', '2022-11-14 01:00:00', 650, 'C013', 'A003', 'G013'),
		('E00052', '2022-11-13 16:00:00', '2022-11-14 21:00:00', 650, 'C010', 'A003', 'G006'),
		('E00053', '2022-11-11 17:00:00', '2022-11-12 19:00:00', 350, 'C002', 'A005', 'G007'),
		('E00055', '2022-11-19 20:00:00', '2022-11-26 02:00:00', 770, 'C002', 'A003', 'G011'),
		('E00056', '2022-11-25 14:00:00', '2022-11-28 19:00:00', 1550, 'C010', 'A003', 'G007'),
		('E00058', '2022-12-01 17:00:00', '2022-12-04 23:00:00', 770, 'C001', 'A002', 'G002'),
		('E00059', '2022-12-01 15:00:00', '2022-12-04 19:00:00', 290, 'C004', 'A006', 'G012'),
		('E00060', '2022-12-02 13:00:00', '2022-12-04 17:00:00', 230, 'C010', 'A008', 'G004'),
		('E00061', '2022-12-03 17:00:00', '2022-12-10 20:00:00', 410, 'C015', 'A008', 'G011'),
		('E00062', '2022-12-09 20:00:00', '2022-12-10 01:00:00', 500, 'C003', 'A002', 'G005'),
		('E00063', '2022-12-18 14:00:00', '2022-12-21 16:00:00', 650, 'C009', 'A003', 'G008'),
		('E00064', '2022-12-25 14:00:00', '2023-01-03 16:00:00', 1250, 'C007', 'A003', 'G013'),
		('E00066', '2022-12-22 20:00:00', '2022-12-29 02:00:00', 2930, 'C005', 'A005', 'G006'),
		('E00068', '2022-12-24 16:00:00', '2022-12-29 22:00:00', 1670, 'C009', 'A001', 'G005'),
		('E00069', '2022-12-22 15:00:00', '2022-12-23 18:00:00', 500, 'C004', 'A007', 'G008'),
		('E00070', '2022-12-23 13:00:00', '2022-12-26 15:00:00', 410, 'C010', 'A006', 'G001'),
		('E00071', '2022-12-22 14:00:00', '2022-12-27 17:00:00', 1670, 'C002', 'A001', 'G003'),
		('E00072', '2022-12-22 20:00:00', '2023-01-01 01:00:00', 875, 'C012', 'A004', 'G011'),
		('E00073', '2022-12-29 19:00:00', '2023-01-07 22:00:00', 1400, 'C014', 'A005', 'G001'),
		('E00074', '2023-01-01 13:00:00', '2023-01-06 15:00:00', 590, 'C004', 'A001', 'G005'),
		('E00075', '2023-01-01 17:00:00', '2023-01-11 20:00:00', 2525, 'C001', 'A007', 'G007'),
		('E00076', '2022-12-30 16:00:00', '2023-01-03 22:00:00', 500, 'C005', 'A007', 'G012'),
		('E00077', '2022-12-30 17:00:00', '2023-01-04 20:00:00', 1670, 'C015', 'A005', 'G003'),
		('E00078', '2023-01-01 16:00:00', '2023-01-03 20:00:00', 770, 'C010', 'A004', 'G010'),
		('E00079', '2022-12-30 12:00:00', '2023-01-03 17:00:00', 1550, 'C006', 'A008', 'G006'),
		('E00080', '2022-12-31 17:00:00', '2023-01-01 21:00:00', 650, 'C002', 'A005', 'G008'),
		('E00081', '2023-01-01 13:00:00', '2023-01-09 17:00:00', 1130, 'C013', 'A004', 'G002'),
		('E00082', '2023-01-08 20:00:00', '2023-01-09 01:00:00', 950, 'C014', 'A008', 'G003'),
		('E00083', '2023-01-06 13:00:00', '2023-01-10 15:00:00', 650, 'C010', 'A002', 'G006'),
		('E00084', '2023-01-06 17:00:00', '2023-01-11 19:00:00', 230, 'C007', 'A003', 'G012'),
		('E00085', '2023-01-06 14:00:00', '2023-01-08 19:00:00', 1175, 'C015', 'A004', 'G008'),
		('E00087', '2023-01-04 16:00:00', '2023-01-06 19:00:00', 275, 'C007', 'A006', 'G008'),
		('E00088', '2023-01-07 12:00:00', '2023-01-17 14:00:00', 1370, 'C004', 'A008', 'G013'),
		('E00089', '2023-01-06 14:00:00', '2023-01-07 16:00:00', 290, 'C003', 'A008', 'G010'),
		('E00090', '2023-01-08 20:00:00', '2023-01-08 02:00:00', 320, 'C006', 'A005', 'G001'),
		('E00091', '2023-01-05 13:00:00', '2023-01-12 19:00:00', 770, 'C009', 'A003', 'G004'),
		('E00092', '2023-01-12 19:00:00', '2023-01-16 00:00:00', 1925, 'C012', 'A006', 'G008'),
		('E00095', '2023-01-15 20:00:00', '2023-01-18 01:00:00', 1550, 'C010', 'A006', 'G007'),
		('E00096', '2023-01-22 15:00:00', '2023-01-31 17:00:00', 950, 'C009', 'A006', 'G005'),
		('E00097', '2023-01-19 17:00:00', '2023-01-19 21:00:00', 110, 'C012', 'A008', 'G004'),
		('E00098', '2023-01-20 20:00:00', '2023-01-27 02:00:00', 2930, 'C012', 'A002', 'G010'),
		('E00099', '2023-01-22 14:00:00', '2023-02-22 20:00:00', 14105, 'C005', 'A006', 'G008'),
		('E00100', '2023-01-19 12:00:00', '2023-01-23 18:00:00', 1850, 'C015', 'A003', 'G006'),
		('E00101', '2023-01-22 14:00:00', '2023-01-30 18:00:00', 1670, 'C004', 'A005', 'G001'),
		('E00102', '2023-01-22 12:00:00', '2023-01-31 15:00:00', 2300, 'C013', 'A005', 'G007'),
		('E00103', '2023-01-21 12:00:00', '2023-01-27 17:00:00', 575, 'C010', 'A004', 'G011'),
		('E00104', '2023-01-28 13:00:00', '2023-02-01 16:00:00', 1400, 'C010', 'A006', 'G003'),
		('E00105', '2023-01-27 12:00:00', '2023-02-01 17:00:00', 1850, 'C002', 'A004', 'G013'),
		('E00106', '2023-01-29 15:00:00', '2023-02-01 18:00:00', 770, 'C003', 'A006', 'G006'),
		('E00107', '2023-01-29 16:00:00', '2023-01-30 21:00:00', 200, 'C007', 'A004', 'G004'),
		('E00108', '2023-02-02 18:00:00', '2023-02-04 00:00:00', 320, 'C004', 'A005', 'G012'),
		('E00109', '2023-02-11 13:00:00', '2023-02-15 19:00:00', 1850, 'C014', 'A005', 'G010'),
		('E00110', '2023-02-11 15:00:00', '2023-02-19 19:00:00', 1670, 'C006', 'A008', 'G001'),
		('E00111', '2023-02-12 15:00:00', '2023-02-14 18:00:00', 185, 'C012', 'A001', 'G004'),
		('E00112', '2023-02-19 18:00:00', '2023-02-24 22:00:00', 410, 'C015', 'A007', 'G011'),
		('E00114', '2023-02-19 12:00:00', '2023-02-28 17:00:00', 1550, 'C005', 'A001', 'G002'),
		('E00115', '2023-02-19 12:00:00', '2023-02-22 18:00:00', 1490, 'C007', 'A005', 'G013'),
		('E00116', '2023-02-16 14:00:00', '2023-02-25 19:00:00', 800, 'C003', 'A006', 'G012'),
		('E00118', '2023-02-18 19:00:00', '2023-02-18 00:00:00', 350, 'C014', 'A001', 'G010'),
		('E00119', '2023-02-19 18:00:00', '2023-02-28 21:00:00', 500, 'C012', 'A002', 'G004'),
		('E00120', '2023-02-17 20:00:00', '2023-02-20 23:00:00', 950, 'C002', 'A007', 'G008'),
		('E00121', '2023-02-16 17:00:00', '2023-02-22 23:00:00', 2570, 'C004', 'A003', 'G006'),
		('E00122', '2023-02-24 15:00:00', '2023-02-27 19:00:00', 1010, 'C014', 'A005', 'G010'),
		('E00123', '2023-02-25 16:00:00', '2023-02-28 20:00:00', 770, 'C013', 'A001', 'G001'),
		('E00124', '2023-02-23 14:00:00', '2023-03-02 17:00:00', 1850, 'C006', 'A001', 'G008'),
		('E00125', '2023-02-23 13:00:00', '2023-02-28 15:00:00', 1130, 'C001', 'A003', 'G003'),
		('E00126', '2023-02-24 18:00:00', '2023-03-03 20:00:00', 1010, 'C009', 'A006', 'G006'),
		('E00127', '2023-02-24 20:00:00', '2023-02-28 22:00:00', 500, 'C010', 'A004', 'G005'),
		('E00128', '2023-02-26 19:00:00', '2023-02-28 01:00:00', 320, 'C003', 'A004', 'G011'),
		('E00129', '2023-02-24 17:00:00', '2023-03-05 21:00:00', 2450, 'C004', 'A005', 'G013'),
		('E00131', '2023-03-03 15:00:00', '2023-03-12 17:00:00', 1850, 'C014', 'A001', 'G003');
GO

INSERT INTO Members (MemberKey, MemberFirstName, MemberLastName, MemberPhone, MemberGender)
VALUES  ('M001', 'David', 'Hamilton', '555-2701', 'M'),
		('M002', 'Suzanne', 'Viescas', '555-2686', 'F'),
		('M003', 'Gary', 'Hallmark', '555-2676', 'M'),
		('M004', 'Jeffrey', 'Smith', '555-2596', 'M'),
		('M005', 'Robert', 'Brown', '555-2491', 'M'),
		('M006', 'Mariya', 'Sergienko', '555-2526', 'F'),
		('M007', 'Sara', 'Sheskey', '555-2566', 'F'),
		('M008', 'Rachel', 'Patterson', '555-2546', 'F'),
		('M009', 'David', 'Viescas', '555-2661', 'M'),
		('M010', 'Manuela', 'Seidel', '555-2641', 'F'),
		('M011', 'Kathryn', 'Patterson', '555-2651', 'F'),
		('M012', 'Kendra', 'Bonnicksen', '555-2716', 'F'),
		('M013', 'Steve', 'Pundt', '555-9938', 'M'),
		('M014', 'George', 'Chavez', '555-9930', 'M'),
		('M015', 'Joe', 'Rosales', '555-2281', 'M'),
		('M016', 'Angel', 'Kennedy', '555-2311', 'M'),
		('M017', 'Luke', 'Patterson', '555-2316', 'M'),
		('M018', 'Janice', 'Galvin', '555-2691', 'F'),
		('M019', 'John', 'Viescas', '555-2511', 'M'),
		('M020', 'Michael', 'Hernandez', '555-2711', 'M'),
		('M021', 'Katherine', 'Ehrlich', '555-0399', 'F'),
		('M022', 'Julia', 'Schnebly', '555-9936', 'F'),
		('M023', 'Susan', 'McLain', '555-2301', 'F'),
		('M024', 'Caroline', 'Coie', '555-2306', 'F'),
		('M025', 'Jim', 'Glynn', '555-2531', 'M');
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