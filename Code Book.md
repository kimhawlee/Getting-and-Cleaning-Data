# Code Book

This code book describes the variables of the output dataset and summaries used to calculate the values, along with units and any other relevant information.

### Part 1: Input Datasets

The input datasets contain raw measurements from the accelerometer and the gyroscope of a Samsung smartphone carried by a person who was performing the following six activities:

WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

The input datasets contain raw measurements for the following variables:

|      Variable     |     source    |   domain  |
| ----------------- | ------------- | --------- |
| tBodyAcc-XYZ      | accelerometer | time      |
| tGravityAcc-XYZ   | accelerometer | time      |
| tBodyAccJerk-XYZ  | accelerometer | time      |
| tBodyAccMag       | accelerometer | time      |
| tGravityAccMag    | accelerometer | time      |
| tBodyAccJerkMag   | accelerometer | frequency |
| fBodyAcc-XYZ      | accelerometer | frequency |
| fBodyAccJerk-XYZ  | accelerometer | frequency |
| fBodyAccMag       | accelerometer | frequency |
| fBodyAccJerkMag   | accelerometer | frequency |
| tBodyGyro-XYZ     | gyroscope     | time      |
| tBodyGyroJerk-XYZ | gyroscope     | time      |
| tBodyGyroMag      | gyroscope     | time      |
| tBodyGyroJerkMag  | gyroscope     | time      |
| fBodyGyro-XYZ     | gyroscope     | frequency |
| fBodyGyroMag      | gyroscope     | frequency |
| fBodyGyroJerkMag  | gyroscope     | frequency |

Variable names ending with XYZ denote 3-axial variables. The dataset contains one separate variable for each axis.
The input datasets are split into two subsets: a training set and a test set. Each subsets consists of three files:

* A features file (train/X_train.txt and test/X_test.txt) with one feature vector per row
* A label with one activity label per row (train/y_train.txt and test/y_test.txt)
* A file with a subject id per row (train/subject_train.txt and test/subject_test.txt)

The names of the features are listed in the file features.txt. Additionally, the input contains the file activity_labels.txt which links the class labels with their activity name.


### Part 2: Program Execution and Output Variables

Refer to [README] (https://github.com/kimhawlee/Getting-and-Cleaning-Data/blob/master/README.md) for descriptions on how the script works.

Here are the 16 R objects that were used in the script (in alphabetical order):

Object | Definition
----------|-----------
activity_labels | data frame for "activity_labels.txt"
all_data | data frame for the combination of all training and test datasets, including labels
all_data2 |data frame that represents tidy dataset, derived from "all_data"  
data_activity | data frame that combines training and test datasets of "activity" dataset
data_combined | data frame that combines "subject" and "activity"
data_features | data frame that combines training and test datasets of "features" dataset
data_features_names | data frame for "features.txt" 
data_subject | data frame that combines training and test datasets of "subject" dataset
extract_features_names | a factor that extracts feature names with mean() and std()
select_features_names | a character vector for selected features names from "extract_features_names"
subject_test | data frame for "subject_test.txt"
subject_train | data frame for "subject_train.txt"
x_test | data frame for "x_test.txt"
x_train | data frame for "x_train.txt"
y_test | data frame for "y_test.txt"
y_train | data frame for "y_train.txt"


All resultant (cleaned) output variables in the output file "tidy_dataset.txt" can be examined in the [output_variables.csv file](https://github.com/kimhawlee/Getting-and-Cleaning-Data/blob/master/output_variables.csv)




