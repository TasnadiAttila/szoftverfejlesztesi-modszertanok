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
	- #### 1. Felhasználói interfész:
		A felhasználói interfész felelős az interakcióért a hallgatókkal. Ez magában foglalja azokat a részeket, amelyeken a hallgatók láthatják a kurzusokat, a táblázatos felületet, az előrehaladásukat és a bejelentkezést.
			- **Főoldal:** A hallgatók itt láthatják a kötelező kurzusokat tartalmazó táblázatot. Az aktuális félév ki van emelve, és a kurzusok színezettek az előrehaladás alapján.
			-   **Bejelentkezés:** A hallgatók bejelentkezhetnek a rendszerbe, hogy hozzáférjenek az adataikhoz és az előrehaladási információkhoz.

	- #### 2. Üzleti logika:
	Az üzleti logika felelős a felhasználói kérelmek feldolgozásáért és az adatok kezeléséért. Itt találhatók azok a komponensek és szolgáltatások, amelyek segítenek a felhasználói igények kielégítésében.
		-   **Felhasználókezelés:** Ezen a területen a felhasználók bejelentkezése és hitelesítése történik. A bejelentkezett felhasználó adatait kezelik itt.
		-   **Adatbázis-kezelés:** A kurzusok, hallgatók és előrehaladási adatokat tároló adatbázist itt kezelik. Az adatbázis lehet relációs vagy NoSQL típusú, ahol a kurzusokhoz, hallgatókhoz és kurzusfelvételekhez kapcsolódó táblák vagy dokumentumok találhatók.
		-   **Kurzusok kezelése:** Ez a komponens felelős a kurzusok adatainak karbantartásáért, beleértve a kurzusok létrehozását, módosítását és törlését.
		-   **Kurzusfelvételek kezelése:** Itt dolgozzák fel a kurzusok felvételét és teljesítését, valamint az előfeltételek ellenőrzését.
	- #### 3. Adatbázis:
	Az adatbázis tárolja az összes szükséges adatot a rendszer működéséhez, beleértve a kurzusokat, hallgatókat, kurzusfelvételeket és előrehaladási adatokat.
	- #### 4. Webes szerver:
	A webes szerver felelős a kliens böngészőkből érkező HTTP kérések fogadásáért és válaszok küldéséért. A kérések feldolgozását az üzleti logika végzi, és a válaszokat a felhasználói interfésznek küldi.
	- #### 5. Adatmegjelenítés:
	Az adatok megjelenítése a felhasználói interfészen keresztül történik. A táblázatok és az előrehaladási információk vizualizálása, valamint a színezés és a kiemelés itt valósul meg.
	- #### 6. Felhasználói autentikáció és hitelesítés:
	Ez a komponens felelős a felhasználók bejelentkezésének kezeléséért, valamint az őket megfelelő jogosultságokkal ellátott területekhez való hozzáférés biztosításáért.
	- #### 7. Adatbiztonság:
	Az adatbiztonság komponens gondoskodik a felhasználói adatok védelméről és az adatb
- ### **Az alkalmazás rétegei:**
    Különválaszthatók a modell, a nézet és a vezérlő rétegek.
- ### **Adatspecifikációk/objektumspecifikációk (környezetfüggő adattervek):**
	- #### 1. Adatspecifikációk
		- Felhasználói adatok:
			- Felhasználónév: A felhasználó bejelentkezési neve. 
			- Jelszó: A felhasználó bejelentkezési jelszava.
		- Tanulmányi adatok:
			- Kurzus: Az egyetemi kurzus neve.
			- Kreditszám: A kurzus elvégzéséért járó kreditszám.
			- Előfeltétel: Azok a kurzusok, amelyeket a tanulóknak előzetesen teljesíteniük kell a kurzus felvételéhez.
			- Félév: A kurzushoz tartozó ajánlott félév, amikor a tanulóknak érdemes elvégezni a kurzust.
		- Tanulmányi előrehaladás
			- Hallgató: Az egyetemi hallgatók adatai, beleértve a nevet, azonosítót és befejezett kurzusok listáját.
			- Kurzusfelvétel: Rögzíti, hogy egy hallgató felvett-e egy kurzust, és ha igen, akkor mely félévben.
	- #### 2. Objektumspecifikációk
		- Felhasználó (User)
			-   Attribútumok:
			    -   Felhasználónév
			    -   Jelszó
			- Kurzus
				-   Attribútumok:
				    -   Kurzus neve
				    -   Kreditszám
				    -   Előfeltételek: Lista a kurzus előfeltételeiről
				    -   Ajánlott félév
			- Hallgató
				-   Attribútumok:
				    -   Azonosító
				    -   Név
				    -   Felvett kurzusok: A kurzusok listája, amelyeket a hallgató felvett a megfelelő félévben.
			- Metódusok:
			    -   `kurzusFel(kurzus)`: A kurzus felvétele a hallgató kurzuslistájába a megfelelő félévben.
			    -   `teljesítettKurzus(kurzus)`: A kurzus teljesítésének rögzítése a hallgató kurzuslistájában.
			    -   `megjelenitElofeltetelek(kurzus)`: Megjeleníti, hogy a kurzus előfeltételei teljesültek-e.
- ### **Programspecifikációk:**
- #####  1. Bevezetés
    A PTI BSc Tanulmányi Követési Webes Felület egy olyan alkalmazás, amely lehetővé teszi a PTI egyetemi hallgatók számára, hogy könnyedén és egy helyen kövessék tanulmányaik előrehaladását.
    Az alkalmazás csak a kötelező kurzusokat tartalmazza táblázatos formában, lehetővé teszi az előfeltételi kapcsolatok megjelenítését nyilak segítségével, és vizuálisan is ábrázolja a hallgatók teljesítményét.
- ##### 2. Felhasználói funkciók
  - 2.1. Bejelentkezés
        A hallgatók bejelentkezhetnek a rendszerbe felhasználónév és jelszó megadásával.
  - 2.2. Főoldal
        A bejelentkezés után a felhasználók a főoldalt látják.
        A főoldalon jelenik meg a táblázat, amelyben a kötelező kurzusok vannak felsorolva.
        Minden oszlop egy félévet képvisel.
        Az aktuális félév oszlopa ki van emelve.
  - 2.3. Táblázat megjelenítése
        A táblázat cellái tartalmazzák a kurzus nevét és a teljesítéséért járó kreditszámot.
        A cellák színezettek:
            Zöld, ha a kurzus teljesítve van.
            Piros, ha a kurzus zárva van az előfeltétel hiánya miatt.
            Alapértelmezett (fehér), ha a kurzus elérhető és nincs probléma vele.
   - 2.4. Előfeltételi kapcsolatok megjelenítése
        A cellák közötti előfeltételi kapcsolatokat nyilak jelzik az oszlopok között.
        A nyilak mutatják, hogy egy adott kurzus elvégzése az előző kurzus teljesítésétől függ.
   - 2.5. Szerzett kreditszám
        Az oldalon jól látható helyen megjelenik a szerzett kreditszám Szerzett/Összes alakban.
   - 2.6. Félév váltása
        A felhasználók váltogathatnak a félévek között egy gombokkal vagy lenyíló menüvel.
   #### 3. Rendszerkövetelmények
   - 3.1. Technológiai követelmények
        Az alkalmazás webes alapokon működik, és támogatja a böngészők legújabb verzióit
   - 3.2. Adatbázis
        Az alkalmazás adatbázist használ a felhasználói adatok és kurzusinformációk tárolására.
   #### 4. Fejlesztői megjegyzések
   - 4.1. Szoftverarchitektúra
        Az alkalmazás MVC (Model-View-Controller) architektúrára épül, ahol a modellek a kurzusok és a felhasználók,
        a nézet a webes felület, a vezérlők pedig az alkalmazás logikáját kezelik.
   - 4.2. Fejlesztési nyelv és keretrendszer
        Az alkalmazás HTML,CSS,JavaScript nyelven készül MySQL keretrendszer felhasználásával.

