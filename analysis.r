rm(list=ls(all=TRUE))

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

