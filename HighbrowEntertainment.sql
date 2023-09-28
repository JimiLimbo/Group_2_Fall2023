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
	AgentFirstName VARCHAR(35) NOT NULL,
	AgentLastName VARCHAR(35) NOT NULL,
	AgentStreetAddress VARCHAR(40) NOT NULL,
	AgentCity VARCHAR(35) NOT NULL,
	AgentState CHAR(2) NOT NULL,
	AgentZip CHAR(5) NOT NULL,
	AgentPhone VARCHAR(15) NOT NULL,
	AgentDateHired DATE NOT NULL,
	AgentSalary DECIMAL(14,4) NOT NULL,
	AgentCommissionRate DECIMAL(14,4) NOT NULL,
	CONSTRAINT PK_AgentKey PRIMARY KEY (AgentKey)
);
GO

CREATE TABLE MusicStyle(
	StyleKey VARCHAR(4) NOT NULL,
	StyleName VARCHAR(50) NOT NULL,
	CONSTRAINT PK_StyleKey PRIMARY KEY (StyleKey)
);
GO

CREATE TABLE Customers(
	CustomerKey VARCHAR(4) NOT NULL,
	CustFirstName VARCHAR(35) NOT NULL,
	CustLastName VARCHAR(35) NOT NULL,
	CustStreetAddress VARCHAR(40) NOT NULL,
	CustCity VARCHAR(35) NOT NULL,
	CustState CHAR(2) NOT NULL,
	CustZip CHAR(5) NOT NULL,
	CONSTRAINT PK_CustomerKey PRIMARY KEY (CustomerKey)
);
GO

CREATE TABLE Groups(
	GroupKey VARCHAR(4) NOT NULL,
	GroupStageName VARCHAR(40) NOT NULL,
	GroupTIN VARCHAR(14) NOT NULL,
	GroupStreetAddress VARCHAR(40) NOT NULL,
	GroupCity VARCHAR(35) NOT NULL,
	GroupState CHAR(2) NOT NULL,
	GroupZip CHAR(5) NOT NULL,
	GroupPhone VARCHAR(15) NOT NULL,
	GroupWebpage VARCHAR(150),
	GroupEmail VARCHAR(75),
	CONSTRAINT PK_GroupKey PRIMARY KEY (GroupKey),
    CONSTRAINT CK_GroupDateEntered CHECK (GroupDateEntered <= GETDATE())
);
GO

CREATE TABLE Members(
	MemberKey VARCHAR(4) NOT NULL,
	MemberFirstName VARCHAR(35) NOT NULL,
	MemberLastName VARCHAR(35) NOT NULL,
	MemberPhone VARCHAR(15) NOT NULL,
	MemberGender VARCHAR(1),
	CONSTRAINT PK_MemberKey PRIMARY KEY (MemberKey),
	CONSTRAINT CK_MemberGender CHECK (MemberGender IN ('M', 'F') OR MemberGender IS NULL)

);
GO

CREATE TABLE Engagements(
	EngagementKey VARCHAR(6) NOT NULL,
	EngStartDateTime DATETIME NOT NULL,
	EngEndDateTime DATETIME NOT NULL,
	EngContractPrice DECIMAL(14,4) NOT NULL,
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

-- INSERT INTO Engagements(EngagementKey, EngStartDateTime, EngEndDateTime, EngContractPrice, CustomerKey, AgentKey, GroupKey)
-- VALUES 
-- GO

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