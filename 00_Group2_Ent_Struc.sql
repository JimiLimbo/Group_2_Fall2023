USE [master]
GO
/****** Object:  Database [HighbrowEntertainment]    Script Date: 9/30/2023 7:25:04 PM ******/
CREATE DATABASE [HighbrowEntertainment]
 GO

USE [HighbrowEntertainment]
GO
/****** Object:  Table [dbo].[Agents]    Script Date: 9/30/2023 7:25:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agents](
	[AgentKey] [varchar](4) NOT NULL,
	[AgentFirstName] [varchar](35) NOT NULL,
	[AgentLastName] [varchar](35) NOT NULL,
	[AgentStreetAddress] [varchar](40) NOT NULL,
	[AgentCity] [varchar](35) NOT NULL,
	[AgentState] [char](2) NOT NULL,
	[AgentZip] [char](5) NOT NULL,
	[AgentPhone] [varchar](15) NOT NULL,
	[AgentDateHired] [date] NOT NULL,
	[AgentSalary] [decimal](14, 4) NOT NULL,
	[AgentCommissionRate] [decimal](14, 4) NOT NULL,
 CONSTRAINT [PK_AgentKey] PRIMARY KEY CLUSTERED 
(
	[AgentKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerPreference]    Script Date: 9/30/2023 7:25:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerPreference](
	[CustomerKey] [varchar](4) NOT NULL,
	[StyleKey] [varchar](4) NOT NULL,
	[StylePreferenceRating] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 9/30/2023 7:25:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerKey] [varchar](4) NOT NULL,
	[CustFirstName] [varchar](35) NOT NULL,
	[CustLastName] [varchar](35) NOT NULL,
	[CustStreetAddress] [varchar](40) NOT NULL,
	[CustCity] [varchar](35) NOT NULL,
	[CustState] [char](2) NOT NULL,
	[CustZip] [char](5) NOT NULL,
 CONSTRAINT [PK_CustomerKey] PRIMARY KEY CLUSTERED 
(
	[CustomerKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Engagements]    Script Date: 9/30/2023 7:25:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Engagements](
	[EngagementKey] [varchar](6) NOT NULL,
	[EngStartDateTime] [datetime] NOT NULL,
	[EngEndDateTime] [datetime] NOT NULL,
	[EngContractPrice] [decimal](14, 4) NOT NULL,
	[CustomerKey] [varchar](4) NOT NULL,
	[AgentKey] [varchar](4) NOT NULL,
	[GroupKey] [varchar](4) NOT NULL,
 CONSTRAINT [PK_EngagementKey] PRIMARY KEY CLUSTERED 
(
	[EngagementKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UniqueBooking] UNIQUE NONCLUSTERED 
(
	[GroupKey] ASC,
	[EngStartDateTime] ASC,
	[EngEndDateTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupMember]    Script Date: 9/30/2023 7:25:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupMember](
	[GroupKey] [varchar](4) NOT NULL,
	[MemberKey] [varchar](4) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 9/30/2023 7:25:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[GroupKey] [varchar](4) NOT NULL,
	[GroupStageName] [varchar](40) NOT NULL,
	[GroupTIN] [varchar](14) NOT NULL,
	[GroupStreetAddress] [varchar](40) NOT NULL,
	[GroupCity] [varchar](35) NOT NULL,
	[GroupState] [char](2) NOT NULL,
	[GroupZip] [char](5) NOT NULL,
	[GroupPhone] [varchar](15) NOT NULL,
	[GroupWebpage] [varchar](150) NULL,
	[GroupEmail] [varchar](75) NULL,
 CONSTRAINT [PK_GroupKey] PRIMARY KEY CLUSTERED 
(
	[GroupKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupStyle]    Script Date: 9/30/2023 7:25:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupStyle](
	[GroupKey] [varchar](4) NOT NULL,
	[StyleKey] [varchar](4) NOT NULL,
	[StyleStrength] [tinyint] NOT NULL,
 CONSTRAINT [UNIQUE_GroupKey_StyleStrength] UNIQUE NONCLUSTERED 
(
	[GroupKey] ASC,
	[StyleStrength] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Members]    Script Date: 9/30/2023 7:25:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Members](
	[MemberKey] [varchar](4) NOT NULL,
	[MemberFirstName] [varchar](35) NOT NULL,
	[MemberLastName] [varchar](35) NOT NULL,
	[MemberPhone] [varchar](15) NOT NULL,
	[MemberGender] [varchar](1) NULL,
 CONSTRAINT [PK_MemberKey] PRIMARY KEY CLUSTERED 
(
	[MemberKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MusicStyle]    Script Date: 9/30/2023 7:25:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MusicStyle](
	[StyleKey] [varchar](4) NOT NULL,
	[StyleName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_StyleKey] PRIMARY KEY CLUSTERED 
(
	[StyleKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CustomerPreference]  WITH CHECK ADD FOREIGN KEY([CustomerKey])
REFERENCES [dbo].[Customers] ([CustomerKey])
GO
ALTER TABLE [dbo].[CustomerPreference]  WITH CHECK ADD FOREIGN KEY([StyleKey])
REFERENCES [dbo].[MusicStyle] ([StyleKey])
GO
ALTER TABLE [dbo].[Engagements]  WITH CHECK ADD FOREIGN KEY([AgentKey])
REFERENCES [dbo].[Agents] ([AgentKey])
GO
ALTER TABLE [dbo].[Engagements]  WITH CHECK ADD FOREIGN KEY([CustomerKey])
REFERENCES [dbo].[Customers] ([CustomerKey])
GO
ALTER TABLE [dbo].[Engagements]  WITH CHECK ADD FOREIGN KEY([GroupKey])
REFERENCES [dbo].[Groups] ([GroupKey])
GO
ALTER TABLE [dbo].[GroupMember]  WITH CHECK ADD FOREIGN KEY([GroupKey])
REFERENCES [dbo].[Groups] ([GroupKey])
GO
ALTER TABLE [dbo].[GroupMember]  WITH CHECK ADD FOREIGN KEY([MemberKey])
REFERENCES [dbo].[Members] ([MemberKey])
GO
ALTER TABLE [dbo].[GroupStyle]  WITH CHECK ADD FOREIGN KEY([GroupKey])
REFERENCES [dbo].[Groups] ([GroupKey])
GO
ALTER TABLE [dbo].[GroupStyle]  WITH CHECK ADD FOREIGN KEY([StyleKey])
REFERENCES [dbo].[MusicStyle] ([StyleKey])
GO
ALTER TABLE [dbo].[CustomerPreference]  WITH CHECK ADD  CONSTRAINT [CK_StylePreferenceRating] CHECK  (([StylePreferenceRating]=(3) OR [StylePreferenceRating]=(2) OR [StylePreferenceRating]=(1)))
GO
ALTER TABLE [dbo].[CustomerPreference] CHECK CONSTRAINT [CK_StylePreferenceRating]
GO
ALTER TABLE [dbo].[Engagements]  WITH CHECK ADD  CONSTRAINT [CK_EngDates] CHECK  (([EngEndDateTime]>=[EngStartDateTime] OR [EngEndDateTime] IS NULL))
GO
ALTER TABLE [dbo].[Engagements] CHECK CONSTRAINT [CK_EngDates]
GO
ALTER TABLE [dbo].[GroupStyle]  WITH CHECK ADD  CONSTRAINT [CK_StyleStrength] CHECK  (([StyleStrength]=(3) OR [StyleStrength]=(2) OR [StyleStrength]=(1)))
GO
ALTER TABLE [dbo].[GroupStyle] CHECK CONSTRAINT [CK_StyleStrength]
GO
ALTER TABLE [dbo].[Members]  WITH CHECK ADD  CONSTRAINT [CK_MemberGender] CHECK  (([MemberGender]='F' OR [MemberGender]='M' OR [MemberGender] IS NULL))
GO
ALTER TABLE [dbo].[Members] CHECK CONSTRAINT [CK_MemberGender]
GO
/****** Object:  Trigger [dbo].[PreventDoubleBookingForGroup]    Script Date: 9/30/2023 7:25:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[PreventDoubleBookingForGroup]
ON [dbo].[Engagements]
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
ALTER TABLE [dbo].[Engagements] ENABLE TRIGGER [PreventDoubleBookingForGroup]
GO
USE [master]
GO
ALTER DATABASE [HighbrowEntertainment] SET  READ_WRITE 
GO
