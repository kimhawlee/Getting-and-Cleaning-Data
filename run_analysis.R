# run_analysis.R
# Course project R script for 'Getting and Cleaning Data'
# Download the dataset from below URL into your working directory, then unzip it.
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


library(plyr)

# Read the data into working directory
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)


# 1. Merges the training and the test sets to create one data set
# 1.1 To combine data tables by rows
data_subject <- rbind(subject_train, subject_test)
data_activity <- rbind(y_train, y_test)
data_features <- rbind(x_train, x_test)

# 1.2 To assign names to variables
names(data_subject) <- c("Subject")
names(data_activity) <- c("Activity")
data_features_names <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)
names(data_features) <- data_features_names$V2

# 1.3 To merge columns and assign a data frame to all data
data_combined <- cbind(data_subject, data_activity)
all_data <- cbind(data_features, data_combined)



# 2. Extracts only the measurements on the mean and standard deviation for each measurement
# 2.1 To extract features names with mean() and std()
extract_features_names <- data_features_names$V2[grep("mean\\(\\)|std\\(\\)", data_features_names$V2)]

# 2.2 To subset data frame "all_data" by the selected features names
select_features_names <- c(as.character(extract_features_names), "Subject", "Activity")
all_data <- subset(all_data, select = select_features_names)



# 3. Uses descriptive activity names to name the activities in the data set
# 3.1 To read activity names from "activity_labels.txt"
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)

#3.2 To factorise variable "activity" in data frame "all_data" using descriptive activity names
all_data$Activity <- as.factor(all_data$Activity)
levels(all_data$Activity) <- c('WALKING', 'WALKING_UPSTAIRS', 'WALKING_DOWNSTAIRS', 'SITTING', 'STANDING', 'LAYING')



# 4. Appropriately labels the data set with descriptive variable names
names(all_data) <- gsub('Acc', "Accelerometer",names(all_data))
names(all_data) <- gsub('Gyro', "Gyroscope",names(all_data))
names(all_data) <- gsub('Mag', "Magnitude",names(all_data))
names(all_data) <- gsub('\\.mean', "-Mean",names(all_data))
names(all_data) <- gsub('\\.std', "-StdDev",names(all_data))
names(all_data) <- gsub("^t", "Time", names(all_data))
names(all_data) <- gsub("^f", "Frequency", names(all_data))
names(all_data) <- gsub("BodyBody", "Body", names(all_data))



# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
all_data2 <- aggregate(. ~ Subject + Activity, all_data, mean)
all_data2 <- all_data2[order(all_data2$Subject, all_data2$Activity),]
write.table(all_data2, file = "tidy_dataset.txt", row.name=FALSE)

