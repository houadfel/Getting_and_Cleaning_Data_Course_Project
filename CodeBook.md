## Code Book 

======================================================================== 

      Human Activity Recognition Using Smartphones Dataset 

      Version 1.0 

      ======================================================================== 

      Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.

      Smartlab - Non Linear Complex Systems Laboratory 

      DITEN - Università degli Studi di Genova.

      Via Opera Pia 11A, I-16145, Genoa, Italy.

      activityrecognition@smartlab.ws 

      www.smartlab.ws 

      ======================================================================== 

      
      The experiments have been carried out with a group of 30 volunteers 

      within an age bracket of 19-48 years. Each person performed six activities 

      (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 

      wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded 

      accelerometer and gyroscope, we captured 3-axial linear acceleration and 

      3-axial angular velocity at a constant rate of 50Hz. The experiments have 

      been video-recorded to label the data manually.


      The original dataset has been further processed as follows:

      	 - A new dataset was generated with means of original data only.

      	 - Except for the first two variables, the rest are numeric new variables.

      	 - A new variable was computed from an original one by taking the average

      	   with respect to every level of the pair of variables (activity, subject).


      	   For example,

      	   'tBodyAcc_mean_X' is the average taken with respect to every level of the pair

      	   (activity, subject) of the mean body acceleration in the X-direction

      	   when computed in the time domain.


      	   Similarly,

      	   'tBodyGyroJerk_mean_Z' is the average taken with respect to every level of the pair

      	   (activity, subject) of the mean body gyroscopic signal in the Z-direction

      	   when computed in the frequency domain.


      	   Note: In variable names, the following indications apply,

      		   't': time domain

      		   'f': frequency domain

      		   'mean': mean value

      		   'std': standard deviation

      		   'acc': accelerometer signal

      		   'Gyro: gyroscope signal

      		   'Jerk': Jerk signal
 
      		   'Mag': magnitude

      		   'X': x-direction in space

      		   'Y': y-direction in space

      		   'Z': z-direction in space



## FEATURES 


------------------------------------------------------------ 
Variable Name: subject 
Column position: 1 
Class: integer 
------------------------------------------------------------ 
Variable Name: activity 
Column position: 2 
Class: factor 
------------------------------------------------------------ 
Variable Name: tBodyAcc_mean_X 
Column position: 3 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tBodyAcc_mean_Y 
Column position: 4 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tBodyAcc_mean_Z 
Column position: 5 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tBodyAcc_std_X 
Column position: 6 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tBodyAcc_std_Y 
Column position: 7 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tBodyAcc_std_Z 
Column position: 8 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tGravityAcc_mean_X 
Column position: 9 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tGravityAcc_mean_Y 
Column position: 10 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tGravityAcc_mean_Z 
Column position: 11 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tGravityAcc_std_X 
Column position: 12 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tGravityAcc_std_Y 
Column position: 13 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tGravityAcc_std_Z 
Column position: 14 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tBodyAccJerk_mean_X 
Column position: 15 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tBodyAccJerk_mean_Y 
Column position: 16 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tBodyAccJerk_mean_Z 
Column position: 17 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tBodyAccJerk_std_X 
Column position: 18 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tBodyAccJerk_std_Y 
Column position: 19 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tBodyAccJerk_std_Z 
Column position: 20 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tBodyGyro_mean_X 
Column position: 21 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tBodyGyro_mean_Y 
Column position: 22 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tBodyGyro_mean_Z 
Column position: 23 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tBodyGyro_std_X 
Column position: 24 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tBodyGyro_std_Y 
Column position: 25 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tBodyGyro_std_Z 
Column position: 26 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tBodyGyroJerk_mean_X 
Column position: 27 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tBodyGyroJerk_mean_Y 
Column position: 28 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tBodyGyroJerk_mean_Z 
Column position: 29 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tBodyGyroJerk_std_X 
Column position: 30 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tBodyGyroJerk_std_Y 
Column position: 31 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tBodyGyroJerk_std_Z 
Column position: 32 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tBodyAccMag_mean 
Column position: 33 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tBodyAccMag_std 
Column position: 34 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tGravityAccMag_mean 
Column position: 35 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tGravityAccMag_std 
Column position: 36 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tBodyAccJerkMag_mean 
Column position: 37 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tBodyAccJerkMag_std 
Column position: 38 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tBodyGyroMag_mean 
Column position: 39 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tBodyGyroMag_std 
Column position: 40 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tBodyGyroJerkMag_mean 
Column position: 41 
Class: numeric 
------------------------------------------------------------ 
Variable Name: tBodyGyroJerkMag_std 
Column position: 42 
Class: numeric 
------------------------------------------------------------ 
Variable Name: fBodyAcc_mean_X 
Column position: 43 
Class: numeric 
------------------------------------------------------------ 
Variable Name: fBodyAcc_mean_Y 
Column position: 44 
Class: numeric 
------------------------------------------------------------ 
Variable Name: fBodyAcc_mean_Z 
Column position: 45 
Class: numeric 
------------------------------------------------------------ 
Variable Name: fBodyAcc_std_X 
Column position: 46 
Class: numeric 
------------------------------------------------------------ 
Variable Name: fBodyAcc_std_Y 
Column position: 47 
Class: numeric 
------------------------------------------------------------ 
Variable Name: fBodyAcc_std_Z 
Column position: 48 
Class: numeric 
------------------------------------------------------------ 
Variable Name: fBodyAccJerk_mean_X 
Column position: 49 
Class: numeric 
------------------------------------------------------------ 
Variable Name: fBodyAccJerk_mean_Y 
Column position: 50 
Class: numeric 
------------------------------------------------------------ 
Variable Name: fBodyAccJerk_mean_Z 
Column position: 51 
Class: numeric 
------------------------------------------------------------ 
Variable Name: fBodyAccJerk_std_X 
Column position: 52 
Class: numeric 
------------------------------------------------------------ 
Variable Name: fBodyAccJerk_std_Y 
Column position: 53 
Class: numeric 
------------------------------------------------------------ 
Variable Name: fBodyAccJerk_std_Z 
Column position: 54 
Class: numeric 
------------------------------------------------------------ 
Variable Name: fBodyGyro_mean_X 
Column position: 55 
Class: numeric 
------------------------------------------------------------ 
Variable Name: fBodyGyro_mean_Y 
Column position: 56 
Class: numeric 
------------------------------------------------------------ 
Variable Name: fBodyGyro_mean_Z 
Column position: 57 
Class: numeric 
------------------------------------------------------------ 
Variable Name: fBodyGyro_std_X 
Column position: 58 
Class: numeric 
------------------------------------------------------------ 
Variable Name: fBodyGyro_std_Y 
Column position: 59 
Class: numeric 
------------------------------------------------------------ 
Variable Name: fBodyGyro_std_Z 
Column position: 60 
Class: numeric 
------------------------------------------------------------ 
Variable Name: fBodyAccMag_mean 
Column position: 61 
Class: numeric 
------------------------------------------------------------ 
Variable Name: fBodyAccMag_std 
Column position: 62 
Class: numeric 
------------------------------------------------------------ 
Variable Name: fBodyAccJerkMag_mean 
Column position: 63 
Class: numeric 
------------------------------------------------------------ 
Variable Name: fBodyAccJerkMag_std 
Column position: 64 
Class: numeric 
------------------------------------------------------------ 
Variable Name: fBodyGyroMag_mean 
Column position: 65 
Class: numeric 
------------------------------------------------------------ 
Variable Name: fBodyGyroMag_std 
Column position: 66 
Class: numeric 
------------------------------------------------------------ 
Variable Name: fBodyGyroJerkMag_mean 
Column position: 67 
Class: numeric 
------------------------------------------------------------ 
Variable Name: fBodyGyroJerkMag_std 
Column position: 68 
Class: numeric 
