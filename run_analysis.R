library (plyr)

run_analysis <- function(directory) {
  
  #set the directory in parameter as the working folder
  setwd(directory)
  
  if(!file.exists("UCI HAR Dataset")){
    print("Directory not correct, please input the path where the folder <UCI HAR Dataset> is.")
  } 
  else{
    #setwd(file.path(directory, "UCI HAR Dataset"))
    
    #load the activity and name the column
    dfActivityLabel <- read.table("./UCI HAR Dataset/activity_labels.txt", sep="", header =FALSE, fill = TRUE)
    colnames(dfActivityLabel) <- c("activityId","activityLabel")
  
    #load the feature
    dfFeature <- read.table("./UCI HAR Dataset/features.txt", sep="", header =FALSE)
  
    #load the test dataset
      dfTestList <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE, sep = "", quote = "\"", dec = ".")
      dfTestAct <- read.table("./UCI HAR Dataset/test/y_test.txt", sep="", header =FALSE)
      dfTestSub <- read.table("./UCI HAR Dataset/test/subject_test.txt", sep="", header =FALSE)
      #named the columns
      #4. Appropriately labels the data set with descriptive variable names. 
      colnames(dfTestList) <- dfFeature$V2
      #Add Activity to dfTestList
      dfTestList$activityId <- dfTestAct$V1
      #Add Subject to dfTestList
      dfTestList$subjectId <- dfTestSub$V1
    
    #load the training dataset      
      dfTrainlist <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE, sep = "", quote = "\"", dec = ".")
      dfTrainAct <- read.table("./UCI HAR Dataset/train/y_train.txt", sep="", header =FALSE)
      dfTrainSub <- read.table("./UCI HAR Dataset/train/subject_train.txt", sep="", header =FALSE)
      #named the columns
      #4. Appropriately labels the data set with descriptive variable names. 
      colnames(dfTrainlist) <- dfFeature$V2
      #Add Activity to dfTrainlist
      dfTrainlist$activityId <- dfTrainAct$V1
      #Add Activity to dfTrainlist
      dfTrainlist$subjectId <- dfTrainSub$V1
    
    #UNION DF train and DF test
    # 1. Merges the training and the test sets to create one data set.
      dfAll <- rbind(dfTrainlist, dfTestList)     
    
    # 3.Uses descriptive activity names to name the activities in the data set
    #Merge data set
    dfMergeAll <-merge(dfActivityLabel, dfAll, by.x = "activityId", by.y = "activityId")
  
    #look for mean and std
    # 2. Extracts only the measurements on the mean and standard deviation for each measurement.
    meanLabel <- grep("\\bmean()\\b",dfFeature$V2,value=TRUE, ignore.case = TRUE)
    stdLabel <- grep("\\bstd()\\b",dfFeature$V2,value=TRUE, ignore.case = TRUE)
        
    dfTinyDF <- dfMergeAll[,c("activityId","activityLabel","subjectId",meanLabel,stdLabel)]
    
    dfTinyDF 
  }
}

run_summary <- function(directory) {

  #get the dfTinyDF from run_analysis
  dfTinyDF <- run_analysis(directory)

  #calculate the mean of each variable for each activity and each subject.
  dfSummary <- aggregate(dfTinyDF[, 4:89], list(dfTinyDF$activityLabel, dfTinyDF$subjectId), mean)

  #rename the 2 first columns
  colnames(dfSummary)[1:2] <- c("activityLabel","subjectId")
  
  write.table(dfSummary, file="./resultQ5.txt",row.name=FALSE , append=FALSE, col.names=TRUE) 
}
