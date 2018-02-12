##################
# run_analysis.R #
##################

# source("run_analysis.R")

## 1 Merge the training and the test sets to create one data set.

### First: Read the text files 
  ### You need to have all the .txt files saved in your working directory

X_test <- read.table("X_test.txt")
X_train <- read.table("X_train.txt")

y_test <- read.table("y_test.txt")
y_train <- read.table("y_train.txt")

subject_test <- read.table("subject_test.txt")
subject_train <- read.table("subject_train.txt")

### Merge the variables
X_total <- rbind(X_test,X_train)
y_total <- rbind(y_test,y_train)
subject_total <- rbind(subject_test,subject_train)

## 2 Extracts only the measurements on the mean and standard deviation for each measurement.

features <- read.table("features.txt")
grep("mean()", features[,2])
grep("std()", features[,2])
measures<-sort(c(grep("mean()", features[,2]),grep("std()", features[,2])), decreasing=FALSE)

X_extract<-X_total[ , measures]

## 3 Uses descriptive activity names to name the activities in the data set

activity_labels <- read.table("activity_labels.txt")
y <- factor(y_total$V1, levels = c(1:6), labels = activity_labels$V2)

yX <- cbind(y,X_extract)

## 4 Appropriately labels the data set with descriptive variable names.

colnames(yX)<-c("activity",as.character(features[measures,2]))

## 5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

syX <- cbind(subject_total,yX)
colnames(syX)[1]<- "subject"

tidyDS <- aggregate(syX[3:81], by=list(syX$subject,syX$activity),FUN=mean, na.rm=TRUE)

## tidyDS[1:35,1:10] # To see part of the data frame we just created

write.table(tidyDS,"tidyDS.txt", row.names=FALSE)
