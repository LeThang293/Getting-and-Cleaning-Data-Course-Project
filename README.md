# Getting-and-Cleaning-Data-Course-Project

This project is developed to transform input data set to a tidy one. In this repository you will find the following files:
-CodeBook.md: describe the data source, the variables, and summaries calculated, and any other relevant information.
-README.md: this file
-run_analysis.R: R script to perform the transformation 

The run_analysis.R has the following tasks:
-Merges the training and the test sets to create one data set.
-Extracts only the measurements on the mean and standard deviation for each measurement.
-Uses descriptive activity names to name the activities in the data set
-Appropriately labels the data set with descriptive variable names.
-From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

To run this script, please follow the following steps:
- Goto the root folder in your local (getwd()), create a sub folder "data" or run the command in R: if(!file.exists("./data")){dir.create("./data")}
- Download data source into your local from the URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
- Extract and place data source in the folder "data"
- Download "run_analysis.R" for this project and place under "data/UCI HAR Dataset"
- From R studio run the command:  source('~/data/UCI HAR Dataset/run_analysis.R')
- Check the output "tity_data.txt" in the folder "tidy"
