run_analysis
============

##Accompanying script run_analysis.R is written in the R programming language to fulfil the following assignment
===========
Getting and Cleaning Data - Programming Assignment:

You should create one R script called run_analysis.R that does the following. 

  *1 Merges the training and the test sets to create one data set.
  
  *2 Extracts only the measurements on the mean and standard deviation for each measurement. 
  
  *3 Uses descriptive activity names to name the activities in the data set
  
  *4 Appropriately labels the data set with descriptive variable names. 
  
  *5 Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


Data was retreied from 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 


script assumes you have downloaded data, unzipped the file and set working directory to that path where the unzipped 'UCI HAR 

Dataset' file resides

fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile=".\\data\\gcd.zip")
After download completed, you need to unzip the file



##Description of steps taken:
===========
#1 Merges the training and the test sets to create one data set.

1.imports 3 test files & 3 train files

	1. X - measurements
	
	2. Y - activity labels
	
	3. subject - subject identifier

2.merges these together (10,299 obs & 563 vars)

3.assigns colnames based on the features.txt file

===========
#2 Extracts only the measurements on the mean and standard deviation for each measurement. 

1. searches for 'mean' and 'std' in the features.txt

NOTE: There were 2 types of mean variables

*The set of variables that were estimated from the signals are: mean(): Mean value

*Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:(gravityMean, tBodyAccMean, etc.)
88 variables reserved from this step

===========
#3 Uses descriptive activity names to name the activities in the data set

1. created a factor variable based on the activity_labels.txt file

===========
#4 Appropriately labels the data set with descriptive variable names. 

NOTE: wanted to keep the names as close to the original as possible to eliminate translation issues

thanks to Earl F Glynn (Coursera discussion forum) for the insight on descriptive names

1. removed special charaters from the variable descriptions (ex.'-','(') as these can cause issues in R

2. created an index variable to appended to the variable name (42 duplicate names)

===========
#5 Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

1. Used aggregate to collapse by mean using subject & activity as id (carred activity description as well)

