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


### Part 2: Output Variables




Here are the variables (in alphabetical order):

1) activity_labels = data frame for "activity_labels.txt"

2) all_data = data frame for the combination of all training and test datasets, including labels

3) all_data2 = data frame that represents tidy dataset, derived from "all_data"  

4) data_activity = data frame that combines training and test datasets of "activity" dataset

5) data_combined = data frame that combines "subject" and "activity"

6) data_features = data frame that combines training and test datasets of "features" dataset

7) data_features_names = data frame for "features.txt" 

8) data_subject = data frame that combines training and test datasets of "subject" dataset

9) extract_features_names = a factor that extracts feature names with mean() and std()

10) select_features_names = a character vector for selected features names from "extract_features_names"

11) subject_test = data frame for "subject_test.txt"

12) subject_train = data frame for "subject_train.txt"

13) x_test = data frame for "x_test.txt"

14) x_train = data frame for "x_train.txt"

15) y_test = data frame for "y_test.txt"

16) y_train = data frame for "y_train.txt"

