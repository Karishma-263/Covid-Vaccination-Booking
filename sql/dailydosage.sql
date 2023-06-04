USE [vaccine]
GO

/****** Object:  Table [dbo].[dailydosage]    Script Date: 06/04/2023 9:48:39 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dailydosage](
	[dosageID] [varchar](50) NULL,
	[CenterID] [varchar](50) NULL,
	[userID] [varchar](50) NULL,
	[DosageDate] [date] NULL
) ON [PRIMARY]
GO

