# Data Cleaning Procedures

## Loading Data into R
The R script "run_analysis.R" first loads files of activity names and variable names into R.  It also loads the training dataset, its activity class labels, and its subject ID numbers into R, along with the testing dataset, its activity class labels, and its subject ID numbers.  For both the training and testing data, the activity class labels, subject ID numbers, and the rest of the data are combined column-wise in that order into a single dataset.  Then, the variable names are inserted as column names, along with "act_index", "subj_index" as the first two column names, for both training and testing datasets.  Afterwards, the activity names are merged with the training / testing datasets by their activity class labels, whose column names are "Index" and "act_index" respectively.  After retrieving the activity names into the datasets, the activity class labels are removed.

## Combining, Sorting, and Truncating Data
Next, the training and testing datasets are combined row-wise into a single large dataset.  The dataset is sorted based on the activity names and then by the subject ID numbers.  Then, it is truncated so it contains only the mean and standard deviation values of all variables as its columns.  

## Aggregating Data and Obtaining Mean Values
Afterwards, the mean values of the remaining columns are obtained after using the aggregate() function to aggregate the dataset by the activity names and subject ID numbers.  That way, each row represents the mean values for a unique combination of the activity name and subject ID number for all columns.  At the end, the cleaned dataset is created as a text file "aggregated_means.txt" in R's working directory.
