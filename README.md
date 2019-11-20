<h1>EidVGS Data and electronics network mapping</h1>

<p>In this repository me and my class is creating an network map for our classes</p>
<p>Mostly it will cover the patch panels and network terminations</p>

## Romkodar
```
1-124 = Lager
1-129 = 2ELA Klasserom ??
1-130 = LAB
1-132 = 2AUA Klasserom 4
2-101 = 3DEA Klasserom 101
2-115 = 2DEA Klasserom 8
2-116 = 3AUA Klasserom 9
x-XXX = Loft
x-XXX = Garasje
```

## Blokk - Etasje- Rom - Dør
```
  |-------> BLOKK
  |
  | |-------> ETASJE
  | |  
  | | |-------> ROM
  | | |
  | | ||--------> DØR
  X-YXXA
```

```
DE	= Data og Elektronikk undervisning
D	= SFJ bygg
R1	= Rack 1					       
P1	= Patch Panel 1	 (Panel i rack, skap eller på vegg)
```


## Ei liste med oppgåver 

* Terminere 3DEA-2DEA, Terminere 3DEA-3AUA, forlenge ledningar i 3DEA rack 1
* Kva har vi av utstyr i dei forskjellige romma
* Kva er allerede dokumentert
* Verifisere dokumentasjonen
* Terminere alle lause ledninger (Fullføre arbeidet starta våren 2018)
* Ny kabling (Til pultane på 2DEA og til pultane på 3DEA, til møterommet ?)
* Vi lagar teikningar av alle romma på papir (rå skisse) Denne krysssjekkar vi mot patch panel dokumentasjonen


## Panel list
[comment]: # (Autotable start)

|                 Panel                |   Coordinator   |            TODO            |           Status           |
|--------------------------------------|-----------------|----------------------------|----------------------------|
|[Loft](Panels/Loft.md)                |Jarl Even        |-                           |New 31/08/18                |
|[Garasje](Panels/Garasje.md)          |Jarl Even        |-                           |New 31/08/18                |
|[External](Panels/External.md)        |Jarl Even        |N/A                         |WIP                         |
|[DE2116-R1-P2](Panels/DE2116-R1-P2.md)|---              |---                         |WIP 11/09/18                |
|[DE2116-R1-P1](Panels/DE2116-R1-P1.md)|Tommy/Simon      |Verifiser lengde og dempning|New 31/08/18                |
|[DE2115-R1-P2](Panels/DE2115-R1-P2.md)|Vegard og Martin |N/A                         |OK 10.09.2018               |
|[DE2115-R1-P1](Panels/DE2115-R1-P1.md)|Vegard og Martin |Fyll inn info               |New 31/08/18                |
|[DE2101-R3-P2](Panels/DE2101-R3-P2.md)|Rex              |Fix#10                      |OK 31.08.2018               |
|[DE2101-R3-P1](Panels/DE2101-R3-P1.md)|Rex              |##### TODO:                 |Kopling OK 31/08/18         |
|[DE2101-R1-P4](Panels/DE2101-R1-P4.md)|Torgeir          |Demping                     |OK 23.10.2019               |
|[DE2101-R1-P3](Panels/DE2101-R1-P3.md)|Rex/Simon        |Fix #10                     |OK 31.08.2018               |
|[DE2101-R1-P2](Panels/DE2101-R1-P2.md)|Aleksander/Erik  |Maale lengde/demping        |WIP 10/09/18                |
|[DE2101-R1-P1](Panels/DE2101-R1-P1.md)|Augustin         |Måle lengde og dempning     |Verify 5-9 + 11-13 31/08/18 |
|[DE1132-R1-P2](Panels/DE1132-R1-P2.md)|Aleksander/Erik  |Verifiser lengde og dempning|NEW 31/08/18                |
|[DE1132-R1-P1](Panels/DE1132-R1-P1.md)|Tommy/Simon      |Verifiser lengde og dempning|Verifiser                   |
|[DE1130-R1-P7](Panels/DE1130-R1-P7.md)|Fedaa            |ALT                         |##### Tilstand:	WIP Nov 2019|
|[DE1130-R1-P5](Panels/DE1130-R1-P5.md)|Augustin         |Rom# garasje                |WIP                         |
|[DE1130-R1-P2](Panels/DE1130-R1-P2.md)|Mardon           |N/A                         |OK 03.09.2018               |
|[DE1130-R1-P1](Panels/DE1130-R1-P1.md)|Aleksander/Mardon|N/A                         |OK 03.09.2018               |
|[DE1129-R1-P1](Panels/DE1129-R1-P1.md)|Per Magnus       |-                           |New 31/08/18                |
|[DE1124-R0-P1](Panels/DE1124-R0-P1.md)|Mardon           |N/A                         |OK 03.09.2018               |
|[DE0001-R0-P0](Panels/DE0001-R0-P0.md)|                 |                            |                            |
|[DE0000-R0-P0](Panels/DE0000-R0-P0.md)|                 |                            |                            |

[comment]: # (Autotable stop)

## Drawings 
|                  Room                   |     Coordinator     | Paper | Electronic  |
|-----------------------------------------|---------------------|-------|-------------|
|[DE2101A](./Drawings/2101A-FloorPlan.svg)|Augustin             |       |             |
|[DE2115A](./Drawings/2115A-FloorPlan.svg)|Augustin             |       |             |
|[DE2116A](./Drawings/2116A-FloorPlan.svg)|Augustin             |       |             |
|[DE1130A](./Drawings/1130A-FloorPlan.svg)|Augustin             |       |             |


![EidVGS](./Drawings/EIDVGS-SectionPlan.png){ width=400px }
