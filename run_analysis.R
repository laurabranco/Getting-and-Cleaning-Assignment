###First, load the packages required for the analysis.
library(dplyr)
library(tibble)
library(tidyr)

###Then, read the files and create variables accordingly. The working directory
###is set to the folder in which the files were unzipped.
subtest<-read.table("./test/subject_test.txt")
ytest<-read.csv("./test/y_test.txt")
subtrain<-read.csv("./train/subject_train.txt")
ytrain<-read.csv("./train/y_train.txt")

###The variables in the "X_train" and "X_test" files must be labeled prior to
###reading the file.
xtest<-read.table("./test/X_test.txt",sep="")
features<-read.table("features.txt",sep="")
features<-features[,2]
colnames(xtest)<-features
xtrain<-read.table("./train/X_train.txt",sep="")
colnames(xtrain)<-features

###We then bind the files pertaining to test and train data, and rename the first 
###and last column, which identify the subject and activity for which the data were
###collected. This ensures the labels are informative and uniform, prior to
###merging them both into a single dataframe.

testdata<-cbind(subtest[1:2946,],xtest[1:2946,],ytest)
colnames(testdata)[c(1,563)]<-c("subject","activity")
traindata<-cbind(subtrain,xtrain[1:7351,],ytrain)
colnames(traindata)[c(1,563)]<-c("subject","activity")
fulldata<-rbind(testdata,traindata)

###Now, select only the columns containing mean and standard
###deviation values.

fulldata1<-fulldata[,grep("subject|mean()|std()|activity",names(fulldata))]
fulldata2<-fulldata1[,-grep("meanFreq()",names(fulldata1))]
colnames(fulldata2)[c(2:67)]<- c("tBodyAccMeanX",
                                       "tBodyAccMeanY",
                                       "tBodyAccMeanZ",
                                       "tBodyAccStdX",
                                       "tBodyAccStdY",
                                       "tBodyAccStdZ",
                                       "tGravityAccMeanX",
                                       "tGravityAccMeanY",
                                       "tGravityAccMeanZ",
                                       "tGravityAccStdX",
                                       "tGravityAccStdY",
                                       "tGravityAccStdZ",
                                       "tBodyAccJerkMeanX",
                                       "tBodyAccJerkMeanY",
                                       "tBodyAccJerkMeanZ",
                                       "tBodyAccJerkStdX",
                                       "tBodyAccJerkStdY",
                                       "tBodyAccJerkStdZ",
                                       "tBodyGyroMeanX",
                                       "tBodyGyroMeanY",
                                       "tBodyGyroMeanZ",
                                       "tBodyGyroStdX",
                                       "tBodyGyroStdY",
                                       "tBodyGyroStdZ",
                                       "tBodyGyroJerkMeanX",
                                       "tBodyGyroJerkMeanY",
                                       "tBodyGyroJerkMeanZ",
                                       "tBodyGyroJerkStdX",
                                       "tBodyGyroJerkStdY",
                                       "tBodyGyroJerkStdZ",
                                       "tBodyAccMagMean",
                                       "tBodyAccMagStd",
                                       "tGravityAccMagMean",
                                       "tGravityAccMagStd",
                                       "tBodyAccJerkMagMean",
                                       "tBodyAccJerkMagStd",
                                       "tBodyGyroMagMean",
                                       "tBodyGyroMagStd",
                                       "tBodyGyroJerkMagMean",
                                       "tBodyGyroJerkMagStd",
                                       "fBodyAccMeanX",
                                       "fBodyAccMeanY",
                                       "fBodyAccMeanZ",
                                       "fBodyAccStdX",
                                       "fBodyAccStdY",
                                       "fBodyAccStdZ",
                                       "fBodyAccJerkMeanX",
                                       "fBodyAccJerkMeanY",
                                       "fBodyAccJerkMeanZ",
                                       "fBodyAccJerkStdX",
                                       "fBodyAccJerkStdY",
                                       "fBodyAccJerkStdZ",
                                       "fBodyGyroMeanX",
                                       "fBodyGyroMeanY",
                                       "fBodyGyroMeanZ",
                                       "fBodyGyroStdX",
                                       "fBodyGyroStdY",
                                       "fBodyGyroStdZ",
                                       "fBodyAccMagMean",
                                       "fBodyAccMagStd",
                                       "fBodyAccJerkMagMean",
                                       "fBodyAccJerkMagStd",
                                       "fBodyGyroMagMean",
                                       "fBodyGyroMagStd",
                                       "fBodyGyroJerkMagMean",
                                       "fBodyGyroJerkMagStd")

###Replacing numbers in the "activity" column with the names
###of the activities cited.

activities<-read.table("activity_labels.txt")
fulldata2$activity<-factor(fulldata2$activity,labels=activities$V2)

###Lastly, retrieving a table which contains only the
###average of means and standard deviations of every measure per subject,
###per activity.

finaldata<-aggregate(fulldata2[,2:67],by=list(Subject=fulldata2$subject, Activity=fulldata2$activity),FUN=mean,simplify=T,drop=T)
write.table(finaldata,file="tidydata.csv")

