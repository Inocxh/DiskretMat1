# DiskretMat1
Kommandopakke til maple for DTU kurset Diskret Matematik 1

## Pakken indeholder fgl kommandoer.

- BoolskSimplify(F) - Alias for Logic\[BooleanSimplify\], forsøger at reducere F
- Sandhedstabel(F) - Alias for Logic\[TruthTable\], printer en sandhedstabel for F

- Opfyldelig(F) - Alias for Logic\[Satisfiable\], Tjekker om F er opfyldelig
- Opfyld(F) - Alias for Logic\[Satisfy\], printer en konkret sandhedstildeling der opfylder F
- Gyldig(F) - Alias for Logic\[Tautology\], tjekker om en formel, F, er gyldig.
- Uopfyldelig(F) - Alias for Logic\[Contradiction\], tjekker om en formel er uopfyldelig

- Ækvivalent(A,B) - Alias for Logic\[Equivalent\], tjekker om to formler, A og B er logisk ækvivalente
- Implicerer(A,B) - Alias for Logic\[Implies\], tjekker om A medfører B. Ævivalent med at tjekke om (A -> B) er gyldig

- sfd(A,B) - Finder største fælles divisor for A og B
- mfm(A,B) - Finder mindste fælles multiplum for A og B

- ExtendecEuclid(A,B) -Kører Euclids udvidede algoritme på A og B og printer resultatet i samme format som i diskret_mat_bog.pdf
- ExtendedEuclidPoly(A,B,x) -Kører Euclids udvidede algoritme på to polynomier af variablen x og printer resultatet i samme format som i diskret_mat_bog.pdf

## Andre nyttige kommandoer der så at sige altid er indlæst er:
- msolve(expr,m) som løser en flere ligninger, expr(s), modulo M. OBS! Kommandoen giver ikke altid den fulde løsning og har for vane kun at give løsninger i intervallet [0 ; m]
- mod(a,b) denne fungerer som % operatoren i div. programmeringssprog, finder resten ved division af a med b. En anden nytting funktion er mod(1/a,b) som giver det multiplikative invers til a modulo b, hvis det altså eksisterer.
- a mod b === mod(a,b)

## Indtastning af logiske formler i maple
Når du indtaster en formel i maple anser den alle tegn der ikke er logiske konnektiver for variable.
De logiske konnektiver indtastes således i maple:
- Logisk og: **and** 
- Logisk eller: **or**
- Logisk implikation: **implies**
- Logisk biimplikation: **iff**
Uden andet input bliver disse bare markeret med fed, men hvis ctrl+mellemrum trykkes efter kommer der tegn der måske gøre formlen lidt lettere at læse

Hvis man skulle tjekke om formlen: P v -P var gyldig kunne inputtet se sådan ud:
Gyldig(P **or** **not** P)

De logiske formler binder på sædvanelig måde i maple, men det kan tit være en fordel at bruge paranteser for at være sikker på at man har indtastet korrekt!

### Mængderegning
Maple kan også regne med mængder.
- Foreningsmængde: **intersect**
- Fællesmængde: **union**
- Uden: **minus**
- Subset: **subset**
Disse kan også konverteres til symboler m. ctrl+mellemrum