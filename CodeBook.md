# CodeBook for Getting and Cleaning Data Project Coursera

## Original Data Source
- Full description and data: [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Files in the Original Dataset
The original dataset includes the following key files:
- `features.txt`: Names of the 561 features.
- `activity_labels.txt`: Names and IDs for each of the 6 activities.
- `train/X_train.txt`: Training set.
- `train/y_train.txt`: Training labels.
- `test/X_test.txt`: Test set.
- `test/y_test.txt`: Test labels.

## Transformations and Cleaning Process
The following steps were applied to clean and prepare the data:
1. Merged the training and test sets to create one comprehensive dataset.
2. Extracted only the measurements related to mean and standard deviation.
3. Replaced activity IDs with descriptive activity names.
4. Labeled the dataset with descriptive variable names for clarity.
5. Created a tidy dataset with the average of each variable for each activity and each subject.

## Variables in the Tidy Dataset
### Identifier Variables
- `Subject`: Identifier of the test subject (integer).
- `Activity`: Type of activity performed (factor).

### Measurement Variables
The tidy dataset includes several measurements related to body movement and acceleration, each following a naming convention:
- Features are normalized and bounded within [-1,1].
- Time-domain signals are prefixed with 't', and frequency-domain signals are prefixed with 'f'.
- Body acceleration signals are denoted by 'BodyAcc', and gravity acceleration signals by 'GravityAcc'.
- Gyroscope measurements are indicated by 'Gyro'.
- The suffix '-mean()' denotes mean measurements, and '-std()' denotes standard deviation.
- The suffix '-X', '-Y', or '-Z' indicates the axis of the measurement.

Examples include:
- `tBodyAcc-mean()-X`
- `tBodyAcc-std()-Y`
- `fBodyGyro-mean()-Z`

## Activity Labels
Activities are labeled as follows:
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

