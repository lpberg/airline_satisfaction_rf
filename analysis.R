library(tidyverse)
library(rsample)
library(randomForest)
library(tidymodels)
library(caret)

#Dataset:
# https://www.kaggle.com/datasets/teejmahal20/airline-passenger-satisfaction

#read in CSV of training data
training_df <- read.csv("train.csv")
#read in CSV of test data
test_df <- read.csv("test.csv")
#remove na values (any row with na)
training_df <- na.omit(training_df)
test_df <- na.omit(test_df)
#Ensure satisfaction is a factor
training_df$satisfaction <- as.factor(training_df$satisfaction)
test_df$satisfaction <- as.factor(test_df$satisfaction)
str(test_df)

rf <- randomForest(satisfaction ~., data=training_df[1:200,])
pred <- predict(rf, test_df)
confusionMatrix(pred, test_df$satisfaction,positive='satisfied')
