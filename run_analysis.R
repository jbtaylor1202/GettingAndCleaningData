#Ensure that zipped file had been downloaded and extracted to your working directory 
#before running (do not set working directory to the extracted folder!). The extracted folder should be named `UCI HAR Dataset'
#if not already done so.


#Ensure that 'dplyr' package has been installed before running this script.
#This package can be obtained by running the command: install.packages('dplyr')
#Also ensure that 'reshape2' package has been installed before running this script.
#This package can be obtained by running the command: install.packages('reshape2')

library('dplyr')
library('reshape2')

#Get working directory path
directory<-getwd()

#Import all required data
activity_labels<-read.table(paste(directory,"/","UCI HAR Dataset/activity_labels.txt",sep = ""))
features <- read.table(paste(directory,"/","UCI HAR Dataset/features.txt",sep = ""))
subject_test <- read.table(paste(directory,"/","UCI HAR Dataset/test/subject_test.txt",sep = ""))
X_test <- read.table(paste(directory,"/","UCI HAR Dataset/test/X_test.txt",sep = ""))
y_test <- read.table(paste(directory,"/","UCI HAR Dataset/test/y_test.txt",sep = ""))
subject_train <- read.table(paste(directory,"/","UCI HAR Dataset/train/subject_train.txt",sep = ""))
X_train <- read.table(paste(directory,"/","UCI HAR Dataset/train/X_train.txt",sep = ""))
y_train <- read.table(paste(directory,"/","UCI HAR Dataset/train/y_train.txt",sep = ""))

#STEP 1 - Merges the training and the test sets to create one data set.
MergeTrain<-cbind(X_train,subject_train, y_train)
MergeTest<-cbind(X_test,subject_test, y_test)
TrainAndTest<-rbind(MergeTrain,MergeTest)

#STEP 4 - Appropriately labels the data set with descriptive variable names.
#This was compelted before step 2 and 3 to allow the variables containing mean and standard deviation to be selected
features2<-as.character(features[,2])
#ensure there are no duplicate names:
features3<-make.unique(features2)
colnames(TrainAndTest)<-features3
#Add names to the remaining columns
colnames(TrainAndTest)[562]<-'subject'
colnames(TrainAndTest)[563]<-"activity"

#STEP 2 - Extracts only the measurements on the mean and standard deviation for each measurement.
meanCols<-grep('mean', names(TrainAndTest))
sdCols<-grep('std', names(TrainAndTest))
selectedCols<-TrainAndTest[,c(meanCols,sdCols,562,563)]

#STEP 3 - Uses descriptive activity names to name the activities in the data set
selectedCols$activity[selectedCols$activity == 1] <- "Walking"
selectedCols$activity[selectedCols$activity == 2] <- "Walking Upstairs"
selectedCols$activity[selectedCols$activity == 3] <- "Walking Downstairs"
selectedCols$activity[selectedCols$activity == 4] <- "Sitting"
selectedCols$activity[selectedCols$activity == 5] <- "Standing"
selectedCols$activity[selectedCols$activity == 6] <- "Laying"

#STEP 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
melt1<-melt(selectedCols,id.vars = c('subject','activity'))
tidy1<- melt1 %>% group_by(subject,activity,variable) %>% summarise_each(funs(mean))
names(tidy1)<-c("Subject","Activity","Variable","Mean")

#Create output (tidy) data file to working directory
write.table(x = tidy1,row.names = FALSE,file = 'TidyData.txt')
