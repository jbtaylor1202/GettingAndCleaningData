GettingAndCleaningData
======================

Introduction
------------
This repository contains the coursework assignment files for Coursera's "Getting and Cleaning data". These files available are:

1. README.md (this file).
2. run_analysis.R - the script that should be loaded into R and run on the raw data files to produce the TidyData.txt output file.
3. TidyData.txt - the output from running the run_analysis.R file on the raw data files.
4. CodeBook.md - describes the variables in the TidyData.txt file.


Raw Data
--------
The raw data were produced by accelerometer and gyroscopes within a Samsun smartphone. The data were collected as part of a study of "Human Activity Recognition Using Smartphones Data Set". The dataset contains data from 30 volunteers aged between 19 and 48 years old. The raw data had already undergone some processing prior to being made available. For example, the signals from accelerometer and gyroscope were were pre-processed by applying noise filters and all data were normalized and bounded within [-1,1]. Full details of the data and data treatments can be found here:

[source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) with description of the 

[description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)



Prerequisites to running the run_analysis.R file
--------------------------------------------------------------

1. Open R and set a working directory of your preference.
2. Ensure that the 'plyr' and 'reshape2' packages are installed 
The following commands can be used if installation is required: install.packages('dplyr') and install.packages('reshape2').
3. Download the zipped data file to a favoured location.
4. Extract the zipped data to the same location as your working directory.
5. Ensure that the extracted folder is named 'UCI HAR Dataset'.
6. Import the 'run_analysis.R' file into your R session. 
7. Run the 'run_analysis.R' file within R to produce a TidyData.txt within your working directory. 



Data processing of the raw data to obtaina a TidyData.tx file 
--------------------------------------------------------------
On running the 'run_analysis.R' file the following steps occur:

1. The necessary data files are imported from the 'UCI HAR Dataset' folder within the working directory (i.e. activity_labels.txt, features.txt, subject_test.txt, X_test.txt, y_test.txt, subject_train.txt, X_train.txt and y_train.txt).
2. The raw data within the X_test.txt and X_train.txt are joined together as are the y_test.txt and y_train.txt datasets, these two datasets are then amalgamated.
3. The features.txt data contains the names for the 561 variables within the amalgamated dataset - these are added as variable names.
4. The make.unique function is used to ensure all 561 variables have distinct names.
5. Variable 562 is named 'subject' and Variable 563 is named 'activity.
6. Variables with the word 'mean' or 'std' in their name are extracted with all associated data for further analysis.
7. The activity names within the activity_labels.txt file are utilised to convert the numeric identifiers in the 'activity' column to a descriptive name (i.e. walking, walking upstairs, walking downstairs, sitting, standing or laying).
8. The data set is converted from a 'wide' to a 'long' format.
9. The mean of each variable is calculated for each individual within the dataset and saved as a new 'tidy' data set.
10. The variable names in the new 'tidy' data set are set to 'Subject,'Activity','Variable' and 'Mean'.
11. The final 'tidy' data set is saved within the working directory as a file named TidyData.txt.
