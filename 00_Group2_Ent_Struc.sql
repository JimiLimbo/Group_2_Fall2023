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
	CONSTRAINT CK_EngDates CHECK (EngEndDateTime >= EngStartDateTime OR EngEndDateTime IS NULL),
	CONSTRAINT UniqueBooking UNIQUE(GroupKey, EngStartDateTime, EngEndDateTime)
);
GO

CREATE TRIGGER PreventDoubleBookingForGroup
ON Engagements
AFTER INSERT, UPDATE
AS
BEGIN
  DECLARE @doubleBooked INT
  SELECT @doubleBooked = COUNT(*)
  FROM Engagements E, inserted I
  WHERE E.GroupKey = I.GroupKey
    AND E.EngagementKey != I.EngagementKey
    AND ((E.EngStartDateTime = I.EngStartDateTime
    AND E.EngEndDateTime = I.EngEndDateTime) 
	OR I.EngStartDateTime BETWEEN E.EngStartDateTime AND E.EngEndDateTime)

IF @doubleBooked > 0
  BEGIN
    ROLLBACK TRANSACTION
    RAISERROR('Double booking is not allowed for the same GroupKey, Date, and Time.', 16, 1)
  END
END
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