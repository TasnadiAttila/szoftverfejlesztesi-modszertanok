## Kreditszámláló követelményspecifikáció

### **1.  Jelenlegi helyzet leírása:**
Az egyetem jelenleg egy Neptun nevű webes platformot használ az egyetemi tárgyak nyilvántartására és azokkal kapcsolatos információk megjelenítésére. A Neptun felületen találhatóak a tárgyak nevei, kreditszáma, ajánlott féléve, valamint további részletes információk, például a tárgyfelvételének a követelményei. A rendszer biztosítja a kreditszámok nyomon követését is. Itt láthatod, hány kreditpontot szereztél már, illetve láthatod a felvett tantárgyakhoz kapcsolódó kreditpontokat is. Tehát itt szemléltethető, hogy mely tantárgyak mennyi kreditpontot érnek.

### **2.  Vágyálom rendszer leírása:**
Egy olyan webes felület, ahol **könnyedén, átláthatóan és egy helyen** követhető egy hallgató előrehaladása PTI BSc szakon kötelező tantárgyak szempontjából. A tantárgyak ajánlott félév szerint táblázat oszlopaiba legyenek rendezve. Amelyben a cellák színezettek, aszerint, hogy az adott tárgy teljesített, felvehető vagy lezárt. Az egymástól függő tárgyakat nyilak kötik össze. Az oldalon látható az eddig teljesített tárgyak alapján kiszámolt kreditszám is. Az előrehaladás állapotát valamilyen módon tárolja el. Az alkalmazás újbóli megnyitása után a felület ugyan úgy néz ki, mint amikor bezárult. Továbbá a weboldal legyen reszponzív és kellemes a szemnek.

### **3.  A rendszerre vonatkozó pályázat, törvények, rendeletek, szabványok   és ajánlások felsorolása:**
- HTML5 és CSS3: A legújabb webes technológiák használata, hogy a weboldal reszponzív és modern kinézetű legyen.
- Ha a rendszer automatikusan kreditszámot számol a teljesített tárgyak alapján, fontos azoknak az előírásoknak a betartása, amelyeket az egyetem vagy oktatási intézmény alkalmaz a kreditszámításra.    

### **4.  Jelenlegi üzleti folyamatok modellje:**
- 4.1. Elérhető egyetemi tárgyak megtekintése
    - 4.1.1. Bejelentkezés a Neptun rendszerbe.
    - 4.1.2. "Tárgyak"-->"Tárgyfelvétel" opció kiválasztása
    - 4.1.3 Az aktuális félév kiválasztása
    - 4.1.4 Tárgyak listázása
        - 4.1.4.1. A kivánt tárgy kiválasztása
        - 4.1.4.2. A követelmények megtekintése
- 4.2. Kreditszám megtekintése(aktuális félév)
    - 4.2.1. Bejelentkezés a Neptun rendszerbe.
    - 4.2.2. "Tárgyak"-->"Felvett tárgyak" opció kiválasztása
    - 4.2.3. Az aktuális félév kiválasztása
    - 4.2.4. Tárgyak listázása 
- 4.3. Összes teljesített kreditszám megtekintése
    - 4.3.1. Bejelentkezés a Neptun rendszerbe.
    - 4.3.2 "Tanulmányok" --> "Tanulmányi átlagok" opció kiválasztása
    
### **5.  Igényelt üzleti folyamatok modellje:**
    
### **6.  Követelménylista:**
- Minden tárgyhoz tartozik egy név, kreditszám, ajánlott félév és egyedi azonosító.
- A rendszer megjeleníti a hallgatók számára a rendelkezésre álló tárgyakat, beleértve a felvehető, teljesített és hátralévő tárgyakat.
- A rendszer automatikusan számolja ki a teljesített kreditszámot a kiválasztott tárgyak alapján.
- A weboldalnak reszponzívnak kell lennie, hogy a felhasználók különböző eszközökön (számítógép, tablet, mobil) is használhassák.
- A rendszer vegye figyelembe a tantárgykövetelményeket, tehát ne lehessen teljesítettnek jelölni egy tárgyat amelynek előfeltétele még nem teljesült.
  
### **7. Irányított és szabad szöveges riportok szövege:**
    
### **8. Fogalomszótár:**
- lezárt - A tárgy nem felvehető, mert nem teljesültek az előfeltételek.
