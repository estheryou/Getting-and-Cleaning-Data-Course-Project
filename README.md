Getting and Cleaning Data Course Project
========================================================

A. Purpose of the project:
-----------------------------

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 

1. A tidy data set as described below;
2. A link to a Github repository with your script for performing the analysis;
3. A code book that describes the variables, the data, and any work performed to clean up the data called ``CodeBook.md``. 

The``README.md`` explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.

B. Objectives of the project:
-----------------------------
The R script called `run_analysis.R` performs the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

C. The run_analysis.R script:
-----------------------------

1. The **UCI HAR Dataset** data set is downloaded and unziped into the UCI HAR Dataset folder. 
2. The **test** and **train** datasets for *subject*, *X* and *y* are read and merged into three datasets using `rbind`.
3. The **features** data set is read.
4. The *mean* and *standard deviation* are extracted from the **features** data set using `grep` to create *Xmeanandstd*.
5. The columns of *Xmeanandstd* are cleaned and named using the **features** data set.
6. The **activitiy_labels** data set is read.
7. The underscores are removed using `gsub` and the rows are named using the **activity_labels** data set.
8. The **Activity** and **Subject** columns are named for *y* and *subject* data sets, respectively.
9. The three data sets, *y*, *subject* and *Xmeanandstd*, are merged using `cbind` and called **Data_Set**.
10. The *mean* of **Activity** and **Subject** are created into a separate tidy data set called **Tidy_Data**.
11. The data set is exported into the project folder as **Tidy_Data.txt** using options to get a clean printed table.
