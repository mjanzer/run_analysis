
##Getting and Cleaning Data - Programming Assignment:
##You should create one R script called run_analysis.R that does the following. 
  #1 Merges the training and the test sets to create one data set.
  #2 Extracts only the measurements on the mean and standard deviation for each measurement. 
  #3 Uses descriptive activity names to name the activities in the data set
  #4 Appropriately labels the data set with descriptive variable names. 
  #5 Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


#Retrieve data
#http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
#fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#download.file(fileUrl, destfile=".\\data\\gcd.zip")
#After download completed, you need to unzip the file

#script assumes you have downloaded data, unzipped the file

 


##########################################################################
#1 Merges the training and the test sets to create one data set.

#set your working directory where the unzipped 'UCI HAR Dataset' file resides
setwd("C:\\_Projects\\Coursera\\03 Getting and Cleaning Data\\data\\UCI HAR Dataset")


X_test<-read.table(".\\test\\X_test.txt", sep="", header=FALSE)
y_test<-read.table(".\\test\\y_test.txt", sep="", header=FALSE)
subject_test<-read.table(".\\test\\subject_test.txt", sep="", header=FALSE)

test<-cbind(subject_test,y_test, X_test)

X_train<-read.table(".\\train\\X_train.txt", sep="", header=FALSE)
y_train<-read.table(".\\train\\y_train.txt", sep="", header=FALSE)
subject_train<-read.table(".\\train\\subject_train.txt", sep="", header=FALSE)

train<-cbind(subject_train,y_train, X_train)


#creates a total file
total<-rbind(test, train)

#some summary stats on the files
summary(test[1:2])
apply(test[1:2], 2, table, useNA = "always")
apply(test[1:5], 2, mean, na.rm = FALSE)

summary(train[1:2])




features<-read.table(".\\features.txt", sep="", header=FALSE)
tfeat<-t(features)
colnames(total)<-c("subject", "activity", tfeat[2,])
CN<-colnames(total)


##########################################################################
#2 Extracts only the measurements on the mean and standard deviation for each measurement. 

#keepMean<-grep(pattern="mean", features[,2], ignore.case = T)
#keepStd<-grep(pattern="std", features[,2], ignore.case = T)
#keepFeatures<-rbind(features[keepMean,], features[keepStd,])
#testSub<-test[keepFeatures[,2]]
keepMean<-grep(pattern="mean", CN, ignore.case = T)
keepStd<-grep(pattern="std", CN, ignore.case = T)
keepFeatures<-c(1, 2, keepMean, keepStd)
totalSub<-total[keepFeatures]
colnames(totalSub)

##########################################################################
#3 Uses descriptive activity names to name the activities in the data set

activity_labels<-read.table(".\\activity_labels.txt", sep="", header=FALSE)
total$activity.f <- factor(total$activity,labels=as.list(activity_labels)$V2)
table(total$activity.f)
class(total$activity.f)

##########################################################################
#4 Appropriately labels the data set with descriptive variable names. 

features$V3<-gsub("[[:punct:]]", "_", features$V2)
features$V3<-paste0(features$V3,"_Ind",features$V1)
tabFeatures<-table(features$V2)
tabFeatures
dupFeat<-tabFeatures>1
features$V3[dupFeat]
table(dupFeat)
table(features$V3[dupFeat]) #found 42 duplicates

tabFeatures<-table(features$V3)
head(features)


tfeat<-t(features)
colnames(total)<-c("subject", "activity", tfeat[3,], "activity_factor")
colnames(total)
table(total$activity_factor, total$activity) #QC on the activity var from Step3

##########################################################################
#5 Creates a second, independent tidy data set with the average of each variable for each activity and each subject.


totalMeans<-aggregate(x=total[3:563], by=list(total$subject, total$activity, total$activity_factor), FUN=mean)
head(totalMeans)

#alternate form of aggregating the data using melp & cast - this was my initial solution to Step 5, 
#but after reading the discussion board, aggregate() looked more sophisticated

#library(reshape2)
#totalMelt <- melt(total,id=c("subject", "activity","activity_factor"))
#head(totalMelt)
#totalMeltData <- dcast(totalMelt, subject + activity + activity_factor ~ variable, mean, na.rm=T)
#head(totalMeltData)

write.table(file=".\\data\\totalMeans.csv", x=totalMeans, row.name=FALSE, sep=",") 

##########################################################################

setwd("C:\\_Projects\\Coursera\\03 Getting and Cleaning Data")
#write.csv(file=".\\data\\totalMeltData.csv", x=totalMeltData)
#write.csv(file=".\\data\\totalMelt.csv", x=totalMelt)

write.csv(file=".\\data\\totalMeans.csv", x=totalMeans)
write.csv(file=".\\data\\total.csv", x=total)

#info for CodeBook & summary stats
SMRY<-apply(total[,1:563], 2, summary, useNA = "always")
tSMRY<-t(SMRY)

write.table(file=".\\data\\tSMRY.txt", x=tSMRY, sep=" ")
write.table(file=".\\data\\tSMRY.csv", x=tSMRY)
