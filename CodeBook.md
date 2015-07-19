# Variables
The following variables are initially used for the analysis:

tBodyAcc-XYZ <br />
tGravityAcc-XYZ <br />
tBodyAccJerk-XYZ <br />
tBodyGyro-XYZ <br />
tBodyGyroJerk-XYZ <br />
tBodyAccMag <br />
tGravityAccMag <br />
tBodyAccJerkMag <br />
tBodyGyroMag <br />
tBodyGyroJerkMag <br />
fBodyAcc-XYZ <br />
fBodyAccJerk-XYZ <br />
fBodyGyro-XYZ <br />
fBodyAccMag <br />
fBodyAccJerkMag <br />
fBodyGyroMag <br />
fBodyGyroJerkMag <br />
gravityMean <br />
tBodyAccMean <br />
tBodyAccJerkMean <br />
tBodyGyroMean <br />
tBodyGyroJerkMean <br />

Each of the variables shown above has values for the following functions:

mean(): Mean value <br />
std(): Standard deviation <br />
mad(): Median absolute deviation <br />
max(): Largest value in array <br />
min(): Smallest value in array <br />
sma(): Signal magnitude area <br />
energy(): Energy measure. Sum of the squares divided by the number of values. <br />
iqr(): Interquartile range <br />
entropy(): Signal entropy <br />
arCoeff(): Autorregresion coefficients with Burg order equal to 4 <br />
correlation(): correlation coefficient between two signals <br />
maxInds(): index of the frequency component with largest magnitude <br />
meanFreq(): Weighted average of the frequency components to obtain a mean frequency <br />
skewness(): skewness of the frequency domain signal <br />
kurtosis(): kurtosis of the frequency domain signal <br />
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window. <br />
angle(): Angle between to vectors. <br />

# Data
The cleaned dataset is based on the following given text files:  

'features.txt': List of names of all variables <br />
'activity_labels.txt': Activity numerical labels associated with their activity names <br />
'X_train.txt': Training dataset <br />
'y_train.txt': Activity numerical labels for the training dataset <br />
'subject_train.txt': Subject ID numbers for the training dataset <br />
'X_test.txt': Testing dataset <br />
'y_test.txt': Activity numerical labels for the testing dataset <br />
'subject_test.txt': Subject ID numbers for the testing dataset <br />

Note that there are six different activities, which are:

WALKING <br />
WALKING_UPSTAIRS <br />
WALKING_DOWNSTAIRS <br />
SITTING <br />
STANDING <br />
LAYING <br />

Also, there are a total of 30 different subjects, whose indices range from 1 to 30.

# Transformations

After merging the training and testing data together into one large dataset, the dataset is sorted based on
the names of the activities and then by the numerical values of subject ID's.  Then, the dataset is reduced
column-wise to the mean and standard deviation values of all variables.  Afterwards, the mean of each of all 
remaining variables (mean and standard deviation) is retrieved by aggregating the dataset by the activity and
the subject ID numbers.
