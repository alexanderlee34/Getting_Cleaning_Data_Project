# Variables
The following variables are initially used for the analysis:

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
gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

Each of the variables shown above has values for the following functions:

mean(): Mean value

std(): Standard deviation

mad(): Median absolute deviation 

max(): Largest value in array

min(): Smallest value in array

sma(): Signal magnitude area

energy(): Energy measure. Sum of the squares divided by the number of values. 

iqr(): Interquartile range 

entropy(): Signal entropy

arCoeff(): Autorregresion coefficients with Burg order equal to 4

correlation(): correlation coefficient between two signals

maxInds(): index of the frequency component with largest magnitude

meanFreq(): Weighted average of the frequency components to obtain a mean frequency

skewness(): skewness of the frequency domain signal 

kurtosis(): kurtosis of the frequency domain signal 

bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.

angle(): Angle between to vectors.

# Data
The cleaned dataset is based on the following given text files:  

'features.txt': List of names of all variables

'activity_labels.txt': Activity numerical labels associated with their activity names

'X_train.txt': Training dataset

'y_train.txt': Activity numerical labels for the training dataset

'subject_train.txt': Subject ID numbers for the training dataset

'X_test.txt': Testing dataset

'y_test.txt': Activity numerical labels for the testing dataset

'subject_test.txt': Subject ID numbers for the testing dataset

Note that there are six different activities, which are:

WALKING

WALKING_UPSTAIRS

WALKING_DOWNSTAIRS

SITTING

STANDING

LAYING

Also, there are a total of 30 different subjects, whose indices range from 1 to 30.

# Transformations

After merging the training and testing data together into one large dataset, the dataset is sorted based on
the names of the activities and then by the numerical values of subject ID's.  Then, the dataset is reduced
column-wise to the mean and standard deviation values of all variables.  Afterwards, the mean of each of all 
remaining variables (mean and standard deviation) is retrieved by aggregating the dataset by the activity and
the subject ID numbers.
