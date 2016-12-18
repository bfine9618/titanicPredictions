#set working directory and import files
setwd("~/Desktop/titanic")
library(readr)
train <- read_csv("~/Desktop/titanic/train.csv")
library(readr)
test <- read_csv("~/Desktop/titanic/test.csv")