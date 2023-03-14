-- Entfernen Sie eine ungueltige Reservierung aus der Datenbank.

-- Ein Kunde namens Norby hat uns informiert, dass er seine Reservierung
-- stornieren moechte. Heute ist der 20.Mai 2022.

-- Variante 1 - in kleinen Schritten
SELECT KundenID, Vorname, Nachname
FROM Kunden
WHERE Vorname = 'Norby' OR Nachname = 'Norby'
-- KundenID 64 ist der Datensatz

SELECT *
FROM Reservierung
WHERE KundenID = 64 AND Datum > '2022-05-20';
-- ReservierungsID 1962


-- Variante 2 - in einem Schritt zur Reservierung
SELECT * 
FROM Reservierung
JOIN Kunden ON Reservierung.KundenID = Kunden.KundenID
WHERE Kunden.Vorname = 'Norby' AND Reservierung.Datum > '2022-05-20';


-- Reservierung entfernen
DELETE 
FROM Reservierung 
WHERE ReservierungsID = 1962;

-- Besser ist jedoch ein Update um die Integrität der DB zu erhalten
UPDATE Reservierung 
SET Datum = NULL
WHERE ReservierungsID = 1962;