#### 1. Rendszer Céljai
**Célok:**
-   A rendszer célja lehetővé tenni a hallgatók számára, hogy könnyen és hatékonyan nyomon kövessék az egyetemi tanulmányaikat a PTI BSc szakon.
-   Az előrehaladás könnyed és egy helyen történő megtekintése a kötelező kurzusok terén.

**Nem Célok:**
-   A rendszer nem kezeli a választható kurzusokat vagy az egyéb egyetemi adminisztratív feladatokat, mint például a hallgatói számla kezelése.

#### 2. Jelenlegi Helyzet Leírása

Az egyetem jelenleg egy Neptun nevű webes platformot használ az egyetemi tárgyak nyilvántartására és azokkal kapcsolatos információk megjelenítésére. A Neptun felületen találhatóak a tárgyak nevei, kreditszáma, ajánlott féléve, valamint további részletes információk, például a tárgyfelvételének a követelményei. A rendszer biztosítja a kreditszámok nyomon követését is.

#### 3. Vágyálomrendszer Leírása

A vágyálomrendszer egy olyan webes felületet ír le, amely a hallgatóknak lehetővé teszi az egyetemi tanulmányaik előrehaladásának könnyű nyomon követését a PTI BSc szakon. A rendszer a következőket kínálja:

-   A kötelező kurzusok megjelenítése táblázatos formában.
-   Az oszlopok reprezentálják a féléveket, és az aktuális félév ki van emelve.
-   A tárgyak közötti előfeltételek nyilak segítségével vannak jelölve.
-   Minden cella tartalmazza a kurzus nevét és a teljesítéséért járó kreditszámot.
-   A kurzusok azokba az oszlopokba kerülnek, amelyekben ajánlott azokat teljesíteni.
-   A cellák színkódolással mutatják, hogy a hallgató teljesítette-e már a kurzust vagy sem.
-   Az oldalon fel van tüntetve a szerzett kreditszám az összes kreditponttal együtt.
-   A weboldal reszponzív és könnyen használható.

#### 4. Rendszerre Vonatkozó Külső Megszorítások

A rendszer tervezése és fejlesztése során figyelembe kell venni a következő külső megszorításokat:

-   HTML5 és CSS3 technológiák használata a modern és reszponzív felhasználói felület kialakításához.
-   A rendszernek meg kell felelnie az egyetem vagy oktatási intézmény által alkalmazott kreditszámítási szabályoknak és előírásoknak.

#### 5. Jelenlegi Üzleti Folyamatok Modellje

Az aktuális üzleti folyamatok a Neptun rendszerben találhatóak, és magukban foglalják a tárgyak megtekintését, a tárgyfelvételt, és a kreditpontok megjelenítését.

#### 6. Igényelt Üzleti Folyamatok Modellje

Az igényelt üzleti folyamatok a vágyálomrendszer alapján magukban foglalják a kötelező kurzusok táblázatos megjelenítését, az előfeltételek figyelembevételét, a kreditpontok automatikus számítását és a reszponzív felhasználói felület kialakítását.

#### 7. Követelménylista

A rendszerhez kapcsolódó követelmények a következők:

-   A kurzusokhoz tartozik név, kreditszám, ajánlott félév és egyedi azonosító.
-   A rendszer automatikusan számolja ki a teljesített kreditpontokat.
-   A weboldalnak reszponzívnak kell lennie.
-   A rendszernek vegye figyelembe a tantárgykövetelményeket.

#### 8. Használati Esetek

-   **Bejelentkezés**: A hallgató bejelentkezik a rendszerbe.
-   **Kötelező kurzusok megtekintése**: A hallgatók megtekinthetik a kötelező kurzusokat és azokat az oszlopokat, amelyekben ajánlott teljesíteni.
-   **Előfeltételek ellenőrzése**: A rendszer ellenőrzi, hogy a hallgatók teljesítették-e az előfeltételeket.
-   **Kreditpontok megjelenítése**: A rendszer megjeleníti a hallgató által szerzett kreditpontokat.
-   **Reszponzív felhasználói felület**: A hallgatók különböző eszközökön használhatják a rendszert.

#### 9. Megfeleltetés

A használati esetek teljesítik a követelményeket a következő módon:

-   A bejelentkezés lehetővé teszi a hallgatók számára a rendszer használatát.
-   A "Kötelező kurzusok megtekintése" használati eset megfelel a "Kurzusok listázása" követelménynek.
-   Az "Előfeltételek ellenőrzése" a rendszer megfelelését biztosítja a tantárgykövetelményekkel.
-   A "Kreditpontok megjelenítése" megvalósítja a kreditpontok számítását és megjelenítését.
-   A "Reszponzív felhasználói felület" biztosítja, hogy a rendszer különböző eszközökön is használható legyen.

#### 10. Képernyőtervek

A képernyőtervek azok a tervek, amelyek bemutatják, hogyan fog kinézni a rendszer felhasználói felülete. Az alábbiakban rövid leírások találhatók néhány fontos képernyőről:

-   **Bejelentkezési Képernyő**: Itt a felhasználók bejelentkeznek a rendszerbe, megadva a felhasználónevüket és jelszavukat.
    
-   **Fő Képernyő (Dashboard)**: Ez a fő képernyő, ahol a hallgatók láthatják az előrehaladásukat. Ezen a képernyőn jelennek meg az oszlopok, amelyek a féléveket képviselik, és az aktuális félév ki van emelve. A kurzusok nevei és kreditszámai láthatók a megfelelő oszlopokban. A kurzusok színezettek lehetnek attól függően, hogy a hallgató teljesítette-e már őket, vagy ha le vannak zárva az előfeltétel hiányában.
    
-   **Kreditszámláló Képernyő**: Ezen a képernyőn a hallgatók láthatják a szerzett kreditpontokat az összesített formában.

#### 11. Forgatókönyvek

A forgatókönyvek leírják, hogy a felhasználók hogyan interaktálnak a rendszerrel különböző szituációkban. Például:

-   **Bejelentkezési Forgatókönyv**: Ebben a forgatókönyvben bemutatjuk, hogyan lép be egy hallgató a rendszerbe. A felhasználó megadja a felhasználónevét és jelszavát, majd a rendszer ellenőrzi az azonosítást.
    
-   **Kötelező Kurzusok Megtekintése Forgatókönyv**: Ebben a forgatókönyvben egy hallgató belép a fő képernyőre, és megtekinti a kötelező kurzusokat az aktuális félévben. A kurzusokat oszlopok reprezentálják, és a felhasználó ellenőrizheti az előfeltételeket és a kurzusok státuszát.
    
-   **Kreditpontok Megjelenítése Forgatókönyv**: Ebben a forgatókönyvben a hallgató megnézi a szerzett kreditpontokat a rendszerben, és megtekinti az összesített kreditpontokat.

#### 12. Funkció – Követelmény Megfeleltetés

Ebben a részben összekapcsoljuk a rendszer funkcióit a korábban felsorolt követelményekkel. Például:

-   **Bejelentkezési Funkció** - Megfelelteti a követelményt: "A hallgatók bejelentkezhetnek a rendszerbe a felhasználónevük és jelszavuk megadásával."
    
-   **Kötelező Kurzusok Megtekintése Funkció** - Megfelelteti a követelményt: "A rendszer megjeleníti a kötelező kurzusokat táblázatos formában az aktuális félévben."
    
-   **Kreditpontok Megjelenítése Funkció** - Megfelelteti a követelményt: "Az oldalon fel van tüntetve a szerzett kreditszám Szerzett/Összes alakban."

#### 13. Fogalomszótár

-   **Előfeltétel**: Azok a kurzusok vagy követelmények, amelyeket a hallgatóknak előzetesen teljesíteniük kell egy másik kurzus felvételéhez.
-   **Reszponzív Felhasználói Felület**: Olyan felhasználói felület, amely alkalmazkodik a különböző eszközök képernyőméretéhez és felbontásához.
