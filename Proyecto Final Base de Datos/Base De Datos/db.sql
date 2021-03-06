SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aircraft](
	[Aircraft_ID] [int] IDENTITY(1,1) NOT NULL,
	[aircraft_manufacturer_ID] [int] NOT NULL,
	[Model] [varchar](45) NOT NULL,
 CONSTRAINT [PK_Aircraft] PRIMARY KEY CLUSTERED 
(
	[Aircraft_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AircraftInstance]    Script Date: 4/11/2020 7:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AircraftInstance](
	[aircraft_instace_ID] [int] IDENTITY(1,1) NOT NULL,
	[aircraft_ID] [int] NOT NULL,
 CONSTRAINT [PK_AircraftInstance] PRIMARY KEY CLUSTERED 
(
	[aircraft_instace_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AircraftManufacturer]    Script Date: 4/11/2020 7:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AircraftManufacturer](
	[aircraft_manufacturer_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](45) NOT NULL,
 CONSTRAINT [PK_AircraftManufacturer] PRIMARY KEY CLUSTERED 
(
	[aircraft_manufacturer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AircraftSeat]    Script Date: 4/11/2020 7:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AircraftSeat](
	[aircraft_ID] [int] NOT NULL,
	[seat_ID] [int] IDENTITY(1,1) NOT NULL,
	[travel_class_ID] [int] NOT NULL,
 CONSTRAINT [PK_AircraftSeat] PRIMARY KEY CLUSTERED 
(
	[aircraft_ID] ASC,
	[seat_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Airport]    Script Date: 4/11/2020 7:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Airport](
	[iata_airport_code] [nvarchar](3) NOT NULL,
	[Name] [varchar](45) NOT NULL,
	[City] [varchar](45) NOT NULL,
	[iata_country_code] [char](2) NOT NULL,
 CONSTRAINT [PK_Airport] PRIMARY KEY CLUSTERED 
(
	[iata_airport_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 4/11/2020 7:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[Client_ID] [int] NOT NULL,
	[Flight_Call] [int] NOT NULL,
	[aircraft_ID] [int] NOT NULL,
	[Seat_ID] [int] NOT NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[Client_ID] ASC,
	[Flight_Call] ASC,
	[aircraft_ID] ASC,
	[Seat_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 4/11/2020 7:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Client_ID] [int] IDENTITY(1,1) NOT NULL,
	[First_Name] [varchar](45) NOT NULL,
	[Middle_Name] [varchar](45) NULL,
	[Last_Name] [varchar](45) NOT NULL,
	[Phone] [varchar](45) NOT NULL,
	[Email] [varchar](45) NULL,
	[PassPort] [varchar](45) NOT NULL,
	[iata_country_code] [char](2) NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[Client_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 4/11/2020 7:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[iata_country_code] [char](2) NOT NULL,
	[name] [varchar](45) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[iata_country_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Direction]    Script Date: 4/11/2020 7:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Direction](
	[origin_iata_airport_code] [nvarchar](3) NOT NULL,
	[dest_iata_airport_code] [nvarchar](3) NOT NULL,
 CONSTRAINT [PK_Direction] PRIMARY KEY CLUSTERED 
(
	[origin_iata_airport_code] ASC,
	[dest_iata_airport_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Flight]    Script Date: 4/11/2020 7:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flight](
	[Flight_call] [int] IDENTITY(1,1) NOT NULL,
	[Schedule_ID] [int] NOT NULL,
	[Flight_status_ID] [int] NOT NULL,
 CONSTRAINT [PK_Flight] PRIMARY KEY CLUSTERED 
(
	[Flight_call] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FlightAircraftInstance]    Script Date: 4/11/2020 7:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlightAircraftInstance](
	[Flight_call] [int] NOT NULL,
	[aircraft_instace_id] [int] NOT NULL,
 CONSTRAINT [PK_FlightAircraftInstance] PRIMARY KEY CLUSTERED 
(
	[Flight_call] ASC,
	[aircraft_instace_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FlightSeatPrice]    Script Date: 4/11/2020 7:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlightSeatPrice](
	[Flight_call] [int] NOT NULL,
	[air_craft_ID] [int] NOT NULL,
	[seat_ID] [int] NOT NULL,
	[price_usd] [money] NOT NULL,
 CONSTRAINT [PK_FlightSeatPrice] PRIMARY KEY CLUSTERED 
(
	[Flight_call] ASC,
	[air_craft_ID] ASC,
	[seat_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FlightStatus]    Script Date: 4/11/2020 7:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlightStatus](
	[Flight_Status_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](45) NOT NULL,
 CONSTRAINT [PK_FlightStatus] PRIMARY KEY CLUSTERED 
(
	[Flight_Status_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maintenance]    Script Date: 4/11/2020 7:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maintenance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AircraftID] [int] NOT NULL,
	[FlightCall] [int] NOT NULL,
	[OriginAirport] [nvarchar](3) NOT NULL,
	[DestinyAirport] [nvarchar](3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 4/11/2020 7:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[Schedule_ID] [int] IDENTITY(1,1) NOT NULL,
	[origin_iata_airport_code] [nvarchar](3) NOT NULL,
	[dest_iata_airport_code] [nvarchar](3) NOT NULL,
	[departure_time_gmt] [datetime] NOT NULL,
	[arrival_time_gmt] [datetime] NOT NULL,
 CONSTRAINT [PK_Schedule] PRIMARY KEY CLUSTERED 
(
	[Schedule_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TravelClass]    Script Date: 4/11/2020 7:23:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TravelClass](
	[Travel_class_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](45) NOT NULL,
	[Description] [text] NOT NULL,
 CONSTRAINT [PK_TravelClass] PRIMARY KEY CLUSTERED 
(
	[Travel_class_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Aircraft]  WITH CHECK ADD  CONSTRAINT [FK_Aircraft_AircraftManufacturer1] FOREIGN KEY([aircraft_manufacturer_ID])
REFERENCES [dbo].[AircraftManufacturer] ([aircraft_manufacturer_ID])
GO
ALTER TABLE [dbo].[Aircraft] CHECK CONSTRAINT [FK_Aircraft_AircraftManufacturer1]
GO
ALTER TABLE [dbo].[AircraftInstance]  WITH CHECK ADD  CONSTRAINT [FK_AircraftInstance_Aircraft] FOREIGN KEY([aircraft_ID])
REFERENCES [dbo].[Aircraft] ([Aircraft_ID])
GO
ALTER TABLE [dbo].[AircraftInstance] CHECK CONSTRAINT [FK_AircraftInstance_Aircraft]
GO
ALTER TABLE [dbo].[AircraftSeat]  WITH CHECK ADD  CONSTRAINT [FK_AircraftSeat_Aircraft] FOREIGN KEY([aircraft_ID])
REFERENCES [dbo].[Aircraft] ([Aircraft_ID])
GO
ALTER TABLE [dbo].[AircraftSeat] CHECK CONSTRAINT [FK_AircraftSeat_Aircraft]
GO
ALTER TABLE [dbo].[AircraftSeat]  WITH CHECK ADD  CONSTRAINT [FK_AircraftSeat_TravelClass] FOREIGN KEY([travel_class_ID])
REFERENCES [dbo].[TravelClass] ([Travel_class_ID])
GO
ALTER TABLE [dbo].[AircraftSeat] CHECK CONSTRAINT [FK_AircraftSeat_TravelClass]
GO
ALTER TABLE [dbo].[Airport]  WITH CHECK ADD  CONSTRAINT [FK_Airport_Country] FOREIGN KEY([iata_country_code])
REFERENCES [dbo].[Country] ([iata_country_code])
GO
ALTER TABLE [dbo].[Airport] CHECK CONSTRAINT [FK_Airport_Country]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Client] FOREIGN KEY([Client_ID])
REFERENCES [dbo].[Client] ([Client_ID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Client]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_FlightSeatPrice] FOREIGN KEY([Flight_Call], [aircraft_ID], [Seat_ID])
REFERENCES [dbo].[FlightSeatPrice] ([Flight_call], [air_craft_ID], [seat_ID])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_FlightSeatPrice]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_Country] FOREIGN KEY([iata_country_code])
REFERENCES [dbo].[Country] ([iata_country_code])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_Country]
GO
ALTER TABLE [dbo].[Direction]  WITH CHECK ADD  CONSTRAINT [FK_Direction_Airport] FOREIGN KEY([origin_iata_airport_code])
REFERENCES [dbo].[Airport] ([iata_airport_code])
GO
ALTER TABLE [dbo].[Direction] CHECK CONSTRAINT [FK_Direction_Airport]
GO
ALTER TABLE [dbo].[Direction]  WITH CHECK ADD  CONSTRAINT [FK_Direction_Direction1] FOREIGN KEY([dest_iata_airport_code])
REFERENCES [dbo].[Airport] ([iata_airport_code])
GO
ALTER TABLE [dbo].[Direction] CHECK CONSTRAINT [FK_Direction_Direction1]
GO
ALTER TABLE [dbo].[Flight]  WITH CHECK ADD  CONSTRAINT [FK_Flight_FlightStatus] FOREIGN KEY([Flight_status_ID])
REFERENCES [dbo].[FlightStatus] ([Flight_Status_ID])
GO
ALTER TABLE [dbo].[Flight] CHECK CONSTRAINT [FK_Flight_FlightStatus]
GO
ALTER TABLE [dbo].[Flight]  WITH CHECK ADD  CONSTRAINT [FK_Flight_Schedule] FOREIGN KEY([Schedule_ID])
REFERENCES [dbo].[Schedule] ([Schedule_ID])
GO
ALTER TABLE [dbo].[Flight] CHECK CONSTRAINT [FK_Flight_Schedule]
GO
ALTER TABLE [dbo].[FlightAircraftInstance]  WITH CHECK ADD  CONSTRAINT [FK_FlightAircraftInstance_AircraftInstance] FOREIGN KEY([aircraft_instace_id])
REFERENCES [dbo].[AircraftInstance] ([aircraft_instace_ID])
GO
ALTER TABLE [dbo].[FlightAircraftInstance] CHECK CONSTRAINT [FK_FlightAircraftInstance_AircraftInstance]
GO
ALTER TABLE [dbo].[FlightAircraftInstance]  WITH CHECK ADD  CONSTRAINT [FK_FlightAircraftInstance_Flight] FOREIGN KEY([Flight_call])
REFERENCES [dbo].[Flight] ([Flight_call])
GO
ALTER TABLE [dbo].[FlightAircraftInstance] CHECK CONSTRAINT [FK_FlightAircraftInstance_Flight]
GO
ALTER TABLE [dbo].[FlightSeatPrice]  WITH CHECK ADD  CONSTRAINT [FK_FlightSeatPrice_AircraftSeat] FOREIGN KEY([air_craft_ID], [seat_ID])
REFERENCES [dbo].[AircraftSeat] ([aircraft_ID], [seat_ID])
GO
ALTER TABLE [dbo].[FlightSeatPrice] CHECK CONSTRAINT [FK_FlightSeatPrice_AircraftSeat]
GO
ALTER TABLE [dbo].[FlightSeatPrice]  WITH CHECK ADD  CONSTRAINT [FK_FlightSeatPrice_Flight] FOREIGN KEY([Flight_call])
REFERENCES [dbo].[Flight] ([Flight_call])
GO
ALTER TABLE [dbo].[FlightSeatPrice] CHECK CONSTRAINT [FK_FlightSeatPrice_Flight]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Direction] FOREIGN KEY([origin_iata_airport_code], [dest_iata_airport_code])
REFERENCES [dbo].[Direction] ([origin_iata_airport_code], [dest_iata_airport_code])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Direction]
GO
