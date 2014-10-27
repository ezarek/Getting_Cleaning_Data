#set working directory
setwd("C:/Users/ZAREK/Documents/R_Projects/Hopkins_Getting_and_Cleaning_Data")

#Create a file called data to download the experimental data from the website
if (!file.exists("data")) {
  
  dir.create("data")
  
}
#Establish a file Url variable for the UCI data set we plan to download

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

#Download the data into a zip subfolder in the data file

download.file(fileUrl, destfile = "data/UCI_HAR_Dataset.zip")

#Include the date we downloaded the data so as to keep track of changes to contents

dateDownloaded <- date()

#Unzip the file
unzip("UCI_HAR_Dataset.zip")

#reset working directory
setwd("data/UCI HAR Dataset")

#Read in data into tabular format

R1C1 <- read.table("train/x_train.txt")
R1C2 <- read.table("train/subject_train.txt")
R1C3 <- read.table("train/y_train.txt")
R2C1 <- read.table("test/x_test.txt")
R2C2 <- read.table("test/subject_test.txt")
R2C3 <- read.table("test/y_test.txt")

#Read in the activity labels into a vector
activityLabels <- read.table("activity_labels.txt")

#Examine the header file for data set
features <-read.table("features.txt",stringsAsFactors = FALSE)

#Bind the data vertically across rows and then append the newly created columns to form the staged columns
Col1 <- rbind(R1C1,R2C1)
Col2 <- rbind(R1C2,R2C2)
Col3 <- rbind(R1C3,R2C3)

#subset data to update rows with activity labels instead of integers

Col3[Col3 == 1] <- "WALKING"
Col3[Col3 == 2] <- "WALKING_UPSTAIRS"
Col3[Col3 == 3] <- "WALKING_DOWNSTAIRS"
Col3[Col3 == 4] <- "SITTING"
Col3[Col3 == 5] <- "STANDING"
Col3[Col3 == 6] <- "LAYING"




#Assign names to column headings
colnames(Col1)<-features[,2]

#Create subject and activity column headers

subject<-"subject"
activity<-"activity"
colnames(Col2)<-subject
colnames(Col3)<-activity

NewData<-cbind(Col1,Col2)
NewData<-cbind(NewData,Col3)

#Clean up column names for apprpriate headings
names(NewData)<-make.names(names(NewData))

#Replace t and f with time and frequency
names(NewData)<-gsub("^t","time",names(NewData))
names(NewData)<-gsub("^f","frequency",names(NewData))

#lowercase adjustment
names(NewData)<-tolower(names(NewData))
#Replace bodybody
names(NewData)<-gsub("bodybody","body",names(NewData))

##Extract columns from dataset that have mean() or std()
mu<-NewData[grep(".mean", names(NewData),fixed = TRUE)]
sigma<-NewData[grep(".std", names(NewData),fixed = TRUE)]
#Combine data sets with mean and standard deviation

muSigmaDataSet<-cbind(mu,sigma)

#Calculate mean of each column in muSigmaDataSet

muSigma2<-colwise(mean)(muSigmaDataSet)

#Write object to text file
write.table(muSigma2,file = "colMeans.txt",row.names = FALSE)