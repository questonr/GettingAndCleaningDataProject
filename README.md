# GettingAndCleaningDataProject

## Overview
This repository contains the R script and documentation files for the Getting and Cleaning Data course project. The script `run_analysis.R` is designed to clean and analyze a dataset collected from the accelerometers from the Samsung Galaxy S smartphone.

## Files in the Repository
- `run_analysis.R`: The script for performing the analysis as described in the project's definition.
- `CodeBook.md`: Describes the variables, the data, and the transformations or work performed to clean up the data.
- `README.md`: This file, explaining the project and the repository.

## Running the Script
To run the script, follow these steps:
1. Download and extract the dataset from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. Place the extracted folder in your working directory.
3. Run the script `run_analysis.R`. This can be done in R or RStudio by setting the working directory to where the script is located and using the command `source("run_analysis.R")`.

## How the Script Works
`run_analysis.R` performs the following steps:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
