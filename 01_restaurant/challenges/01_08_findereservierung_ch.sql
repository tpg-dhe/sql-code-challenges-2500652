-- Finden Sie die Reservierung eines Kunden, 
-- dessen Namen wir nicht genau buchstabieren können.

-- Der Name hat unter anderem folgenede Variationen:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant
-- Heute ist der 14.Juni.

SELECT Kunden.KundenID, Kunden.Nachname, Reservierung.Datum, Reservierung.PartyGroesse
FROM Reservierung
JOIN Kunden ON Reservierung.KundenID = Kunden.KundenID
WHERE Nachname LIKE 'ste%' AND PartyGroesse = 4
ORDER BY Datum DESC