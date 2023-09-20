-- Create the Kurzus table
CREATE TABLE Kurzus (
  Kurzus_ID TINYINT(5) UNSIGNED PRIMARY KEY,
  Név VARCHAR(100),
  Kredit TINYINT
);

-- Create the Előfeltétel table
CREATE TABLE Előfeltétel (
  Kurzus_ID TINYINT(5) UNSIGNED,
  Előfeltétel_ID TINYINT(5) UNSIGNED,
  PRIMARY KEY (Kurzus_ID, Előfeltétel_ID)
);

-- Create the Hallgató table
CREATE TABLE Hallgató (
  Neptun_kód CHAR(6) PRIMARY KEY,
  Név VARCHAR(60),
  Félév TINYINT UNSIGNED,
  Jelszó_HASH CHAR(64)
);

-- Create the Teljesített_Tárgy table
CREATE TABLE Teljesített_Tárgy (
  Neptun_Kód CHAR(6),
  Kurzus_ID TINYINT(5) UNSIGNED,
  PRIMARY KEY (Neptun_Kód, Kurzus_ID)
);

-- Define foreign keys using ALTER TABLE
ALTER TABLE Teljesített_Tárgy
  ADD CONSTRAINT FK_TeljesitettTargy_Neptun
  FOREIGN KEY (Neptun_Kód)
  REFERENCES Hallgató(Neptun_kód);

ALTER TABLE Teljesített_Tárgy
  ADD CONSTRAINT FK_TeljesitettTargy_Kurzus
  FOREIGN KEY (Kurzus_ID)
  REFERENCES Kurzus(Kurzus_ID);

ALTER TABLE Előfeltétel
  ADD CONSTRAINT FK_Előfeltétel_Kurzus_ID
  FOREIGN KEY (Kurzus_ID)
  REFERENCES Kurzus(Kurzus_ID);

ALTER TABLE Előfeltétel
  ADD CONSTRAINT FK_Előfeltétel_Előfeltétel_ID
  FOREIGN KEY (Előfeltétel_ID)
  REFERENCES Kurzus(Kurzus_ID);
