Codebook
========================================================

Abstract:
----------------------

Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

Data Set Information:
----------------------

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

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

Attribute Information:
------------------------

For each record in the dataset it is provided:

1. Triaxial total acceleration from the accelerometer and the estimated body acceleration. 
2. Triaxial angular velocity from the gyroscope. 
3. A 561-feature vector with time and frequency domain variables. 
4. Its activity label. 
5. An identifier of the subject who carried out the experiment.

### Variable Descriptions:
The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

| Variable  | Description
------------|-------------
| ACTIVITY | Activity performed
| SUBJECT | Subject ID
| TBODYACC-MEAN-X | Mean time for acceleration of body for X direction
| TBODYACC-MEAN-Y | Mean time for acceleration of body for Y direction
| TBODYACC-MEAN-Z | Mean time for acceleration of body for Z direction
| TBODYACC-STD-X | Standard deviation of time for acceleration of body for X direction
| TBODYACC-STD-Y | Standard deviation of time for acceleration of body for Y direction
| TBODYACC-STD-Z | Standard deviation of time for acceleration of body for Z direction
| TGRAVITYACC-MEAN-Z | Mean time of acceleration of gravity for X direction
| TGRAVITYACC-MEAN-Y | Mean time of acceleration of gravity for Y direction
| TGRAVITYACC-MEAN-Z | Mean time of acceleration of gravity for Z direction
| TGRAVITYACC-STD-X | Standard deviation of time of acceleration of gravity for X direction
| TGRAVITYACC-STD-Y | Standard deviation of time of acceleration of gravity for Y direction
| TGRAVITYACC-STD-Z | Standard deviation of time of acceleration of gravity for Z direction
| TBODYACCJERK-MEAN-X | Mean time of body acceleration jerk for X direction
| TBODYACCJERK-MEAN-Y | Mean time of body acceleration jerk for Y direction
| TBODYACCJERK-MEAN-Z | Mean time of body acceleration jerk for Z direction
| TBODYACCJERK-STD-X | Standard deviation of time of body acceleration jerk for X direction
| TBODYACCJERK-STD-Y | Standard deviation of time of body acceleration jerk for Y direction
| TBODYACCJERK-STD-Z | Standard deviation of time of body acceleration jerk for Z direction
| TBODYGYRO-MEAN-X | Mean body gyroscope measurement for X direction
| TBODYGYRO-MEAN-Y | Mean body gyroscope measurement for Y direction
| TBODYGYRO-MEAN-Z | Mean body gyroscope measurement for Z direction
| TBODYGYRO-STD-X | Standard deviation of body gyroscope measurement for X direction
| TBODYGYRO-STD-Y | Standard deviation of body gyroscope measurement for Y direction
| TBODYGYRO-STD-Z | Standard deviation of body gyroscope measurement for Z direction
| TBODYGYROJERK-MEAN-X | Mean jerk signal of body for X direction
| TBODYGYROJERK-MEAN-Y | Mean jerk signal of body for Y direction
| TBODYGYROJERK-MEAN-Z | Mean jerk signal of body for Z direction
| TBODYGYROJERK-STD-X | Standard deviation of jerk signal of body for X direction
| TBODYGYROJERK-STD-Y | Standard deviation of jerk signal of body for Y direction
| TBODYGYROJERK-STD-Z | Standard deviation of jerk signal of body for Z direction
| TBODYACCMAG-MEAN | Mean magnitude of body Acc
| TBODYACCMAG-STD | Standard deviation of magnitude of body Acc
| TGRAVITYACCMAG-MEAN | Mean gravity acceleration magnitude
| TGRAVITYACCMAG-STD | Standard deviation of gravity acceleration magnitude
| TBODYACCJERKMAG-MEAN | Mean magnitude of body acceleration jerk
| TBODYACCJERKMAG-STD | Standard deviation of magnitude of body acceleration jerk
| TBODYGYROMAG-MEAN | Mean magnitude of body gyroscope measurement
| TBODYGYROMAG-STD | Standard deviation of magnitude of body gyroscope measurement
| TBODYGYROJERKMAG-MEAN | Mean magnitude of body body gyroscope jerk measurement
| TBODYGYROJERKMAG-STD | Standard deviation of magnitude of body body gyroscope jerk measurement
| FBODYACC-MEAN-X | Mean frequency of body acceleration for X direction
| FBODYACC-MEAN-Y | Mean frequency of body acceleration for Y direction
| FBODYACC-MEAN-Z | Mean frequency of body acceleration for Z direction
| FBODYACC-STD-X | Standard deviation of frequency of body acceleration for X direction
| FBODYACC-STD-Y | Standard deviation of frequency of body acceleration for Y direction
| FBODYACC-STD-Z | Standard deviation of frequency of body acceleration for Z direction
| FBODYACCJERK-MEAN-X | Mean frequency of body accerlation jerk for X direction
| FBODYACCJERK-MEAN-Y | Mean frequency of body accerlation jerk for Y direction
| FBODYACCJERK-MEAN-Z | Mean frequency of body accerlation jerk for Z direction
| FBODYACCJERK-STD-X | Standard deviation frequency of body accerlation jerk for X direction
| FBODYACCJERK-STD-Y| Standard deviation frequency of body accerlation jerk for Y direction
| FBODYACCJERK-STD-Z | Standard deviation frequency of body accerlation jerk for Z direction
| FBODYGYRO-MEAN-X | Mean frequency of body gyroscope measurement for X direction
| FBODYGYRO-MEAN-Y | Mean frequency of body gyroscope measurement for Y direction
| FBODYGYRO-MEAN-Z | Mean frequency of body gyroscope measurement for Z direction
| FBODYGYRO-STD-X| Standard deviation frequency of body gyroscope measurement for X direction
| FBODYGYRO-STD-Y | Standard deviation frequency of body gyroscope measurement for Y direction
| FBODYGYRO-STD-Z | Standard deviation frequency of body gyroscope measurement for Z direction
| FBODYACCMAG-MEAN | Mean frequency of body acceleration magnitude
| FBODYACCMAG-STD | Standard deviation of frequency of body acceleration magnitude
| FBODYBODYACCJERKMAG-MEAN | Mean frequency of body acceleration jerk magnitude
| FBODYBODYACCJERKMAG-STD | Standard deviation of frequency of body acceleration jerk magnitude
| FBODYBODYGYROMAG-MEAN | Mean frequency of magnitude of body gyroscope measurement
| FBODYBODYGYROMAG-STD | Standard deviation of frequency of magnitude of body gyroscope measurement
| FBODYBODYGYROJERKMAG-MEAN | Mean frequency of magnitude of body gyroscope jerk measurement
| FBODYBODYGYROJERKMAG-STD | Standard deviation frequency of magnitude of body gyroscope jerk measurement

Source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
