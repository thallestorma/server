USE [MuOnline]
GO

/****** Object:  Table [dbo].[_nyxResources]    Script Date: 08-Mar-20 18:49:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[_nyxResources]
(
  [account] [varchar](10) NOT NULL,
  [items] [varchar](7680) NOT NULL,
  [zen] [bigint] NOT NULL,
  [credits] [int] NOT NULL,
  [resources] [nvarchar](4000) NOT NULL,
  CONSTRAINT [PK__nyxResources] PRIMARY KEY CLUSTERED 
(
	[account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[_nyxResources] ADD  CONSTRAINT [DF__nyxResources_zen]  DEFAULT ((0)) FOR [zen]
GO

ALTER TABLE [dbo].[_nyxResources] ADD  CONSTRAINT [DF__nyxResources_credits]  DEFAULT ((0)) FOR [credits]
GO


