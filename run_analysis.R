
#merge training and test data sets 
X_Data <- rbind(x_train, x_test)
Y_Data <- rbind(y_train, y_test)
Subject_Data <- rbind(subject_train, subject_test)
Merged_Data <- cbind(Subject_Data, Y_Data, X_Data)

#get the mean and std for each measurement 
Clean_Data <- select(Merged_Data, subject, ID, contains("mean"), contains("std"))

#label activity data
Clean_Data$ID <- activity_labels[Clean_Data$ID, 2]
names(Clean_Data)[2] = "Activity"

#label and describe variable names 
names(Clean_Data) <- gsub("Acc", "Accelerometer", names(Clean_Data))

names(Clean_Data) <- gsub("Gyro", "Gyroscope", names(Clean_Data))

names(Clean_Data) <- gsub("BodyBody", "Body", names(Clean_Data))

names(Clean_Data) <- gsub("Mag", "Magnitude", names(Clean_Data))
      
names(Clean_Data) <- gsub("^t", "Time", names(Clean_Data))

names(Clean_Data) <- gsub("^f", "Frequency", names(Clean_Data))

names(Clean_Data) <- gsub("tBody", "TimeBody", names(Clean_Data))

names(Clean_Data) <- gsub("-mean()", "Mean", names(Clean_Data), ignore.case = TRUE)

names(TidyData)<-gsub("-std()", "STD", names(TidyData), ignore.case = TRUE)

names(Clean_Data) <- gsub("gravity", "Gravity", names(Clean_Data))

names(Clean_Data) <- gsub("angle", "Angle", names(Clean_Data))

#get the average for each variable for each activity and each subject.
Tidy_Data_Set <- Clean_Data %>%
       group_by(subject, Activity) %>%
       summarise_all(funs(mean))

#export the file
write.table(Processed_Data, "TidyDataSet.txt", row.name=FALSE)

#final tidy data set 
Tidy_Data_Set
