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
    - ### Aktivitási diagramok
    - ### Állapotgépek
    - ### Szekvencia diagramok
- ## Funkcionális felépítés
    - ### Komponensek
- ## Felhasználói felületek, menük
- ## Adatszótár, logikai adatmodell
- ## Adatfolyam diagramok