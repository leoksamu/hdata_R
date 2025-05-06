# TILP2400 Harjoitukset 1
# Leevi Mutru

# Tehtävä 1

# R ja RStudio asennettu

# Tehtävä 2

# RScript luotu ja tallennettu

# Tehtävä 3

# määritetään polun oikeellisuus, OK!
getwd()

#haetaan hdata tiedostopolun kautta, avautuu Environment -ikkunaan
hdata <- read.table("healthdata.txt", header = TRUE)

# Tehtävä 4

names(hdata)
head(hdata)

# vastaus: 
# tulostuu taulukon ensimmäiset rivit, ts. muutujien nimet

# > names(hdata)
# [1] "age"     "gender"  "marit"   "edlevel"
# [5] "smoking" "syst"    "chol"    "weight" 
# [9] "waist"   "bmi"

# tulostuu kuusi (6) ensimmäisen henkilön tiedot

# > head(hdata)
# age gender marit edlevel   smoking
# 2406 55-64   male     2       4 sometimes
# 2844 45-54 female     2       2        no
# 3027 55-64   male     2       1        no
# 2762 25-34 female     2       4       yes
# 2991 45-54   male     2       4        no
# 2974 45-54   male     2       4       yes
# syst chol weight waist  bmi
# 2406  168  5.6   78.3  95.5 25.3
# 2844  126  5.9   67.0  74.0 25.2
# 3027  106  6.4   85.3  97.0 25.8
# 2762  124  4.2   54.5  66.0 19.3
# 2991  138  6.1   89.7  93.0 25.7
# 2974  150  8.1   87.8 103.5 27.1

# vastaus: 
# tulostuu taulukon ensimmäiset rivit, ts. muutujien nimet
# tulostuu kuusi (6) ensimmäisen henkilön tiedot


# Tehtävä 5

# Kysymys: Kuinka monta havaintoa ja muuttujaa aineistossa on? Selvitä tämä edellä
# mainittujen komentojen avulla.

# datamatriisin rivien määrä (876 kpl)
nrow(hdata)

# datamatriisin sarakkeiden määrä (10 kpl)
ncol(hdata)

# Vastaus: havaintoja 876 kpl & muuttujia 10 kpl


# Kysymys: Testaa komentoa dim(). Mitä sen avulla saadaan selville?

dim(hdata)

# Vastaus: dim() antaa havaintomatriisin rivien  ja sarakkeiden lukumäärät
# tulostuu: 
# > dim(hdata)
# [1] 876  10


# Tehtävä 6

str(hdata)

# Kysymys: Mitkä ovat muuttujien kolesteroli (chol) ja tupakointistatus (smoking) muuttu-
# jatyypit?

# kolesteroli (chol): num
# tupakointistatus (smoking): chr

# Tulosta arvot vastaavasti verenpainemuuttujalle syst.

hdata$syst

# Kysymys: Mitkä ovat aineiston kolme ensimmäistä verenpaineen arvoa?
# Vastaus: 168, 126 ja 106


# Tehtävä 7

hdata$smoking <- factor(hdata$smoking)
levels(hdata$smoking)
length(hdata$smoking)

hdata$age <- factor(hdata$age)
levels(hdata$age)
length(hdata$age)

hdata[1, ]

# muunnos merkkijonosta (chr) luokitelluksi 
# muuttujaksi (factor) muuttujalle age

# Kysymys: Kuinka monta eri ikäluokkaa aineistossa esiintyy?

