-- Kreieren Sie eine Liste, die verwendet wird um drei Menues zu erstellen.

-- Kreieren Sie eine Liste aller Speisen. Sortieren Sie diese nach dem Preis beginnend beim niedrigsten.
-- Kreieren Sie eine Liste von Vorspeisen und Getraenken.
-- Kreieren Sie eine Liste des ganzen Angebots ausgenommen der Getränke.
-- Die letzten beiden Menues sollen nach Gericht-Art sortiert sein.

-- Liste aller Speisen, Preis aufsteigend
SELECT *
FROM Speise
ORDER BY Preis;

-- Liste Vorspeisen und Getränke
SELECT *
FROM Speise
WHERE Typ = 'Vorspeise' OR Typ = 'Getränk'
ORDER BY Typ;

-- Liste aller Speisen
SELECT *
FROM Speise
WHERE Typ != 'Getränk'
ORDER BY Typ;
