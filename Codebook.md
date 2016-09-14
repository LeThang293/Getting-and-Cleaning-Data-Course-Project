# CodeBook

In this code book you will find the variables, the data, and other relevant information.

## The data

A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

### The dataset includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

## Transformation steps:
- Read above files into variables which has the same name with the file name
- Extract test/train data set with only the measurements on the mean and standard deviation 
- Add descriptive labels to y_test/y_train. Translate dataset column name with more desciptive text (ex: Acc -> Accelerator)
- Merge test/train dataset 
- Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Output columns
- Tidy data set is grouped by 
      Subject
      Activity_ID
      Activity_Label
- Variables:
      timeBodyAccelerator-mean()-X
      timeBodyAccelerator-mean()-Y
      timeBodyAccelerator-mean()-Z
      timeBodyAccelerator-std()-X
      timeBodyAccelerator-std()-Y
      timeBodyAccelerator-std()-Z
      timeGravityAccelerator-mean()-X
      timeGravityAccelerator-mean()-Y
      timeGravityAccelerator-mean()-Z
      timeGravityAccelerator-std()-X
      timeGravityAccelerator-std()-Y
      timeGravityAccelerator-std()-Z
      timeBodyAcceleratorJerk-mean()-X
      timeBodyAcceleratorJerk-mean()-Y
      timeBodyAcceleratorJerk-mean()-Z
      timeBodyAcceleratorJerk-std()-X
      timeBodyAcceleratorJerk-std()-Y
      timeBodyAcceleratorJerk-std()-Z
      timeBodyGyroscope-mean()-X
      timeBodyGyroscope-mean()-Y
      timeBodyGyroscope-mean()-Z
      timeBodyGyroscope-std()-X
      timeBodyGyroscope-std()-Y
      timeBodyGyroscope-std()-Z
      timeBodyGyroscopeJerk-mean()-X
      timeBodyGyroscopeJerk-mean()-Y
      timeBodyGyroscopeJerk-mean()-Z
      timeBodyGyroscopeJerk-std()-X
      timeBodyGyroscopeJerk-std()-Y
      timeBodyGyroscopeJerk-std()-Z
      timeBodyAcceleratorMagnitude-mean()
      timeBodyAcceleratorMagnitude-std()
      timeGravityAcceleratorMagnitude-mean()
      timeGravityAcceleratorMagnitude-std()
      timeBodyAcceleratorJerkMagnitude-mean()
      timeBodyAcceleratorJerkMagnitude-std()
      timeBodyGyroscopeMagnitude-mean()
      timeBodyGyroscopeMagnitude-std()
      timeBodyGyroscopeJerkMagnitude-mean()
      timeBodyGyroscopeJerkMagnitude-std()
      frequencyBodyAccelerator-mean()-X
      frequencyBodyAccelerator-mean()-Y
      frequencyBodyAccelerator-mean()-Z
      frequencyBodyAccelerator-std()-X
      frequencyBodyAccelerator-std()-Y
      frequencyBodyAccelerator-std()-Z
      frequencyBodyAccelerator-meanFreq()-X
      frequencyBodyAccelerator-meanFreq()-Y
      frequencyBodyAccelerator-meanFreq()-Z
      frequencyBodyAcceleratorJerk-mean()-X
      frequencyBodyAcceleratorJerk-mean()-Y
      frequencyBodyAcceleratorJerk-mean()-Z
      frequencyBodyAcceleratorJerk-std()-X
      frequencyBodyAcceleratorJerk-std()-Y
      frequencyBodyAcceleratorJerk-std()-Z
      frequencyBodyAcceleratorJerk-meanFreq()-X
      frequencyBodyAcceleratorJerk-meanFreq()-Y
      frequencyBodyAcceleratorJerk-meanFreq()-Z
      frequencyBodyGyroscope-mean()-X
      frequencyBodyGyroscope-mean()-Y
      frequencyBodyGyroscope-mean()-Z
      frequencyBodyGyroscope-std()-X
      frequencyBodyGyroscope-std()-Y
      frequencyBodyGyroscope-std()-Z
      frequencyBodyGyroscope-meanFreq()-X
      frequencyBodyGyroscope-meanFreq()-Y
      frequencyBodyGyroscope-meanFreq()-Z
      frequencyBodyAcceleratorMagnitude-mean()
      frequencyBodyAcceleratorMagnitude-std()
      frequencyBodyAcceleratorMagnitude-meanFreq()
      frequencyBodyBodyAcceleratorJerkMagnitude-mean()
      frequencyBodyBodyAcceleratorJerkMagnitude-std()
      frequencyBodyBodyAcceleratorJerkMagnitude-meanFreq()
      frequencyBodyBodyGyroscopeMagnitude-mean()
      frequencyBodyBodyGyroscopeMagnitude-std()
      frequencyBodyBodyGyroscopeMagnitude-meanFreq()
      frequencyBodyBodyGyroscopeJerkMagnitude-mean()
      frequencyBodyBodyGyroscopeJerkMagnitude-std()
      frequencyBodyBodyGyroscopeJerkMagnitude-meanFreq()
