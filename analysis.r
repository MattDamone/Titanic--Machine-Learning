rm(list=ls(all=TRUE))
<<<<<<< HEAD

data <- read.table("Data/train.csv", sep = ",", header = T)

# Setting up data
training <- data[1:535,]
crossValidation <- data[536:713,]
test <- data[714:891,]

# sorting training data
survived <- training[training$Survived == 1,]
died <- training[training$Survived == 0,]

# removing unecessary columns
survived$Name = NULL
died$Name = NULL

survived$PassengerId = NULL
died$PassengerId = NULL



# Stupid method
guess <- rep(0,dim(test)[1])
guess[test$Sex == 'female'] <- 1
estimation <- sum((guess == test$Survived)*1)/dim(test)[1]
paste("Correct estimations: ", round(estimation,3))

=======
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
>>>>>>> 2948170de6fc982595be587346c333f028f3b7de
