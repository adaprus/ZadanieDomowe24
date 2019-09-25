CREATE SCHEMA javastart;

CREATE TABLE pracownicy(
id INT auto_increment PRIMARY KEY,
imie VARCHAR(50),
nazwisko VARCHAR(50) NOT NULL,
wiek INT(3)
);

DROP TABLE pracownicy;

INSERT INTO pracownicy(imie, nazwisko, wiek)
VALUES ('Jan', 'Kowalski', 23);

INSERT INTO pracownicy(nazwisko, wiek)
VALUES ('Kowal', 43);

INSERT INTO pracownicy
SET imie='Anna',
nazwisko='Nowak',
wiek='26';

SELECT UCASE(imie) AS 'pierwsze imie', LCASE(nazwisko), ROUND(wiek/2) 'polowa wieku' FROM pracownicy;

SELECT AVG(wiek) 'sredni wiek', COUNT(*) FROM pracownicy;

SELECT * FROM pracownicy
WHERE wiek > (SELECT AVG(wiek) FROM pracownicy);

SELECT EXTRACT(DAY FROM '2019-03-05 10:12');
SELECT DATEDIFF('2019-03-05 10:12', '2019-03-08 10:12');

SELECT * FROM pracownicy
ORDER BY wiek;

ALTER TABLE pracownicy
ADD COLUMN ksywka VARCHAR(50);

SELECT * FROM zakupy




