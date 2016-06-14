Codebook
========================================================

Abstract:
----------------------

Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

Data Set Information:
----------------------

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Attribute Information:
------------------------

For each record in the dataset it is provided:
1. Triaxial total acceleration from the accelerometer and the estimated body acceleration. 
2. Triaxial angular velocity from the gyroscope. 
3. A 561-feature vector with time and frequency domain variables. 
4. Its activity label. 
5. An identifier of the subject who carried out the experiment.

Source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Variable Descriptions:
The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

| Variable | Description
-----------|-------------
| activities | The activity performed
| subject | Subject ID
| tbodyacc-mean-x | Mean time for acceleration of body for X direction
| tbodyacc-mean-y | Mean time for acceleration of body for Y direction
| tbodyacc-mean-z | Mean time for acceleration of body for Z direction
| tbodyacc-std-x | Standard deviation of time for acceleration of body for X direction
| tbodyacc-std-y | Standard deviation of time for acceleration of body for Y direction
| tbodyacc-std-z | Standard deviation of time for acceleration of body for Z direction
| tgravityacc-mean-x | Mean time of acceleration of gravity for X direction
| tgravityacc-mean-y | Mean time of acceleration of gravity for Y direction
| tgravityacc-mean-z | Mean time of acceleration of gravity for Z direction
| tgravityacc-std-x | Standard deviation of time of acceleration of gravity for X direction
| tgravityacc-std-y | Standard deviation of time of acceleration of gravity for Y direction
| tgravityacc-std-z | Standard deviation of time of acceleration of gravity for Z direction
| tbodyaccjerk-mean-x | Mean time of body acceleration jerk for X direction
| tbodyaccjerk-mean-y | Mean time of body acceleration jerk for Y direction
| tbodyaccjerk-mean-z | Mean time of body acceleration jerk for Z direction
| tbodyaccjerk-std-x | Standard deviation of time of body acceleration jerk for X direction
| tbodyaccjerk-std-y | Standard deviation of time of body acceleration jerk for Y direction
| tbodyaccjerk-std-z | Standard deviation of time of body acceleration jerk for Z direction
| tbodygyro-mean-x | Mean body gyroscope measurement for X direction
| tbodygyro-mean-y | Mean body gyroscope measurement for Y direction
| tbodygyro-mean-z | Mean body gyroscope measurement for Z direction
| tbodygyro-std-x | Standard deviation of body gyroscope measurement for X direction
| tbodygyro-std-y | Standard deviation of body gyroscope measurement for Y direction
| tbodygyro-std-z | Standard deviation of body gyroscope measurement for Z direction
| tbodygyrojerk-mean-x | Mean jerk signal of body for X direction
| tbodygyrojerk-mean-y | Mean jerk signal of body for Y direction
| tbodygyrojerk-mean-z | Mean jerk signal of body for Z direction
| tbodygyrojerk-std-x | Standard deviation of jerk signal of body for X direction
| tbodygyrojerk-std-y | Standard deviation of jerk signal of body for Y direction
| tbodygyrojerk-std-z | Standard deviation of jerk signal of body for Z direction
| tbodyaccmag-mean | Mean magnitude of body Acc
| tbodyaccmag-std | Standard deviation of magnitude of body Acc
| tgravityaccmag-mean | Mean gravity acceleration magnitude
| tgravityaccmag-std | Standard deviation of gravity acceleration magnitude
| tbodyaccjerkmag-mean | Mean magnitude of body acceleration jerk
| tbodyaccjerkmag-std | Standard deviation of magnitude of body acceleration jerk
| tbodygyromag-mean | Mean magnitude of body gyroscope measurement
| tbodygyromag-std | Standard deviation of magnitude of body gyroscope measurement
| tbodygyrojerkmag-mean | Mean magnitude of body body gyroscope jerk measurement
| tbodygyrojerkmag-std | Standard deviation of magnitude of body body gyroscope jerk measurement
| fbodyacc-mean-x | Mean frequency of body acceleration for X direction
| fbodyacc-mean-y | Mean frequency of body acceleration for Y direction
| fbodyacc-mean-z | Mean frequency of body acceleration for Z direction
| fbodyacc-std-x | Standard deviation of frequency of body acceleration for X direction
| fbodyacc-std-y | Standard deviation of frequency of body acceleration for Y direction
| fbodyacc-std-z | Standard deviation of frequency of body acceleration for Z direction
| fbodyaccjerk-mean-x | Mean frequency of body accerlation jerk for X direction
| fbodyaccjerk-mean-y | Mean frequency of body accerlation jerk for Y direction
| fbodyaccjerk-mean-z | Mean frequency of body accerlation jerk for Z direction
| fbodyaccjerk-std-x | Standard deviation frequency of body accerlation jerk for X direction
| fbodyaccjerk-std-y | Standard deviation frequency of body accerlation jerk for Y direction
| fbodyaccjerk-std-z | Standard deviation frequency of body accerlation jerk for Z direction
| fbodygyro-mean-x | Mean frequency of body gyroscope measurement for X direction
| fbodygyro-mean-y | Mean frequency of body gyroscope measurement for Y direction
| fbodygyro-mean-z | Mean frequency of body gyroscope measurement for Z direction
| fbodygyro-std-x | Standard deviation frequency of body gyroscope measurement for X direction
| fbodygyro-std-y | Standard deviation frequency of body gyroscope measurement for Y direction
| fbodygyro-std-z | Standard deviation frequency of body gyroscope measurement for Z direction
| fbodyaccmag-mean | Mean frequency of body acceleration magnitude
| fbodyaccmag-std | Standard deviation of frequency of body acceleration magnitude
| fbodybodyaccjerkmag-mean | Mean frequency of body acceleration jerk magnitude
| fbodybodyaccjerkmag-std | Standard deviation of frequency of body acceleration jerk magnitude
| fbodybodygyromag-mean | Mean frequency of magnitude of body gyroscope measurement
| fbodybodygyromag-std | Standard deviation of frequency of magnitude of body gyroscope measurement
| fbodybodygyrojerkmag-mean | Mean frequency of magnitude of body gyroscope jerk measurement
| fbodybodygyrojerkmag-std | Standard deviation frequency of magnitude of body gyroscope jerk measurement

Transformations or work performed to clean up the data:
--------------------------------------------------------

1. Load libraries `RCurl` and `gdata`.
2. Download the data. (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
3. Create and unzip the data in the directory.
4. Read and merge the data to **subset** with `rbind`:
	* `subject_test` contains the ids in the test data.
	* `subject_train` contains the ids in the training data.
5. Read and merge the data to **X** with `rbind`:
	* `X_test` contains the data using the feature data set as columns in the test data.
	* `X_train` contains the data using the feature data set as columns in the training data.
6. Read and merge the data to **y** with `rbind`:
	* `y_test` contains the activity labels in the test data.
	* `y_train` contains the activity labels in the training data.
7. Read feature data set `features.txt` used for columns:
	* Extract the Mean and the Standard Deviation.
	* Create a vector for extracted data called **Xmeanandstd**.
	* Clean and name all columns of the data.
8. Read feature data set `activity_labels.txt` used for columns:
	* Remove underscores from the data.
	* Name all activities.
9. Lable the data set with descriptive variable names:
	* Assign the name *Activity* to **y**.
	* Assign the name *Subject* to **subject**
	* Merge the data **y**, **subject** and **Xmeanandstd** using `cbind`.
10. Create an independent tidy data set with the average of each variable for each activity and each subject:
	* Take the mean of the data set using `aggregate`.
	* Use the print option to print the tidy data set.
	* Write the tidy data set on a *.txt* file called **Tidy_Data.txt**.
