## **A fizikai rendszerterv**
- ### **Osztálytervek:**
    - Hallgató oszály: 
        - Megtalálható benne egy hallgató jellemőzi, névszerint **Neptun kód, Név, Félév, Jelszó_HASH**.
    - Teljesített Tárgy:
        - A hallgató által teljesített kurzosok reprezentálására alkalmas, **Kurzus ID** és **Neptun Kód** adattagokkal
    - Kurzus:
        - Következőkkel lesz felvértezve **Kurzus ID, Név, Állapot, Kredit Érték** amelyek egy kurzus azonosítására szolgálnak. 
    - Előfeltétel
        - Adott kurzus esetén szükséges egy előzetes kurzus teljesítése, és ennek a tárolására lesz alkalmas ezen osztály, egy **Kurzus ID**-val és **Előfeltétel ID**-val.
- ### **Adatbázisterv:**
    - Hallgató:
        - ***Neptun_kód** char(6)*: A hallgató Neptun kódja, amely elsődleges kulcs is.
        - ***Név** varchar(60)*: A hallgató teljes neve
        - ***Félév** tinyint*: A hallató aktuális féléve
        - ***Jelszó_HASH** char(64)*: A hallgató jelszava
    - Teljesített Tárgy:
        - ***Neptun_kód** char(6)*: A hallgató táblával kapcsolja össze a táblát, amely idegen kulcs is.
        - ***Kurzus_ID** tinyint*: A tárgy azonosítója, amely elsődelges kulcs is.
    - Kurzus:
        - ***Kurzus_ID** tinyint*: A kurzus azonosítója, amely elsődleges kulcs is és az összeköttetés a Teljesített. Tárgy táblával
        - ***Név** varchar(100)*: A kurzus neve.
        - ***Állapot** varchar(10)*: A trágy állapota, amely lehet Teljesített, Felvett, Nem felvető
        - ***Kredit** tinyint*: A kurzus kredit értéke
    - Előfeltétel:
        - ***Kurzus_ID** tinyint*: A kurzus azonosítója amelyhez előfeltételként szolgál
        - ***Előfeltétel_ID** tinyint*: Az előfeltétel kuruz azonosítója
- ### **Teszttervek:**
    - Teszttervek: Teszt készítése a felhasználói regisztrációhoz, bejelentkezéshez, kurzusok felvételéhez, és az előfeltételek 
- ### **Telepítési terv:**
    - A háttérben MySQL alapú adatbázis, míg a felhasználói felületen HTML5, CSS3, és JavaScript használata.
- ### **Rendszerspecifikációk:**
    - Legalább 8.2.4 XAMPP használta, a lehető legfrissebb HTML, CSS, és JavaScript verziókkal
- ### **Szoftverarchitektúra:**
- ### **Az alkalmazás rétegei:**
    Különválaszthatók a modell, a nézet és a vezérlő rétegek.
- ### **Adatspecifikációk/objektumspecifikációk (környezetfüggő adattervek):**
- ### **Programspecifikációk:**


    
