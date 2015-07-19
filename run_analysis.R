run_analysis <- function() {
	# Load activity labels, their names, and all given variables into R
	activity_names <- read.table("activity_labels.txt", header=FALSE)
	names(activity_names) <- c("Index", "Activity")
	var_names <- read.table("features.txt", header=FALSE)

	# Load training data into R
	train_data <- read.table("X_train.txt", header=FALSE)
	train_activities <- read.table("y_train.txt", header=FALSE)
	train_subjects <- read.table("subject_train.txt", header=FALSE)
	train_combine <- cbind(train_activities, train_subjects, train_data)
	names(train_combine) <- c("act_index", "subj_index", t(as.data.frame(var_names[,2])))
	train_merge <- merge(activity_names, train_combine, by.x="Index", by.y="act_index")
	train_merge <- subset(train_merge, select=-Index)

	# Load testing data into R
	test_data <- read.table("X_test.txt", header=FALSE)
	test_activities <- read.table("y_test.txt", header=FALSE)
	test_subjects <- read.table("subject_test.txt", header=FALSE)
	test_combine <- cbind(test_activities, test_subjects, test_data)
	names(test_combine) <- c("act_index", "subj_index", t(as.data.frame(var_names[,2])))
	test_merge <- merge(activity_names, test_combine, by.x="Index", by.y="act_index")
	test_merge <- subset(test_merge, select=-Index)

	# Combine training and testing data together
	merged_data <- rbind(train_merge, test_merge)
	sorted_merged_data <- merged_data[order(merged_data$Activity, merged_data$subj_index), ]
	sorted_merged_data_mean <- sorted_merged_data[, grep("mean[^F]", names(sorted_merged_data))]
	sorted_merged_data_std <- sorted_merged_data[, grep("std", names(sorted_merged_data))]
	
	# Reduce dataset to activity, subject, mean(), and std()
	combined_data <- cbind(sorted_merged_data$Activity, sorted_merged_data$subj_index, sorted_merged_data_mean, sorted_merged_data_std)
	names(combined_data)[1] <- "Activity"
	names(combined_data)[2] <- "Subject"

	# Compute aggregated means based on activity and subject index	
	final_data <- aggregate(combined_data[, 3:68], list(combined_data$Activity, combined_data$Subject), mean)
	names(final_data)[1] <- "Activity"
	names(final_data)[2] <- "Subject"
	write.table(final_data, "aggregated_means.txt", row.name=FALSE)
}