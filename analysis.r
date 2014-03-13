rm(list=ls(all=TRUE))
source("misc.r")


data <- read.table("Data/train.csv", sep = ",", header = T)

# Läs in till array
n <- dim(data)[1]

isMale <- (data$Sex == "male")*1
isFemale <- (data$Sex == "female")*1

hasParch <- (data$Parch > 0)*1
noParch <- (data$Parch == 0)*1

hasSib <- (data$SibSp > 0)*1
noSib <- (data$SibSp == 0)*1

firstClass <- (data$Pclass == 1)*1
secondClass <- (data$Pclass == 2)*1
thirdClass <- (data$Pclass == 3)*1

survived <- data$Survived

tData <- data.frame(survived, isMale, hasParch, hasSib)
