CREATE TABLE Studenti_SP (
  ID INT PRIMARY KEY,
  Nume VARCHAR(50) NOT NULL,
  Prenume VARCHAR(50),
  ID_Specializare int NOT NULL,
  Data_Nasterii DATE NOT NULL,
  Adresa VARCHAR(100) ,
  Telefon VARCHAR(20),
  Email VARCHAR(50) 
);

SELECT * FROM STUDENTI_SP;

-- Exemplu 1
INSERT INTO Studenti_SP (ID, Nume, Prenume, ID_Specializare, Data_Nasterii, Adresa, Telefon, Email)
VALUES (1, 'Popescu', 'Ion', 1, TO_DATE('1999-05-10', 'YYYY-MM-DD'), 'Strada Principala, Suceava', '+40 123 456 789', 'ion.popescu@example.com');

-- Exemplu 2
INSERT INTO Studenti_SP (ID, Nume, Prenume, ID_Specializare, Data_Nasterii, Adresa, Telefon, Email)
VALUES (2, 'Ionescu', 'Maria', 2, TO_DATE('2000-03-15', 'YYYY-MM-DD'), 'Aleea Verde, Suceava', '+40 987 654 321', 'maria.ionescu@example.com');

-- Exemplu 3
INSERT INTO Studenti_SP (ID, Nume, Prenume, ID_Specializare, Data_Nasterii, Adresa, Telefon, Email)
VALUES (3, 'Popa', 'Andrei', 1, TO_DATE('1998-08-20', 'YYYY-MM-DD'), 'Bulevardul Central, Suceava', '+40 555 123 456', 'andrei.popa@example.com');

-- Exemplu 4
INSERT INTO Studenti_SP (ID, Nume, Prenume, ID_Specializare, Data_Nasterii, Adresa, Telefon, Email)
VALUES (4, 'Mihai', 'Ana', 3, TO_DATE('2001-01-05', 'YYYY-MM-DD'), 'Strada Mihail Kogalniceanu, Suceava', '+40 111 222 333', 'ana.mihai@example.com');

-- Exemplu 5
INSERT INTO Studenti_SP (ID, Nume, Prenume, ID_Specializare, Data_Nasterii, Adresa, Telefon, Email)
VALUES (5, 'Dumitrescu', 'Alexandru', 4, TO_DATE('1999-11-25', 'YYYY-MM-DD'), 'Aleea Florilor, Suceava', '+40 777 888 999', 'alexandru.dumitrescu@example.com');

-- Exemplu 6
INSERT INTO Studenti_SP (ID, Nume, Prenume, ID_Specializare, Data_Nasterii, Adresa, Telefon, Email)
VALUES (6, 'Radu', 'Elena', 2, TO_DATE('2000-07-12', 'YYYY-MM-DD'), 'Bulevardul Victoriei, Suceava', '+40 222 333 444', 'elena.radu@example.com');

-- Exemplu 7
INSERT INTO Studenti_SP (ID, Nume, Prenume, ID_Specializare, Data_Nasterii, Adresa, Telefon, Email)
VALUES (7, 'Constantin', 'George', 1, TO_DATE('1999-04-30', 'YYYY-MM-DD'), 'Strada Centrala, Suceava', '+40 666 777 888', 'george.constantin@example.com');

-- Exemplu 8
INSERT INTO Studenti_SP (ID, Nume, Prenume, ID_Specializare, Data_Nasterii, Adresa, Telefon, Email)
VALUES (8, 'Stancu', 'Andreea', 3, TO_DATE('2001-09-08', 'YYYY-MM-DD'), 'Aleea Mihai Eminescu, Suceava', '+40 999 888 777', 'andreea.stancu@example.com');

-- Exemplu 9
INSERT INTO Studenti_SP (ID, Nume, Prenume, ID_Specializare, Data_Nasterii, Adresa, Telefon, Email)
VALUES (9, 'Iacob', 'Radu', 2, TO_DATE('2000-02-18', 'YYYY-MM-DD'), 'Bulevardul Unirii, Suceava', '+40 555 777 999', 'radu.iacob@example.com');

-- Exemplu 10
INSERT INTO Studenti_SP (ID, Nume, Prenume, ID_Specializare, Data_Nasterii, Adresa, Telefon, Email)
VALUES (10, 'Gheorghe', 'Ana-Maria', 4, TO_DATE('1998-12-01', 'YYYY-MM-DD'), 'Strada Republicii, Suceava', '+40 123 456 789', 'ana-maria.gheorghe@example.com');
-- Exemplu 11
INSERT INTO Studenti_SP (ID, Nume, Prenume, ID_Specializare, Data_Nasterii, Adresa, Telefon, Email)
VALUES (11, 'Pop', 'Andreea', 3, TO_DATE('2000-06-15', 'YYYY-MM-DD'), 'Strada Florilor, Suceava', '+40 111 222 333', 'andreea.pop@example.com');

-- Exemplu 12
INSERT INTO Studenti_SP (ID, Nume, Prenume, ID_Specializare, Data_Nasterii, Adresa, Telefon, Email)
VALUES (12, 'Georgescu', 'Mihai', 1, TO_DATE('1999-09-20', 'YYYY-MM-DD'), 'Bulevardul Libert??ii, Suceava', '+40 777 888 999', 'mihai.georgescu@example.com');

-- Exemplu 13
INSERT INTO Studenti_SP (ID, Nume, Prenume, ID_Specializare, Data_Nasterii, Adresa, Telefon, Email)
VALUES (13, 'Ilie', 'Maria', 2, TO_DATE('2001-03-05', 'YYYY-MM-DD'), 'Aleea Soarelui, Suceava', '+40 222 333 444', 'maria.ilie@example.com');

-- Exemplu 14
INSERT INTO Studenti_SP (ID, Nume, Prenume, ID_Specializare, Data_Nasterii, Adresa, Telefon, Email)
VALUES (14, 'Dobre', 'Ionut', 4, TO_DATE('1998-11-12', 'YYYY-MM-DD'), 'Strada Victoria, Suceava', '+40 555 666 777', 'ionut.dobre@example.com');

-- Exemplu 15
INSERT INTO Studenti_SP (ID, Nume, Prenume, ID_Specializare, Data_Nasterii, Adresa, Telefon, Email)
VALUES (15, 'Munteanu', 'Ana', 1, TO_DATE('2000-04-25', 'YYYY-MM-DD'), 'Bulevardul Bucovinei, Suceava', '+40 999 888 777', 'ana.munteanu@example.com');

-- Exemplu 16
INSERT INTO Studenti_SP (ID, Nume, Prenume, ID_Specializare, Data_Nasterii, Adresa, Telefon, Email)
VALUES (16, 'Popovici', 'Alexandru', 3, TO_DATE('1999-08-30', 'YYYY-MM-DD'), 'Aleea Zorilor, Suceava', '+40 123 456 789', 'alexandru.popovici@example.com');

-- Exemplu 17
INSERT INTO Studenti_SP (ID, Nume, Prenume, ID_Specializare, Data_Nasterii, Adresa, Telefon, Email)
VALUES (17, 'Stefan', 'Elena', 2, TO_DATE('2000-01-12', 'YYYY-MM-DD'), 'Strada Unirii, Suceava', '+40 987 654 321', 'elena.stefan@example.com');

-- Exemplu 18
INSERT INTO Studenti_SP (ID, Nume, Prenume, ID_Specializare, Data_Nasterii, Adresa, Telefon, Email)
VALUES (18, 'Radulescu', 'George', 1, TO_DATE('1999-07-30', 'YYYY-MM-DD'), 'Bulevardul Independen?ei, Suceava', '+40 555 777 999', 'george.radulescu@example.com');

-- Exemplu 19
INSERT INTO Studenti_SP (ID, Nume, Prenume, ID_Specializare, Data_Nasterii, Adresa, Telefon, Email)
VALUES (19, 'Constantinescu', 'Ioana', 4, TO_DATE('2001-02-18', 'YYYY-MM-DD'), 'Strada Libert??ii, Suceava', '+40 111 222 333', 'ioana.constantinescu@example.com');

-- Exemplu 20
INSERT INTO Studenti_SP (ID, Nume, Prenume, ID_Specializare, Data_Nasterii, Adresa, Telefon, Email)
VALUES (20, 'Gheorghita', 'Paul', 3, TO_DATE('1998-12-01', 'YYYY-MM-DD'), 'Aleea Universit??ii, Suceava', '+40 777 888 999', 'paul.gheorghita@example.com');

commit;

select * from studenti_sp;
select * from facultati_sp;
select * from specializari_sp;