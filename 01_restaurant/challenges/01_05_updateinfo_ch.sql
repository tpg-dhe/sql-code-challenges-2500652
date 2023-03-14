-- Aktualisieren Sie die Kontakt-Informationen eines Kunden.

-- Taylor Jenkins aus 27170 6th Ave., Washington, DC,
-- ist umgezogen nach 74 Pine St., New York, NY.

-- Nach der KundenID suchen
SELECT KundenID, Vorname, Nachname, Adresse, Stadt
FROM Kunden
WHERE Vorname = 'Taylor' AND Nachname = 'Jenkins';

-- KundenID = 26 
UPDATE Kunden
SET Adresse = '74 Pine St.', Stadt = 'New York', State = 'NY'
WHERE KundenID = 26;

-- Überprüfen der Daten
SELECT *
FROM Kunden
WHERE KundenID = 26;