==================================================================
Coursera Getting and Cleaning Data Week 4 Project
Version 1.0
==================================================================
Americo Zuzunaga.
https://github.com/azuzunaga/
==================================================================

This script goes through the 5 steps required in the project:
======================================

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

How to use the script
=========================================

1. Unzip the project file and copy the following files to a directory:
- activity_labels.txt
- features.txt
- features_info.txt
- subject_test.txt
- subject_train.txt
- X_test.txt
- X_train.txt
- y_test.txt
- y_train.txt

2. In R, set your working directory to the directory where the files have been copied.

3. Run the script.

Notes: 
======
Package "dplyr" must be installed in order for script to work.

