SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sales].[CountryRegionCurrency](
	[CountryRegionCode] [nvarchar](3) NOT NULL,
	[CurrencyCode] [nchar](3) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_CountryRegionCurrency_CountryRegionCode_CurrencyCode] PRIMARY KEY CLUSTERED
(
	[CountryRegionCode] ASC,
	[CurrencyCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Sales].[CountryRegionCurrency] ADD  CONSTRAINT [DF_CountryRegionCurrency_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO