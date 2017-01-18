Human Activity Recognition Using Smartphones Dataset, Version 1.0 - Tidy
------------------------------------------------------------------------

This data was derived from the experiments conducted by Anguita et al. \[1\], and the descriptions of the data and variables in this codebook were drawn from the documentation provided by the original authors on their website (<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>).

The experiment involved 30 volunteers who performed six activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. The 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. Data were labeled manually from video-recordings of the experiments.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. Additional data on the original dataset can be gathered on the previously mentioned website.

This readMe file will describe and explain a script which can be used to obtain a tidy version of the original dataset, containing only the average of the mean and standard deviation of each measurement, per subject, per activity. An additional description of the variables in this dataset can be found in the codebook in the repository.

Now, let us begin!

### Reading the files into R and Labeling the Variables

First of all, we must combine the two original 'train' and 'test' datasets. They contain the same variables, and were obtained from the same experiment. Make sure the working directory is set to the folder where the files were unzipped, then run the code below. This will read the files pertaining to the list of subject IDs, and activities.

``` r
subtest<-read.table("./test/subject_test.txt")
ytest<-read.csv("./test/y_test.txt")
subtrain<-read.csv("./train/subject_train.txt")
ytrain<-read.csv("./train/y_train.txt")
```

Then, we must read the files which contain the actual data. Before doing so, we will label them using the names provided by the authors. The original file only contains a long list of measurements per row, corresponding to each subject/activity. We must separate these measurements and label them accordingly, using the labels provided in the 'features.txt' file. The code below will do just that.

``` r
xtest<-read.table("./test/X_test.txt",sep="")
features<-read.table("features.txt",sep="")
features<-features[,2]
colnames(xtest)<-features
xtrain<-read.table("./train/X_train.txt",sep="")
colnames(xtrain)<-features
```

Binding the test and train data
-------------------------------

The files pertaining to the test and train data contain the same variables. All data were obtained from the same experiment, except participants were afterwards randomly assigned to one group or the other. As such, we can easily bind them back together, but we must first name the variables appropriately. The data collected during the experiment was named in the previous step (features). We must now name the 'subject' and 'activity' columns. The next bit of code will do that, and create a 'fulldata' dataset containing both train and test data, with the correct variable labels.

``` r
testdata<-cbind(subtest[1:2946,],xtest[1:2946,],ytest)
colnames(testdata)[c(1,563)]<-c("subject","activity")
traindata<-cbind(subtrain,xtrain[1:7351,],ytrain)
colnames(traindata)[c(1,563)]<-c("subject","activity")
fulldata<-rbind(testdata,traindata)
```

Extracting columns containing mean and standard deviation
---------------------------------------------------------

After binding all the data, we want to choose only the columns that have mean and standard deviation values for the original measurements. These columns are identified by the terms mean() and std() on the variable names.

``` r
fulldata1<-fulldata[,grep("subject|mean()|std()|activity",names(fulldata))]
fulldata2<-fulldata1[,-grep("meanFreq()",names(fulldata1))]
```

Replacing Activity Labels and Renaming Variable Columns
-------------------------------------------------------

Our data is almost ready! However, the 'activity' column only contains numbers and no labels. To make sure we can easily identify which activity the subject was carrying out when that particular data were collected, we are going to label that column with the activity names provided in the original dataset.

``` r
activities<-read.table("activity_labels.txt")
fulldata2$activity<-factor(fulldata2$activity,labels=activities$V2)
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
```

Calculating the mean of values in the table
-------------------------------------------

Our last step in creating this dataset will be calculating the average values for each activity and subject. Each subject performed a given activity a number of times. Each time, a mean and standard deviation were calculated for the variables collected. We have picked out the means and standard deviations in the previous step, but now we want to get the average of each of these values across the entire activity per subject. That is what the following bit of code will do.

``` r
finaldata<-aggregate(fulldata2[,2:67],by=list(Subject=fulldata2$subject, Activity=fulldata2$activity),FUN=mean,simplify=T,drop=T)
write.table(finaldata,file="tidydata.csv")
```

The Final Tidy Dataset
----------------------

The 'tidydata.csv' file meets the following requirements for tidy data:

1.  All columns have a descriptive name, referring to the value they contain.
2.  Each column contains a single variable.
3.  Each observation forms a row.
4.  All units in the table contain the same type of observational unit.
