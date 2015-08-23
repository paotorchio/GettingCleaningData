## This analysis considers the data collected from the accelerometers from the Samsung Galaxy S smartphone. 
## A full description is available at the site where the data was obtained:
## http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 


## Sets workig directory to the dataset folder
setwd("./UCI HAR Dataset")

## Read the tables of test folder into R

## 1. Volunteers for test data [30%]
subtest <- read.table("./test/subject_test.txt")
## 2. Results of the test data volunteers
Xtest <- read.table("./test/X_test.txt")
## 3. Activities performed by the volunteers for test data
ytest <- read.table("./test/y_test.txt")

## Read the tables of train folder into R

## 1. Volunteers for trainning data [70%]
subtrain <- read.table("./train/subject_train.txt")
## 2. Results of the trainning data volunteers
Xtrain <- read.table("./train/X_train.txt")
## 3. Activities performed by the volunteers for trainning data
ytrain <- read.table("./train/y_train.txt")

## Merges the training and the test sets to create one data set

traindata <- cbind(subtrain, ytrain, Xtrain)
testdata <- cbind(subtest, ytest, Xtest)
data <- rbind(traindata, testdata)

## Extracts only the measurements on the mean and standard 
## deviation for each measurement. 

## Assign the adequate column names to the data set to indentify the
## columns to extract
features <- read.table("./features.txt")
resultsnames <- make.names(features$V2)
names(data) <- c("Volunteer", "Activity", resultsnames2)

## Subset the data to show only mean and std results for each measurement
data <- data[ , unique(colnames(data))]
data2 <- select(data, Volunteers, Activity, contains("mean"), contains("std"))

## Uses descriptive activity names to name the activities in the data set
ActivityTable <- read.table("./activity_labels.txt")
names(ActivityTable) <- c("Activity","ActivityName")
data3 <- merge(ActivityTable, data2, by = "Activiy")
data4 <- select(data3, Volunteers, ActivityName, 4:89)

## From the data set in step 4, creates a second, independent tidy data set with 
## the average of each variable for each activity and each subject.
tidy2 <- group_by(data4, Volunteers, ActivityName)
tidyfinal <- summarise_each(tidy2, funs(mean))

## Create a .txt file of the grouped data
write.table(tidyfinal, file ="./Final_tidydata.txt", append = TRUE, row.names = FALSE)

## Verify the results
GCData_project <- read.table("./Final_tidydata.txt", header = TRUE)
View(GCData_project)


