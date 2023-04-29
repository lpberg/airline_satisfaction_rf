library(tidyverse)
library(rsample)
library(tidymodels)
setwd("~/Desktop/RandomForest")
#Dataset:
# https://www.kaggle.com/datasets/teejmahal20/airline-passenger-satisfaction

#read in CSV of training data
training_df <- read.csv("train.csv")
#read in CSV of test data
test_df <- read.csv("test.csv")
