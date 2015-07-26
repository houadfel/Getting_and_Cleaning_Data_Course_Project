## course: GETTING AND CLEANING DATA
## PROJECT


# The purpose of this project is to demonstrate your ability to collect, work with, and 
# clean a data set. The goal is to prepare tidy data that can be used for later analysis. 
# You will be graded by your peers on a series of yes/no questions related to the project. 
# You will be required to submit: 
#       S1) a tidy data set as described below, 
#       S2) a link to a Github repository with your script for performing the analysis, and 
#       S3) a code book that describes the variables, the data, and any transformations or 
#          work that you performed to clean up the data called CodeBook.md. 
#       S4) You should also include a README.md in the repo with your scripts. This repo 
#          explains how all of the scripts work and how they are connected. 
#
#
# Here are the data for the project:
#        
#        https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#
# You should create one R script called run_analysis.R that does the following. 
#
#       Q1) Merges the training and the test sets to create one data set.
#       Q2) Extracts only the measurements on the mean and standard deviation for each 
#          measurement. 
#       Q3) Uses descriptive activity names to name the activities in the data set
#       Q4) Appropriately labels the data set with descriptive variable names. 
#       Q5) Creates a second, independent tidy data set with the average of each variable 
#          for each activity and each subject. 
#
# Good luck!

##---- STEP 0 ---
        
## set working directory 
##      - where this script is currently sitting, and,
##      - where you will download the "data.zip" file
## You can set it using setwd() command or otherwise browse to it in Rstudio under 'Session'
## For example if the working directory is "C:/Users/Owner/Desktop/", then use:
##
##      setwd("C:/Users/Owner/Desktop/")
##
## Because there is no need to do it here so I don't

## You can create a folder to store data under current directory
## if such folder would be called "Project" then type in and run
##
##      if(!file.exists("Project")) {
##              dir.create("Project")
##      }
##
## Because there is no need to do it here, so, I don't

## Download the zip file containing the data
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "data.zip",mode="wb")

## You can record the time of download using the date() command as:
##
##      date.download <- date()
##
## An example of output is:
##
##      > date.download
##      [1] "Sun Aug 24 12:39:13 2014"
##
## Because there is no need to do it here, so, I don't

## Unzip the file to the local directory
unzip("data.zip")

##---- STEP 1 ---
#       Q1) Merge the training and the test sets to create one data set.

# load data
dataXtrain <- read.table("./UCI HAR Dataset/train/X_train.txt",header=F,sep="",
                        colClasses="numeric")
dataXtest <- read.table("./UCI HAR Dataset/test/X_test.txt",header=F,sep="",
                        colClasses="numeric")
dataytrain <- read.table("./UCI HAR Dataset/train/y_train.txt",header=F,sep="",
                         colClasses="factor")
dataytest <- read.table("./UCI HAR Dataset/test/y_test.txt",header=F,sep="",
                         colClasses="factor")
datasubjtrain <- read.table("./UCI HAR Dataset/train/subject_train.txt",header=F,sep="",
                         colClasses="factor")
datasubjtest <- read.table("./UCI HAR Dataset/test/subject_test.txt",header=F,sep="",
                        colClasses="factor")

# merge train and test data sets
dataXAll <- rbind(dataXtrain,dataXtest)
datayAll <- rbind(dataytrain,dataytest)
datasubjAll <- rbind(datasubjtrain,datasubjtest)

# reorder factors in datasubjAll to become "1","2",...,"30" instead of "1", "11", etc.
# this will prove to be important in STEP 5
NumLevels <- length(levels(datasubjAll$V1))
datasubjAll$V1 <- factor(datasubjAll$V1,levels = c(1:NumLevels))

# merge all
dataAll <- cbind(datasubjAll,datayAll,dataXAll)
str(dataAll)

##---- STEP 2 ---
#       Q2) Extract only the measurements on the mean and standard deviation for each 
#          measurement.

# load feature names from the "features.txt" file
dataFeatures <- read.table("./UCI HAR Dataset/features.txt",header=F,sep="",
                           colClasses=c("numeric","character"))
names <- dataFeatures[,2]

# get column positions of the variables of interest from the original data sets
# use exact pattern matching to match names where either words "mean()" or "std()" appear 
subvar <- which(grepl("mean()",names,fixed=T) | grepl("std()",names,fixed=T))

# move the found column positions by two positions forward and insert in the first and second 
# positions the two variables "Subject" and "Activity", respectively
subvar <- c(1,2,subvar+2)

# subset full data set to the column positions in subvar:
data1 <- dataAll[,subvar]

# summary
str(data1)


##---- STEP 3 ---
#       Q3) Uses descriptive activity names to name the activities in the data set

# load label names from the "activity_labels.txt" file
dataActivityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt",header=F,sep="",
                           colClasses=c("numeric","character"))

# rename factors of the "Activity" variable according to their original names 
levels(data1[,2]) <- dataActivityLabels[,2]

# summary 
str(data1)


##---- STEP 4 ---
#       Q4) Appropriately label the data set with descriptive variable names. 

# rename first two columns "activity" and "subject", respectively
# rename the rest of the columns using their original names given in "features.txt"

cnames <-c("subject","activity",names)
cnames <- cnames[subvar]

# process the names to remove parentheses, replace hyphens (-) by underscores (_)
# In that I followed one of the conventions for creating variable names in R.
# See, article: "The State of Naming Conventions in R" by Rasmus Bååth
# link: http://journal.r-project.org/archive/2012-2/RJournal_2012-2_Baaaath.pdf

# remove parentheses () from variable names
cnames <- gsub("\\()","",cnames)

# replace "-" by "_" (replace hyphens by underscore)
cnames <- gsub("-","_",cnames)

# remove redundancy (words appearing multiple times)
cnames <- gsub("BodyBody","Body",cnames)

# assign names to column names
colnames(data1) <- cnames

# summary
str(data1)


##---- QUESTION 5 ---
#       Q5) Create a second, independent tidy data set with the average of each variable 
#          for each activity and each subject.

# split data on level pairs (acitivty, subjet) 
s <- split(data1,list(data1$activity,data1$subject))

# summary
str(s)

# Average each variable for every level pair (activity, subjet)
data2 <- sapply(s, function(x) colMeans(x[, -c(1,2)]))

# transpose obtained data frame 
data2 <- t(data2)

# summary
str(data2)
head(data2,n=3)

# reconstruct Factor variables "subject" and "activity" for the new data frame

## get the levels and their count for the "activity" variable from data1
LevActiv <- levels(data1$activity)
n <- length(LevActiv)

## get the levels and their count for the "subject" variable from data1
LevSubj <- levels(data1$subject)
m <- length(LevSubj)

## reconstruct Factor variable "activity" (1st factor in the pair (activity,subject))
dataActiv <- as.data.frame(rep(LevActiv, m))
names(dataActiv) <- "activity"
dataActiv$activity <- factor(dataActiv$activity,levels = LevActiv)

## reconstruct Factor variable "subject" (2nd factor in the pair (activity,subject))
dataSubj <- as.data.frame(rep(LevSubj, each = n))
names(dataSubj) <- "subject"
dataSubj$subject <- factor(dataSubj$subject,levels = LevSubj)

# merge together with the obtained data frame "data2" into the final data frame "dataOut"
dataOut <- cbind(dataSubj,dataActiv,round(data2,digits=8))
#rownames(dataOut)
#rownames(dataOut) <- NULL

# summary 
str(dataOut)
head(dataOut)
tail(dataOut)

# Write output data in a '.txt' file in current working directory
write.table(dataOut,file="output.txt",row.names=F,sep=" ",quote=F)
