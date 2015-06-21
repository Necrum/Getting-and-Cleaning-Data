library(dplyr)

# gets data
getData <- function() {
    # reads the training data
    subject_train <- read.csv(file.path("train", "subject_train.txt"),
                              header=FALSE, sep="")
    y_train <- read.csv(file.path("train", "y_train.txt"),
                        header=FALSE, sep="")
    x_train <- read.csv(file.path("train", "X_train.txt"),
                        header=FALSE, sep="")
    # 
    data_train <- data.frame(subject_train, y_train, x_train)

    # reads the test data
    subject_test <- read.csv(file.path("test", "subject_test.txt"),
                             header=FALSE, sep="")
    y_test <- read.csv(file.path("test", "y_test.txt"),
                       header=FALSE, sep="")
    x_test <- read.csv(file.path("test", "X_test.txt"),
                       header=FALSE, sep="")
    data_test <- data.frame(subject_test, y_test, x_test)

    # merges the training and the test data sets
    data <- rbind(data_train, data_test)

    # gets and sets column names
    tmp <- read.table("features.txt", header=FALSE, sep="")
    features <- as.character(tmp[,2])
    colnames(data) <- c("subject", "activity", features)

    return(data)
}

# 1. Merges the training and the test sets to create one data set.
data <- getData()

# 2. Extracts only the measurements on the mean and standard deviation
# for each measurement. 
# Uses grepl to filter column names: subject OR activity OR -mean( OR -std(
data <- data[,grepl('(subject|activity|-(mean|std)[(])', colnames(data))]

# 3. Uses descriptive activity names to name the activities in the data set
activity_labels <- read.csv("activity_labels.txt", header=FALSE, sep="")
data$activity <- as.character(activity_labels[
                              match(data$activity, activity_labels$V1), 'V2'])

# 4. Appropriately labels the data set with descriptive variable names. 
colnames(data) <- gsub("[()]", "", colnames(data))
colnames(data) <- gsub("BodyBody", "Body", colnames(data))

# 5. From the data set in step 4, creates a second, independent tidy data set
# with the average of each variable for each activity and each subject.
cleaned_data <- data %>% group_by(subject, activity) %>%
                summarise_each(funs(mean))
# Writes final data to file
write.table(cleaned_data, file="cleaned_data.txt", row.name=FALSE)

