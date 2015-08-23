# GettingCleaningData
This is a repository for the Course Project of the Getting and Cleaning Data Coursera course through Johns Hopkins University using data collected from the accelerometers from the Samsung Galaxy S smartphone.

###Important Information
The code takes for granted all the data is present in the same folder on the users Working Directory, un-compressed and without names altered.

The data for the project can be found here:

[Original Data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

A full description is available at the site where the data was obtained: 

[Additional Information] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)



##Files

The repository consist of the following files:

1. CodeBook.md: Describes the variables, the data, and any transformations or work that was performed to clean up the data.

2. run_analysis.R: contains all the code to perform the analyses described in the 5 steps. They can be launched in RStudio by just importing the file.

3. Final_tidydata.txt: Independent tidy data set with the average of each variable for each activity and each subject as uploaded in the course project's form.