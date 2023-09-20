USE [master]
GO

CREATE DATABASE [HighbrowEntertainment]
GO

USE [HighbrowEntertainment]
GO

CREATE TABLE Agents(
	AgentKey VARCHAR(4) NOT NULL,
	AgentFirstName CHAR(35),
	AgentLastName CHAR(35),
	AgentAddress CHAR(35),
	AgentCity CHAR(35),
	AgentState CHAR(2),
	AgentZip CHAR(5),
	AgentPhone CHAR(15),
	AgentSalary DECIMAL(9,2),
	AgentCommissionRate DECIMAL(4,3),
	CONSTRAINT PK_AuthorKey PRIMARY KEY (AgentKey)
);
GO