SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[CLIENT_RESERVATIONS](@CLIENT_ID INT) --RECIBE EL ID DE UN CLIENTE DETERMINADO
RETURNS TABLE
AS
RETURN 
(
	--RETORNA TODAS LAS RESERVACIONES DEL CLIENTE '@CLIENT_ID'
	SELECT B.FLIGHT_CALL, S.ORIGIN_IATA_AIRPORT_CODE, S.DEST_IATA_AIRPORT_CODE, A.TRAVEL_CLASS_ID, A.SEAT_ID, FSP.PRICE_USD, A.AIRCRAFT_ID
	FROM BOOKING B
	INNER JOIN FLIGHTSEATPRICE FSP ON B.FLIGHT_CALL = FSP.FLIGHT_CALL AND B.AIRCRAFT_ID = FSP.AIR_CRAFT_ID AND B.SEAT_ID = FSP.SEAT_ID
	INNER JOIN AIRCRAFTSEAT A ON FSP.AIR_CRAFT_ID = A.AIRCRAFT_ID AND FSP.SEAT_ID = A.SEAT_ID
	INNER JOIN FLIGHT FL ON FSP.FLIGHT_CALL = FL.FLIGHT_CALL
	INNER JOIN SCHEDULE S ON FL.SCHEDULE_ID = S.SCHEDULE_ID
	WHERE B.CLIENT_ID = @CLIENT_ID
)
GO