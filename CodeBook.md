GettingAndCleaningData
======================

Introduction
------------
This codebook describes the final variables within the TidyData.txt file. The raw data was obtained as described in the snext section of this document. Refer to the associated README.md file for further details about the source of the raw data and processing required to produce the TidyData.txt file.

Raw Data
--------
The raw data were produced by accelerometer and gyroscopes within a Samsun smartphone. The data were collected as part of a study of "Human Activity Recognition Using Smartphones Data Set". 

*Data download:*
[source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 

*Data description:*
[description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


Dataset Variables
-----------------
The TidyData.txt file contains four columns (varibales):

1. Subject - an identifier for study participants ranging from 1 to 30.
2. Activity - A description of the different activity types assigned to the orignal data set. These are self-explanatory and are named: walking, walking upstairs, walking downstairs, sitting, standing or laying.
3. Variable - a description of the variable for whaich a measurement is provided (see subsequent sections for further details about these variables).
4. Mean - the average (mean) of the associated variable for the respective subject (e.g. the mean value of the variable tBodyAcc-mean()-X for subject 1 while laying).


Variable
--------
The variable names listed within the Variable column of the dataset are compund names. As such the component parts of the variable name need to be considered on relation to the below descriptors to establish the specific measures to which they relate (full variable names withint he data set are presented in the subsequent section of this document): 

>
* t prefix - time domain signal. All time domain signals were at a constant rate of 50 Hz and then filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
* f prefix - frequency domain signal.
>
* Body - component of the signal due to body movement.
* Gravity - component of the signal due to gravity.
>
* Acc - signals obtianed from the accelerometer. All acceleration signals were processed using using a low pass Butterworth filter with a corner frequency of 0.3 Hz. 
* Gyro - signals obtianed from the gyroscope.
* Jerk - signals of the body linear acceleration and angular velocity derived in time.
* Mag - magnitude of the three-dimensional Jerk signals as calculated using the Euclidean norm 
>
* mean() - mean value.
* std - standard deviation.
* meanFreq () - weighted average of the frequency components to obtain a mean frequency.
>
* X - 3-axial signals in the X direction. 
* Y - 3-axial signals in the Y direction. 
* Z - 3-axial signals in the Z direction. 



Full list of variable names within the TidyData.txt file
--------------------------------------------------------
1.  tBodyAcc-mean()-X
2.  tBodyAcc-mean()-Y
3.  tBodyAcc-mean()-Z
4.  tGravityAcc-mean()-X
5.  tGravityAcc-mean()-Y
6.  tGravityAcc-mean()-Z
7.  tBodyAccJerk-mean()-X
8.  tBodyAccJerk-mean()-Y
9.  tBodyAccJerk-mean()-Z
10. tBodyGyro-mean()-X
11. tBodyGyro-mean()-Y
12. tBodyGyro-mean()-Z
13. tBodyGyroJerk-mean()-X
14. tBodyGyroJerk-mean()-Y
15. tBodyGyroJerk-mean()-Z
16. tBodyAccMag-mean()
17. tGravityAccMag-mean()
18. tBodyAccJerkMag-mean()
19. tBodyGyroMag-mean()
20. tBodyGyroJerkMag-mean()
21. fBodyAcc-mean()-X
22. fBodyAcc-mean()-Y
23. fBodyAcc-mean()-Z
24. fBodyAcc-meanFreq()-X
25. fBodyAcc-meanFreq()-Y
26. fBodyAcc-meanFreq()-Z
27. fBodyAccJerk-mean()-X
28. fBodyAccJerk-mean()-Y
29. fBodyAccJerk-mean()-Z
30. fBodyAccJerk-meanFreq()-X
31. fBodyAccJerk-meanFreq()-Y
32. fBodyAccJerk-meanFreq()-Z
33. fBodyGyro-mean()-X
34. fBodyGyro-mean()-Y
35. fBodyGyro-mean()-Z
36. fBodyGyro-meanFreq()-X
37. fBodyGyro-meanFreq()-Y
38. fBodyGyro-meanFreq()-Z
39. fBodyAccMag-mean()
40. fBodyAccMag-meanFreq()
41. fBodyBodyAccJerkMag-mean()
42. fBodyBodyAccJerkMag-meanFreq()
43. fBodyBodyGyroMag-mean()
44. fBodyBodyGyroMag-meanFreq()
45. fBodyBodyGyroJerkMag-mean()
46. fBodyBodyGyroJerkMag-meanFreq()
47. tBodyAcc-std()-X
48. tBodyAcc-std()-Y
49. tBodyAcc-std()-Z
50. tGravityAcc-std()-X
51. tGravityAcc-std()-Y
52. tGravityAcc-std()-Z
53. tBodyAccJerk-std()-X
54. tBodyAccJerk-std()-Y
55. tBodyAccJerk-std()-Z
56. tBodyGyro-std()-X
57. tBodyGyro-std()-Y
58. tBodyGyro-std()-Z
59. tBodyGyroJerk-std()-X
60. tBodyGyroJerk-std()-Y
61. tBodyGyroJerk-std()-Z
62. tBodyAccMag-std()
63. tGravityAccMag-std()
64. tBodyAccJerkMag-std()
65. tBodyGyroMag-std()
66. tBodyGyroJerkMag-std()
67. fBodyAcc-std()-X
68. fBodyAcc-std()-Y
69. fBodyAcc-std()-Z
70. fBodyAccJerk-std()-X
71. fBodyAccJerk-std()-Y
72. fBodyAccJerk-std()-Z
73. fBodyGyro-std()-X
74. fBodyGyro-std()-Y
75. fBodyGyro-std()-Z
76. fBodyAccMag-std()
77. fBodyBodyAccJerkMag-std()
78. fBodyBodyGyroMag-std()
79. fBodyBodyGyroJerkMag-std()





