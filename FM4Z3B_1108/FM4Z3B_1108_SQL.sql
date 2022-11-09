CREATE TABLE Tulajdonos (
Tkod BIGINT PRIMARY KEY, 
Nev VARCHAR(10) NOT NULL, 
Varos VARCHAR(20));
CREATE TABLE Auto (
Rendszam CHAR(7) PRIMARY KEY,
Tipus VARCHAR(25) NOT NULL, 
Szin VARCHAR(15), 
Kor INT(2),
Ar INT(8),
Tulaj INT(3) REFERENCES Tulajdonos(Tkod));

INSERT INTO Tulajdonos (Tkod, Nev, Varos)
VALUES (101, 'Kis Janos', 'Miskolc');
INSERT INTO Tulajdonos (Tkod, Nev, Varos)
VALUES (102, 'Kis Eva', 'Szerencs');
INSERT INTO Tulajdonos (Tkod, Nev, Varos)
VALUES (103, 'Retek Odon', 'Miskolc');
INSERT INTO Tulajdonos (Tkod, Nev, Varos)
VALUES (104, 'Virag Zoltan', 'Nyek');
INSERT INTO Tulajdonos (Tkod, Nev, Varos)
VALUES (105, 'Nagy Eszter', 'Nyek');
INSERT INTO Tulajdonos (Tkod, Nev, Varos)
VALUES (106, 'Kovacs Magor', 'Szerencs');
INSERT INTO Tulajdonos (Tkod, Nev, Varos)
VALUES (107, 'Asztal Antal', 'Miskolc');

INSERT INTO Auto (Rendszam, Tipus, Szin, Kor, Ar, Tulaj)
VALUES ('FER-831', 'Opel Corsa', 'Piros', 18, 390, 101);
INSERT INTO Auto (Rendszam, Tipus, Szin, Kor, Ar, Tulaj)
VALUES ('GDF-525', 'Renault Twingo', 'Fekete', 16, 280, NULL);
INSERT INTO Auto (Rendszam, Tipus, Szin, Kor, Ar, Tulaj)
VALUES ('HUB-936', 'Suzuki Swift', 'Fekete', 16, 500, NULL);
INSERT INTO Auto (Rendszam, Tipus, Szin, Kor, Ar, Tulaj)
VALUES ('IXL-239', 'Suzuki Swift', 'Zold', 15, 450, 105);
INSERT INTO Auto (Rendszam, Tipus, Szin, Kor, Ar, Tulaj)
VALUES ('JAH-425', 'Skoda Fabia', 'Piros', 13, 620, 102);
INSERT INTO Auto (Rendszam, Tipus, Szin, Kor, Ar, Tulaj)
VALUES ('JCD-443', 'Opel Astra', 'Feher', 12, 990, 107);
INSERT INTO Auto (Rendszam, Tipus, Szin, Kor, Ar, Tulaj)
VALUES ('KAP-290', 'BMW 316', 'Fekete', 6, 3250, 102);
INSERT INTO Auto (Rendszam, Tipus, Szin, Kor, Ar, Tulaj)
VALUES ('KFT-204', 'Opel Astra', 'Szurke', 7, 1250, 106);
INSERT INTO Auto (Rendszam, Tipus, Szin, Kor, Ar, Tulaj)
VALUES ('MLM-211', 'Toyota Yaris', 'Fehér', 3, 1850, 105);