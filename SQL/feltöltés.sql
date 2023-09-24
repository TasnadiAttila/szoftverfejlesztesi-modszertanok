INSERT INTO Tárgy (Tárgy_Kód, Név, Kredit, Ajánlott_Félév)
VALUES
    ('INBPM0105-21', 'Operációs rendszerek', 6, 1),
    ('INBPM0103-17', 'Számítógépes matematika és vizualizáció', 6, 1),
    ('INBPM0101-21', 'Az informatika logikai alapjai', 6, 1),
    ('INBPM0104-21', 'Bevezetés a programozásba', 3, 1),
    ('INBPM0102-17', 'Diszkrét matematika', 6, 1),
    ('INBPM0207-21', 'Kalkulus', 6, 2),
    ('INBPM0211-21', 'Magas szintű programozási nyelvek 1', 6, 2),
    ('INBPM0208-17', 'Adatbázisrendszerek', 3, 2),
    ('INBPM0209-17', 'Adatbázisrendszerek labor',3,2),
    ('INBPM0210-17', 'Hálózati architektúrák és protokollok', 6, 2),
    ('INBPM0206-17', 'Adatszerkezetek és algoritmusok', 6, 2),
    ('INBPM03013-17', 'Alkalmazott statisztika', 6, 3),
    ('INBPM0315-21', 'Magas szintű programozási nyelvek 2', 6, 3),
    ('INBPM0316-17', 'Web technológiák', 6, 3),
    ('INBPM0314-21', 'Az informatika számítástudományi alapjai', 6, 3),
    ('INBPM0417-21', 'Alkalmazott matematika', 6, 4),
    ('INBPM0419-17', 'Informatikai biztonság alapjai', 6, 4),
    ('INBPM0418-21', 'A mesterséges inteligencia alapjai', 6, 4),
    ('INBPM0420-21', 'Szoftverfejlesztés', 6, 4),
    ('INBPM0522-21', 'Webfejlesztés', 6, 5),
    ('INBPM0521-17', 'Szofverfejlesztési módszertanok', 3, 5),
    ('INBPM0523-21', 'Szakdolgozat 1', 5, 5),
    ('INBPM0623-21', 'Szakdolgozat 2', 15, 6);

INSERT INTO Előfeltétel (Tárgy_Kód, Előfeltétel_ID)
VALUES
    ('INBPM03013-17', 'INBPM0207-21'), -- Alk.Stat. <- Kalkulus
    ('INBPM0417-21', 'INBPM0102-17'), -- Alk.Mat. <- Diszkrét Mat.
    ('INBPM0206-17', 'INBPM0102-17'), -- Adatszerk. <- Diszkrét Mat.
    ('INBPM0206-17', 'INBPM0101-21'), -- Adatszerk. <- Logika
    ('INBPM0314-21', 'INBPM0102-17'), -- ISZA <- Diszkrét Mat.
    ('INBPM0209-17', 'INBPM0101-21'), -- Adatb.Lab. <- Logika
    ('INBPM0419-17', 'INBPM0101-21'), -- IBIZA <- Logika
    ('INBPM0419-17', 'INBPM0211-21'), -- IBIZA <- Prog. 1
    ('INBPM0208-17', 'INBPM0101-21'), -- Adatb. <- Logika
    ('INBPM0316-17', 'INBPM0104-21'), -- Webtech. <- Bev. Prog.
    ('INBPM0418-21', 'INBPM0101-21'), -- Mest.Int. <- Logika
    ('INBPM0418-21', 'INBPM0211-21'), -- Mest.Int. <- Prog. 1
    ('INBPM0522-21', 'INBPM0316-17'), -- Webfejl. <- Webtech.
    ('INBPM0522-21', 'INBPM0315-21'), -- Webfejl. <- Prog. 2
    ('INBPM0211-21', 'INBPM0104-21'), -- Prog. 1 <-- Bev. Prog.
    ('INBPM0210-17', 'INBPM0104-21'), -- Háló. <- Bev. Prog.
    ('INBPM0210-17', 'INBPM0105-21'), -- Háló. <- OP. Rendszer
    ('INBPM0315-21', 'INBPM0211-21'), -- Prog. 2 <- Prog. 1
    ('INBPM0420-21', 'INBPM0315-21'), -- Szoftver. <- Prog. 2
    ('INBPM0521-17', 'INBPM0211-21'); -- Szoft. Mód. <- Prog. 1

