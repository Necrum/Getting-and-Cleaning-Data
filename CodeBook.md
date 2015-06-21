# *Cleaning and Getting Data* Course Project code book

### Analysis process
The script `run_analysis.R` does the following:
  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names. 
  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  6. The summary dataset is written to a file `cleaned_data.txt`.

### Columns in output file

The columns included in the output file are listed below:

  - subject - The id of the experiment participant.
  - activity - The name of the activity that the measurements correspond to, like `LAYING` or `WALKING`.

All of the following fields represent the mean of recorded data points for the given subject and activity. The detailed description of the different measurement types can be found in the `features-info.txt` file included in the data [zip file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

  - tBodyAcc-mean-X
  - tBodyAcc-mean-Y
  - tBodyAcc-mean-Z
  - tGravityAcc-mean-X
  - tGravityAcc-mean-Y
  - tGravityAcc-mean-Z
  - tBodyAccJerk-mean-X
  - tBodyAccJerk-mean-Y
  - tBodyAccJerk-mean-Z
  - tBodyGyro-mean-X
  - tBodyGyro-mean-Y
  - tBodyGyro-mean-Z
  - tBodyGyroJerk-mean-X
  - tBodyGyroJerk-mean-Y
  - tBodyGyroJerk-mean-Z
  - tBodyAccMag-mean
  - tGravityAccMag-mean
  - tBodyAccJerkMag-mean
  - tBodyGyroMag-mean
  - tBodyGyroJerkMag-mean
  - fBodyAcc-mean-X
  - fBodyAcc-mean-Y
  - fBodyAcc-mean-Z
  - fBodyAccJerk-mean-X
  - fBodyAccJerk-mean-Y
  - fBodyAccJerk-mean-Z
  - fBodyGyro-mean-X
  - fBodyGyro-mean-Y
  - fBodyGyro-mean-Z
  - fBodyAccMag-mean
  - fBodyAccJerkMag-mean
  - fBodyGyroMag-mean
  - fBodyGyroJerkMag-mean
  - tBodyAcc-std-X
  - tBodyAcc-std-Y
  - tBodyAcc-std-Z
  - tGravityAcc-std-X
  - tGravityAcc-std-Y
  - tGravityAcc-std-Z
  - tBodyAccJerk-std-X
  - tBodyAccJerk-std-Y
  - tBodyAccJerk-std-Z
  - tBodyGyro-std-X
  - tBodyGyro-std-Y
  - tBodyGyro-std-Z
  - tBodyGyroJerk-std-X
  - tBodyGyroJerk-std-Y
  - tBodyGyroJerk-std-Z
  - tBodyAccMag-std
  - tGravityAccMag-std
  - tBodyAccJerkMag-std
  - tBodyGyroMag-std
  - tBodyGyroJerkMag-std
  - fBodyAcc-std-X
  - fBodyAcc-std-Y
  - fBodyAcc-std-Z
  - fBodyAccJerk-std-X
  - fBodyAccJerk-std-Y
  - fBodyAccJerk-std-Z
  - fBodyGyro-std-X
  - fBodyGyro-std-Y
  - fBodyGyro-std-Z
  - fBodyAccMag-std
  - fBodyAccJerkMag-std
  - fBodyGyroMag-std
  - fBodyGyroJerkMag-std

### More information

Detailed information on the experiment and the data can be found in the `README.txt` and `features_info.txt` files included in the experiment data [zip file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) or find more information on the dataset [homepage](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
