#Merges the training and the test sets to create one data set.
#Extracts only the measurements on the mean and standard deviation for each measurement.
#Uses descriptive activity names to name the activities in the data set
#Appropriately labels the data set with descriptive variable names.
#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


#load library
library("plyr")

#get labels
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")[,2]

#get list of measurements on the mean and standard deviation for each measurement.
features <- read.table("./data/UCI HAR Dataset/features.txt")[,2]
list_measure <- grepl("mean|std", features)

#read test/train file to variables
X_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
X_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")

#extract test data set with the mean and standard deviation
names(X_test) = features
X_test = X_test[,list_measure]
#add activity labels
y_test[,2] = activity_labels[y_test[,1]]
names(y_test) = c("Activity_ID", "Activity_Label")

subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
names(subject_test) = "Subject"

# Make test sets: Join subject_test with y_test and X_test 82 columns
test_set <- cbind(subject_test, y_test, X_test)

# Extract train data set with the mean and standard deviation
names(X_train) = features
X_train = X_train[,list_measure]

# add activity data
y_train[,2] = activity_labels[y_train[,1]]
names(y_train) = c("Activity_ID", "Activity_Label")

subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
names(subject_train) = "Subject"

# Make train sets: Join subject_test with y_train and X_train 82 columns
train_set <- cbind(subject_train, y_train, X_train)

# Merge test and train set
merge_set = rbind(test_set, train_set)

names(merge_set) <- gsub("Acc", "Accelerator", names(merge_set))
names(merge_set) <- gsub("Mag", "Magnitude", names(merge_set))
names(merge_set) <- gsub("Gyro", "Gyroscope", names(merge_set))
names(merge_set) <- gsub("^t", "time", names(merge_set))
names(merge_set) <- gsub("^f", "frequency", names(merge_set))

# Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
merge_avg_by_act_sub = ddply(merge_set, c("Subject","Activity_ID","Activity_Label"), numcolwise(mean))

write.table(merge_avg_by_act_sub, file = "./data/tidy_data.txt")
