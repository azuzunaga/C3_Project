#### 1. Merges the training and the test sets to create one data set. ####
# Read in variable names
feat <- read.table("features.txt", row.names = 1, stringsAsFactors = FALSE)

# Create a vector of variable names
feat <- feat[,1]

# Read in test data
ytest <- read.table("y_test.txt")

xtest <- read.table("X_test.txt")

stest <- read.table("subject_test.txt")

# Read in training data
ytrain <- read.table("y_train.txt")

xtrain <- read.table("X_train.txt")

strain <- read.table("subject_train.txt")

# Merge and rename x data sets
xdat <- rbind(xtest, xtrain)
names(xdat) <- feat

# Merge and rename y data sets
ydat <- rbind(ytest, ytrain)
names(ydat) <- "Activity"

# Merge and rename subject data sets
sdat <- rbind(stest, strain)
names(sdat) <- "Subject"

# Merge everything
dat <- cbind(ydat, sdat, xdat)

#### 2. Extracts only the measurements on the mean and standard deviation for   ####
#### each measurement.                                                          ####
# Subset data based on variable names
dat <- dat[, c(1, 2, grep("mean\\(|std", names(dat)))]

#### 3. Uses descriptive activity names to name the activities in the data set  ####
# Read in activity "legend"
activity <- read.table("activity_labels.txt", stringsAsFactors = FALSE)

# Replace Activity labels one by one
for (i in 1:nrow(activity)) {
        dat[, 1] <- gsub(activity[i, 1], activity[i, 2], dat[, 1])
}

#### 4. Appropriately labels the data set with descriptive variable names.      ####
# Completed above on line 24

#### 5. From the data set in step 4, creates a second, independent tidy data    ####
#### set with the average of each variable for each activity and each subject.  ####
# Load dplyr
library(dplyr)

# Create a new dataset 
foo <- dat

# Group by activity and subject, and summarize
foo <- group_by(foo, Activity, Subject) %>% summarise_each(funs(mean))

# Write to disk
write.table(foo, "step5.txt", row.names = FALSE)
