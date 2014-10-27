
#The  data set contains a number of different components which need to be assembled like a puzzle. The different variables #below present a modular assembly of the data set from top to bottom in the final data table.The left part of the data set is #combined with the middle and then it is attached to the right side component to produce the eventual new data frame.


#Read in data into tabular format

R1C1 <- read.table("train/x_train.txt")
R1C2 <- read.table("train/subject_train.txt")
R1C3 <- read.table("train/y_train.txt")
R2C1 <- read.table("test/x_test.txt")
R2C2 <- read.table("test/subject_test.txt")
R2C3 <- read.table("test/y_test.txt")

#Bind the data vertically across rows and then append the newly created columns to form the staged columns

Col1 <- rbind(R1C1,R2C1)
Col2 <- rbind(R1C2,R2C2)
Col3 <- rbind(R1C3,R2C3)

NewData<-cbind(Col1,Col2)
NewData<-cbind(NewData,Col3)

#The columns in the NewData object need to be configured for appropriate R column structure

#Clean up column names for apprpriate headings
names(NewData)<-make.names(names(NewData))

#Replace t and f with time and frequency
names(NewData)<-gsub("^t","time",names(NewData))
names(NewData)<-gsub("^f","frequency",names(NewData))

#lowercase adjustment
names(NewData)<-tolower(names(NewData))
#Replace bodybody
names(NewData)<-gsub("bodybody","body",names(NewData))

