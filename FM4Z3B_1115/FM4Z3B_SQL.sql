CREATE TABLE Oktato (
neptunkod VARCHAR(6) PRIMARY KEY, 
nev VARCHAR(10) NOT NULL, 
tanszek VARCHAR(20));
CREATE TABLE Targy (
kod VARCHAR(10) PRIMARY KEY,
kredit INT, 
megnevezes VARCHAR(15), 
neptunkod VARCHAR(6) REFERENCES Oktato(neptunkod));
CREATE TABLE Hallgato (
neptunkod VARCHAR(6) PRIMARY KEY, 
nev VARCHAR(10) NOT NULL, 
tankor VARCHAR(20),
szul. datum DATE,
eletkor INT NOT NULL);
CREATE TABLE hallgat (
felev INT, 
vizsgajegy INT NOT NULL, 
neptunkod VARCHAR(6) REFERENCES Hallgato(neptunkod),
kod VARCHAR(10) REFERENCES Targy(kod));
CREATE TABLE cim (
irszam int, 
varos VARCHAR(20), 
utca VARCHAR(20),
hsz INT,
neptunkod VARCHAR(6) REFERENCES Hallgato(neptunkod));

INSERT INTO Oktato (neptunkod, nev, tanszek)
VALUES (OKT001, 'Kis Janos', 'Fizika');
INSERT INTO Oktato (neptunkod, nev, tanszek)
VALUES (OKT002, 'Cserepes Virag', 'Matematika');
INSERT INTO Oktato (neptunkod, nev, tanszek)
VALUES (OKT003, 'Asztal Antal', 'Informatika');

INSERT INTO Targy (kod, kredit, megnevezes, neptunkod)
VALUES ('MAT-012', 5, 'Linearis Algebra', 'OKT002');
INSERT INTO Targy (kod, kredit, megnevezes, neptunkod)
VALUES ('FIZ-001', 5, 'Fizika I', 'OKT001');
INSERT INTO Targy (kod, kredit, megnevezes, neptunkod)
VALUES ('PROG-013', 5, 'C++ programozas', 'OKT003');

INSERT INTO Hallgato (neptunkod, nev, tankor, szul. datum, eletkor)
VALUES ('HGT111', 'Pal Janos', 'INFO1', '2000.01.12.', 22);
INSERT INTO Hallgato (neptunkod, nev, tankor, szul. datum, eletkor)
VALUES ('HGT121', 'Tet Andras', 'FIZ03', '2002.04.20.', 20);
INSERT INTO Hallgato (neptunkod, nev, tankor, szul. datum, eletkor)
VALUES ('HGT311', 'Lakatos Alexander', 'MAT02', '2001.09.22.', 21);

INSERT INTO cim (irszam, varos, utca, hsz, neptunkod)
VALUES ( 4087, 'Hajdudorog', 'Tokaji ut', '34', 'HGT311');
INSERT INTO cim (irszam, varos, utca, hsz, neptunkod)
VALUES ( 4220, 'Hajduboszormeny', 'Dorogi utca', '21', 'HGT121');
INSERT INTO cim (irszam, varos, utca, hsz, neptunkod)
VALUES ( 4031, 'Debrecen', 'Bethlen Gabor utca', '17', 'HGT111');

INSERT INTO hallgat (felev, vizsgajegy, neptunkod, kod)
VALUES ( 1, 2, 'HGT311', 'PROG-013');
INSERT INTO hallgat (felev, vizsgajegy, neptunkod, kod)
VALUES ( 1, 3, 'HGT311', 'MAT-012');
INSERT INTO hallgat (felev, vizsgajegy, neptunkod, kod)
VALUES ( 1, 1, 'HGT311', 'FIZ-001');
INSERT INTO hallgat (felev, vizsgajegy, neptunkod, kod)
VALUES ( 1, 3, 'HGT121', 'PROG-013');
INSERT INTO hallgat (felev, vizsgajegy, neptunkod, kod)
VALUES ( 1, 2, 'HGT121', 'MAT-012');
INSERT INTO hallgat (felev, vizsgajegy, neptunkod, kod)
VALUES ( 1, 1, 'HGT121', 'FIZ-001');
INSERT INTO hallgat (felev, vizsgajegy, neptunkod, kod)
VALUES ( 1, 4, 'HGT111', 'PROG-013');
INSERT INTO hallgat (felev, vizsgajegy, neptunkod, kod)
VALUES ( 1, 4, 'HGT111', 'MAT-012');
INSERT INTO hallgat (felev, vizsgajegy, neptunkod, kod)
VALUES ( 1, 5, 'HGT111', 'FIZ-001');
