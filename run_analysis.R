# Load necessary packages
# install.packages("dplyr") # Uncomment if 'dplyr' is not installed
library(dplyr)

# Set the data directory
dataDir <- "UCI HAR Dataset"

# Read data
X_train <- read.table(file.path(dataDir, "train", "X_train.txt"))
y_train <- read.table(file.path(dataDir, "train", "y_train.txt"))
subject_train <- read.table(file.path(dataDir, "train", "subject_train.txt"))

X_test <- read.table(file.path(dataDir, "test", "X_test.txt"))
y_test <- read.table(file.path(dataDir, "test", "y_test.txt"))
subject_test <- read.table(file.path(dataDir, "test", "subject_test.txt"))

# Merge data sets
X_data <- rbind(X_train, X_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)

# Combine subject, activity, and measurements data
merged_data <- cbind(subject_data, y_data, X_data)

# Read features and activity labels
features <- read.table(file.path(dataDir, "features.txt"))
activities <- read.table(file.path(dataDir, "activity_labels.txt"))

# Extract measurements on the mean and standard deviation
mean_std_indices <- grep("mean\\(\\)|std\\(\\)", features$V2)
X_selected <- merged_data[, mean_std_indices]

# Use descriptive activity names
y_data[, 1] <- activities[y_data[, 1], 2]

# Appropriately label the data set with descriptive variable names
names(X_selected) <- features[mean_std_indices, 2]
names(y_data) <- "Activity"
names(subject_data) <- "Subject"

final_data <- cbind(subject_data, y_data, X_selected)

# Create a second, independent tidy data set with the average of each variable for each activity and each subject
tidy_data <- final_data %>%
  group_by(Subject, Activity) %>%
  summarise_all(mean)

# Write the tidy data set to a file
write.table(tidy_data, "tidy_data.txt", row.names = FALSE)
