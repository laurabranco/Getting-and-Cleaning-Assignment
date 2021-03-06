CodeBook for tidydata.csv
-------------------------

The dataset 'tidydata.csv' contains 180 rows and 68 columns. Each row contains the subject ID, the activity they were performing when the observation was made, and the observational data itsel. These data consist of the average value of the means and standard deviations of accelerometer and gyroscope signals collected during the activity.

The following description was obtained from the original authors of the experiment, and is available in a downloaded "readme.txt" file from the website <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>.

Variables starting with a lowercase t are time domain signals captured from the accelerometer and gyroscope 3-axial raw signals at a constant rate of 50 Hz. These were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. The acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The description of each variable is as follows:

subject Subject ID, ranging from 1 to 30.

activity The activity carried out by the subject when the data were collected. Values are: WALKING WALKING\_UPSTAIRS WALKING\_DOWNSTAIRS SITTING STANDING LAYING

tBodyAccMeanX Time domain signal. Average of mean values for body acceleration signals in the X direction.

tBodyAccMeanY Time domain signal. Average of mean values for body acceleration signals in the Y direction.

tBodyAccMeanZ Time domain signal. Average of mean values for body acceleration signals in the Z direction.

tBodyAccStdX Time domain signal. Average of standard deviation values for body acceleration signals in the X direction.

tBodyAccStdY Time domain signal. Average of standard deviation values for body acceleration signals in the Y direction.

tBodyAccStdZ Time domain signal. Average of standard deviation values for body acceleration signals in the Z direction.

tGravityAccMeanX Time domain signal. Average of mean values for gravity acceleration signals in the X direction.

tGravityAccMeanY Time domain signal. Average of mean values for gravity acceleration signals in the Y direction.

tGravityAccMeanZ Time domain signal. Average of mean values for gravity acceleration signals in the Z direction.

tGravityAccStdX Time domain signal. Average of standard deviation values for gravity acceleration signals in the X direction.

tGravityAccStdY Time domain signal. Average of standard deviation values for gravity acceleration signals in the Y direction.

tGravityAccStdZ Time domain signal. Average of standard deviation values for gravity acceleration signals in the Z direction.

tBodyAccJerkMeanX Time domain signal. Average of mean values for Jerk signals calculated from body linear acceleration in the X direction.

tBodyAccJerkMeanY Time domain signal. Average of mean values for Jerk signals calculated from body linear acceleration in the Y direction.

tBodyAccJerkMeanZ Time domain signal. Average of mean values for Jerk signals calculated from body linear acceleration in the Z direction.

tBodyAccJerkStdX Time domain signal. Average of standard deviation values for Jerk signals calculated from body linear acceleration in the X direction.

tBodyAccJerkStdY Time domain signal. Average of standard deviation values for Jerk signals calculated from body linear acceleration in the Y direction.

tBodyAccJerkStdZ Time domain signal. Average of standard deviation values for Jerk signals calculated from body linear acceleration in the Z direction.

tBodyGyroMeanX Time domain signal. Average of mean values for the angular velocity vector measured by the gyroscope in the X direction. The units are radians/second.

tBodyGyroMeanY Time domain signal. Average of mean values for the angular velocity vector measured by the gyroscope in the Y direction. The units are radians/second.

tBodyGyroMeanZ Time domain signal. Average of mean values for the angular velocity vector measured by the gyroscope in the Z direction. The units are radians/second.

tBodyGyroStdX Time domain signal. Average of standard deviation values for the angular velocity vector measured by the gyroscope in the X direction. The units are radians/second.

tBodyGyroStdY Time domain signal. Average of standard deviation values for the angular velocity vector measured by the gyroscope in the Y direction. The units are radians/second.

tBodyGyroStdZ Time domain signal. Average of standard deviation values for the angular velocity vector measured by the gyroscope in the Z direction. The units are radians/second.

tBodyGyroJerkMeanX Time domain signal. Average of mean values for Jerk signals calculated from the angular velocity vector measured by the gyroscope in the X direction.

tBodyGyroJerkMeanY Time domain signal. Average of mean values for Jerk signals calculated from the angular velocity vector measured by the gyroscope in the Y direction.

tBodyGyroJerkMeanZ Time domain signal. Average of mean values for Jerk signals calculated from the angular velocity vector measured by the gyroscope in the Z direction.

tBodyGyroJerkStdX Time domain signal. Average of standard deviation values for Jerk signals calculated from the angular velocity vector measured by the gyroscope in the X direction.

tBodyGyroJerkStdY Time domain signal. Average of standard deviation values for Jerk signals calculated from the angular velocity vector measured by the gyroscope in the Y direction.

tBodyGyroJerkStdZ Time domain signal. Average of standard deviation values for Jerk signals calculated from the angular velocity vector measured by the gyroscope in the Z direction.

tBodyAccMagMean Time domain signal. Average of mean values for the magnitude of body acceleration signals.

tBodyAccMagStd Time domain signal. Average of standard deviation values for the magnitude of body acceleration signals.

tGravityAccMagMean Time domain signal. Average of mean values for the magnitude of gravity acceleration signals.

tGravityAccMagStd Time domain signal. Average of standard deviation values for the magnitude of gravity acceleration signals.

tBodyAccJerkMagMean Time domain signal. Average of mean values for the magnitude of the Jerk signals calculated from body linear acceleration.

tBodyAccJerkMagStd Time domain signals. Average of standard deviation values for the magnitude of the Jerk signals calculated from body linear acceleration.

tBodyGyroMagMean Time domain signal. Average of mean values for the magnitude of the angular velocity vector measured by the gyroscope.

tBodyGyroMagStd Time domain signal. Average of standard deviation values for the magnitude of the angular velocity vector measured by the gyroscope.

tBodyGyroJerkMagMean Time domain signal. Average of mean values for the magnitude of the Jerk signals calculated from the angular velocity vector measured by the gyroscope.

tBodyGyroJerkMagStd Time domain signal. Average of standard deviation values for the magnitude of the Jerk signals calculated from the angular velocity vector measured by the gyroscope.

fBodyAccMeanX Frequency domain signals. Average of Fast Fourier Transform (FFT) applied to the mean values for body acceleration signals in the X direction.

fBodyAccMeanY Frequency domain signals. Average of Fast Fourier Transform (FFT) applied to the mean values for body acceleration signals in the Y direction.

fBodyAccMeanZ Frequency domain signals. Average of Fast Fourier Transform (FFT) applied to the mean values for body acceleration signals in the Z direction.

fBodyAccStdX Frequency domain signals. Average of Fast Fourier Transform (FFT) applied to the standard deviation values of body acceleration signals in the X direction.

fBodyAccStdY Frequency domain signals. Average of Fast Fourier Transform (FFT) applied to the standard deviation values of body acceleration signals in the Y direction.

fBodyAccStdZ Frequency domain signals. Average of Fast Fourier Transform (FFT) applied to the standard deviation values of body acceleration signals in the Z direction.

fBodyAccJerkMeanX Frequency domain signals. Average of Fast Fourier Transform (FFT) applied to the mean values for Jerk signals calculated from body linear acceleration in the X direction.

fBodyAccJerkMeanY Frequency domain signals. Average of Fast Fourier Transform (FFT) applied to the mean values for Jerk signals calculated from body linear acceleration in the Y direction.

fBodyAccJerkMeanZ Frequency domain signals. Average of Fast Fourier Transform (FFT) applied to the mean values for Jerk signals calculated from body linear acceleration in the Z direction.

fBodyAccJerkStdX Frequency domain signals. Average of Fast Fourier Transform (FFT) applied to the standard deviation values for Jerk signals calculated from body linear acceleration in the X direction.

fBodyAccJerkStdY Frequency domain signals. Average of Fast Fourier Transform (FFT) applied to the standard deviation values for Jerk signals calculated from body linear acceleration in the Y direction.

fBodyAccJerkStdZ Frequency domain signals. Average of Fast Fourier Transform (FFT) applied to the standard deviation values for Jerk signals calculated from body linear acceleration in the Z direction.

fBodyGyroMeanX Frequency domain signals. Average of Fast Fourier Transform (FFT) applied to the mean values for the angular velocity vector measured by the gyroscope in the X direction.

fBodyGyroMeanY Frequency domain signals. Average of Fast Fourier Transform (FFT) applied to the mean values for the angular velocity vector measured by the gyroscope in the Y direction.

fBodyGyroMeanZ Frequency domain signals. Average of Fast Fourier Transform (FFT) applied to the mean values for the angular velocity vector measured by the gyroscope in the Z direction.

fBodyGyroStdX Frequency domain signals. Average of Fast Fourier Transform (FFT) applied to the standard deviation values for the angular velocity vector measured by the gyroscope in the X direction.

fBodyGyroStdY Frequency domain signals. Average of Fast Fourier Transform (FFT) applied to the standard deviation values for the angular velocity vector measured by the gyroscope in the Y direction.

fBodyGyroStdZ Frequency domain signals. Average of Fast Fourier Transform (FFT) applied to the standard deviation values for the angular velocity vector measured by the gyroscope in the Z direction.

fBodyAccMagMean Frequency domain signals. Average of Fast Fourier Transform (FFT) applied to the mean values for the magnitude of body acceleration signals.

fBodyAccMagStd Frequency domain signals. Average of Fast Fourier Transform (FFT) applied to the standard deviation values of the magnitude of body acceleration signals.

fBodyAccJerkMagMean Frequency domain signals. Average of Fast Fourier Transform (FFT) applied to the mean values for the magnitude of the Jerk signals calculated from body linear acceleration.

fBodyAccJerkMagStd Frequency domain signals. Average of Fast Fourier Transform (FFT) applied to the standard deviation values for the magnitude of the Jerk signals calculated from body linear acceleration.

fBodyGyroMagMean Frequency domain signals. Average of Fast Fourier Transform (FFT) applied to the mean values for the magnitude of the angular velocity vector measured by the gyroscope.

fBodyGyroMagStd Frequency domain signals. Average of Fast Fourier Transform (FFT) applied to the standard deviation values for the magnitude of the angular velocity vector measured by the gyroscope.

fBodyGyroJerkMagMean Frequency domain signals. Average of Fast Fourier Transform (FFT) applied to the mean values for the magnitude of the Jerk signals calculated from the angular velocity vector measured by the gyroscope.

fBodyGyroJerkMagStd Frequency domain signals. Average of Fast Fourier Transform (FFT) applied to the standard deviation values for the magnitude of the Jerk signals calculated from the angular velocity vector measured by the gyroscope.
