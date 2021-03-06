USE [EquipmentList]
GO
/****** Object:  Table [dbo].[EquipmentTbl]    Script Date: 5/11/2018 12:49:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipmentTbl](
	[EquipmentId] [int] NOT NULL,
	[EquipmentType] [nvarchar](50) NOT NULL,
	[EquipmentName] [nvarchar](50) NOT NULL,
	[PressureRating] [int] NULL,
	[TemperatureRating] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EquipmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (1, N'Heat Exchanger', N'Spiral Heater 1', 150, 300)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (2, N'Heat Exchanger', N'Oil Cooler 1', 150, 350)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (3, N'Heat Exchanger', N'Oil Cooler 2', 150, 350)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (4, N'Heat Exchanger', N'Glycol Heater', 250, 500)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (5, N'Vessel', N'Finished Oill 1', 150, 275)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (6, N'Vessel', N'Recirc Oil', 250, 250)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (7, N'Tank', N'Brine Tank', 15, 200)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (8, N'Tank', N'Brine Tank 2 ', 15, 200)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (9, N'Heat Exchanger', N'Oil Cooler 1', 150, 350)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (10, N'Heat Exchanger', N'Oil Cooler 2', 150, 350)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (11, N'Heat Exchanger', N'Glycol Heater', 250, 500)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (12, N'Vessel', N'Finished Oill 1', 150, 275)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (13, N'Vessel', N'Recirc Oil', 250, 250)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (14, N'Tank', N'Brine Tank', 15, 200)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (15, N'Tank', N'Brine Tank 2 ', 15, 200)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (16, N'Heat Exchanger', N'Oil Cooler 1', 150, 350)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (17, N'Heat Exchanger', N'Oil Cooler 2', 150, 350)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (18, N'Heat Exchanger', N'Glycol Heater', 250, 500)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (19, N'Vessel', N'Finished Oill 1', 150, 275)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (20, N'Vessel', N'Recirc Oil', 250, 250)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (21, N'Tank', N'Brine Tank', 15, 200)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (22, N'Tank', N'Brine Tank 2 ', 15, 200)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (23, N'Heat Exchanger', N'Oil Cooler 1', 150, 350)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (24, N'Heat Exchanger', N'Oil Cooler 2', 150, 350)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (25, N'Heat Exchanger', N'Oil Cooler 1', 150, 350)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (26, N'Heat Exchanger', N'Oil Cooler 2', 150, 350)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (27, N'Heat Exchanger', N'Glycol Heater', 250, 500)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (28, N'Vessel', N'Finished Oill 1', 150, 275)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (29, N'Vessel', N'Recirc Oil', 250, 250)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (30, N'Tank', N'Brine Tank', 15, 200)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (31, N'Tank', N'Brine Tank 2 ', 15, 200)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (100100, N'Heat Exchanger', N'Oil Cooler 1', 150, 350)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (100101, N'Heat Exchanger', N'Oil Cooler 2', 150, 350)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (100102, N'Heat Exchanger', N'Glycol Heater', 250, 500)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (200100, N'Vessel', N'Finished Oil 1', 150, 275)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (200101, N'Vessel', N'Recirc Oil', 250, 250)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (300100, N'Tank', N'Brine Tank', 15, 200)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (300101, N'Tank', N'Brine Tank 2 ', 15, 200)
INSERT [dbo].[EquipmentTbl] ([EquipmentId], [EquipmentType], [EquipmentName], [PressureRating], [TemperatureRating]) VALUES (300102, N'Tank', N'Brine Tank 3', 15, 200)
/****** Object:  StoredProcedure [dbo].[AddNewEquipment]    Script Date: 5/11/2018 12:49:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddNewEquipment]
	(	
	@EquipmentType nvarchar(50),
	@EquipmentName nvarchar(50),
	@EquipmentId int,
	@PressureRating int,
	@TemperatureRating int
	)
AS
	BEGIN
		IF NOT EXISTS (SELECT * FROM EquipmentTbl WHERE EquipmentId = @EquipmentId)
		BEGIN
			INSERT INTO EquipmentTbl
			VALUES(@EquipmentId,@EquipmentType,@EquipmentName,@PressureRating,@TemperatureRating) 
		END

	END
GO
/****** Object:  StoredProcedure [dbo].[GetEquipmentDetails]    Script Date: 5/11/2018 12:49:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetEquipmentDetails]

AS
BEGIN
	SELECT * FROM EquipmentTbl
END
GO
