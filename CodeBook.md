Data variables
=================

The data variable names come from the original data set, however the tidy data set, "step5.txt" only has the "mean" or "std" variables from the original data set.

step5.txt data description:
=================

This data set has 180 observations of 68 variables. Each row represents the average of the "mean" and "std" columns per activity and subject. The variables are:

- Activity: Descriptive activity based on provided data on activity_labels.txt.
- Subject: Each subject that participated in the study.
- Other columns: Mean of the variable name from original data set, below:

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Data processing:
=================

The original data was processed in the following manner:

 1. Merges the training and the test sets to create one data set. 
 1.1 Read in variable names
 1.2 Create a vector of variable names
 1.3 Read in test data
 1.4 Read in training data
 1.5 Merge and rename x data sets
 1.6 Merge and rename y data sets
 1.7 Merge and rename subject data sets
 1.8 Merge everything

 2. Extracts only the measurements on the mean and standard deviation for each measurement.                                                          
 2.1 Subset data based on variable names

 3. Uses descriptive activity names to name the activities in the data set  
 3.1 Read in activity "legend"
 3.2 Replace Activity labels one by one

 4. Appropriately labels the data set with descriptive variable names.      
 4.1 Completed above on line 15

 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.  
 5.1 Load dplyr
 5.2 Create a new dataset 
 5.3 Group by activity and subject, and summarize
 5.4 Write to disk




