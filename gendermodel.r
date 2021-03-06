rm(list=ls(all=TRUE))

data <- read.table("Data/train.csv", sep = ",", header = T)

# Setting up data
training <- data[1:535,]
crossValidation <- data[536:713,]
test <- data[714:891,]

# Run on test data
guess <- rep(0,dim(test)[1])
guess[test$Sex == 'female'] <- 1
estimation <- sum((guess == test$Survived)*1)/dim(test)[1]
result <- paste("Gender model - Correct estimations on test data:", round(estimation,3))
print(result)


# Run on competition data
compData <- read.csv("Data/test.csv")
compGuess <- rep(0,dim(compData)[1])
compGuess[compData$Sex == 'female'] <- 1

passengerId <- compData$PassengerId

competition <- data.frame(passengerId, compGuess)

names(competition) <- c("PassengerId", "Survived")

write.csv(competition, file = "Predictions/gendermodel.csv", row.names = FALSE)