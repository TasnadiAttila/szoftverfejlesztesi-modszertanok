# Logikai rendszerterv
- ## Üzleti folyamatok modellje:
    - ### Business domain modell
        A rendszer segíti a hallgatókat tanulmányuk nyomonkövetésében.
    - ### Üzleti szereplők
        - **Hallgató:** Bejelentkezik a rendszerbe az online felületen és nyílvántartja magának az előrehaladását a rendszer segítségével.
        - **Admin:** Jogosult a rendszer által használt adatbázis  megtekintésére és módosítására. (Pl.: Hallgatók regisztálása és törlése)
    - ### Üzleti entitások
        - **Kurzus:** Reprezentál egy egyetemi tantárgyat. Tartalmazza a tárgy nevét, az ajánlot félélvet, teljesítéséért járó kreditszámot valamint egy egyedi kurzus azonosítót.
        - **Hallgató:** A hallglató - egyben felhasználó - tartalmaz egy egyedi azonosítót (Neptun_Kód), a hallgató nevét, aktuális félévét és a bejelentkezéshez szükséges jelszavának Hash-ét.
- ## Követelmények
    - ### Funkcionális
        - A rendszer megjeleníti a kötelező tantárgyakat a PTI BSc szakon.
        - A felhasznló maga tudja "kattingatni" az előrehaladását és ezta  rendszer automatikus elmenti.
        - A rendszer automatikusan kreditet számol, félévre nézve és összeségében is.
        - Az előfeltételeket figyelembe véve engedélyezi vagy tíltja, hogy a felhasználó teljesítettnek jelöljön egy adott tárgyat.
    - ### Nemfunkcionális
    A rendszernek reszponzívnek kell lennie, és különböző eszközökön (számítógép, tablet, mobil) is jól kell működnie.
- ## Feldolgozási folyamatok
    - ### Használati esetek
        - Hallgató bejelentkezik a rendszerbe.
        - Hallgató megtekinti az elérhető egyetemi tárgyakat.
        - Hallgató megjelöli/módosítja az aktuális félévét.
        - Hallgató módosítja a tárgyakat állapotát (csak le nem zárt tárgyak módosíthatóak).
        - Rendszer kiszámolja a hallgató kreditszámát.
    - ### Állapotgépek
        - #### Kurzus állapotok:
           > @startuml
            [*] --> Nem_Teljesített : Start
            Nem_Teljesített --> Teljesített : Felhasznlói módosítás
            Nem_Teljesített --> Teljesített : Adatbázis lekérdezés
            Teljesített --> Nem_Teljesített : Felhasznlói módosítás
            Teljesített --> Lezárt : A tárgy előfeltételei nem teljesítettek.
            Nem_Teljesített --> Lezárt : A tárgy előfeltételei nem teljesítettek.
            @enduml
    - ### Szekvencia diagramok
        - #### Bejelentkezés:
           > @startuml
            actor Felhasználó
            participant Rendszer
            database Adatbázis
            activate Adatbázis
            activate Rendszer
            Felhasználó-> Rendszer: Bejelentkezési adatok
            Rendszer-> Rendszer: Bejelentkezési adatok biztonsági ellenőrzése
            Rendszer->> Adatbázis: Felhasználói adatok lekérdezése
            Adatbázis-->> Rendszer: Felhasználói adatok
            Rendszer-> Rendszer: Jelszo Hash előállítása, ellenőrzés
            Rendszer-> Rendszer: Bejelentkeztetés
            Rendszer-> Felhasználó: Visszajelzés
            Rendszer->> Adatbázis: Kurzus adatok lekérése
            Adatbázis-->> Rendszer: Lekért adatok
            Rendszer-> Rendszer: Adatfeldolgozás
            Rendszer-> Felhasználó: Megjelenítés
            @enduml
        - #### Állapotmódosítás és Kreditszámítás:
            >@startuml
            actor Felhasználó
            participant Rendszer
            database Adatbázis
            activate Rendszer
            activate Adatbázis
            Felhasználó-> Rendszer: Kurzus állapot módosítása
            Rendszer -> Rendszer: Kurzus állapot módosítás
            Rendszer -> Felhasználó: Módosult állapotok megjelenítése
            Rendszer -->> Adatbázis: Frissített adatok mentése
            Rendszer -> Rendszer: Kreditszám számítása
            Rendszer -> Felhasználó: Kreditszám megjelenítése
            @enduml

- ## Funkcionális felépítés
    - ### Komponensek
         - **Frontend:** Az alkalmazás felhasználói felületét és navigációját tartalmazza.
        - **Backend:** A rendszer logikáját és adatkezelését biztosítja.
        - **Adatbázis:** Az egyetemi tárgyak és felhasználói adatok tárolására szolgál.
- ## Felhasználói felületek, menük
    - Bejelentkezési felület
       > @startsalt
        {+
        Neptun Kód<&person>   | "Kód "
        Jelszó<&key>| "*** "
        [  Bejelentzekés<&account-login>   ]
        }
        @endsalt
    - Kurzuskezelő
- ## Adatszótár, logikai adatmodell
    - ### Kurzus:
        - Név
        - Ajánlott félév
        - Kreditszám
        - Kurzus azonosító
        - Állapot (számított)
    - ### Hallagtó:
        - Neptun_Kód
        - Név
        - Aktuális félév
        - Jelszó_HASH
    - ### Teljesített Tárgy:
        - Neptun_Kód (Hallgató)
        - Kurzus azonosító (Kurzus)
    - ### Előfeltétel
        - Kurzus azonosító (Kurzus)
        - Előfeltétel kurzus azonosító (Kurzus)
- ## Adatfolyam diagramok
    - ### Kreditszámítás
        Az adott hallgatóhoz kapcsolható teljesített tárgyak lekérdezése, összekapcsolás a Kurzus táblával és a kapott tábla kreditszámainak szummázása.
    - ### Tárgy állapotának számítása
        - Kezdőállapot: Nincs teljesített tárgy, a hallgató aktuális féléve: 1. félév
        - Lépések:
            - 1. Hallgató aktuális félévének lekérdezése.
            - 2. Hallgató teljesített tárgyainak lekérdezése. Ezek a teljesített tárgyak.
            - 3. Azon tárgyak meghatározása, amelyeknek előfeltételei nem teljesítettek. Ezek a lezárt tárgyak.
            - 4. Megjelenítés a lekérdezések és számítások alapján.