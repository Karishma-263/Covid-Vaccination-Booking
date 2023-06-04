USE [vaccine]
GO

/****** Object:  Table [dbo].[vaccinecenter]    Script Date: 06/04/2023 9:49:13 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[vaccinecenter](
	[centerID] [varchar](50) NULL,
	[vaccinename] [nvarchar](50) NULL,
	[vaccinecenter] [nvarchar](50) NULL,
	[Dosage] [int] NULL,
	[city] [nchar](10) NULL,
	[state] [nchar](10) NULL,
	[pincode] [nchar](10) NULL,
	[address] [text] NULL,
	[createddate] [date] NULL,
	[totalslots] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[vaccinecenter] ADD  CONSTRAINT [DF_vaccinecenter_totalslots]  DEFAULT ((10)) FOR [totalslots]
GO

