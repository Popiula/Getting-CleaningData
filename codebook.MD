# The original dataset comes from:

  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
  
  A full description of he dataset is available at the site where the data was obtained:

  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

# Original file list used in run_analysis.R

X_test.txt
X_train.txt
y_test.txt
y_train.txt
subject_test.txt
subject_train.txt
features.txt
activity_labels.txt

# Dataset

tidyDS

180 obs of 81 variables

# File

tidyDS.txt

#Transformations or work that you performed to clean up the data

## 1 Merge the training and the test sets to create one data set.
## 2 Extracts only the measurements on the mean and standard deviation for each measurement.
## 3 Uses descriptive activity names to name the activities in the data set
## 4 Appropriately labels the data set with descriptive variable names.
## 5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

tidyDS <- read.table("tidyDS.txt",head=TRUE)

tidyDS[1:10,1:5]
   Group.1 Group.2 tBodyAcc.mean...X tBodyAcc.mean...Y tBodyAcc.mean...Z
1        1 WALKING         0.2773308       -0.01738382        -0.1111481
2        2 WALKING         0.2764266       -0.01859492        -0.1055004
3        3 WALKING         0.2755675       -0.01717678        -0.1126749
4        4 WALKING         0.2785820       -0.01483995        -0.1114031
5        5 WALKING         0.2778423       -0.01728503        -0.1077418
6        6 WALKING         0.2836589       -0.01689542        -0.1103032
7        7 WALKING         0.2755930       -0.01865367        -0.1109122
8        8 WALKING         0.2746863       -0.01866289        -0.1072521
9        9 WALKING         0.2785028       -0.01808920        -0.1108205
10      10 WALKING         0.2785741       -0.01702235        -0.1090575

# Output variables

Group.1 : subject
Group.2 : activity

> colnames(tidyDS)
 [1] "Group.1"                         "Group.2"                         "tBodyAcc-mean()-X"              
 [4] "tBodyAcc-mean()-Y"               "tBodyAcc-mean()-Z"               "tBodyAcc-std()-X"               
 [7] "tBodyAcc-std()-Y"                "tBodyAcc-std()-Z"                "tGravityAcc-mean()-X"           
[10] "tGravityAcc-mean()-Y"            "tGravityAcc-mean()-Z"            "tGravityAcc-std()-X"            
[13] "tGravityAcc-std()-Y"             "tGravityAcc-std()-Z"             "tBodyAccJerk-mean()-X"          
[16] "tBodyAccJerk-mean()-Y"           "tBodyAccJerk-mean()-Z"           "tBodyAccJerk-std()-X"           
[19] "tBodyAccJerk-std()-Y"            "tBodyAccJerk-std()-Z"            "tBodyGyro-mean()-X"             
[22] "tBodyGyro-mean()-Y"              "tBodyGyro-mean()-Z"              "tBodyGyro-std()-X"              
[25] "tBodyGyro-std()-Y"               "tBodyGyro-std()-Z"               "tBodyGyroJerk-mean()-X"         
[28] "tBodyGyroJerk-mean()-Y"          "tBodyGyroJerk-mean()-Z"          "tBodyGyroJerk-std()-X"          
[31] "tBodyGyroJerk-std()-Y"           "tBodyGyroJerk-std()-Z"           "tBodyAccMag-mean()"             
[34] "tBodyAccMag-std()"               "tGravityAccMag-mean()"           "tGravityAccMag-std()"           
[37] "tBodyAccJerkMag-mean()"          "tBodyAccJerkMag-std()"           "tBodyGyroMag-mean()"            
[40] "tBodyGyroMag-std()"              "tBodyGyroJerkMag-mean()"         "tBodyGyroJerkMag-std()"         
[43] "fBodyAcc-mean()-X"               "fBodyAcc-mean()-Y"               "fBodyAcc-mean()-Z"              
[46] "fBodyAcc-std()-X"                "fBodyAcc-std()-Y"                "fBodyAcc-std()-Z"               
[49] "fBodyAcc-meanFreq()-X"           "fBodyAcc-meanFreq()-Y"           "fBodyAcc-meanFreq()-Z"          
[52] "fBodyAccJerk-mean()-X"           "fBodyAccJerk-mean()-Y"           "fBodyAccJerk-mean()-Z"          
[55] "fBodyAccJerk-std()-X"            "fBodyAccJerk-std()-Y"            "fBodyAccJerk-std()-Z"           
[58] "fBodyAccJerk-meanFreq()-X"       "fBodyAccJerk-meanFreq()-Y"       "fBodyAccJerk-meanFreq()-Z"      
[61] "fBodyGyro-mean()-X"              "fBodyGyro-mean()-Y"              "fBodyGyro-mean()-Z"             
[64] "fBodyGyro-std()-X"               "fBodyGyro-std()-Y"               "fBodyGyro-std()-Z"              
[67] "fBodyGyro-meanFreq()-X"          "fBodyGyro-meanFreq()-Y"          "fBodyGyro-meanFreq()-Z"         
[70] "fBodyAccMag-mean()"              "fBodyAccMag-std()"               "fBodyAccMag-meanFreq()"         
[73] "fBodyBodyAccJerkMag-mean()"      "fBodyBodyAccJerkMag-std()"       "fBodyBodyAccJerkMag-meanFreq()" 
[76] "fBodyBodyGyroMag-mean()"         "fBodyBodyGyroMag-std()"          "fBodyBodyGyroMag-meanFreq()"    
[79] "fBodyBodyGyroJerkMag-mean()"     "fBodyBodyGyroJerkMag-std()"      "fBodyBodyGyroJerkMag-meanFreq()"

