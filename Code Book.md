# Code Book

##Data

The data was captured from a group of 30 volunteers within an age bracket of 19-48 years. 

Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist and therefor using its embedded accelerometer and gyroscope.

The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers were selected for generating the training data and 30% the test data. 


##Data transformation
The raw data sets can be processed with run_analisys.R script to create a tidy data set according to the steps instructed below:

####Merge training and test sets
Test and training subjects and results by activities (X_train.txt, X_test.txt, subject_train.txt, subject_test.txt, y_train.txt, y_test.txt) are merged to obtain a complete data set `data`


####Extract mean and standard deviation variables
Variables of subject and activity are labelled as "Volunteer" and "Activity". The results columns names are assign with the names of the original collectors (features.txt).

An intermediate subset of the data is created with only the values of estimated mean (variables with labels that contain "mean") and standard deviation (variables with labels that contain "std") `data2`.

####Use descriptive activity names
A new column is added to the subset data set with the activity description ("ActivityName"). "Activity" column is used to look up descriptions in activity_labels.txt uploaded to R as `ActivityTable`.

`data4` is the reorder subet data with the subject, activity name and result information.

####Label variables appropriately
Labels given from the original collectors were changed to obtain more descriptive labels

####Create a tidy data set
From the intermediate data set `data4` a new tidy data set is created where numeric variables are averaged for each subject and each activity.

`tidyfinal` summarises the results taking the mean of every subject and activity for each of the results columns.

## Variables

### Identifiers

- Volunteer - The ID of each of the 30 subjects.
- ActivityName - The type of activity performed when the corresponding measurements were taken.(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

### Measurements
                       
- tBodyAcc-mean()-X | mean of time body accelerometer signal - axial sign X
- tBodyAcc-mean()-Y | mean of time body accelerometer signal - axial sign Y
- tBodyAcc-mean()-Z | mean of time body accelerometer signal - axial sign Z
- tGravityAcc-mean()-X | mean of time gravity accelerometer signal - axial sign X
- tGravityAcc-mean()-Y | mean of time gravity accelerometer signal - axial sign Y
- tGravityAcc-mean()-Z | mean of time gravity accelerometer signal - axial sign Z
- tBodyAccJerk-mean()-X | mean of time body accelerometer signal derived in time - axial sign X
- tBodyAccJerk-mean()-Y | mean of time body accelerometer signal derived in time - axial sign Y
- tBodyAccJerk-mean()-Z | mean of time body accelerometer signal derived in time - axial sign Z
- tBodyGyro-mean()-X | mean of time body gyroscope signal - axial sign X
- tBodyGyro-mean()-Y | mean of time body gyroscope signal - axial sign Y
- tBodyGyro-mean()-Z | mean of time body gyroscope signal - axial sign Z
- tBodyGyroJerk-mean()-X | mean of time body gyroscope signal derived in time - axial sign X
- tBodyGyroJerk-mean()-Y | mean of time body gyroscope signal derived in time - axial sign Y
- tBodyGyroJerk-mean()-Z | mean of time body gyroscope signal derived in time - axial sign Z
- tBodyAccMag-mean() | mean of time body accelerometer signal Euclidean norm
- tGravityAccMag-mean() | mean of time gravity accelerometer signal Euclidean norm
- tBodyAccJerkMag-mean() | mean of time body accelerometer signal derived in time Euclidean norm
- tBodyGyroMag-mean() | mean of time body gyroscope signal Euclidean norm
- tBodyGyroJerkMag-mean() | mean of time body gyroscope signal derived in time Euclidean norm
- fBodyAcc-mean()-X | mean of frequency body accelerometer signal - axial sign X
- fBodyAcc-mean()-Y | mean of frequency body accelerometer signal - axial sign Y
- fBodyAcc-mean()-Z | mean of frequency body accelerometer signal - axial sign Z
- fBodyAcc-meanFreq()-X | mean frequency of frequency body accelerometer signal - axial sign X
- fBodyAcc-meanFreq()-Y | mean frequency of frequency body accelerometer signal - axial sign Y
- fBodyAcc-meanFreq()-Z | mean frequency of frequency body accelerometer signal - axial sign Z
- fBodyAccJerk-mean()-X | mean of frequency body accelerometer signal derived in time - axial sign X
- fBodyAccJerk-mean()-Y | mean of frequency body accelerometer signal derived in time - axial sign Y
- fBodyAccJerk-mean()-Z | mean of frequency body accelerometer signal derived in time - axial sign Z
- fBodyAccJerk-meanFreq()-X | mean frequency of frequency body accelerometer signal derived in time - axial sign X
- fBodyAccJerk-meanFreq()-Y | mean frequency of frequency body accelerometer signal derived in time - axial sign Y
- fBodyAccJerk-meanFreq()-Z | mean frequency of frequency body accelerometer signal derived in time - axial sign Z
- fBodyGyro-mean()-X | mean of frequency body gyroscope signal - axial sign X
- fBodyGyro-mean()-Y | mean of frequency body gyroscope signal - axial sign Y
- fBodyGyro-mean()-Z | mean of frequency body gyroscope signal - axial sign Z
- fBodyGyro-meanFreq()-X | mean frequency of frequency body gyroscope signal - axial sign X
- fBodyGyro-meanFreq()-Y | mean frequency of frequency body gyroscope signal - axial sign Y
- fBodyGyro-meanFreq()-Z | mean frequency of frequency body gyroscope signal - axial sign Z
- fBodyAccMag-mean() | mean of frequency body accelerometer signal Euclidean norm
- fBodyAccMag-meanFreq() | mean frecuency of frequency body accelerometer signal Euclidean norm
- fBodyBodyAccJerkMag-mean() | mean of frequency body accelerometer signal derived in time Euclidean norm
- fBodyBodyAccJerkMag-meanFreq() | mean frecuency of frequency body accelerometer signal derived in time Euclidean norm
- fBodyBodyGyroMag-mean() | mean of frequency body gyroscope signal Euclidean norm
- fBodyBodyGyroMag-meanFreq() | mean frecuency of frequency body gyroscope signal Euclidean norm
- fBodyBodyGyroJerkMag-mean() | mean of frequency body gyroscope signal derived in time Euclidean norm
- fBodyBodyGyroJerkMag-meanFreq() | mean frecuency of frequency body gyroscope signal derived in time Euclidean norm
- angle(tBodyAccMean,gravity) | angle between tBodyAccMean and gravity
- angle(tBodyAccJerkMean),gravityMean) | angle between tBodyAccJerkMean and gravityMean
- angle(tBodyGyroMean,gravityMean) | angle between tBodyGyroMean and gravityMean
- angle(tBodyGyroJerkMean,gravityMean) | angle between tBodyGyroJerkMean and gravityMean
- angle(X,gravityMean) | angle between X and gravityMean
- angle(Y,gravityMean) | angle between Y and gravityMean
- angle(Z,gravityMean) | angle between Z and gravityMean
- tBodyAcc-std()-X | std of time body accelerometer signal - axial sign X
- tBodyAcc-std()-Y | std of time body accelerometer signal - axial sign Y
- tBodyAcc-std()-Z | std of time body accelerometer signal - axial sign Z
- tGravityAcc-std()-X | std of time gravity accelerometer signal - axial sign X
- tGravityAcc-std()-Y | std of time gravity accelerometer signal - axial sign Y
- tGravityAcc-std()-Z | std of time gravity accelerometer signal - axial sign Z
- tBodyAccJerk-std()-X | std of time body accelerometer signal derived in time - axial sign X
- tBodyAccJerk-std()-Y | std of time body accelerometer signal derived in time - axial sign Y
- tBodyAccJerk-std()-Z | std of time body accelerometer signal derived in time - axial sign Z
- tBodyGyro-std()-X | std of time body gyroscope signal - axial sign X
- tBodyGyro-std()-Y | std of time body gyroscope signal - axial sign Y
- tBodyGyro-std()-Z | std of time body gyroscope signal - axial sign Z
- tBodyGyroJerk-std()-X | std of time body gyroscope signal derived in time - axial sign X
- tBodyGyroJerk-std()-Y | std of time body gyroscope signal derived in time - axial sign Y
- tBodyGyroJerk-std()-Z | std of time body gyroscope signal derived in time - axial sign Z
- tBodyAccMag-std() | std of time body accelerometer signal Euclidean norm
- tGravityAccMag-std() | std of time gravity accelerometer signal Euclidean norm
- tBodyAccJerkMag-std() | std of time body accelerometer signal derived in time Euclidean norm
- tBodyGyroMag-std() | std of time body gyroscope signal Euclidean norm
- tBodyGyroJerkMag-std() | std of time body gyroscope signal derived in time Euclidean norm
- fBodyAcc-std()-X | std of frequency body accelerometer signal - axial sign X
- fBodyAcc-std()-Y | std of frequency body accelerometer signal - axial sign Y
- fBodyAcc-std()-Z | std of frequency body accelerometer signal - axial sign Z
- fBodyAccJerk-std()-X | std of frequency body accelerometer signal derived in time - axial sign X
- fBodyAccJerk-std()-Y | std of frequency body accelerometer signal derived in time - axial sign Y
- fBodyAccJerk-std()-Z | std of frequency body accelerometer signal derived in time - axial sign Z
- fBodyGyro-std()-X | std of frequency body gyroscope signal - axial sign X
- fBodyGyro-std()-Y | std of frequency body gyroscope signal - axial sign Y
- fBodyGyro-std()-Z | std of frequency body gyroscope signal - axial sign Z
- fBodyAccMag-std() | std of frequency body accelerometer signal Euclidean norm
- fBodyBodyAccJerkMag-std() | std of frequency body accelerometer signal derived in time Euclidean norm
- fBodyBodyGyroMag-std() | std of frequency body gyroscope signal Euclidean norm
- fBodyBodyGyroJerkMag-std() | std of frequency body gyroscope signal derived in time Euclidean norm
