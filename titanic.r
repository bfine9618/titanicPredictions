#set working directory and import files
setwd("~/Desktop/titanic")
library(readr)
train <- read_csv("~/Desktop/titanic/train.csv")
library(readr)
test <- read_csv("~/Desktop/titanic/test.csv")

#view details in file
str(train)

#view specific count in col within file
table(train$Survived)

#store variable (functional Language)
countServived <- table(train$Survived)

#"everyone Died" scenario for test group
test$Servived <- rep(0)

#store in CSV
submit <- data.frame(PassengerId = test$PassengerId, Survived = test$Survived)
write.csv(submit, file = "everyoneDies.csv", row.names = FALSE)

#sexs of the passengers
table(train$Sex)

#of total survivors by sex out of total P(survival)
prop.table(table(train$Sex, train$Survived))

#P(survival | gender)
prop.table(table(train$Sex, train$Survived), 1)

