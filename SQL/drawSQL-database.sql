CREATE TABLE `Teljesített Tárgy`(
    `Neptun_Kód` CHAR(6) NOT NULL,
    `Kurzus_ID` TINYINT NOT NULL
);
ALTER TABLE
    `Teljesített Tárgy` ADD PRIMARY KEY(`Neptun_Kód`);
ALTER TABLE
    `Teljesített Tárgy` ADD PRIMARY KEY(`Kurzus_ID`);
CREATE TABLE `Kurzus`(
    `Kurzus_ID` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Név` VARCHAR(100) NOT NULL,
    `Állapot` VARCHAR(10) NULL COMMENT 'Hallgatóként számolt a teljesített tárgyak és előfeltételek függvényében.',
    `Kredit` TINYINT NOT NULL
);
CREATE TABLE `Előfeltétel`(
    `Kurzus_ID` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Előfeltétel_ID` TINYINT NOT NULL
);
ALTER TABLE
    `Előfeltétel` ADD PRIMARY KEY(`Előfeltétel_ID`);
CREATE TABLE `Hallgató`(
    `Neptun_kód` CHAR(6) NOT NULL,
    `Név` VARCHAR(60) NOT NULL,
    `Félév` TINYINT NOT NULL,
    `Jelszó_HASH` CHAR(64) NOT NULL
);
ALTER TABLE
    `Hallgató` ADD PRIMARY KEY(`Neptun_kód`);
ALTER TABLE
    `Teljesített Tárgy` ADD CONSTRAINT `teljesített tárgy_kurzus_id_foreign` FOREIGN KEY(`Kurzus_ID`) REFERENCES `Kurzus`(`Kurzus_ID`);
ALTER TABLE
    `Előfeltétel` ADD CONSTRAINT `előfeltétel_előfeltétel_id_foreign` FOREIGN KEY(`Előfeltétel_ID`) REFERENCES `Kurzus`(`Kurzus_ID`);
ALTER TABLE
    `Előfeltétel` ADD CONSTRAINT `előfeltétel_kurzus_id_foreign` FOREIGN KEY(`Kurzus_ID`) REFERENCES `Kurzus`(`Kurzus_ID`);
ALTER TABLE
    `Teljesített Tárgy` ADD CONSTRAINT `teljesített tárgy_neptun_kód_foreign` FOREIGN KEY(`Neptun_Kód`) REFERENCES `Hallgató`(`Neptun_kód`);