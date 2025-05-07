# hdata_R
## TILP2400 Harjoitukset 1
## Tehtävä 7 Muuttujien tietotyyppien muokkaus (tehtävä alla)
Usein muuttujatyyppejä on tarve muokata jatkoanalyysejä varten. Muuta aineiston muuttuja
smoking merkkijonosta (chr) luokitelluksi muuttujaksi (factor), ja listaa muuttujan saamat
arvot ajamalla seuraavat komennot:
#### hdata$smoking <- factor(hdata$smoking)
#### levels(hdata$smoking)
Toteuta vastaavasti muunnos merkkijonosta (chr) luokitelluksi muuttujaksi (factor) muuttujalle age.

## Kysymys: Kuinka monta eri ikäluokkaa aineistossa esiintyy?

Huom. muokatun muuttujan tietotyypin voit tarkistaa myös komennolla class(), missä sulkujen
sisään laitetaan aineiston muuttuja. Yhtälailla voidaan muuttaa myös muita tietotyyppejä,
jolloin koodissa sanan factor paikalle laitetaan haluttu tietotyyppi.
Huom. Yllä koodin oikea puoli (factor) tekee muuttujasta luokitellun. Nuolimerkillä aineiston
merkkijonoinen muuttuja korvataan uudella luokitellulla muuttujalla. Voit halutessasi korvata
nuolen yhtäsuuruusmerkillä.

## Ilmeisesti tulos pitäisi olla 11, mutta sain tulosteeseen:
length(hdata$age)

[1] 876
