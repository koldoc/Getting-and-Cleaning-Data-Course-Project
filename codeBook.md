## Human Activity Recognition Using Smartphones Data Set 

**Original Data Set**  
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
  
**Data Set Information:**
  
The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. They performed a protocol of activities composed of six basic activities: three static postures (standing, sitting, lying) and three dynamic activities (walking, walking downstairs and walking upstairs). The experiment also included postural transitions that occurred between the static postures. These are: stand-to-sit, sit-to-stand, sit-to-lie, lie-to-sit, stand-to-lie, and lie-to-stand. All the participants were wearing a smartphone (Samsung Galaxy S II) on the waist during the experiment execution. We captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz using the embedded accelerometer and gyroscope of the device. The experiments were video-recorded to label the data manually. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
  
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of 561 features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 
  
This dataset is an updated version of the UCI Human Activity Recognition Using smartphones Dataset that can be found at: [Web Link] 
This version provides the original raw inertial signals from the smartphone sensors, instead of the ones pre-processed into windows which were provided in version 1. This change was done in order to be able to make online tests with the raw data. Moreover, the activity labels were updated in order to include postural transitions that were not part of the previous version of the dataset. 
  
**Generated Data Set Rules**
  
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement.
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names.
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  
**Structure**
  
column.name | class
---|---
SubjectID | integer
Activity | factor
tBodyAcc-mean()-X | numeric
tBodyAcc-mean()-Y | numeric
tBodyAcc-mean()-Z | numeric
tBodyAcc-std()-X | numeric
tBodyAcc-std()-Y | numeric
tBodyAcc-std()-Z | numeric
tGravityAcc-mean()-X | numeric
tGravityAcc-mean()-Y | numeric
tGravityAcc-mean()-Z | numeric
tGravityAcc-std()-X | numeric
tGravityAcc-std()-Y | numeric
tGravityAcc-std()-Z | numeric
tBodyAccJerk-mean()-X | numeric
tBodyAccJerk-mean()-Y | numeric
tBodyAccJerk-mean()-Z | numeric
tBodyAccJerk-std()-X | numeric
tBodyAccJerk-std()-Y | numeric
tBodyAccJerk-std()-Z | numeric
tBodyGyro-mean()-X | numeric
tBodyGyro-mean()-Y | numeric
tBodyGyro-mean()-Z | numeric
tBodyGyro-std()-X | numeric
tBodyGyro-std()-Y | numeric
tBodyGyro-std()-Z | numeric
tBodyGyroJerk-mean()-X | numeric
tBodyGyroJerk-mean()-Y | numeric
tBodyGyroJerk-mean()-Z | numeric
tBodyGyroJerk-std()-X | numeric
tBodyGyroJerk-std()-Y | numeric
tBodyGyroJerk-std()-Z | numeric
tBodyAccMag-mean() | numeric
tBodyAccMag-std() | numeric
tGravityAccMag-mean() | numeric
tGravityAccMag-std() | numeric
tBodyAccJerkMag-mean() | numeric
tBodyAccJerkMag-std() | numeric
tBodyGyroMag-mean() | numeric
tBodyGyroMag-std() | numeric
tBodyGyroJerkMag-mean() | numeric
tBodyGyroJerkMag-std() | numeric
fBodyAcc-mean()-X | numeric
fBodyAcc-mean()-Y | numeric
fBodyAcc-mean()-Z | numeric
fBodyAcc-std()-X | numeric
fBodyAcc-std()-Y | numeric
fBodyAcc-std()-Z | numeric
fBodyAcc-meanFreq()-X | numeric
fBodyAcc-meanFreq()-Y | numeric
fBodyAcc-meanFreq()-Z | numeric
fBodyAccJerk-mean()-X | numeric
fBodyAccJerk-mean()-Y | numeric
fBodyAccJerk-mean()-Z | numeric
fBodyAccJerk-std()-X | numeric
fBodyAccJerk-std()-Y | numeric
fBodyAccJerk-std()-Z | numeric
fBodyAccJerk-meanFreq()-X | numeric
fBodyAccJerk-meanFreq()-Y | numeric
fBodyAccJerk-meanFreq()-Z | numeric
fBodyGyro-mean()-X | numeric
fBodyGyro-mean()-Y | numeric
fBodyGyro-mean()-Z | numeric
fBodyGyro-std()-X | numeric
fBodyGyro-std()-Y | numeric
fBodyGyro-std()-Z | numeric
fBodyGyro-meanFreq()-X | numeric
fBodyGyro-meanFreq()-Y | numeric
fBodyGyro-meanFreq()-Z | numeric
fBodyAccMag-mean() | numeric
fBodyAccMag-std() | numeric
fBodyAccMag-meanFreq() | numeric
fBodyBodyAccJerkMag-mean() | numeric
fBodyBodyAccJerkMag-std() | numeric
fBodyBodyAccJerkMag-meanFreq() | numeric
fBodyBodyGyroMag-mean() | numeric
fBodyBodyGyroMag-std() | numeric
fBodyBodyGyroMag-meanFreq() | numeric
fBodyBodyGyroJerkMag-mean() | numeric
fBodyBodyGyroJerkMag-std() | numeric
fBodyBodyGyroJerkMag-meanFreq() | numeric
angle(tBodyAccMean,gravity) | numeric
angle(tBodyAccJerkMean),gravityMean) | numeric
angle(tBodyGyroMean,gravityMean) | numeric
angle(tBodyGyroJerkMean,gravityMean) | numeric
angle(X,gravityMean) | numeric
angle(Y,gravityMean) | numeric
angle(Z,gravityMean) | numeric
