---
title: "CodeBook.md"
author: "Jean-Sebastien CAZE"
date: "2015-02-22"
output: html_document
Coursera - Getting and Cleaning Data - Course project - CodeBook
---

===========
### DATA DICTIONARY - Coursera - Getting and Cleaning Data - Course project

Activity ID
 Activity serial number
 1..6 .Unique id of activity

Activity Label
 description of the activity 
 WALKING
 WALKING_UPSTAIRS
 WALKING_DOWNSTAIRS
 SITTING
 STANDING
 LAYING

Subject ID
 Subject serial number
 1..30 .Unique id of activity

After those dimensional data, you will find the fact data :
2 types of facts data :
* facts data concerning the mean 
 [1] "tBodyAcc-mean()-X"           "tBodyAcc-mean()-Y"          
 [3] "tBodyAcc-mean()-Z"           "tGravityAcc-mean()-X"       
 [5] "tGravityAcc-mean()-Y"        "tGravityAcc-mean()-Z"       
 [7] "tBodyAccJerk-mean()-X"       "tBodyAccJerk-mean()-Y"      
 [9] "tBodyAccJerk-mean()-Z"       "tBodyGyro-mean()-X"         
[11] "tBodyGyro-mean()-Y"          "tBodyGyro-mean()-Z"         
[13] "tBodyGyroJerk-mean()-X"      "tBodyGyroJerk-mean()-Y"     
[15] "tBodyGyroJerk-mean()-Z"      "tBodyAccMag-mean()"         
[17] "tGravityAccMag-mean()"       "tBodyAccJerkMag-mean()"     
[19] "tBodyGyroMag-mean()"         "tBodyGyroJerkMag-mean()"    
[21] "fBodyAcc-mean()-X"           "fBodyAcc-mean()-Y"          
[23] "fBodyAcc-mean()-Z"           "fBodyAccJerk-mean()-X"      
[25] "fBodyAccJerk-mean()-Y"       "fBodyAccJerk-mean()-Z"      
[27] "fBodyGyro-mean()-X"          "fBodyGyro-mean()-Y"         
[29] "fBodyGyro-mean()-Z"          "fBodyAccMag-mean()"         
[31] "fBodyBodyAccJerkMag-mean()"  "fBodyBodyGyroMag-mean()"    
[33] "fBodyBodyGyroJerkMag-mean()"

* facts data concerning the std 
 [1] "tBodyAcc-std()-X"           "tBodyAcc-std()-Y"          
 [3] "tBodyAcc-std()-Z"           "tGravityAcc-std()-X"       
 [5] "tGravityAcc-std()-Y"        "tGravityAcc-std()-Z"       
 [7] "tBodyAccJerk-std()-X"       "tBodyAccJerk-std()-Y"      
 [9] "tBodyAccJerk-std()-Z"       "tBodyGyro-std()-X"         
[11] "tBodyGyro-std()-Y"          "tBodyGyro-std()-Z"         
[13] "tBodyGyroJerk-std()-X"      "tBodyGyroJerk-std()-Y"     
[15] "tBodyGyroJerk-std()-Z"      "tBodyAccMag-std()"         
[17] "tGravityAccMag-std()"       "tBodyAccJerkMag-std()"     
[19] "tBodyGyroMag-std()"         "tBodyGyroJerkMag-std()"    
[21] "fBodyAcc-std()-X"           "fBodyAcc-std()-Y"          
[23] "fBodyAcc-std()-Z"           "fBodyAccJerk-std()-X"      
[25] "fBodyAccJerk-std()-Y"       "fBodyAccJerk-std()-Z"      
[27] "fBodyGyro-std()-X"          "fBodyGyro-std()-Y"         
[29] "fBodyGyro-std()-Z"          "fBodyAccMag-std()"         
[31] "fBodyBodyAccJerkMag-std()"  "fBodyBodyGyroMag-std()"    
[33] "fBodyBodyGyroJerkMag-std()"


Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

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
