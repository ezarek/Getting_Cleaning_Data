
Original Study Feature Selection
================================

The analysis for this project includes information from the study perfromed in Genoa, Italy.I have included an original description of the following variables along with the variables chosen for our mean analysis. Please see Coursera Study
Feature Selection below.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

Our analysis begins with the use of the raw data obtained via the experiment above
The complete list of variables of each feature vector is available in 'features.txt'

Coursera Study Feature Selection
=================================

Our analysis begins with the use of the raw data obtained via the experiment above. We have reduced the data set into
only those values pertaining to mean and standard deviation. Included below are a list of all columns


 [1] "subject"                         
 [2] "activity"                        
 [3] "timebodyaccmeanx"                
 [4] "timebodyaccmeany"                
 [5] "timebodyaccmeanz"                
 [6] "timegravityaccmeanx"             
 [7] "timegravityaccmeany"             
 [8] "timegravityaccmeanz"             
 [9] "timebodyaccjerkmeanx"            
[10] "timebodyaccjerkmeany"            
[11] "timebodyaccjerkmeanz"            
[12] "timebodygyromeanx"               
[13] "timebodygyromeany"               
[14] "timebodygyromeanz"               
[15] "timebodygyrojerkmeanx"           
[16] "timebodygyrojerkmeany"           
[17] "timebodygyrojerkmeanz"           
[18] "timebodyaccmagmean"              
[19] "timegravityaccmagmean"           
[20] "timebodyaccjerkmagmean"          
[21] "timebodygyromagmean"             
[22] "timebodygyrojerkmagmean"         
[23] "frequencybodyaccmeanx"           
[24] "frequencybodyaccmeany"           
[25] "frequencybodyaccmeanz"           
[26] "frequencybodyaccjerkmeanx"       
[27] "frequencybodyaccjerkmeany"       
[28] "frequencybodyaccjerkmeanz"       
[29] "frequencybodygyromeanx"          
[30] "frequencybodygyromeany"          
[31] "frequencybodygyromeanz"          
[32] "frequencybodyaccmagmean"         
[33] "frequencybodybodyaccjerkmagmean" 
[34] "frequencybodybodygyromagmean"    
[35] "frequencybodybodygyrojerkmagmean"
[36] "timebodyaccstdx"                 
[37] "timebodyaccstdy"                 
[38] "timebodyaccstdz"                 
[39] "timegravityaccstdx"              
[40] "timegravityaccstdy"              
[41] "timegravityaccstdz"              
[42] "timebodyaccjerkstdx"             
[43] "timebodyaccjerkstdy"             
[44] "timebodyaccjerkstdz"             
[45] "timebodygyrostdx"                
[46] "timebodygyrostdy"                
[47] "timebodygyrostdz"                
[48] "timebodygyrojerkstdx"            
[49] "timebodygyrojerkstdy"            
[50] "timebodygyrojerkstdz"            
[51] "timebodyaccmagstd"               
[52] "timegravityaccmagstd"            
[53] "timebodyaccjerkmagstd"           
[54] "timebodygyromagstd"              
[55] "timebodygyrojerkmagstd"          
[56] "frequencybodyaccstdx"            
[57] "frequencybodyaccstdy"            
[58] "frequencybodyaccstdz"            
[59] "frequencybodyaccjerkstdx"        
[60] "frequencybodyaccjerkstdy"        
[61] "frequencybodyaccjerkstdz"        
[62] "frequencybodygyrostdx"           
[63] "frequencybodygyrostdy"           
[64] "frequencybodygyrostdz"           
[65] "frequencybodyaccmagstd"          
[66] "frequencybodybodyaccjerkmagstd"  
[67] "frequencybodybodygyromagstd"     
[68] "frequencybodybodygyrojerkmagstd" 



"subject": Each column identifies the subject who performed the activity for each window sample. Its range is from 1 to            30.

"activity": Each column identifies what activity each subject was performing while being measured with the smart phone.
            The activities are 1 WALKING
 2 WALKING_UPSTAIRS 
3 WALKING_DOWNSTAIRS 
4 SITTING 
5 STANDING 
6 LAYING
.

 
"acceleration variables": The acceleration signal from the smartphone accelerometer X, Y, and Z axis in standard gravity units 'g'. Every row shows a 128 element vector.This also includes the body acceleration signal obtained by subtracting the gravity from the total acceleration.


 [3] "timebodyaccmeanx"                
 [4] "timebodyaccmeany"                
 [5] "timebodyaccmeanz"                
 [6] "timegravityaccmeanx"             
 [7] "timegravityaccmeany"             
 [8] "timegravityaccmeanz"             
 [18] "timebodyaccmagmean"              
 [19] "timegravityaccmagmean"           
 [20] "timebodyaccjerkmagmean"          
 [23] "frequencybodyaccmeanx"           
 [24] "frequencybodyaccmeany"           
 [25] "frequencybodyaccmeanz"           
 [26] "frequencybodyaccjerkmeanx"       
 [27] "frequencybodyaccjerkmeany"       
 [28] "frequencybodyaccjerkmeanz" 
 [32] "frequencybodyaccmagmean"         
 [33] "frequencybodybodyaccjerkmagmean"
 [36] "timebodyaccstdx"                 
 [37] "timebodyaccstdy"                 
 [38] "timebodyaccstdz"                 
 [39] "timegravityaccstdx"              
 [40] "timegravityaccstdy"              
 [41] "timegravityaccstdz"              
 [42] "timebodyaccjerkstdx"             
 [43] "timebodyaccjerkstdy"             
 [44] "timebodyaccjerkstdz"             
 [51] "timebodyaccmagstd"               
 [52] "timegravityaccmagstd"            
 [53] "timebodyaccjerkmagstd"           
 [56] "frequencybodyaccstdx"            
 [57] "frequencybodyaccstdy"            
 [58] "frequencybodyaccstdz"            
 [59] "frequencybodyaccjerkstdx"        
 [60] "frequencybodyaccjerkstdy"        
 [61] "frequencybodyaccjerkstdz" 
 [65] "frequencybodyaccmagstd"          
 [66] "frequencybodybodyaccjerkmagstd"  

"gyroscope measurement variables": The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.
            
 
[12] "timebodygyromeanx"               
[13] "timebodygyromeany"               
[14] "timebodygyromeanz"               
[15] "timebodygyrojerkmeanx"           
[16] "timebodygyrojerkmeany"           
[17] "timebodygyrojerkmeanz"   
[21] "timebodygyromagmean"             
[22] "timebodygyrojerkmagmean"            
[29] "frequencybodygyromeanx"          
[30] "frequencybodygyromeany"          
[31] "frequencybodygyromeanz"          
[34] "frequencybodybodygyromagmean"    
[35] "frequencybodybodygyrojerkmagmean"
[45] "timebodygyrostdx"                
[46] "timebodygyrostdy"                
[47] "timebodygyrostdz"                
[48] "timebodygyrojerkstdx"            
[49] "timebodygyrojerkstdy"            
[50] "timebodygyrojerkstdz"            
[62] "frequencybodygyrostdx"           
[63] "frequencybodygyrostdy"           
[64] "frequencybodygyrostdz"           
[67] "frequencybodybodygyromagstd"     
[68] "frequencybodybodygyrojerkmagstd" 






