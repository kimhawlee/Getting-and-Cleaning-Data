# Code Book

This code book describes the variables used in run_analysis.R which performs data cleaning.

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

