# GETTING AND CLEANING DATA PROJECT:

library(RCurl); library(gdata)                                             # Load libraries.

FileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(FileUrl, destfile = 'UCI-HAR-dataset.zip')                   # Download the file.

Data <- unzip('./UCI-HAR-dataset.zip')                                     # Unzip files.

## 1. Merges the training and the test sets to create one data set.
## a) subset_test.txt and subset_train.txt files:
subject_test <- read.table('./UCI HAR Dataset/test/subject_test.txt')      # Read the subset_test.txt file.
subject_train <- read.table('./UCI HAR Dataset/train/subject_train.txt')   # Read the subset_train.txt file.
subject <- rbind(subject_test, subject_train)                              # Merge the datasets.

## b) X_test.txt and X_train.txt files:
X_test <- read.table('./UCI HAR Dataset/test/X_test.txt')                  # Read the X_test.txt file.
X_train <- read.table('./UCI HAR Dataset/train/X_train.txt')               # Read the X_train.txt file.
X <- rbind(X_test, X_train)                                                # Merge the datasets.

## c) y_test.txt and y_train.txt files:
y_test <- read.table('./UCI HAR Dataset/test/y_test.txt')                  # Read the y_test.txt file.
y_train <- read.table('./UCI HAR Dataset/train/y_train.txt')               # Read the y_train.txt file.
y <- rbind(y_test, y_train)                                                # Merge the datasets.

## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
features <- read.table('./UCI HAR Dataset/features.txt')                   # Read the features.txt file.
mean <- grep("-mean\\(\\)", features[, 2])                                 # Extract the mean.
std <- grep("-std\\(\\)", features[, 2])                                   # Extract the standard deviation.
meanandstd <- c(mean, std)                                                 # Create vector for extracted data.
Xmeanandstd <- X[,meanandstd]                                              # Mean and standard deviation extracted.

## 3. Uses descriptive activity names to name the activities in the data set.
names(Xmeanandstd) <- features[meanandstd, 2]                              # Name all columns of the data.
names(Xmeanandstd) <- gsub("\\(|\\)", "", names(Xmeanandstd))              # Cleaning names of the data.

activity_labels <- read.table('./UCI HAR Dataset/activity_labels.txt')     # Read the activity_labels.txt file.
activity_labels[, 2] <- as.character(gsub("_", "", activity_labels[, 2]))  # Substitute any _ with a blank

y[, 1] <-  activity_labels[y[, 1], 2]                                      # Names all activities.

## 4. Appropriately labels the data set with descriptive variable names.
colnames(y) <- 'Activity'                                                  # Assign the name "Activity" to y.
colnames(subject) <- 'Subject'                                             # Assign the name "Subject" to subset.

Data_Set <- cbind(y, subject, Xmeanandstd)                                 # Create the final tidy data base.

## 5. Creates an independent tidy data set with the average of each variable for each activity and each subject.
Tidy_Data<-aggregate(Data_Set[,!(colnames(Data_Set)%in%c("Activity","Subject"))],list(ACTIVITY=Data_Set$Activity,SUBJECT=Data_Set$Subject),mean)
colnames(Tidy_Data) <- toupper(colnames(Tidy_Data))                        # Setting character variables in upper font.

max.print <- getOption('max.print')                                        # Open print options.
options(max.print = nrow(Tidy_Data) * ncol(Tidy_Data))                     # Change print options.
sink('Tidy_Data.txt'); Tidy_Data; sink()                                   # Write the tidy data on a .txt file.
options(max.print = max.print)                                             # Close options.
