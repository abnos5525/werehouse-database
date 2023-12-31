USE [db_werehouse]
GO
/****** Object:  Table [dbo].[Driver]    Script Date: 8/12/2023 3:50:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Driver](
	[d_ssn] [nchar](10) NOT NULL,
	[d_name] [nchar](50) NULL,
	[d_address] [nchar](100) NULL,
	[d_tel] [nchar](11) NULL,
 CONSTRAINT [PK_Driver] PRIMARY KEY CLUSTERED 
(
	[d_ssn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GeneralManager]    Script Date: 8/12/2023 3:50:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GeneralManager](
	[g_ssn] [nchar](10) NOT NULL,
	[g_name] [nchar](50) NULL,
	[g_address] [nchar](100) NULL,
	[g_tel] [nchar](11) NULL,
 CONSTRAINT [PK_GeneralManager] PRIMARY KEY CLUSTERED 
(
	[g_ssn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 8/12/2023 3:50:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[i_code] [int] NOT NULL,
	[p_code] [int] NULL,
	[p_count] [int] NULL,
	[g_invoiceCheck] [nchar](10) NOT NULL,
	[d_invoiceCheck] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[i_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IO]    Script Date: 8/12/2023 3:50:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IO](
	[io_code] [int] IDENTITY(1,1) NOT NULL,
	[io_date] [date] NULL,
	[s_code] [int] NOT NULL,
	[p_unit] [nchar](20) NULL,
	[p_count] [int] NULL,
	[p_code] [int] NOT NULL,
	[io_type] [nchar](10) NULL,
	[t_code] [int] NOT NULL,
 CONSTRAINT [PK_IO] PRIMARY KEY CLUSTERED 
(
	[io_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manager]    Script Date: 8/12/2023 3:50:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[m_ssn] [nchar](10) NOT NULL,
	[m_name] [nchar](50) NULL,
	[m_address] [nchar](100) NULL,
	[m_tel] [nchar](11) NULL,
	[gm_code] [nchar](10) NULL,
 CONSTRAINT [PK_manager] PRIMARY KEY CLUSTERED 
(
	[m_ssn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 8/12/2023 3:50:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[p_code] [int] IDENTITY(1,1) NOT NULL,
	[p_name] [nchar](50) NULL,
	[p_unit] [nchar](20) NULL,
	[p_price] [int] NULL,
	[p_type] [nchar](50) NULL,
	[p_brand] [nchar](50) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[p_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Store]    Script Date: 8/12/2023 3:50:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store](
	[s_code] [int] IDENTITY(1,1) NOT NULL,
	[s_name] [nchar](50) NULL,
	[s_type] [nchar](50) NULL,
	[s_area] [int] NULL,
	[s_manager] [nchar](10) NULL,
 CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED 
(
	[s_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Truck]    Script Date: 8/12/2023 3:50:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Truck](
	[t_code] [int] IDENTITY(1,1) NOT NULL,
	[t_type] [nchar](20) NULL,
	[t_driver] [nchar](10) NULL,
 CONSTRAINT [PK_Truck] PRIMARY KEY CLUSTERED 
(
	[t_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Work]    Script Date: 8/12/2023 3:50:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Work](
	[work_id] [int] NOT NULL,
	[w_code] [nchar](10) NULL,
	[s_code] [int] NULL,
	[work_time] [int] NULL,
 CONSTRAINT [PK_Work] PRIMARY KEY CLUSTERED 
(
	[work_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Worker]    Script Date: 8/12/2023 3:50:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Worker](
	[w_ssn] [nchar](10) NOT NULL,
	[w_name] [nchar](50) NULL,
	[w_address] [nchar](100) NULL,
	[w_tel] [nchar](11) NULL,
	[w_level] [nchar](20) NULL,
	[m_ssn] [nchar](10) NULL,
 CONSTRAINT [PK_Worker] PRIMARY KEY CLUSTERED 
(
	[w_ssn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Driver] ([d_ssn], [d_name], [d_address], [d_tel]) VALUES (N'03157     ', N'رضا                                               ', N'بوشهر                                                                                               ', N'09664      ')
INSERT [dbo].[Driver] ([d_ssn], [d_name], [d_address], [d_tel]) VALUES (N'32141     ', N'قاسم                                              ', N'شیراز                                                                                               ', N'09154      ')
INSERT [dbo].[Driver] ([d_ssn], [d_name], [d_address], [d_tel]) VALUES (N'65232     ', N'کاظم                                              ', N'یزد                                                                                                 ', N'09223      ')
INSERT [dbo].[Driver] ([d_ssn], [d_name], [d_address], [d_tel]) VALUES (N'65842     ', N'امیر                                              ', N'اصفهان                                                                                              ', N'09475      ')
INSERT [dbo].[Driver] ([d_ssn], [d_name], [d_address], [d_tel]) VALUES (N'99823     ', N'حسن                                               ', N'تهران                                                                                               ', N'09774      ')
GO
INSERT [dbo].[GeneralManager] ([g_ssn], [g_name], [g_address], [g_tel]) VALUES (N'2154154   ', N'رضا                                               ', N'تهران                                                                                               ', N'093564     ')
INSERT [dbo].[GeneralManager] ([g_ssn], [g_name], [g_address], [g_tel]) VALUES (N'5641021   ', N'مریم                                              ', N'بزد                                                                                                 ', N'096212     ')
INSERT [dbo].[GeneralManager] ([g_ssn], [g_name], [g_address], [g_tel]) VALUES (N'5646548   ', N'حسن                                               ', N'شیراز                                                                                               ', N'093647     ')
GO
SET IDENTITY_INSERT [dbo].[IO] ON 

INSERT [dbo].[IO] ([io_code], [io_date], [s_code], [p_unit], [p_count], [p_code], [io_type], [t_code]) VALUES (1, CAST(N'1399-01-15' AS Date), 5, N'دستگاه              ', 15, 2, N'ورود      ', 1)
INSERT [dbo].[IO] ([io_code], [io_date], [s_code], [p_unit], [p_count], [p_code], [io_type], [t_code]) VALUES (3, CAST(N'1399-02-14' AS Date), 7, N'عدد                 ', 26, 5, N'خروج      ', 2)
INSERT [dbo].[IO] ([io_code], [io_date], [s_code], [p_unit], [p_count], [p_code], [io_type], [t_code]) VALUES (4, CAST(N'1400-03-22' AS Date), 6, N'دستگاه              ', 10, 13, N'ورود      ', 2)
INSERT [dbo].[IO] ([io_code], [io_date], [s_code], [p_unit], [p_count], [p_code], [io_type], [t_code]) VALUES (5, CAST(N'1400-04-18' AS Date), 7, N'دستگاه              ', 36, 4, N'ورود      ', 1)
INSERT [dbo].[IO] ([io_code], [io_date], [s_code], [p_unit], [p_count], [p_code], [io_type], [t_code]) VALUES (6, CAST(N'1400-05-03' AS Date), 6, N'دست                 ', 7, 3, N'ورود      ', 5)
INSERT [dbo].[IO] ([io_code], [io_date], [s_code], [p_unit], [p_count], [p_code], [io_type], [t_code]) VALUES (9, CAST(N'1400-05-04' AS Date), 5, N'دستگاه              ', 10, 3, N'ورود      ', 3)
INSERT [dbo].[IO] ([io_code], [io_date], [s_code], [p_unit], [p_count], [p_code], [io_type], [t_code]) VALUES (10, CAST(N'1400-06-08' AS Date), 7, N'عدد                 ', 6, 5, N'ورود      ', 3)
INSERT [dbo].[IO] ([io_code], [io_date], [s_code], [p_unit], [p_count], [p_code], [io_type], [t_code]) VALUES (11, CAST(N'1400-07-11' AS Date), 5, N'دستگاه              ', 6, 2, N'خروج      ', 2)
SET IDENTITY_INSERT [dbo].[IO] OFF
GO
INSERT [dbo].[Manager] ([m_ssn], [m_name], [m_address], [m_tel], [gm_code]) VALUES (N'15651     ', N'علی                                               ', N'تهران                                                                                               ', N'09584      ', N'2154154   ')
INSERT [dbo].[Manager] ([m_ssn], [m_name], [m_address], [m_tel], [gm_code]) VALUES (N'32175     ', N'حامد                                              ', N'شیراز                                                                                               ', N'09278      ', N'5646548   ')
INSERT [dbo].[Manager] ([m_ssn], [m_name], [m_address], [m_tel], [gm_code]) VALUES (N'65812     ', N'حمید                                              ', N'یزد                                                                                                 ', N'09556      ', N'5641021   ')
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([p_code], [p_name], [p_unit], [p_price], [p_type], [p_brand]) VALUES (1, N'تلویزیون                                          ', N'دستگاه              ', 1000000, N'لوازم دیجیتالی                                    ', N'samsung                                           ')
INSERT [dbo].[Product] ([p_code], [p_name], [p_unit], [p_price], [p_type], [p_brand]) VALUES (2, N'یخچال                                             ', N'دستگاه              ', 2000000, N'لوازم آشپزخانه                                    ', N'LG                                                ')
INSERT [dbo].[Product] ([p_code], [p_name], [p_unit], [p_price], [p_type], [p_brand]) VALUES (3, N'مبل                                               ', N'دست                 ', 500000, N'لوازم خانگی                                       ', N'کاشانه                                            ')
INSERT [dbo].[Product] ([p_code], [p_name], [p_unit], [p_price], [p_type], [p_brand]) VALUES (4, N'لپتاپ                                             ', N'دستگاه              ', 5000000, N'لوازم دیجیتالی                                    ', N'Lenovo                                            ')
INSERT [dbo].[Product] ([p_code], [p_name], [p_unit], [p_price], [p_type], [p_brand]) VALUES (5, N'هدفون                                             ', N'عدد                 ', 250000, N'لوازم دیجیتالی                                    ', N'Rapo                                              ')
INSERT [dbo].[Product] ([p_code], [p_name], [p_unit], [p_price], [p_type], [p_brand]) VALUES (6, N'موبایل                                            ', N'عدد                 ', 6000000, N'لوازم دیجیتالی                                    ', N'Xiaomi                                            ')
INSERT [dbo].[Product] ([p_code], [p_name], [p_unit], [p_price], [p_type], [p_brand]) VALUES (7, N'تبلت                                              ', N'عدد                 ', 8000000, N'لوازم دیجیتالی                                    ', N'Lenovo                                            ')
INSERT [dbo].[Product] ([p_code], [p_name], [p_unit], [p_price], [p_type], [p_brand]) VALUES (8, N'یخچال                                             ', N'دستگاه              ', 3000000, N'لوازم آشپزخانه                                    ', N'Snowa                                             ')
INSERT [dbo].[Product] ([p_code], [p_name], [p_unit], [p_price], [p_type], [p_brand]) VALUES (9, N'مبل                                               ', N'دست                 ', 700000, N'لوازم خانگی                                       ', N'سیب                                               ')
INSERT [dbo].[Product] ([p_code], [p_name], [p_unit], [p_price], [p_type], [p_brand]) VALUES (10, N'موبایل                                            ', N'عدد                 ', 9000000, N'لوازم دیجیتالی                                    ', N'Apple                                             ')
INSERT [dbo].[Product] ([p_code], [p_name], [p_unit], [p_price], [p_type], [p_brand]) VALUES (11, N'هدفون                                             ', N'عدد                 ', 550000, N'لوازم دیجیتالی                                    ', N'Razor                                             ')
INSERT [dbo].[Product] ([p_code], [p_name], [p_unit], [p_price], [p_type], [p_brand]) VALUES (12, N'لپتاپ                                             ', N'دستگاه              ', 8000000, N'لوازم دیجیتالی                                    ', N'Dell                                              ')
INSERT [dbo].[Product] ([p_code], [p_name], [p_unit], [p_price], [p_type], [p_brand]) VALUES (13, N'تلویزیون                                          ', N'دستگاه              ', 4000000, N'لوازم دیجیتالی                                    ', N'Tcl                                               ')
INSERT [dbo].[Product] ([p_code], [p_name], [p_unit], [p_price], [p_type], [p_brand]) VALUES (14, N'کیبرد                                             ', N'عدد                 ', 700000, N'لوازم دیجیتالی                                    ', N'Razor                                             ')
INSERT [dbo].[Product] ([p_code], [p_name], [p_unit], [p_price], [p_type], [p_brand]) VALUES (15, N'موس                                               ', N'عدد                 ', 600000, N'لوازم دیجیتالی                                    ', N'Razor                                             ')
INSERT [dbo].[Product] ([p_code], [p_name], [p_unit], [p_price], [p_type], [p_brand]) VALUES (16, N'هدفون                                             ', N'عدد                 ', 450000, N'لوازم دیجیتالی                                    ', N'Xiaomi                                            ')
INSERT [dbo].[Product] ([p_code], [p_name], [p_unit], [p_price], [p_type], [p_brand]) VALUES (17, N'مانیتور                                           ', N'دستگاه              ', 5000000, N'لوازم دیجیتالی                                    ', N'Dell                                              ')
INSERT [dbo].[Product] ([p_code], [p_name], [p_unit], [p_price], [p_type], [p_brand]) VALUES (18, N'موبایل                                            ', N'عدد                 ', 4000000, N'لوازم دیجیتالی                                    ', N'samsung                                           ')
INSERT [dbo].[Product] ([p_code], [p_name], [p_unit], [p_price], [p_type], [p_brand]) VALUES (19, N'تبلت                                              ', N'عدد                 ', 3000000, N'لوازم دیجیتالی                                    ', N'Lenovo                                            ')
INSERT [dbo].[Product] ([p_code], [p_name], [p_unit], [p_price], [p_type], [p_brand]) VALUES (20, N'هدست                                              ', N'عدد                 ', 150000, N'لوازم دیجیتالی                                    ', N'Xiaomi                                            ')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Store] ON 

INSERT [dbo].[Store] ([s_code], [s_name], [s_type], [s_area], [s_manager]) VALUES (5, N'فروشگاه1                                          ', N'خواربارفروشی                                      ', 1500, N'15651     ')
INSERT [dbo].[Store] ([s_code], [s_name], [s_type], [s_area], [s_manager]) VALUES (6, N'فروشگاه2                                          ', N'میوه فروشی                                        ', 2000, N'32175     ')
INSERT [dbo].[Store] ([s_code], [s_name], [s_type], [s_area], [s_manager]) VALUES (7, N'فروشگاه3                                          ', N'لوازم الکتریکی                                    ', 1400, N'65812     ')
SET IDENTITY_INSERT [dbo].[Store] OFF
GO
SET IDENTITY_INSERT [dbo].[Truck] ON 

INSERT [dbo].[Truck] ([t_code], [t_type], [t_driver]) VALUES (1, N'نوع1                ', N'99823     ')
INSERT [dbo].[Truck] ([t_code], [t_type], [t_driver]) VALUES (2, N'نوع1                ', N'65842     ')
INSERT [dbo].[Truck] ([t_code], [t_type], [t_driver]) VALUES (3, N'نوع1                ', N'32141     ')
INSERT [dbo].[Truck] ([t_code], [t_type], [t_driver]) VALUES (4, N'نوع2                ', N'65232     ')
INSERT [dbo].[Truck] ([t_code], [t_type], [t_driver]) VALUES (5, N'نوع2                ', N'03157     ')
INSERT [dbo].[Truck] ([t_code], [t_type], [t_driver]) VALUES (6, N'نوع3                ', N'99823     ')
INSERT [dbo].[Truck] ([t_code], [t_type], [t_driver]) VALUES (7, N'نوع3                ', N'32141     ')
SET IDENTITY_INSERT [dbo].[Truck] OFF
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Driver] FOREIGN KEY([d_invoiceCheck])
REFERENCES [dbo].[Driver] ([d_ssn])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Driver]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_GeneralManager] FOREIGN KEY([g_invoiceCheck])
REFERENCES [dbo].[GeneralManager] ([g_ssn])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_GeneralManager]
GO
ALTER TABLE [dbo].[IO]  WITH CHECK ADD  CONSTRAINT [FK_IO_Product] FOREIGN KEY([p_code])
REFERENCES [dbo].[Product] ([p_code])
GO
ALTER TABLE [dbo].[IO] CHECK CONSTRAINT [FK_IO_Product]
GO
ALTER TABLE [dbo].[IO]  WITH CHECK ADD  CONSTRAINT [FK_IO_Store1] FOREIGN KEY([s_code])
REFERENCES [dbo].[Store] ([s_code])
GO
ALTER TABLE [dbo].[IO] CHECK CONSTRAINT [FK_IO_Store1]
GO
ALTER TABLE [dbo].[IO]  WITH CHECK ADD  CONSTRAINT [FK_IO_Truck] FOREIGN KEY([t_code])
REFERENCES [dbo].[Truck] ([t_code])
GO
ALTER TABLE [dbo].[IO] CHECK CONSTRAINT [FK_IO_Truck]
GO
ALTER TABLE [dbo].[Manager]  WITH CHECK ADD  CONSTRAINT [FK_Manager_GeneralManager] FOREIGN KEY([gm_code])
REFERENCES [dbo].[GeneralManager] ([g_ssn])
GO
ALTER TABLE [dbo].[Manager] CHECK CONSTRAINT [FK_Manager_GeneralManager]
GO
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [FK_Store_Manager] FOREIGN KEY([s_manager])
REFERENCES [dbo].[Manager] ([m_ssn])
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [FK_Store_Manager]
GO
ALTER TABLE [dbo].[Truck]  WITH CHECK ADD  CONSTRAINT [FK_Truck_Driver] FOREIGN KEY([t_driver])
REFERENCES [dbo].[Driver] ([d_ssn])
GO
ALTER TABLE [dbo].[Truck] CHECK CONSTRAINT [FK_Truck_Driver]
GO
ALTER TABLE [dbo].[Work]  WITH CHECK ADD  CONSTRAINT [FK_Work_Store1] FOREIGN KEY([s_code])
REFERENCES [dbo].[Store] ([s_code])
GO
ALTER TABLE [dbo].[Work] CHECK CONSTRAINT [FK_Work_Store1]
GO
ALTER TABLE [dbo].[Work]  WITH CHECK ADD  CONSTRAINT [FK_Work_Worker1] FOREIGN KEY([w_code])
REFERENCES [dbo].[Worker] ([w_ssn])
GO
ALTER TABLE [dbo].[Work] CHECK CONSTRAINT [FK_Work_Worker1]
GO
ALTER TABLE [dbo].[Worker]  WITH CHECK ADD  CONSTRAINT [FK_Worker_Manager] FOREIGN KEY([m_ssn])
REFERENCES [dbo].[Manager] ([m_ssn])
GO
ALTER TABLE [dbo].[Worker] CHECK CONSTRAINT [FK_Worker_Manager]
GO
