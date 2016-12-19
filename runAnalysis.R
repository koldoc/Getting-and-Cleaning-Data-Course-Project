## Load required libraries
library(dplyr)

## Get list of all features and activities with their ids
features <- read.csv("features.txt", sep = "", header = FALSE)[2]
activities <- read.csv("activity_labels.txt", sep = "", header = FALSE)

## Get test and training sets and moves
testSet <- read.csv("test/X_test.txt", sep = "", header = FALSE)
trainingSet <- read.csv("train/X_train.txt", sep = "", header = FALSE)

testMoves <- read.csv("test/Y_test.txt", sep = "", header = FALSE)
trainingMoves <- read.csv("train/Y_train.txt", sep = "", header = FALSE)

combinedSet <- rbind(testSet, trainingSet)
combinedMoves <- rbind(testMoves, trainingMoves)

## Get subjets subject who performed the activity
testSubjects <- read.csv("test/subject_test.txt", sep = "", header = FALSE)
trainingSubjects <- read.csv("train/subject_train.txt", sep = "", header = FALSE)
combinedSubjects <- rbind(testSubjects, trainingSubjects)

## We keep all the columns storing std or mean
names(combinedSet) <- features[ ,1]
combinedSet <- combinedSet[grepl("std|mean", names(combinedSet), ignore.case = TRUE)]

## Final analysis
combinedMoves <- merge(combinedMoves, activities, by = "V1")[2]
combinedSet <- cbind(combinedSubjects, combinedMoves, combinedSet)
names(combinedSet)[1:2] <- c("SubjectID", "Activity")

finalDataSet <- group_by(combinedSet, SubjectID, Activity) %>% summarise_each(funs(mean))