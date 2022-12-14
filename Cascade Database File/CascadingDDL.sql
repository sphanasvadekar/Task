USE [CascadingDDL]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 10/3/2022 8:49:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[City_ID] [int] NOT NULL,
	[City_Name] [varchar](255) NOT NULL,
	[Country_ID] [int] NULL,
	[State_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[City_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 10/3/2022 8:49:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[Country_ID] [int] NOT NULL,
	[Country_Name] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Country_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[States]    Script Date: 10/3/2022 8:49:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[States](
	[State_ID] [int] NOT NULL,
	[State_Name] [varchar](255) NOT NULL,
	[Country_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[State_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (1, N'Anuradhapura', 94, 31)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (2, N'Thalawa', 94, 31)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (3, N'Ella', 94, 32)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (4, N'Badulla', 94, 32)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (5, N'Ampara', 94, 33)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (6, N'Kamunai', 94, 33)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (7, N'Negombo', 94, 34)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (8, N'Sri Jayawaradhane', 94, 34)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (15, N'Hyderabad', 92, 11)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (16, N'Sukkur', 92, 11)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (17, N'Peshawar', 92, 12)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (18, N'Abbotabad', 92, 12)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (19, N'Multan', 92, 13)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (20, N'Sialkot', 92, 13)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (21, N'Mirpur City', 92, 14)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (22, N'Muzzaffarbad', 92, 14)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (25, N'Bedford', 44, 21)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (26, N'Biggleswade', 44, 21)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (27, N'Cambridge', 44, 22)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (28, N'Eaton Socon', 44, 22)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (29, N'Cambridge', 44, 23)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (30, N'Eaton Socon', 44, 23)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (31, N'bradford', 44, 24)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (32, N'Richmond', 44, 24)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (33, N'Bicester', 44, 25)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (34, N'Kidlington', 44, 25)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (35, N'Newcastle', 61, 41)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (36, N'Coffs horbour', 61, 41)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (37, N'Melbourne', 61, 42)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (38, N'Mildura', 61, 42)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (39, N'Brisbane', 61, 43)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (40, N'Townsville', 61, 43)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (41, N'Perth', 61, 44)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (42, N'Bunburry', 61, 44)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (43, N'Adelaide', 61, 45)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (44, N'Clare', 61, 45)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (51, N'London', 44, 24)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (52, N'Oxford', 44, 25)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (53, N'Panjim', 91, 1)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (54, N'Bhopal', 91, 4)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (55, N'Sydney', 61, 41)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (56, N'Brisbane', 61, 42)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (57, N'Karachi', 92, 11)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (58, N'Colombo', 94, 34)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (59, N'Lahore', 92, 13)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (60, N'GandhiNagar', 91, 2)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (61, N'Vasco', 91, 1)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (62, N'Mapusa', 91, 1)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (63, N'Ahmedabad', 91, 2)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (64, N'Baroda', 91, 2)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (65, N'Kochi', 91, 3)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (66, N'Thiruanantpuram', 91, 3)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (67, N'Wayanad', 91, 3)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (68, N'Palakad', 91, 3)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (69, N'Gwalior', 91, 4)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (70, N'Indore', 91, 4)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (73, N'Prayagraj', 91, 5)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (74, N'Agra', 91, 5)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (75, N'Lucknow', 91, 5)
INSERT [dbo].[Cities] ([City_ID], [City_Name], [Country_ID], [State_ID]) VALUES (76, N'Varanasi', 91, 5)
GO
INSERT [dbo].[Countries] ([Country_ID], [Country_Name]) VALUES (44, N'United Kingdom')
INSERT [dbo].[Countries] ([Country_ID], [Country_Name]) VALUES (61, N'Austarlia')
INSERT [dbo].[Countries] ([Country_ID], [Country_Name]) VALUES (91, N'India')
INSERT [dbo].[Countries] ([Country_ID], [Country_Name]) VALUES (92, N'Pakistan')
INSERT [dbo].[Countries] ([Country_ID], [Country_Name]) VALUES (94, N'Sri Lanka')
GO
INSERT [dbo].[States] ([State_ID], [State_Name], [Country_ID]) VALUES (1, N'Goa', 91)
INSERT [dbo].[States] ([State_ID], [State_Name], [Country_ID]) VALUES (2, N'Gujrat', 91)
INSERT [dbo].[States] ([State_ID], [State_Name], [Country_ID]) VALUES (3, N'Kerala', 91)
INSERT [dbo].[States] ([State_ID], [State_Name], [Country_ID]) VALUES (4, N'MP', 91)
INSERT [dbo].[States] ([State_ID], [State_Name], [Country_ID]) VALUES (5, N'UP', 91)
INSERT [dbo].[States] ([State_ID], [State_Name], [Country_ID]) VALUES (11, N'Sindh', 92)
INSERT [dbo].[States] ([State_ID], [State_Name], [Country_ID]) VALUES (12, N'Kyber', 92)
INSERT [dbo].[States] ([State_ID], [State_Name], [Country_ID]) VALUES (13, N'Punjab', 92)
INSERT [dbo].[States] ([State_ID], [State_Name], [Country_ID]) VALUES (14, N'Balochistan', 92)
INSERT [dbo].[States] ([State_ID], [State_Name], [Country_ID]) VALUES (15, N'POK', 92)
INSERT [dbo].[States] ([State_ID], [State_Name], [Country_ID]) VALUES (21, N'Bedfordshire', 44)
INSERT [dbo].[States] ([State_ID], [State_Name], [Country_ID]) VALUES (22, N'Cambridgeshire ', 44)
INSERT [dbo].[States] ([State_ID], [State_Name], [Country_ID]) VALUES (23, N'Yorkshire ', 44)
INSERT [dbo].[States] ([State_ID], [State_Name], [Country_ID]) VALUES (24, N'Great London', 44)
INSERT [dbo].[States] ([State_ID], [State_Name], [Country_ID]) VALUES (25, N'Oxfordshire', 44)
INSERT [dbo].[States] ([State_ID], [State_Name], [Country_ID]) VALUES (31, N'North Central', 94)
INSERT [dbo].[States] ([State_ID], [State_Name], [Country_ID]) VALUES (32, N'Uva', 94)
INSERT [dbo].[States] ([State_ID], [State_Name], [Country_ID]) VALUES (33, N'Eastern', 94)
INSERT [dbo].[States] ([State_ID], [State_Name], [Country_ID]) VALUES (34, N'Western', 94)
INSERT [dbo].[States] ([State_ID], [State_Name], [Country_ID]) VALUES (41, N'New South Wales', 61)
INSERT [dbo].[States] ([State_ID], [State_Name], [Country_ID]) VALUES (42, N'Victoria', 61)
INSERT [dbo].[States] ([State_ID], [State_Name], [Country_ID]) VALUES (43, N'Queensland', 61)
INSERT [dbo].[States] ([State_ID], [State_Name], [Country_ID]) VALUES (44, N'Western Australia', 61)
INSERT [dbo].[States] ([State_ID], [State_Name], [Country_ID]) VALUES (45, N'South Australia', 61)
GO
ALTER TABLE [dbo].[Cities]  WITH CHECK ADD FOREIGN KEY([Country_ID])
REFERENCES [dbo].[Countries] ([Country_ID])
GO
ALTER TABLE [dbo].[Cities]  WITH CHECK ADD FOREIGN KEY([State_ID])
REFERENCES [dbo].[States] ([State_ID])
GO
ALTER TABLE [dbo].[States]  WITH CHECK ADD FOREIGN KEY([Country_ID])
REFERENCES [dbo].[Countries] ([Country_ID])
GO
