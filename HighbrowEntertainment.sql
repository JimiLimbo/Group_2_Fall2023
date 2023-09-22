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
	AgentFirstName CHAR(35),
	AgentLastName CHAR(35),
	AgentAddress CHAR(40),
	AgentCity CHAR(35),
	AgentState CHAR(2),
	AgentZip CHAR(5),
	AgentPhone CHAR(15),
	AgentDateHired DATE,
	AgentSalary DECIMAL(9,2),
	AgentCommissionRate DECIMAL(4,3),
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
	CustFirstName CHAR(35),
	CustLastName CHAR(35),
	CustStreetAddress CHAR(40),
	CustCity CHAR(35),
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
	GroupState VARCHAR(2),
	GroupZip VARCHAR(5),
	GroupPhone VARCHAR(15),
	GroupWebpage VARCHAR(150) DEFAULT('No Page'),
	GroupEmail VARCHAR(75) DEFAULT('No Email'),
	DateEntered DATE,
	CONSTRAINT PK_GroupKey PRIMARY KEY (GroupKey)
);
GO

CREATE TABLE Members(
	MemberKey VARCHAR(4) NOT NULL,
	MemberFirstName VARCHAR(35),
	MemberLastName VARCHAR(35),
	MemberPhone VARCHAR(15),
	MemberGender VARCHAR(1),
	CONSTRAINT PK_MemberKey PRIMARY KEY (MemberKey)
);
GO

CREATE TABLE Engagements(
	EngagementKey VARCHAR(6) NOT NULL,
	EngStartDate DATE,
	EngEndDate DATE,
	EngStartTime TIME,
	EngEndTime TIME,
	EngContractPrice DECIMAL(8,2),
	CustomerKey VARCHAR(4) NOT NULL FOREIGN KEY REFERENCES Customers(CustomerKey),
	AgentKey VARCHAR(4) NOT NULL FOREIGN KEY REFERENCES Agents(AgentKey),
	GroupKey VARCHAR(4) NOT NULL FOREIGN KEY REFERENCES Groups(GroupKey),
	CONSTRAINT PK_EngagementKey PRIMARY KEY (EngagementKey),
	CONSTRAINT CHK_Date CHECK (EngEndDate >= EngStartDate OR EngEndDate IS NULL)
);
GO

CREATE TABLE GroupMember(
	GroupKey VARCHAR(4) NOT NULL FOREIGN KEY REFERENCES Groups(GroupKey),
	MemberKey VARCHAR(4) NOT NULL FOREIGN KEY REFERENCES Members(MemberKey)
	CONSTRAINT PK_GroupMember PRIMARY KEY (GroupKey,MemberKey)
);
GO

CREATE TABLE CustomerPreference(
	CustomerKey VARCHAR(4) NOT NULL FOREIGN KEY REFERENCES Customers(CustomerKey),
	StyleKey VARCHAR(4) NOT NULL FOREIGN KEY REFERENCES MusicStyle(StyleKey),
	StylePreferenceRating TINYINT
	CONSTRAINT PK_CustomerPreference PRIMARY KEY (CustomerKey,StyleKey)
);
GO

CREATE TABLE GroupStyle(
	GroupKey VARCHAR(4) NOT NULL FOREIGN KEY REFERENCES Groups(GroupKey),
	StyleKey VARCHAR(4) NOT NULL FOREIGN KEY REFERENCES MusicStyle(StyleKey),
	StyleStrength TINYINT
	CONSTRAINT PK_GroupStyle PRIMARY KEY (GroupKey,StyleKey)
);
GO

--add data
INSERT INTO Agents(AgentKey, AgentFirstName, AgentLastName, AgentAddress, AgentCity, AgentState, AgentZip, AgentPhone, AgentDateHired, AgentSalary, AgentCommissionRate)
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

INSERT INTO Groups(GroupKey, GroupStageName, GroupSSN, GroupStreetAddress, GroupCity, GroupState, GroupZip, GroupPhone, GroupWebpage, GroupEmail, DateEntered)
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