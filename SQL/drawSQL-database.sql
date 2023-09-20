-- Create the Tárgy table
CREATE TABLE Tárgy (
  Tárgy_Kód CHAR(12) PRIMARY KEY,
  Név VARCHAR(100),
  Kredit TINYINT UNSIGNED,
  Ajánlott_Félév TINYINT UNSIGNED
);

-- Create the Előfeltétel table
CREATE TABLE Előfeltétel (
  Tárgy_Kód CHAR(12),
  Előfeltétel_ID CHAR(12),
  PRIMARY KEY (Tárgy_Kód, Előfeltétel_ID)
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
  Tárgy_Kód CHAR(12),
  PRIMARY KEY (Neptun_Kód, Tárgy_Kód)
);

-- Define foreign keys using ALTER TABLE
ALTER TABLE Teljesített_Tárgy
  ADD CONSTRAINT FK_TeljesitettTargy_Neptun
  FOREIGN KEY (Neptun_Kód)
  REFERENCES Hallgató(Neptun_kód);

ALTER TABLE Teljesített_Tárgy
  ADD CONSTRAINT FK_TeljesitettTargy_Tárgy
  FOREIGN KEY (Tárgy_Kód)
  REFERENCES Tárgy(Tárgy_Kód);

ALTER TABLE Előfeltétel
  ADD CONSTRAINT FK_Előfeltétel_Tárgy_Kód
  FOREIGN KEY (Tárgy_Kód)
  REFERENCES Tárgy(Tárgy_Kód);

ALTER TABLE Előfeltétel
  ADD CONSTRAINT FK_Előfeltétel_Előfeltétel_ID
  FOREIGN KEY (Előfeltétel_ID)
  REFERENCES Tárgy(Tárgy_Kód);
