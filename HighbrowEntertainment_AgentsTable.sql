USE [HighbrowEntertainment]
GO
/****** Object:  Table [dbo].[Agents]    Script Date: 9/20/2023 9:04:05 AM ******/
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
