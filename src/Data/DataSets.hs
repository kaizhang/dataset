{-# LANGUAGE TemplateHaskell #-}

module Data.DataSets where

import Data.DataSets.Internal

$(readData "data/datasets/sunspots.csv" ["Double", "Double"])

$(readData "data/datasets/faithful.csv" ["Double", "Int"])

$(readData "data/datasets/UKDriverDeaths.csv" ["Double", "Int"])

$(readData "data/datasets/austres.csv" ["Double", "Double"])

$(readData "data/datasets/mtcars.csv" ["Double", "Int", "Double", "Int", "Double", "Double", "Double", "Int", "Int", "Int", "Int"])


{-
bod ∷ IO DataSet
bod = readData "Data/DataSets/rdatasets/BOD.csv"

npk ∷ IO DataSet
npk = readData "Data/DataSets/rdatasets/npk.csv"

warpbreaks ∷ IO DataSet
warpbreaks = readData "Data/DataSets/rdatasets/warpbreaks.csv"

precip ∷ IO DataSet
precip = readData "Data/DataSets/rdatasets/precip.csv"

haireyecolor ∷ IO DataSet
haireyecolor = readData "Data/DataSets/rdatasets/HairEyeColor.csv"

pressure ∷ IO DataSet
pressure = readData "Data/DataSets/rdatasets/pressure.csv"

lh ∷ IO DataSet
lh = readData "Data/DataSets/rdatasets/lh.csv"

ukgas ∷ IO DataSet
ukgas = readData "Data/DataSets/rdatasets/UKgas.csv"

swiss ∷ IO DataSet
swiss = readData "Data/DataSets/rdatasets/swiss.csv"

worldphones ∷ IO DataSet
worldphones = readData "Data/DataSets/rdatasets/WorldPhones.csv"

rivers ∷ IO DataSet
rivers = readData "Data/DataSets/rdatasets/rivers.csv"

discoveries ∷ IO DataSet
discoveries = readData "Data/DataSets/rdatasets/discoveries.csv"

nile ∷ IO DataSet
nile = readData "Data/DataSets/rdatasets/Nile.csv"

ucbadmissions ∷ IO DataSet
ucbadmissions = readData "Data/DataSets/rdatasets/UCBAdmissions.csv"

bjsales ∷ IO DataSet
bjsales = readData "Data/DataSets/rdatasets/BJsales.csv"

volcano ∷ IO DataSet
volcano = readData "Data/DataSets/rdatasets/volcano.csv"

anscombe ∷ IO DataSet
anscombe = readData "Data/DataSets/rdatasets/anscombe.csv"

freeny ∷ IO DataSet
freeny = readData "Data/DataSets/rdatasets/freeny.csv"

uspop ∷ IO DataSet
uspop = readData "Data/DataSets/rdatasets/uspop.csv"

treering ∷ IO DataSet
treering = readData "Data/DataSets/rdatasets/treering.csv"

iris ∷ IO DataSet
iris = readData "Data/DataSets/rdatasets/iris.csv"

uspersonalexpenditure ∷ IO DataSet
uspersonalexpenditure = readData "Data/DataSets/rdatasets/USPersonalExpenditure.csv"

presidents ∷ IO DataSet
presidents = readData "Data/DataSets/rdatasets/presidents.csv"

puromycin ∷ IO DataSet
puromycin = readData "Data/DataSets/rdatasets/Puromycin.csv"

formaldehyde ∷ IO DataSet
formaldehyde = readData "Data/DataSets/rdatasets/Formaldehyde.csv"

titanic ∷ IO DataSet
titanic = readData "Data/DataSets/rdatasets/Titanic.csv"

trees ∷ IO DataSet
trees = readData "Data/DataSets/rdatasets/trees.csv"

women ∷ IO DataSet
women = readData "Data/DataSets/rdatasets/women.csv"

cars ∷ IO DataSet
cars = readData "Data/DataSets/rdatasets/cars.csv"

islands ∷ IO DataSet
islands = readData "Data/DataSets/rdatasets/islands.csv"

co2 ∷ IO DataSet
co2 = readData "Data/DataSets/rdatasets/co2.csv"

vadeaths ∷ IO DataSet
vadeaths = readData "Data/DataSets/rdatasets/VADeaths.csv"

morley ∷ IO DataSet
morley = readData "Data/DataSets/rdatasets/morley.csv"

lifecyclesavings ∷ IO DataSet
lifecyclesavings = readData "Data/DataSets/rdatasets/LifeCycleSavings.csv"

usaccdeaths ∷ IO DataSet
usaccdeaths = readData "Data/DataSets/rdatasets/USAccDeaths.csv"

insectsprays ∷ IO DataSet
insectsprays = readData "Data/DataSets/rdatasets/InsectSprays.csv"

nottem ∷ IO DataSet
nottem = readData "Data/DataSets/rdatasets/nottem.csv"

airquality ∷ IO DataSet
airquality = readData "Data/DataSets/rdatasets/airquality.csv"

toothgrowth ∷ IO DataSet
toothgrowth = readData "Data/DataSets/rdatasets/ToothGrowth.csv"

sleep ∷ IO DataSet
sleep = readData "Data/DataSets/rdatasets/sleep.csv"

attenu ∷ IO DataSet
attenu = readData "Data/DataSets/rdatasets/attenu.csv"

airmiles ∷ IO DataSet
airmiles = readData "Data/DataSets/rdatasets/airmiles.csv"

quakes ∷ IO DataSet
quakes = readData "Data/DataSets/rdatasets/quakes.csv"

usjudgeratings ∷ IO DataSet
usjudgeratings = readData "Data/DataSets/rdatasets/USJudgeRatings.csv"

occupationalstatus ∷ IO DataSet
occupationalstatus = readData "Data/DataSets/rdatasets/occupationalStatus.csv"

lakehuron ∷ IO DataSet
lakehuron = readData "Data/DataSets/rdatasets/LakeHuron.csv"

nhtemp ∷ IO DataSet
nhtemp = readData "Data/DataSets/rdatasets/nhtemp.csv"

randu ∷ IO DataSet
randu = readData "Data/DataSets/rdatasets/randu.csv"

rock ∷ IO DataSet
rock = readData "Data/DataSets/rdatasets/rock.csv"

lynx ∷ IO DataSet
lynx = readData "Data/DataSets/rdatasets/lynx.csv"

airpassengers ∷ IO DataSet
airpassengers = readData "Data/DataSets/rdatasets/AirPassengers.csv"

longley ∷ IO DataSet
longley = readData "Data/DataSets/rdatasets/longley.csv"

usarrests ∷ IO DataSet
usarrests = readData "Data/DataSets/rdatasets/USArrests.csv"

plantgrowth ∷ IO DataSet
plantgrowth = readData "Data/DataSets/rdatasets/PlantGrowth.csv"

euro ∷ IO DataSet
euro = readData "Data/DataSets/rdatasets/euro.csv"

stackloss ∷ IO DataSet
stackloss = readData "Data/DataSets/rdatasets/stackloss.csv"

sunspotmonth ∷ IO DataSet
sunspotmonth = readData "Data/DataSets/rdatasets/sunspotMonth.csv"

crimtab ∷ IO DataSet
crimtab = readData "Data/DataSets/rdatasets/crimtab.csv"

wwwusage ∷ IO DataSet
wwwusage = readData "Data/DataSets/rdatasets/WWWusage.csv"

attitude ∷ IO DataSet
attitude = readData "Data/DataSets/rdatasets/attitude.csv"

esoph ∷ IO DataSet
esoph = readData "Data/DataSets/rdatasets/esoph.csv"

orchardsprays ∷ IO DataSet
orchardsprays = readData "Data/DataSets/rdatasets/OrchardSprays.csv"

sunspotyear ∷ IO DataSet
sunspotyear = readData "Data/DataSets/rdatasets/sunspotYear.csv"

infert ∷ IO DataSet
infert = readData "Data/DataSets/rdatasets/infert.csv"

chickwts ∷ IO DataSet
chickwts = readData "Data/DataSets/rdatasets/chickwts.csv"

johnsonjohnson ∷ IO DataSet
johnsonjohnson = readData "Data/DataSets/rdatasets/JohnsonJohnson.csv"
-}
