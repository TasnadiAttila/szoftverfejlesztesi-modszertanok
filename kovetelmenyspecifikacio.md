## Kreditszámláló követelményspecifikáció

### **1.  Jelenlegi helyzet leírása:**
Az egyetem jelenleg egy Neptun nevű webes platformot használ az egyetemi tárgyak nyilvántartására és azokkal kapcsolatos információk megjelenítésére. A Neptun felületen találhatóak a tárgyak nevei, kreditszáma, ajánlott féléve, valamint további részletes információk, például a tárgyfelvételének a követelményei. A rendszer biztosítja a kreditszámok nyomon követését is. Itt láthatod, hány kreditpontot szereztél már, illetve láthatod a felvett tantárgyakhoz kapcsolódó kreditpontokat is. Tehát itt szemléltethető, hogy mely tantárgyak mennyi kreditpontot érnek.

### **2.  Vágyálom rendszer leírása:**
Egy olyan webes felület, ahol egy hallgató bejelentkezés után könnyedén és egy helyen láthatja az előrehaladáshoz köthető információkat az egyetemi tanulmányi kapcsán PTI BSc szakon. Csak a kötelező kurzusok jellenek meg táblázatos formában. Minden oszlop egy félév. Az oszlopok **nem** közvetlen vannak egymás mellet. A tárgyak közti előfeltételi kapcsolatokat nyilak jelzik az oszlopok között. Egy cella tartalma: kurzus neve, teljesítéséért járó kreditszám. Minden tárgy azon félév oszlopába kerül, amelyik félévben ajánlott teljesíteni az adott tárgyat. A cellák szinezettek, az alapján, hogy a bejelentkezett hallgató teljesített-e már a tárgyat, a tárgy le van-e zárva, amiért nem teljesítette az előfeltételt. A hallgató aktuális félévéhez tartozó oszlop ki van emelve. Az oldalon jól látható helyen fel van tüntetve a szerzett kreditszám *Szerzett/Összes* alakban. A weboldal reszponzív és kellemes a szemnek.

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
- 5.1. Elérhető egyetemi tárgyak megtekintése
    - 5.1.1. Bejelentkezés a rendszerbe.
    - 5.1.2. A tárgytáblázat fogad, oldalra lapozható, ha nem fér ki a kijelzőre a keresett félév.
    - 5.1.3 Az oszlopok individuálisan görgethetőek, ha szükséges.
- 5.2. Kreditszám megtekintése
    - 5.2.1. Bejelentkezés a rendszerbe.
    - 5.2.2. Az oldal alján látaható szerzett/összes alakban
    
### **6.  Követelménylista:**
- Minden tárgyhoz tartozik egy név, kreditszám, ajánlott félév és egyedi azonosító.
- A rendszer megjeleníti a hallgatók számára a rendelkezésre álló tárgyakat, beleértve a felvehető, teljesített és hátralévő tárgyakat.
- A rendszer automatikusan számolja ki a teljesített kreditszámot a kiválasztott tárgyak alapján.
- A weboldalnak reszponzívnak kell lennie, hogy a felhasználók különböző eszközökön (számítógép, tablet, mobil) is használhassák.
- A rendszer vegye figyelembe a tantárgykövetelményeket, tehát ne lehessen teljesítettnek jelölni egy tárgyat amelynek előfeltétele még nem teljesült.
  
### **7. Irányított és szabad szöveges riportok szövege:**
    
### **8. Fogalomszótár:**
- lezárt - A tárgy nem felvehető, mert nem teljesültek az előfeltételek.
