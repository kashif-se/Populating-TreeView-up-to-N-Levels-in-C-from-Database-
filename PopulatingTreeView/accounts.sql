/****** Object:  Table [dbo].accounts    Script Date: 2/9/2016 5:32:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].accounts(
	[code] [int] NOT NULL,
	[ac_name] [nvarchar](50) NOT NULL,
	[parent] [int] NOT NULL,
	[type] [nvarchar](20) NOT NULL,
	[levelno] [int] NOT NULL,
	[fixed] [nvarchar](50) NULL,
	[direct] [nvarchar](50) NULL,
	[open_bal] [decimal](18, 2) NULL,
	[dt] [datetime] NULL CONSTRAINT [DF_chart_dt]  DEFAULT (getdate()),
	[active] [int] NOT NULL CONSTRAINT [DF_chart_active]  DEFAULT ((1)),
	[cntr] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_chart] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].accounts ON 

GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (1, N'Assets', 0, N'Parent Account', 0, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 1)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (2, N'Liabilities', 0, N'Parent Account', 0, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 2)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (3, N'Equity', 0, N'Parent Account', 0, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 3)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (4, N'Revenue', 0, N'Parent Account', 0, N'Variable', N'Indirect', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-26 00:00:00.000' AS DateTime), 1, 38)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (101, N'Current Assets', 1, N'Parent Account', 1, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 4)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (102, N'Fixed Assets', 1, N'Parent Account', 1, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 5)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (201, N'Short Term Liabilities', 2, N'Parent Account', 1, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 6)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (202, N'Long Term Liabilities', 2, N'Parent Account', 1, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 7)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (301, N'Owner''s Equity', 3, N'Parent Account', 1, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 8)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (401, N'Sales', 4, N'Parent Account', 0, N'Variable', N'Indirect', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-28 00:00:00.000' AS DateTime), 0, 43)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (10101, N'Cash and Bank', 101, N'Parent Account', 2, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 9)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (10102, N'Customer Recivables', 101, N'Parent Account', 2, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 10)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (10103, N'Inventory/Stocks', 101, N'Parent Account', 2, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 11)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (10104, N'Personal Loan Receivables', 101, N'Parent Account', 2, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 12)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (10105, N'Employees Receivables', 101, N'Parent Account', 2, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 13)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (10106, N'Other Receivables', 101, N'Parent Account', 2, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 14)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (10201, N'Non Current Assests', 102, N'Parent Account', 2, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 15)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (20101, N'Vendor Payables', 201, N'Parent Account', 2, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 16)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (20102, N'Other Payables', 201, N'Parent Account', 2, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 17)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (20103, N'Services Payables', 20103, N'Parent Account', 2, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 32)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (20201, N'Personal Payables', 202, N'Parent Account', 2, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 18)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (30101, N'Capital', 301, N'Parent Account', 2, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 19)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (40101, N'Sales Income', 401, N'Transaction Account', 2, N'NA', N'NA', CAST(200.00 AS Decimal(18, 2)), CAST(N'2015-02-26 00:00:00.000' AS DateTime), 0, 45)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (40102, N'Other Income', 401, N'Transaction Account', 2, N'Variable', N'Indirect', CAST(500.00 AS Decimal(18, 2)), CAST(N'2015-02-26 00:00:00.000' AS DateTime), 1, 46)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (10101001, N'Cash in Hand', 10101, N'Transaction Account', 3, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 20)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (10101030, N'Mezan Bank', 10101, N'Transaction Account', 3, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 21)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (10102001, N'Ittefaq Traders, Haroon Abad', 10102, N'Transaction Account', 3, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 22)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (10103001, N'Raw Meterial Stock', 10103, N'Transaction Account', 3, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 23)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (10103002, N'Finished Inventory', 10103, N'Transaction Account', 3, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 24)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (10103003, N'Packing Inventory', 10103, N'Transaction Account', 3, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 25)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (10104012, N'Rafiq Plumber', 10104, N'Transaction Account', 3, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 26)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (10106001, N'Suspense A/C', 10106, N'Transaction Account', 3, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 28)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (10201001, N'ERP Software Asset', 10201, N'Transaction Account', 3, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 00:00:00.000' AS DateTime), 0, 29)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (20102001, N'Suzuki Wagon', 20102, N'Transaction Account', 3, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 31)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (20103001, N'Masal Magazine', 20103, N'Transaction Account', 3, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 33)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (20201001, N'Arshad Ahmad, Gagoo Mandi (Cream)', 20201, N'Transaction Account', 3, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 34)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (30101001, N'Capital A/C', 30101, N'Transaction Account', 3, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 35)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (30101002, N'Drawing (Haji Aslam Sb)', 30101, N'Transaction Account', 3, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 21:09:27.327' AS DateTime), 1, 36)
GO
INSERT [dbo].accounts ([code], [ac_name], [parent], [type], [levelno], [fixed], [direct], [open_bal], [dt], [active], [cntr]) VALUES (201011001, N'BABA Muhammad Hussain Dairy Multan', 20101, N'Transaction Account', 3, N'NA', N'NA', CAST(0.00 AS Decimal(18, 2)), CAST(N'2015-02-23 00:00:00.000' AS DateTime), 0, 30)
GO
SET IDENTITY_INSERT [dbo].accounts OFF
GO
