-- Entfernen Sie eine ungueltige Reservierung aus der Datenbank.

-- Ein Kunde namens Norby hat uns informiert, dass er seine Reservierung
-- stornieren moechte. Heute ist der 20.Mai 2022.

SELECT * FROM Reservierung
JOIN Kunden ON Reservierung.KundenID = Kunden.KundenID
WHERE Kunden.Vorname = 'Norby'
AND Reservierung.Datum > '2022-05-20';

DELETE FROM Reservierung WHERE ReservierungsID = 2000;

-- oder:
UPDATE Reservierung SET Datum = NULL WHERE ReservierungsID = 2000; 