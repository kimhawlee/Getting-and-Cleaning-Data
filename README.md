### How `run_analysis.R` script works:
1. The Samsung data should be downloaded and unzipped into working directory before running the script.
2. The script first reads the key data files in table format and assign a data frame for each.
3. Then, it merges the training and the test datasets to create one dataset, by performing the following:

    (a) combines data tables by rows; 
    
    (b) assigns names to variables; 
    
    (c) merges the relevant columns; 
    
    (d) lastly, a data frame was assigned to all data.
    
4. Next, it extracts only the measurements on the mean and standard deviation for each measurement.
5. Then, it Uses descriptive activity names to name the activities in the dataset that was extracted earlier.
6. Next, it labels the dataset with descriptive variable names.
7. From the dataset thus far, creates an independent tidy dataset with the average of each variable for each activity and each subject.
