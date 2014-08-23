
#run_analysis code book
=================
2 sections in this book

1. From the original features_info.txt

2. From the full tidy dataset descriptive stats





Feature Selection 
=================

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

The complete list of variables of each feature vector is available below:
=================


Variable Levels	
  activity	
  1	WALKING
  2	WALKING_UPSTAIRS
  3	WALKING_DOWNSTAIRS
  4	SITTING
  5	STANDING
  6	LAYING
	
activity_factor	
  1	WALKING
  2	WALKING_UPSTAIRS
  3	WALKING_DOWNSTAIRS
  4	SITTING
  5	STANDING
  6	LAYING



| Var                                    | Var Type    | Min. | 1st Qu.   | Median    | Mean      | 3rd Qu.  | Max. | Original Var Name               |
|----------------------------------------|-------------|------|-----------|-----------|-----------|----------|------|---------------------------------|
| subject                                | Categorical | 1    | 9         | 17        | 16.15     | 24       | 30   | NA                              |
| activity                               | Categorical | 1    | 2         | 4         | 3.625     | 5        | 6    | NA                              |
| tBodyAcc_mean___X_Ind1                 | Numeric     | -1   | 0.2626    | 0.2772    | 0.2743    | 0.2884   | 1    | tBodyAcc-mean()-X               |
| tBodyAcc_mean___Y_Ind2                 | Numeric     | -1   | -0.0249   | -0.01716  | -0.01774  | -0.01062 | 1    | tBodyAcc-mean()-Y               |
| tBodyAcc_mean___Z_Ind3                 | Numeric     | -1   | -0.121    | -0.1086   | -0.1089   | -0.09759 | 1    | tBodyAcc-mean()-Z               |
| tBodyAcc_std___X_Ind4                  | Numeric     | -1   | -0.9924   | -0.943    | -0.6078   | -0.2503  | 1    | tBodyAcc-std()-X                |
| tBodyAcc_std___Y_Ind5                  | Numeric     | -1   | -0.977    | -0.835    | -0.5102   | -0.05734 | 1    | tBodyAcc-std()-Y                |
| tBodyAcc_std___Z_Ind6                  | Numeric     | -1   | -0.9791   | -0.8508   | -0.6131   | -0.2787  | 1    | tBodyAcc-std()-Z                |
| tBodyAcc_mad___X_Ind7                  | Numeric     | -1   | -0.9933   | -0.9482   | -0.6336   | -0.302   | 1    | tBodyAcc-mad()-X                |
| tBodyAcc_mad___Y_Ind8                  | Numeric     | -1   | -0.977    | -0.8437   | -0.5257   | -0.0874  | 1    | tBodyAcc-mad()-Y                |
| tBodyAcc_mad___Z_Ind9                  | Numeric     | -1   | -0.9791   | -0.8451   | -0.615    | -0.2881  | 1    | tBodyAcc-mad()-Z                |
| tBodyAcc_max___X_Ind10                 | Numeric     | -1   | -0.9358   | -0.8748   | -0.4667   | -0.01464 | 1    | tBodyAcc-max()-X                |
| tBodyAcc_max___Y_Ind11                 | Numeric     | -1   | -0.5626   | -0.4682   | -0.3052   | -0.06734 | 1    | tBodyAcc-max()-Y                |
| tBodyAcc_max___Z_Ind12                 | Numeric     | -1   | -0.8122   | -0.7245   | -0.5622   | -0.3456  | 1    | tBodyAcc-max()-Z                |
| tBodyAcc_min___X_Ind13                 | Numeric     | -1   | 0.2125    | 0.7842    | 0.5253    | 0.8438   | 1    | tBodyAcc-min()-X                |
| tBodyAcc_min___Y_Ind14                 | Numeric     | -1   | 0.1139    | 0.6198    | 0.3895    | 0.6852   | 1    | tBodyAcc-min()-Y                |
| tBodyAcc_min___Z_Ind15                 | Numeric     | -1   | 0.3927    | 0.7722    | 0.598     | 0.8367   | 1    | tBodyAcc-min()-Z                |
| tBodyAcc_sma___Ind16                   | Numeric     | -1   | -0.9817   | -0.8769   | -0.5521   | -0.1228  | 1    | tBodyAcc-sma()                  |
| tBodyAcc_energy___X_Ind17              | Numeric     | -1   | -0.9999   | -0.9977   | -0.8255   | -0.7157  | 1    | tBodyAcc-energy()-X             |
| tBodyAcc_energy___Y_Ind18              | Numeric     | -1   | -0.9998   | -0.9929   | -0.9027   | -0.8251  | 1    | tBodyAcc-energy()-Y             |
| tBodyAcc_energy___Z_Ind19              | Numeric     | -1   | -0.9994   | -0.9842   | -0.8547   | -0.7595  | 1    | tBodyAcc-energy()-Z             |
| tBodyAcc_iqr___X_Ind20                 | Numeric     | -1   | -0.9942   | -0.956    | -0.6892   | -0.4079  | 1    | tBodyAcc-iqr()-X                |
| tBodyAcc_iqr___Y_Ind21                 | Numeric     | -1   | -0.9813   | -0.8849   | -0.6435   | -0.3247  | 1    | tBodyAcc-iqr()-Y                |
| tBodyAcc_iqr___Z_Ind22                 | Numeric     | -1   | -0.9785   | -0.8538   | -0.6407   | -0.3364  | 1    | tBodyAcc-iqr()-Z                |
| tBodyAcc_entropy___X_Ind23             | Numeric     | -1   | -0.5638   | -0.05712  | -0.1003   | 0.3296   | 1    | tBodyAcc-entropy()-X            |
| tBodyAcc_entropy___Y_Ind24             | Numeric     | -1   | -0.5496   | -0.1017   | -0.1288   | 0.2831   | 1    | tBodyAcc-entropy()-Y            |
| tBodyAcc_entropy___Z_Ind25             | Numeric     | -1   | -0.4968   | -0.1364   | -0.1579   | 0.1674   | 1    | tBodyAcc-entropy()-Z            |
| tBodyAcc_arCoeff___X_1_Ind26           | Numeric     | -1   | -0.3686   | -0.1362   | -0.119    | 0.1332   | 1    | tBodyAcc-arCoeff()-X,1          |
| tBodyAcc_arCoeff___X_2_Ind27           | Numeric     | -1   | -0.07902  | 0.07753   | 0.1086    | 0.2861   | 1    | tBodyAcc-arCoeff()-X,2          |
| tBodyAcc_arCoeff___X_3_Ind28           | Numeric     | -1   | -0.1899   | -0.01764  | -0.0357   | 0.1333   | 1    | tBodyAcc-arCoeff()-X,3          |
| tBodyAcc_arCoeff___X_4_Ind29           | Numeric     | -1   | -0.03386  | 0.1263    | 0.122     | 0.2777   | 1    | tBodyAcc-arCoeff()-X,4          |
| tBodyAcc_arCoeff___Y_1_Ind30           | Numeric     | -1   | -0.222    | -0.04549  | -0.02968  | 0.1633   | 1    | tBodyAcc-arCoeff()-Y,1          |
| tBodyAcc_arCoeff___Y_2_Ind31           | Numeric     | -1   | -0.129    | 0.01765   | 0.03172   | 0.1808   | 1    | tBodyAcc-arCoeff()-Y,2          |
| tBodyAcc_arCoeff___Y_3_Ind32           | Numeric     | -1   | 0.02895   | 0.1607    | 0.1551    | 0.2882   | 1    | tBodyAcc-arCoeff()-Y,3          |
| tBodyAcc_arCoeff___Y_4_Ind33           | Numeric     | -1   | -0.1657   | -0.01893  | -0.01808  | 0.1312   | 1    | tBodyAcc-arCoeff()-Y,4          |
| tBodyAcc_arCoeff___Z_1_Ind34           | Numeric     | -1   | -0.2065   | 0.0207    | 0.00611   | 0.2235   | 1    | tBodyAcc-arCoeff()-Z,1          |
| tBodyAcc_arCoeff___Z_2_Ind35           | Numeric     | -1   | -0.1181   | 0.009945  | 0.03773   | 0.1796   | 1    | tBodyAcc-arCoeff()-Z,2          |
| tBodyAcc_arCoeff___Z_3_Ind36           | Numeric     | -1   | -0.1108   | 0.04536   | 0.03442   | 0.1943   | 1    | tBodyAcc-arCoeff()-Z,3          |
| tBodyAcc_arCoeff___Z_4_Ind37           | Numeric     | -1   | -0.2395   | -0.0833   | -0.08267  | 0.07475  | 1    | tBodyAcc-arCoeff()-Z,4          |
| tBodyAcc_correlation___X_Y_Ind38       | Numeric     | -1   | -0.3617   | -0.1612   | -0.1203   | 0.08015  | 1    | tBodyAcc-correlation()-X,Y      |
| tBodyAcc_correlation___X_Z_Ind39       | Numeric     | -1   | -0.4088   | -0.1918   | -0.1977   | 0.002491 | 1    | tBodyAcc-correlation()-X,Z      |
| tBodyAcc_correlation___Y_Z_Ind40       | Numeric     | -1   | -0.1409   | 0.1356    | 0.1022    | 0.3722   | 1    | tBodyAcc-correlation()-Y,Z      |
| tGravityAcc_mean___X_Ind41             | Numeric     | -1   | 0.8117    | 0.9218    | 0.6692    | 0.9547   | 1    | tGravityAcc-mean()-X            |
| tGravityAcc_mean___Y_Ind42             | Numeric     | -1   | -0.2429   | -0.1436   | 0.004039  | 0.1189   | 1    | tGravityAcc-mean()-Y            |
| tGravityAcc_mean___Z_Ind43             | Numeric     | -1   | -0.1167   | 0.0368    | 0.09215   | 0.2162   | 1    | tGravityAcc-mean()-Z            |
| tGravityAcc_std___X_Ind44              | Numeric     | -1   | -0.9949   | -0.9819   | -0.9652   | -0.9615  | 1    | tGravityAcc-std()-X             |
| tGravityAcc_std___Y_Ind45              | Numeric     | -1   | -0.9913   | -0.9759   | -0.9544   | -0.9464  | 1    | tGravityAcc-std()-Y             |
| tGravityAcc_std___Z_Ind46              | Numeric     | -1   | -0.9866   | -0.9665   | -0.9389   | -0.9296  | 1    | tGravityAcc-std()-Z             |
| tGravityAcc_mad___X_Ind47              | Numeric     | -1   | -0.995    | -0.9826   | -0.966    | -0.9628  | 1    | tGravityAcc-mad()-X             |
| tGravityAcc_mad___Y_Ind48              | Numeric     | -1   | -0.9915   | -0.9766   | -0.9554   | -0.9478  | 1    | tGravityAcc-mad()-Y             |
| tGravityAcc_mad___Z_Ind49              | Numeric     | -1   | -0.9869   | -0.9676   | -0.9402   | -0.9315  | 1    | tGravityAcc-mad()-Z             |
| tGravityAcc_max___X_Ind50              | Numeric     | -1   | 0.7556    | 0.859     | 0.6091    | 0.8878   | 1    | tGravityAcc-max()-X             |
| tGravityAcc_max___Y_Ind51              | Numeric     | -1   | -0.2496   | -0.1509   | -0.01032  | 0.1179   | 1    | tGravityAcc-max()-Y             |
| tGravityAcc_max___Z_Ind52              | Numeric     | -1   | -0.1116   | 0.04303   | 0.09674   | 0.2168   | 1    | tGravityAcc-max()-Z             |
| tGravityAcc_min___X_Ind53              | Numeric     | -1   | 0.8166    | 0.9288    | 0.6838    | 0.9666   | 1    | tGravityAcc-min()-X             |
| tGravityAcc_min___Y_Ind54              | Numeric     | -1   | -0.2296   | -0.1284   | 0.01661   | 0.129    | 1    | tGravityAcc-min()-Y             |
| tGravityAcc_min___Z_Ind55              | Numeric     | -1   | -0.1326   | 0.0222    | 0.07935   | 0.1998   | 1    | tGravityAcc-min()-Z             |
| tGravityAcc_sma___Ind56                | Numeric     | -1   | -0.4093   | -0.1313   | -0.09859  | 0.1884   | 1    | tGravityAcc-sma()               |
| tGravityAcc_energy___X_Ind57           | Numeric     | -1   | 0.5209    | 0.7912    | 0.4462    | 0.8766   | 1    | tGravityAcc-energy()-X          |
| tGravityAcc_energy___Y_Ind58           | Numeric     | -1   | -0.968    | -0.9098   | -0.7215   | -0.7668  | 1    | tGravityAcc-energy()-Y          |
| tGravityAcc_energy___Z_Ind59           | Numeric     | -1   | -0.9911   | -0.9508   | -0.7636   | -0.7872  | 1    | tGravityAcc-energy()-Z          |
| tGravityAcc_iqr___X_Ind60              | Numeric     | -1   | -0.9952   | -0.9846   | -0.9682   | -0.9656  | 1    | tGravityAcc-iqr()-X             |
| tGravityAcc_iqr___Y_Ind61              | Numeric     | -1   | -0.9924   | -0.9795   | -0.9586   | -0.9521  | 1    | tGravityAcc-iqr()-Y             |
| tGravityAcc_iqr___Z_Ind62              | Numeric     | -1   | -0.9881   | -0.9712   | -0.9448   | -0.9384  | 1    | tGravityAcc-iqr()-Z             |
| tGravityAcc_entropy___X_Ind63          | Numeric     | -1   | -1        | -0.7631   | -0.6748   | -0.3996  | 1    | tGravityAcc-entropy()-X         |
| tGravityAcc_entropy___Y_Ind64          | Numeric     | -1   | -1        | -1        | -0.8667   | -0.8511  | 1    | tGravityAcc-entropy()-Y         |
| tGravityAcc_entropy___Z_Ind65          | Numeric     | -1   | -1        | -0.7808   | -0.6691   | -0.4008  | 1    | tGravityAcc-entropy()-Z         |
| tGravityAcc_arCoeff___X_1_Ind66        | Numeric     | -1   | -0.6512   | -0.5102   | -0.5044   | -0.3667  | 1    | tGravityAcc-arCoeff()-X,1       |
| tGravityAcc_arCoeff___X_2_Ind67        | Numeric     | -1   | 0.4048    | 0.5552    | 0.5429    | 0.6933   | 1    | tGravityAcc-arCoeff()-X,2       |
| tGravityAcc_arCoeff___X_3_Ind68        | Numeric     | -1   | -0.7391   | -0.5974   | -0.5807   | -0.4403  | 1    | tGravityAcc-arCoeff()-X,3       |
| tGravityAcc_arCoeff___X_4_Ind69        | Numeric     | -1   | 0.4711    | 0.6424    | 0.6178    | 0.7846   | 1    | tGravityAcc-arCoeff()-X,4       |
| tGravityAcc_arCoeff___Y_1_Ind70        | Numeric     | -1   | -0.5461   | -0.3418   | -0.3436   | -0.1434  | 1    | tGravityAcc-arCoeff()-Y,1       |
| tGravityAcc_arCoeff___Y_2_Ind71        | Numeric     | -1   | 0.1278    | 0.3289    | 0.3302    | 0.5352   | 1    | tGravityAcc-arCoeff()-Y,2       |
| tGravityAcc_arCoeff___Y_3_Ind72        | Numeric     | -1   | -0.5584   | -0.3659   | -0.3607   | -0.1726  | 1    | tGravityAcc-arCoeff()-Y,3       |
| tGravityAcc_arCoeff___Y_4_Ind73        | Numeric     | -1   | 0.2301    | 0.4243    | 0.4089    | 0.6048   | 1    | tGravityAcc-arCoeff()-Y,4       |
| tGravityAcc_arCoeff___Z_1_Ind74        | Numeric     | -1   | -0.62     | -0.4261   | -0.4281   | -0.2487  | 1    | tGravityAcc-arCoeff()-Z,1       |
| tGravityAcc_arCoeff___Z_2_Ind75        | Numeric     | -1   | 0.2792    | 0.4501    | 0.4534    | 0.6422   | 1    | tGravityAcc-arCoeff()-Z,2       |
| tGravityAcc_arCoeff___Z_3_Ind76        | Numeric     | -1   | -0.6634   | -0.4787   | -0.478    | -0.3068  | 1    | tGravityAcc-arCoeff()-Z,3       |
| tGravityAcc_arCoeff___Z_4_Ind77        | Numeric     | -1   | 0.3306    | 0.5052    | 0.4995    | 0.6839   | 1    | tGravityAcc-arCoeff()-Z,4       |
| tGravityAcc_correlation___X_Y_Ind78    | Numeric     | -1   | -0.4902   | 0.3609    | 0.1757    | 0.8381   | 1    | tGravityAcc-correlation()-X,Y   |
| tGravityAcc_correlation___X_Z_Ind79    | Numeric     | -1   | -0.806    | -0.2174   | -0.1083   | 0.5912   | 1    | tGravityAcc-correlation()-X,Z   |
| tGravityAcc_correlation___Y_Z_Ind80    | Numeric     | -1   | -0.609    | 0.1754    | 0.08485   | 0.776    | 1    | tGravityAcc-correlation()-Y,Z   |
| tBodyAccJerk_mean___X_Ind81            | Numeric     | -1   | 0.06298   | 0.07597   | 0.07894   | 0.09131  | 1    | tBodyAccJerk-mean()-X           |
| tBodyAccJerk_mean___Y_Ind82            | Numeric     | -1   | -0.01855  | 0.01075   | 0.007948  | 0.03354  | 1    | tBodyAccJerk-mean()-Y           |
| tBodyAccJerk_mean___Z_Ind83            | Numeric     | -1   | -0.03155  | -0.001159 | -0.004675 | 0.02458  | 1    | tBodyAccJerk-mean()-Z           |
| tBodyAccJerk_std___X_Ind84             | Numeric     | -1   | -0.9913   | -0.9513   | -0.6398   | -0.2912  | 1    | tBodyAccJerk-std()-X            |
| tBodyAccJerk_std___Y_Ind85             | Numeric     | -1   | -0.985    | -0.925    | -0.608    | -0.2218  | 1    | tBodyAccJerk-std()-Y            |
| tBodyAccJerk_std___Z_Ind86             | Numeric     | -1   | -0.9892   | -0.9543   | -0.7628   | -0.5485  | 1    | tBodyAccJerk-std()-Z            |
| tBodyAccJerk_mad___X_Ind87             | Numeric     | -1   | -0.9913   | -0.9578   | -0.6369   | -0.2803  | 1    | tBodyAccJerk-mad()-X            |
| tBodyAccJerk_mad___Y_Ind88             | Numeric     | -1   | -0.9833   | -0.9265   | -0.594    | -0.1892  | 1    | tBodyAccJerk-mad()-Y            |
| tBodyAccJerk_mad___Z_Ind89             | Numeric     | -1   | -0.988    | -0.9548   | -0.7565   | -0.5357  | 1    | tBodyAccJerk-mad()-Z            |
| tBodyAccJerk_max___X_Ind90             | Numeric     | -1   | -0.9916   | -0.9447   | -0.6996   | -0.4608  | 1    | tBodyAccJerk-max()-X            |
| tBodyAccJerk_max___Y_Ind91             | Numeric     | -1   | -0.9901   | -0.9411   | -0.7478   | -0.5351  | 1    | tBodyAccJerk-max()-Y            |
| tBodyAccJerk_max___Z_Ind92             | Numeric     | -1   | -0.9898   | -0.9564   | -0.8187   | -0.683   | 1    | tBodyAccJerk-max()-Z            |
| tBodyAccJerk_min___X_Ind93             | Numeric     | -1   | 0.2531    | 0.9377    | 0.616     | 0.9896   | 1    | tBodyAccJerk-min()-X            |
| tBodyAccJerk_min___Y_Ind94             | Numeric     | -1   | 0.4017    | 0.9311    | 0.6849    | 0.9886   | 1    | tBodyAccJerk-min()-Y            |
| tBodyAccJerk_min___Z_Ind95             | Numeric     | -1   | 0.5287    | 0.9404    | 0.7396    | 0.9867   | 1    | tBodyAccJerk-min()-Z            |
| tBodyAccJerk_sma___Ind96               | Numeric     | -1   | -0.9898   | -0.9478   | -0.647    | -0.2909  | 1    | tBodyAccJerk-sma()              |
| tBodyAccJerk_energy___X_Ind97          | Numeric     | -1   | -0.9999   | -0.9985   | -0.8503   | -0.746   | 1    | tBodyAccJerk-energy()-X         |
| tBodyAccJerk_energy___Y_Ind98          | Numeric     | -1   | -0.9997   | -0.9965   | -0.8273   | -0.6924  | 1    | tBodyAccJerk-energy()-Y         |
| tBodyAccJerk_energy___Z_Ind99          | Numeric     | -1   | -0.9998   | -0.9983   | -0.9307   | -0.8928  | 1    | tBodyAccJerk-energy()-Z         |
| tBodyAccJerk_iqr___X_Ind100            | Numeric     | -1   | -0.9899   | -0.9634   | -0.6275   | -0.2657  | 1    | tBodyAccJerk-iqr()-X            |
| tBodyAccJerk_iqr___Y_Ind101            | Numeric     | -1   | -0.9836   | -0.9434   | -0.6598   | -0.3295  | 1    | tBodyAccJerk-iqr()-Y            |
| tBodyAccJerk_iqr___Z_Ind102            | Numeric     | -1   | -0.9863   | -0.9583   | -0.7708   | -0.5757  | 1    | tBodyAccJerk-iqr()-Z            |
| tBodyAccJerk_entropy___X_Ind103        | Numeric     | -1   | -0.7298   | -0.3377   | -0.08261  | 0.5994   | 1    | tBodyAccJerk-entropy()-X        |
| tBodyAccJerk_entropy___Y_Ind104        | Numeric     | -1   | -0.7263   | -0.2842   | -0.08788  | 0.5678   | 1    | tBodyAccJerk-entropy()-Y        |
| tBodyAccJerk_entropy___Z_Ind105        | Numeric     | -1   | -0.7211   | -0.3935   | -0.1273   | 0.4941   | 1    | tBodyAccJerk-entropy()-Z        |
| tBodyAccJerk_arCoeff___X_1_Ind106      | Numeric     | -1   | -0.3598   | -0.1159   | -0.1086   | 0.1443   | 1    | tBodyAccJerk-arCoeff()-X,1      |
| tBodyAccJerk_arCoeff___X_2_Ind107      | Numeric     | -1   | 0.04889   | 0.1729    | 0.1697    | 0.2916   | 1    | tBodyAccJerk-arCoeff()-X,2      |
| tBodyAccJerk_arCoeff___X_3_Ind108      | Numeric     | -1   | -0.0878   | 0.07724   | 0.0676    | 0.2343   | 1    | tBodyAccJerk-arCoeff()-X,3      |
| tBodyAccJerk_arCoeff___X_4_Ind109      | Numeric     | -1   | -0.003601 | 0.1348    | 0.1265    | 0.2636   | 1    | tBodyAccJerk-arCoeff()-X,4      |
| tBodyAccJerk_arCoeff___Y_1_Ind110      | Numeric     | -1   | -0.2766   | -0.08578  | -0.07272  | 0.1399   | 1    | tBodyAccJerk-arCoeff()-Y,1      |
| tBodyAccJerk_arCoeff___Y_2_Ind111      | Numeric     | -1   | -0.06502  | 0.06698   | 0.06869   | 0.2073   | 1    | tBodyAccJerk-arCoeff()-Y,2      |
| tBodyAccJerk_arCoeff___Y_3_Ind112      | Numeric     | -1   | 0.02252   | 0.1865    | 0.1745    | 0.3393   | 1    | tBodyAccJerk-arCoeff()-Y,3      |
| tBodyAccJerk_arCoeff___Y_4_Ind113      | Numeric     | -1   | 0.1852    | 0.3185    | 0.3143    | 0.4521   | 1    | tBodyAccJerk-arCoeff()-Y,4      |
| tBodyAccJerk_arCoeff___Z_1_Ind114      | Numeric     | -1   | -0.2374   | -0.01346  | -0.03269  | 0.1801   | 1    | tBodyAccJerk-arCoeff()-Z,1      |
| tBodyAccJerk_arCoeff___Z_2_Ind115      | Numeric     | -1   | -0.03561  | 0.08742   | 0.08868   | 0.2125   | 1    | tBodyAccJerk-arCoeff()-Z,2      |
| tBodyAccJerk_arCoeff___Z_3_Ind116      | Numeric     | -1   | -0.1433   | 0.0133    | -0.001039 | 0.1582   | 1    | tBodyAccJerk-arCoeff()-Z,3      |
| tBodyAccJerk_arCoeff___Z_4_Ind117      | Numeric     | -1   | -0.01551  | 0.1502    | 0.1385    | 0.3001   | 1    | tBodyAccJerk-arCoeff()-Z,4      |
| tBodyAccJerk_correlation___X_Y_Ind118  | Numeric     | -1   | -0.3099   | -0.139    | -0.1381   | 0.02874  | 1    | tBodyAccJerk-correlation()-X,Y  |
| tBodyAccJerk_correlation___X_Z_Ind119  | Numeric     | -1   | -0.1987   | 0.01331   | 0.003025  | 0.207    | 1    | tBodyAccJerk-correlation()-X,Z  |
| tBodyAccJerk_correlation___Y_Z_Ind120  | Numeric     | -1   | -0.1025   | 0.07611   | 0.08032   | 0.2634   | 1    | tBodyAccJerk-correlation()-Y,Z  |
| tBodyGyro_mean___X_Ind121              | Numeric     | -1   | -0.04579  | -0.02776  | -0.03098  | -0.01058 | 1    | tBodyGyro-mean()-X              |
| tBodyGyro_mean___Y_Ind122              | Numeric     | -1   | -0.104    | -0.07477  | -0.07472  | -0.0511  | 1    | tBodyGyro-mean()-Y              |
| tBodyGyro_mean___Z_Ind123              | Numeric     | -1   | 0.06485   | 0.08626   | 0.08836   | 0.1104   | 1    | tBodyGyro-mean()-Z              |
| tBodyGyro_std___X_Ind124               | Numeric     | -1   | -0.9872   | -0.9016   | -0.7212   | -0.4822  | 1    | tBodyGyro-std()-X               |
| tBodyGyro_std___Y_Ind125               | Numeric     | -1   | -0.9819   | -0.9106   | -0.6827   | -0.4461  | 1    | tBodyGyro-std()-Y               |
| tBodyGyro_std___Z_Ind126               | Numeric     | -1   | -0.985    | -0.8819   | -0.6537   | -0.3379  | 1    | tBodyGyro-std()-Z               |
| tBodyGyro_mad___X_Ind127               | Numeric     | -1   | -0.9881   | -0.9076   | -0.7265   | -0.4918  | 1    | tBodyGyro-mad()-X               |
| tBodyGyro_mad___Y_Ind128               | Numeric     | -1   | -0.983    | -0.9194   | -0.6945   | -0.464   | 1    | tBodyGyro-mad()-Y               |
| tBodyGyro_mad___Z_Ind129               | Numeric     | -1   | -0.9859   | -0.8887   | -0.6672   | -0.3635  | 1    | tBodyGyro-mad()-Z               |
| tBodyGyro_max___X_Ind130               | Numeric     | -1   | -0.8778   | -0.7948   | -0.6455   | -0.4367  | 1    | tBodyGyro-max()-X               |
| tBodyGyro_max___Y_Ind131               | Numeric     | -1   | -0.9473   | -0.8901   | -0.738    | -0.5798  | 1    | tBodyGyro-max()-Y               |
| tBodyGyro_max___Z_Ind132               | Numeric     | -1   | -0.7494   | -0.6451   | -0.4842   | -0.2566  | 1    | tBodyGyro-max()-Z               |
| tBodyGyro_min___X_Ind133               | Numeric     | -1   | 0.4628    | 0.7706    | 0.6323    | 0.838    | 1    | tBodyGyro-min()-X               |
| tBodyGyro_min___Y_Ind134               | Numeric     | -1   | 0.6036    | 0.8528    | 0.7343    | 0.9058   | 1    | tBodyGyro-min()-Y               |
| tBodyGyro_min___Z_Ind135               | Numeric     | -1   | 0.3229    | 0.7418    | 0.5592    | 0.8227   | 1    | tBodyGyro-min()-Z               |
| tBodyGyro_sma___Ind136                 | Numeric     | -1   | -0.9785   | -0.8204   | -0.6027   | -0.2393  | 1    | tBodyGyro-sma()                 |
| tBodyGyro_energy___X_Ind137            | Numeric     | -1   | -0.9999   | -0.9903   | -0.9016   | -0.8368  | 1    | tBodyGyro-energy()-X            |
| tBodyGyro_energy___Y_Ind138            | Numeric     | -1   | -0.9997   | -0.9925   | -0.8842   | -0.8417  | 1    | tBodyGyro-energy()-Y            |
| tBodyGyro_energy___Z_Ind139            | Numeric     | -1   | -0.9997   | -0.981    | -0.873    | -0.7882  | 1    | tBodyGyro-energy()-Z            |
| tBodyGyro_iqr___X_Ind140               | Numeric     | -1   | -0.9897   | -0.9187   | -0.7292   | -0.5009  | 1    | tBodyGyro-iqr()-X               |
| tBodyGyro_iqr___Y_Ind141               | Numeric     | -1   | -0.9856   | -0.9325   | -0.7172   | -0.5059  | 1    | tBodyGyro-iqr()-Y               |
| tBodyGyro_iqr___Z_Ind142               | Numeric     | -1   | -0.9891   | -0.9073   | -0.7202   | -0.4745  | 1    | tBodyGyro-iqr()-Z               |
| tBodyGyro_entropy___X_Ind143           | Numeric     | -1   | -0.5081   | -0.1758   | -0.1449   | 0.189    | 1    | tBodyGyro-entropy()-X           |
| tBodyGyro_entropy___Y_Ind144           | Numeric     | -1   | -0.3547   | -0.06425  | -0.09925  | 0.179    | 1    | tBodyGyro-entropy()-Y           |
| tBodyGyro_entropy___Z_Ind145           | Numeric     | -1   | -0.4647   | 0.03286   | -0.06325  | 0.3089   | 1    | tBodyGyro-entropy()-Z           |
| tBodyGyro_arCoeff___X_1_Ind146         | Numeric     | -1   | -0.4246   | -0.2435   | -0.2229   | -0.02796 | 1    | tBodyGyro-arCoeff()-X,1         |
| tBodyGyro_arCoeff___X_2_Ind147         | Numeric     | -1   | -0.01852  | 0.1415    | 0.1477    | 0.3022   | 1    | tBodyGyro-arCoeff()-X,2         |
| tBodyGyro_arCoeff___X_3_Ind148         | Numeric     | -1   | -0.01473  | 0.1427    | 0.1285    | 0.2825   | 1    | tBodyGyro-arCoeff()-X,3         |
| tBodyGyro_arCoeff___X_4_Ind149         | Numeric     | -1   | -0.2437   | -0.07804  | -0.08031  | 0.08061  | 1    | tBodyGyro-arCoeff()-X,4         |
| tBodyGyro_arCoeff___Y_1_Ind150         | Numeric     | -1   | -0.3487   | -0.2103   | -0.2048   | -0.06448 | 1    | tBodyGyro-arCoeff()-Y,1         |
| tBodyGyro_arCoeff___Y_2_Ind151         | Numeric     | -1   | 0.03652   | 0.1646    | 0.1697    | 0.2993   | 1    | tBodyGyro-arCoeff()-Y,2         |
| tBodyGyro_arCoeff___Y_3_Ind152         | Numeric     | -1   | -0.1888   | -0.0393   | -0.04246  | 0.1116   | 1    | tBodyGyro-arCoeff()-Y,3         |
| tBodyGyro_arCoeff___Y_4_Ind153         | Numeric     | -1   | 0.0005374 | 0.1447    | 0.1417    | 0.2901   | 1    | tBodyGyro-arCoeff()-Y,4         |
| tBodyGyro_arCoeff___Z_1_Ind154         | Numeric     | -1   | -0.3355   | -0.1025   | -0.0851   | 0.1626   | 1    | tBodyGyro-arCoeff()-Z,1         |
| tBodyGyro_arCoeff___Z_2_Ind155         | Numeric     | -1   | -0.1667   | 0.06419   | 0.06673   | 0.2904   | 1    | tBodyGyro-arCoeff()-Z,2         |
| tBodyGyro_arCoeff___Z_3_Ind156         | Numeric     | -1   | -0.1955   | 0.01139   | -0.007924 | 0.1875   | 1    | tBodyGyro-arCoeff()-Z,3         |
| tBodyGyro_arCoeff___Z_4_Ind157         | Numeric     | -1   | -0.03189  | 0.1471    | 0.1464    | 0.3216   | 1    | tBodyGyro-arCoeff()-Z,4         |
| tBodyGyro_correlation___X_Y_Ind158     | Numeric     | -1   | -0.4439   | -0.1793   | -0.1693   | 0.08585  | 1    | tBodyGyro-correlation()-X,Y     |
| tBodyGyro_correlation___X_Z_Ind159     | Numeric     | -1   | -0.2393   | -0.008026 | 0.01435   | 0.2595   | 1    | tBodyGyro-correlation()-X,Z     |
| tBodyGyro_correlation___Y_Z_Ind160     | Numeric     | -1   | -0.4114   | -0.09385  | -0.1057   | 0.1886   | 1    | tBodyGyro-correlation()-Y,Z     |
| tBodyGyroJerk_mean___X_Ind161          | Numeric     | -1   | -0.1172   | -0.09824  | -0.09671  | -0.0793  | 1    | tBodyGyroJerk-mean()-X          |
| tBodyGyroJerk_mean___Y_Ind162          | Numeric     | -1   | -0.05868  | -0.04056  | -0.04232  | -0.02521 | 1    | tBodyGyroJerk-mean()-Y          |
| tBodyGyroJerk_mean___Z_Ind163          | Numeric     | -1   | -0.07936  | -0.05455  | -0.05483  | -0.03168 | 1    | tBodyGyroJerk-mean()-Z          |
| tBodyGyroJerk_std___X_Ind164           | Numeric     | -1   | -0.9907   | -0.9348   | -0.7313   | -0.4865  | 1    | tBodyGyroJerk-std()-X           |
| tBodyGyroJerk_std___Y_Ind165           | Numeric     | -1   | -0.9922   | -0.9548   | -0.7861   | -0.6268  | 1    | tBodyGyroJerk-std()-Y           |
| tBodyGyroJerk_std___Z_Ind166           | Numeric     | -1   | -0.9926   | -0.9503   | -0.7399   | -0.5097  | 1    | tBodyGyroJerk-std()-Z           |
| tBodyGyroJerk_mad___X_Ind167           | Numeric     | -1   | -0.9909   | -0.9427   | -0.73     | -0.4779  | 1    | tBodyGyroJerk-mad()-X           |
| tBodyGyroJerk_mad___Y_Ind168           | Numeric     | -1   | -0.9927   | -0.9623   | -0.7966   | -0.64    | 1    | tBodyGyroJerk-mad()-Y           |
| tBodyGyroJerk_mad___Z_Ind169           | Numeric     | -1   | -0.9928   | -0.9579   | -0.7466   | -0.5133  | 1    | tBodyGyroJerk-mad()-Z           |
| tBodyGyroJerk_max___X_Ind170           | Numeric     | -1   | -0.9904   | -0.9266   | -0.7473   | -0.5373  | 1    | tBodyGyroJerk-max()-X           |
| tBodyGyroJerk_max___Y_Ind171           | Numeric     | -1   | -0.9928   | -0.9527   | -0.8099   | -0.6862  | 1    | tBodyGyroJerk-max()-Y           |
| tBodyGyroJerk_max___Z_Ind172           | Numeric     | -1   | -0.9909   | -0.9374   | -0.7427   | -0.5317  | 1    | tBodyGyroJerk-max()-Z           |
| tBodyGyroJerk_min___X_Ind173           | Numeric     | -1   | 0.5658    | 0.9317    | 0.7606    | 0.9906   | 1    | tBodyGyroJerk-min()-X           |
| tBodyGyroJerk_min___Y_Ind174           | Numeric     | -1   | 0.7209    | 0.9586    | 0.8303    | 0.9937   | 1    | tBodyGyroJerk-min()-Y           |
| tBodyGyroJerk_min___Z_Ind175           | Numeric     | -1   | 0.6439    | 0.9557    | 0.7994    | 0.9938   | 1    | tBodyGyroJerk-min()-Z           |
| tBodyGyroJerk_sma___Ind176             | Numeric     | -1   | -0.9926   | -0.9573   | -0.7668   | -0.5544  | 1    | tBodyGyroJerk-sma()             |
| tBodyGyroJerk_energy___X_Ind177        | Numeric     | -1   | -0.9999   | -0.9976   | -0.9169   | -0.8665  | 1    | tBodyGyroJerk-energy()-X        |
| tBodyGyroJerk_energy___Y_Ind178        | Numeric     | -1   | -1        | -0.9989   | -0.9395   | -0.9296  | 1    | tBodyGyroJerk-energy()-Y        |
| tBodyGyroJerk_energy___Z_Ind179        | Numeric     | -1   | -0.9999   | -0.9985   | -0.9195   | -0.8776  | 1    | tBodyGyroJerk-energy()-Z        |
| tBodyGyroJerk_iqr___X_Ind180           | Numeric     | -1   | -0.9914   | -0.9534   | -0.7375   | -0.493   | 1    | tBodyGyroJerk-iqr()-X           |
| tBodyGyroJerk_iqr___Y_Ind181           | Numeric     | -1   | -0.9932   | -0.9698   | -0.8088   | -0.6596  | 1    | tBodyGyroJerk-iqr()-Y           |
| tBodyGyroJerk_iqr___Z_Ind182           | Numeric     | -1   | -0.9932   | -0.967    | -0.7663   | -0.5481  | 1    | tBodyGyroJerk-iqr()-Z           |
| tBodyGyroJerk_entropy___X_Ind183       | Numeric     | -1   | -0.5746   | -0.03394  | -0.01519  | 0.5437   | 1    | tBodyGyroJerk-entropy()-X       |
| tBodyGyroJerk_entropy___Y_Ind184       | Numeric     | -1   | -0.509    | -0.002381 | 0.01867   | 0.5517   | 1    | tBodyGyroJerk-entropy()-Y       |
| tBodyGyroJerk_entropy___Z_Ind185       | Numeric     | -1   | -0.6055   | -0.1321   | -0.01511  | 0.5729   | 1    | tBodyGyroJerk-entropy()-Z       |
| tBodyGyroJerk_arCoeff___X_1_Ind186     | Numeric     | -1   | -0.2504   | -0.08978  | -0.07248  | 0.09698  | 1    | tBodyGyroJerk-arCoeff()-X,1     |
| tBodyGyroJerk_arCoeff___X_2_Ind187     | Numeric     | -1   | -0.0774   | 0.04018   | 0.04092   | 0.1558   | 1    | tBodyGyroJerk-arCoeff()-X,2     |
| tBodyGyroJerk_arCoeff___X_3_Ind188     | Numeric     | -1   | 0.02469   | 0.165     | 0.1597    | 0.3028   | 1    | tBodyGyroJerk-arCoeff()-X,3     |
| tBodyGyroJerk_arCoeff___X_4_Ind189     | Numeric     | -1   | 0.02961   | 0.1715    | 0.1647    | 0.3075   | 1    | tBodyGyroJerk-arCoeff()-X,4     |
| tBodyGyroJerk_arCoeff___Y_1_Ind190     | Numeric     | -1   | -0.3162   | -0.1689   | -0.1624   | -0.02141 | 1    | tBodyGyroJerk-arCoeff()-Y,1     |
| tBodyGyroJerk_arCoeff___Y_2_Ind191     | Numeric     | -1   | 0.09689   | 0.2004    | 0.2002    | 0.3007   | 1    | tBodyGyroJerk-arCoeff()-Y,2     |
| tBodyGyroJerk_arCoeff___Y_3_Ind192     | Numeric     | -1   | -0.04272  | 0.09034   | 0.08353   | 0.2161   | 1    | tBodyGyroJerk-arCoeff()-Y,3     |
| tBodyGyroJerk_arCoeff___Y_4_Ind193     | Numeric     | -1   | -0.0791   | 0.08264   | 0.08025   | 0.2475   | 1    | tBodyGyroJerk-arCoeff()-Y,4     |
| tBodyGyroJerk_arCoeff___Z_1_Ind194     | Numeric     | -1   | -0.309    | -0.05945  | -0.02865  | 0.2483   | 1    | tBodyGyroJerk-arCoeff()-Z,1     |
| tBodyGyroJerk_arCoeff___Z_2_Ind195     | Numeric     | -1   | -0.1081   | 0.04328   | 0.05238   | 0.2118   | 1    | tBodyGyroJerk-arCoeff()-Z,2     |
| tBodyGyroJerk_arCoeff___Z_3_Ind196     | Numeric     | -1   | -0.07285  | 0.09581   | 0.0888    | 0.2629   | 1    | tBodyGyroJerk-arCoeff()-Z,3     |
| tBodyGyroJerk_arCoeff___Z_4_Ind197     | Numeric     | -1   | -0.1353   | 0.03963   | 0.03353   | 0.2077   | 1    | tBodyGyroJerk-arCoeff()-Z,4     |
| tBodyGyroJerk_correlation___X_Y_Ind198 | Numeric     | -1   | -0.1532   | 0.03434   | 0.03694   | 0.2241   | 1    | tBodyGyroJerk-correlation()-X,Y |


| Var                                     | Var Type | Min. | 1st Qu.  | Median   | Mean     | 3rd Qu.  | Max. | Original Var Name                |
|-----------------------------------------|----------|------|----------|----------|----------|----------|------|----------------------------------|
| tBodyGyroJerk_correlation___X_Z_Ind199  | Numeric  | -1   | -0.1223  | 0.04687  | 0.04927  | 0.2187   | 1    | tBodyGyroJerk-correlation()-X,Z  |
| tBodyGyroJerk_correlation___Y_Z_Ind200  | Numeric  | -1   | -0.2853  | -0.1167  | -0.1136  | 0.04804  | 1    | tBodyGyroJerk-correlation()-Y,Z  |
| tBodyAccMag_mean___Ind201               | Numeric  | -1   | -0.9819  | -0.8746  | -0.5482  | -0.1201  | 1    | tBodyAccMag-mean()               |
| tBodyAccMag_std___Ind202                | Numeric  | -1   | -0.9822  | -0.8437  | -0.5912  | -0.2423  | 1    | tBodyAccMag-std()                |
| tBodyAccMag_mad___Ind203                | Numeric  | -1   | -0.9838  | -0.8623  | -0.6427  | -0.3367  | 1    | tBodyAccMag-mad()                |
| tBodyAccMag_max___Ind204                | Numeric  | -1   | -0.9801  | -0.8492  | -0.5586  | -0.17    | 1    | tBodyAccMag-max()                |
| tBodyAccMag_min___Ind205                | Numeric  | -1   | -0.9925  | -0.9665  | -0.8378  | -0.6947  | 1    | tBodyAccMag-min()                |
| tBodyAccMag_sma___Ind206                | Numeric  | -1   | -0.9819  | -0.8746  | -0.5482  | -0.1201  | 1    | tBodyAccMag-sma()                |
| tBodyAccMag_energy___Ind207             | Numeric  | -1   | -0.9996  | -0.9888  | -0.7775  | -0.6003  | 1    | tBodyAccMag-energy()             |
| tBodyAccMag_iqr___Ind208                | Numeric  | -1   | -0.9845  | -0.8818  | -0.7026  | -0.451   | 1    | tBodyAccMag-iqr()                |
| tBodyAccMag_entropy___Ind209            | Numeric  | -1   | -0.5456  | 0.165    | 0.1328   | 0.801    | 1    | tBodyAccMag-entropy()            |
| tBodyAccMag_arCoeff__1_Ind210           | Numeric  | -1   | -0.2858  | -0.07185 | -0.06954 | 0.1381   | 1    | tBodyAccMag-arCoeff()1           |
| tBodyAccMag_arCoeff__2_Ind211           | Numeric  | -1   | -0.1488  | 0.01791  | 0.02404  | 0.1868   | 1    | tBodyAccMag-arCoeff()2           |
| tBodyAccMag_arCoeff__3_Ind212           | Numeric  | -1   | -0.1109  | 0.06458  | 0.05858  | 0.2348   | 1    | tBodyAccMag-arCoeff()3           |
| tBodyAccMag_arCoeff__4_Ind213           | Numeric  | -1   | -0.2356  | -0.05369 | -0.05789 | 0.1226   | 1    | tBodyAccMag-arCoeff()4           |
| tGravityAccMag_mean___Ind214            | Numeric  | -1   | -0.9819  | -0.8746  | -0.5482  | -0.1201  | 1    | tGravityAccMag-mean()            |
| tGravityAccMag_std___Ind215             | Numeric  | -1   | -0.9822  | -0.8437  | -0.5912  | -0.2423  | 1    | tGravityAccMag-std()             |
| tGravityAccMag_mad___Ind216             | Numeric  | -1   | -0.9838  | -0.8623  | -0.6427  | -0.3367  | 1    | tGravityAccMag-mad()             |
| tGravityAccMag_max___Ind217             | Numeric  | -1   | -0.9801  | -0.8492  | -0.5586  | -0.17    | 1    | tGravityAccMag-max()             |
| tGravityAccMag_min___Ind218             | Numeric  | -1   | -0.9925  | -0.9665  | -0.8378  | -0.6947  | 1    | tGravityAccMag-min()             |
| tGravityAccMag_sma___Ind219             | Numeric  | -1   | -0.9819  | -0.8746  | -0.5482  | -0.1201  | 1    | tGravityAccMag-sma()             |
| tGravityAccMag_energy___Ind220          | Numeric  | -1   | -0.9996  | -0.9888  | -0.7775  | -0.6003  | 1    | tGravityAccMag-energy()          |
| tGravityAccMag_iqr___Ind221             | Numeric  | -1   | -0.9845  | -0.8818  | -0.7026  | -0.451   | 1    | tGravityAccMag-iqr()             |
| tGravityAccMag_entropy___Ind222         | Numeric  | -1   | -0.5456  | 0.165    | 0.1328   | 0.801    | 1    | tGravityAccMag-entropy()         |
| tGravityAccMag_arCoeff__1_Ind223        | Numeric  | -1   | -0.2858  | -0.07185 | -0.06954 | 0.1381   | 1    | tGravityAccMag-arCoeff()1        |
| tGravityAccMag_arCoeff__2_Ind224        | Numeric  | -1   | -0.1488  | 0.01791  | 0.02404  | 0.1868   | 1    | tGravityAccMag-arCoeff()2        |
| tGravityAccMag_arCoeff__3_Ind225        | Numeric  | -1   | -0.1109  | 0.06458  | 0.05858  | 0.2348   | 1    | tGravityAccMag-arCoeff()3        |
| tGravityAccMag_arCoeff__4_Ind226        | Numeric  | -1   | -0.2356  | -0.05369 | -0.05789 | 0.1226   | 1    | tGravityAccMag-arCoeff()4        |
| tBodyAccJerkMag_mean___Ind227           | Numeric  | -1   | -0.9896  | -0.9481  | -0.6494  | -0.2956  | 1    | tBodyAccJerkMag-mean()           |
| tBodyAccJerkMag_std___Ind228            | Numeric  | -1   | -0.9907  | -0.9288  | -0.6278  | -0.2733  | 1    | tBodyAccJerkMag-std()            |
| tBodyAccJerkMag_mad___Ind229            | Numeric  | -1   | -0.9913  | -0.9383  | -0.6469  | -0.3093  | 1    | tBodyAccJerkMag-mad()            |
| tBodyAccJerkMag_max___Ind230            | Numeric  | -1   | -0.9891  | -0.9262  | -0.6387  | -0.2978  | 1    | tBodyAccJerkMag-max()            |
| tBodyAccJerkMag_min___Ind231            | Numeric  | -1   | -0.9832  | -0.9617  | -0.7876  | -0.6108  | 1    | tBodyAccJerkMag-min()            |
| tBodyAccJerkMag_sma___Ind232            | Numeric  | -1   | -0.9896  | -0.9481  | -0.6494  | -0.2956  | 1    | tBodyAccJerkMag-sma()            |
| tBodyAccJerkMag_energy___Ind233         | Numeric  | -1   | -0.9998  | -0.9975  | -0.8511  | -0.7323  | 1    | tBodyAccJerkMag-energy()         |
| tBodyAccJerkMag_iqr___Ind234            | Numeric  | -1   | -0.992   | -0.9547  | -0.6992  | -0.4114  | 1    | tBodyAccJerkMag-iqr()            |
| tBodyAccJerkMag_entropy___Ind235        | Numeric  | -1   | -0.8016  | -0.3204  | -0.06163 | 0.7027   | 1    | tBodyAccJerkMag-entropy()        |
| tBodyAccJerkMag_arCoeff__1_Ind236       | Numeric  | -1   | -0.09056 | 0.09303  | 0.07876  | 0.2589   | 1    | tBodyAccJerkMag-arCoeff()1       |
| tBodyAccJerkMag_arCoeff__2_Ind237       | Numeric  | -1   | -0.2084  | -0.05595 | -0.02904 | 0.1369   | 1    | tBodyAccJerkMag-arCoeff()2       |
| tBodyAccJerkMag_arCoeff__3_Ind238       | Numeric  | -1   | -0.2515  | -0.0939  | -0.09117 | 0.06532  | 1    | tBodyAccJerkMag-arCoeff()3       |
| tBodyAccJerkMag_arCoeff__4_Ind239       | Numeric  | -1   | -0.2207  | -0.04614 | -0.04167 | 0.1322   | 1    | tBodyAccJerkMag-arCoeff()4       |
| tBodyGyroMag_mean___Ind240              | Numeric  | -1   | -0.9781  | -0.8223  | -0.6052  | -0.2454  | 1    | tBodyGyroMag-mean()              |
| tBodyGyroMag_std___Ind241               | Numeric  | -1   | -0.9775  | -0.8259  | -0.6625  | -0.394   | 1    | tBodyGyroMag-std()               |
| tBodyGyroMag_mad___Ind242               | Numeric  | -1   | -0.9758  | -0.8067  | -0.6302  | -0.333   | 1    | tBodyGyroMag-mad()               |
| tBodyGyroMag_max___Ind243               | Numeric  | -1   | -0.9807  | -0.849   | -0.6952  | -0.4523  | 1    | tBodyGyroMag-max()               |
| tBodyGyroMag_min___Ind244               | Numeric  | -1   | -0.9884  | -0.881   | -0.73    | -0.5283  | 1    | tBodyGyroMag-min()               |
| tBodyGyroMag_sma___Ind245               | Numeric  | -1   | -0.9781  | -0.8223  | -0.6052  | -0.2454  | 1    | tBodyGyroMag-sma()               |
| tBodyGyroMag_energy___Ind246            | Numeric  | -1   | -0.9996  | -0.9809  | -0.8348  | -0.7034  | 1    | tBodyGyroMag-energy()            |
| tBodyGyroMag_iqr___Ind247               | Numeric  | -1   | -0.9788  | -0.8164  | -0.6537  | -0.3718  | 1    | tBodyGyroMag-iqr()               |
| tBodyGyroMag_entropy___Ind248           | Numeric  | -1   | -0.1524  | 0.285    | 0.2354   | 0.6574   | 1    | tBodyGyroMag-entropy()           |
| tBodyGyroMag_arCoeff__1_Ind249          | Numeric  | -1   | -0.228   | -0.03027 | -0.02446 | 0.1768   | 1    | tBodyGyroMag-arCoeff()1          |
| tBodyGyroMag_arCoeff__2_Ind250          | Numeric  | -1   | -0.2551  | -0.07579 | -0.06924 | 0.1064   | 1    | tBodyGyroMag-arCoeff()2          |
| tBodyGyroMag_arCoeff__3_Ind251          | Numeric  | -1   | -0.05679 | 0.1098   | 0.1076   | 0.2734   | 1    | tBodyGyroMag-arCoeff()3          |
| tBodyGyroMag_arCoeff__4_Ind252          | Numeric  | -1   | -0.2167  | -0.05272 | -0.05445 | 0.1113   | 1    | tBodyGyroMag-arCoeff()4          |
| tBodyGyroJerkMag_mean___Ind253          | Numeric  | -1   | -0.9923  | -0.9559  | -0.7621  | -0.5499  | 1    | tBodyGyroJerkMag-mean()          |
| tBodyGyroJerkMag_std___Ind254           | Numeric  | -1   | -0.9922  | -0.9403  | -0.778   | -0.6093  | 1    | tBodyGyroJerkMag-std()           |
| tBodyGyroJerkMag_mad___Ind255           | Numeric  | -1   | -0.9929  | -0.9485  | -0.7926  | -0.6289  | 1    | tBodyGyroJerkMag-mad()           |
| tBodyGyroJerkMag_max___Ind256           | Numeric  | -1   | -0.9919  | -0.9396  | -0.7846  | -0.6314  | 1    | tBodyGyroJerkMag-max()           |
| tBodyGyroJerkMag_min___Ind257           | Numeric  | -1   | -0.99    | -0.9709  | -0.8029  | -0.6425  | 1    | tBodyGyroJerkMag-min()           |
| tBodyGyroJerkMag_sma___Ind258           | Numeric  | -1   | -0.9923  | -0.9559  | -0.7621  | -0.5499  | 1    | tBodyGyroJerkMag-sma()           |
| tBodyGyroJerkMag_energy___Ind259        | Numeric  | -1   | -0.9999  | -0.9985  | -0.9319  | -0.9014  | 1    | tBodyGyroJerkMag-energy()        |
| tBodyGyroJerkMag_iqr___Ind260           | Numeric  | -1   | -0.9938  | -0.9577  | -0.8065  | -0.6448  | 1    | tBodyGyroJerkMag-iqr()           |
| tBodyGyroJerkMag_entropy___Ind261       | Numeric  | -1   | -0.5721  | 0.08403  | 0.1307   | 0.8425   | 1    | tBodyGyroJerkMag-entropy()       |
| tBodyGyroJerkMag_arCoeff__1_Ind262      | Numeric  | -1   | 0.141    | 0.2989   | 0.2865   | 0.4533   | 1    | tBodyGyroJerkMag-arCoeff()1      |
| tBodyGyroJerkMag_arCoeff__2_Ind263      | Numeric  | -1   | -0.3701  | -0.2345  | -0.2269  | -0.09745 | 1    | tBodyGyroJerkMag-arCoeff()2      |
| tBodyGyroJerkMag_arCoeff__3_Ind264      | Numeric  | -1   | -0.201   | -0.0587  | -0.05748 | 0.09032  | 1    | tBodyGyroJerkMag-arCoeff()3      |
| tBodyGyroJerkMag_arCoeff__4_Ind265      | Numeric  | -1   | -0.2794  | -0.1187  | -0.1067  | 0.05156  | 1    | tBodyGyroJerkMag-arCoeff()4      |
| fBodyAcc_mean___X_Ind266                | Numeric  | -1   | -0.9913  | -0.9456  | -0.6228  | -0.2646  | 1    | fBodyAcc-mean()-X                |
| fBodyAcc_mean___Y_Ind267                | Numeric  | -1   | -0.9792  | -0.8643  | -0.5375  | -0.1032  | 1    | fBodyAcc-mean()-Y                |
| fBodyAcc_mean___Z_Ind268                | Numeric  | -1   | -0.9832  | -0.8954  | -0.665   | -0.3662  | 1    | fBodyAcc-mean()-Z                |
| fBodyAcc_std___X_Ind269                 | Numeric  | -1   | -0.9929  | -0.9416  | -0.6034  | -0.2493  | 1    | fBodyAcc-std()-X                 |
| fBodyAcc_std___Y_Ind270                 | Numeric  | -1   | -0.9769  | -0.8326  | -0.5284  | -0.09216 | 1    | fBodyAcc-std()-Y                 |
| fBodyAcc_std___Z_Ind271                 | Numeric  | -1   | -0.978   | -0.8398  | -0.6179  | -0.3023  | 1    | fBodyAcc-std()-Z                 |
| fBodyAcc_mad___X_Ind272                 | Numeric  | -1   | -0.9916  | -0.9442  | -0.5908  | -0.2026  | 1    | fBodyAcc-mad()-X                 |
| fBodyAcc_mad___Y_Ind273                 | Numeric  | -1   | -0.9801  | -0.8571  | -0.5222  | -0.0789  | 1    | fBodyAcc-mad()-Y                 |
| fBodyAcc_mad___Z_Ind274                 | Numeric  | -1   | -0.9809  | -0.878   | -0.6323  | -0.3056  | 1    | fBodyAcc-mad()-Z                 |
| fBodyAcc_max___X_Ind275                 | Numeric  | -1   | -0.9943  | -0.9434  | -0.6515  | -0.3516  | 1    | fBodyAcc-max()-X                 |
| fBodyAcc_max___Y_Ind276                 | Numeric  | -1   | -0.98    | -0.858   | -0.6581  | -0.3615  | 1    | fBodyAcc-max()-Y                 |
| fBodyAcc_max___Z_Ind277                 | Numeric  | -1   | -0.9739  | -0.816   | -0.6357  | -0.3667  | 1    | fBodyAcc-max()-Z                 |
| fBodyAcc_min___X_Ind278                 | Numeric  | -1   | -0.9946  | -0.9767  | -0.856   | -0.7901  | 1    | fBodyAcc-min()-X                 |
| fBodyAcc_min___Y_Ind279                 | Numeric  | -1   | -0.992   | -0.9688  | -0.8802  | -0.8246  | 1    | fBodyAcc-min()-Y                 |
| fBodyAcc_min___Z_Ind280                 | Numeric  | -1   | -0.9916  | -0.9745  | -0.9138  | -0.8804  | 1    | fBodyAcc-min()-Z                 |
| fBodyAcc_sma___Ind281                   | Numeric  | -1   | -0.9858  | -0.8983  | -0.5552  | -0.1147  | 1    | fBodyAcc-sma()                   |
| fBodyAcc_energy___X_Ind282              | Numeric  | -1   | -0.9999  | -0.9981  | -0.8259  | -0.717   | 1    | fBodyAcc-energy()-X              |
| fBodyAcc_energy___Y_Ind283              | Numeric  | -1   | -0.9995  | -0.9849  | -0.7525  | -0.5507  | 1    | fBodyAcc-energy()-Y              |
| fBodyAcc_energy___Z_Ind284              | Numeric  | -1   | -0.9994  | -0.9866  | -0.8399  | -0.7322  | 1    | fBodyAcc-energy()-Z              |
| fBodyAcc_iqr___X_Ind285                 | Numeric  | -1   | -0.9898  | -0.9434  | -0.6526  | -0.3283  | 1    | fBodyAcc-iqr()-X                 |
| fBodyAcc_iqr___Y_Ind286                 | Numeric  | -1   | -0.9866  | -0.924   | -0.6499  | -0.3137  | 1    | fBodyAcc-iqr()-Y                 |
| fBodyAcc_iqr___Z_Ind287                 | Numeric  | -1   | -0.9828  | -0.9384  | -0.7468  | -0.5342  | 1    | fBodyAcc-iqr()-Z                 |
| fBodyAcc_entropy___X_Ind288             | Numeric  | -1   | -0.9464  | -0.498   | -0.2003  | 0.5492   | 1    | fBodyAcc-entropy()-X             |
| fBodyAcc_entropy___Y_Ind289             | Numeric  | -1   | -0.8704  | -0.3638  | -0.1839  | 0.5017   | 1    | fBodyAcc-entropy()-Y             |
| fBodyAcc_entropy___Z_Ind290             | Numeric  | -1   | -0.8135  | -0.3852  | -0.2048  | 0.4097   | 1    | fBodyAcc-entropy()-Z             |
| fBodyAcc_maxInds_X_Ind291               | Numeric  | -1   | -1       | -0.8065  | -0.7599  | -0.7419  | 1    | fBodyAcc-maxInds-X               |
| fBodyAcc_maxInds_Y_Ind292               | Numeric  | -1   | -1       | -0.8     | -0.7973  | -0.7333  | 1    | fBodyAcc-maxInds-Y               |
| fBodyAcc_maxInds_Z_Ind293               | Numeric  | -1   | -1       | -0.9231  | -0.8438  | -0.7692  | 1    | fBodyAcc-maxInds-Z               |
| fBodyAcc_meanFreq___X_Ind294            | Numeric  | -1   | -0.4188  | -0.2383  | -0.2215  | -0.02043 | 1    | fBodyAcc-meanFreq()-X            |
| fBodyAcc_meanFreq___Y_Ind295            | Numeric  | -1   | -0.1448  | 0.004666 | 0.0154   | 0.1766   | 1    | fBodyAcc-meanFreq()-Y            |
| fBodyAcc_meanFreq___Z_Ind296            | Numeric  | -1   | -0.1384  | 0.06084  | 0.04731  | 0.2492   | 1    | fBodyAcc-meanFreq()-Z            |
| fBodyAcc_skewness___X_Ind297            | Numeric  | -1   | -0.4893  | -0.1735  | -0.1359  | 0.1522   | 1    | fBodyAcc-skewness()-X            |
| fBodyAcc_kurtosis___X_Ind298            | Numeric  | -1   | -0.8447  | -0.5844  | -0.465   | -0.1792  | 1    | fBodyAcc-kurtosis()-X            |
| fBodyAcc_skewness___Y_Ind299            | Numeric  | -1   | -0.5256  | -0.359   | -0.268   | -0.09974 | 1    | fBodyAcc-skewness()-Y            |
| fBodyAcc_kurtosis___Y_Ind300            | Numeric  | -1   | -0.8501  | -0.7204  | -0.5822  | -0.4524  | 1    | fBodyAcc-kurtosis()-Y            |
| fBodyAcc_skewness___Z_Ind301            | Numeric  | -1   | -0.5623  | -0.314   | -0.2412  | 0.03257  | 1    | fBodyAcc-skewness()-Z            |
| fBodyAcc_kurtosis___Z_Ind302            | Numeric  | -1   | -0.808   | -0.6042  | -0.4795  | -0.2365  | 1    | fBodyAcc-kurtosis()-Z            |
| fBodyAcc_bandsEnergy___1_8_Ind303       | Numeric  | -1   | -1       | -0.998   | -0.818   | -0.7142  | 1    | fBodyAcc-bandsEnergy()-1,8       |
| fBodyAcc_bandsEnergy___9_16_Ind304      | Numeric  | -1   | -0.9999  | -0.999   | -0.8875  | -0.8223  | 1    | fBodyAcc-bandsEnergy()-9,16      |
| fBodyAcc_bandsEnergy___17_24_Ind305     | Numeric  | -1   | -0.9999  | -0.9982  | -0.8583  | -0.7823  | 1    | fBodyAcc-bandsEnergy()-17,24     |
| fBodyAcc_bandsEnergy___25_32_Ind306     | Numeric  | -1   | -0.9999  | -0.9981  | -0.8941  | -0.8563  | 1    | fBodyAcc-bandsEnergy()-25,32     |
| fBodyAcc_bandsEnergy___33_40_Ind307     | Numeric  | -1   | -0.9999  | -0.9986  | -0.915   | -0.8773  | 1    | fBodyAcc-bandsEnergy()-33,40     |
| fBodyAcc_bandsEnergy___41_48_Ind308     | Numeric  | -1   | -0.9999  | -0.9985  | -0.9128  | -0.8754  | 1    | fBodyAcc-bandsEnergy()-41,48     |
| fBodyAcc_bandsEnergy___49_56_Ind309     | Numeric  | -1   | -0.9999  | -0.9991  | -0.946   | -0.9297  | 1    | fBodyAcc-bandsEnergy()-49,56     |
| fBodyAcc_bandsEnergy___57_64_Ind310     | Numeric  | -1   | -1       | -0.9996  | -0.9558  | -0.9728  | 1    | fBodyAcc-bandsEnergy()-57,64     |
| fBodyAcc_bandsEnergy___1_16_Ind311      | Numeric  | -1   | -0.9999  | -0.9981  | -0.8216  | -0.7125  | 1    | fBodyAcc-bandsEnergy()-1,16      |
| fBodyAcc_bandsEnergy___17_32_Ind312     | Numeric  | -1   | -0.9999  | -0.9979  | -0.8468  | -0.7622  | 1    | fBodyAcc-bandsEnergy()-17,32     |
| fBodyAcc_bandsEnergy___33_48_Ind313     | Numeric  | -1   | -0.9999  | -0.9985  | -0.9142  | -0.8733  | 1    | fBodyAcc-bandsEnergy()-33,48     |
| fBodyAcc_bandsEnergy___49_64_Ind314     | Numeric  | -1   | -1       | -0.9991  | -0.9493  | -0.9408  | 1    | fBodyAcc-bandsEnergy()-49,64     |
| fBodyAcc_bandsEnergy___1_24_Ind315      | Numeric  | -1   | -0.9999  | -0.9981  | -0.8242  | -0.7136  | 1    | fBodyAcc-bandsEnergy()-1,24      |
| fBodyAcc_bandsEnergy___25_48_Ind316     | Numeric  | -1   | -0.9998  | -0.9979  | -0.8831  | -0.83    | 1    | fBodyAcc-bandsEnergy()-25,48     |
| fBodyAcc_bandsEnergy___1_8_Ind317       | Numeric  | -1   | -0.9995  | -0.9823  | -0.7878  | -0.6202  | 1    | fBodyAcc-bandsEnergy()-1,8       |
| fBodyAcc_bandsEnergy___9_16_Ind318      | Numeric  | -1   | -0.9998  | -0.9965  | -0.8474  | -0.7654  | 1    | fBodyAcc-bandsEnergy()-9,16      |
| fBodyAcc_bandsEnergy___17_24_Ind319     | Numeric  | -1   | -0.9998  | -0.9972  | -0.8603  | -0.7781  | 1    | fBodyAcc-bandsEnergy()-17,24     |
| fBodyAcc_bandsEnergy___25_32_Ind320     | Numeric  | -1   | -0.9997  | -0.997   | -0.9028  | -0.859   | 1    | fBodyAcc-bandsEnergy()-25,32     |
| fBodyAcc_bandsEnergy___33_40_Ind321     | Numeric  | -1   | -0.9996  | -0.9958  | -0.8974  | -0.8489  | 1    | fBodyAcc-bandsEnergy()-33,40     |
| fBodyAcc_bandsEnergy___41_48_Ind322     | Numeric  | -1   | -0.9996  | -0.9948  | -0.8827  | -0.8218  | 1    | fBodyAcc-bandsEnergy()-41,48     |
| fBodyAcc_bandsEnergy___49_56_Ind323     | Numeric  | -1   | -0.9997  | -0.9946  | -0.9025  | -0.865   | 1    | fBodyAcc-bandsEnergy()-49,56     |
| fBodyAcc_bandsEnergy___57_64_Ind324     | Numeric  | -1   | -0.9999  | -0.9988  | -0.9515  | -0.9683  | 1    | fBodyAcc-bandsEnergy()-57,64     |
| fBodyAcc_bandsEnergy___1_16_Ind325      | Numeric  | -1   | -0.9995  | -0.984   | -0.7589  | -0.5661  | 1    | fBodyAcc-bandsEnergy()-1,16      |
| fBodyAcc_bandsEnergy___17_32_Ind326     | Numeric  | -1   | -0.9998  | -0.9964  | -0.8369  | -0.7342  | 1    | fBodyAcc-bandsEnergy()-17,32     |
| fBodyAcc_bandsEnergy___33_48_Ind327     | Numeric  | -1   | -0.9996  | -0.9949  | -0.88    | -0.8156  | 1    | fBodyAcc-bandsEnergy()-33,48     |
| fBodyAcc_bandsEnergy___49_64_Ind328     | Numeric  | -1   | -0.9998  | -0.995   | -0.92    | -0.8972  | 1    | fBodyAcc-bandsEnergy()-49,64     |
| fBodyAcc_bandsEnergy___1_24_Ind329      | Numeric  | -1   | -0.9995  | -0.9848  | -0.755   | -0.556   | 1    | fBodyAcc-bandsEnergy()-1,24      |
| fBodyAcc_bandsEnergy___25_48_Ind330     | Numeric  | -1   | -0.9997  | -0.9961  | -0.8907  | -0.8317  | 1    | fBodyAcc-bandsEnergy()-25,48     |
| fBodyAcc_bandsEnergy___1_8_Ind331       | Numeric  | -1   | -0.9994  | -0.9845  | -0.8572  | -0.7775  | 1    | fBodyAcc-bandsEnergy()-1,8       |
| fBodyAcc_bandsEnergy___9_16_Ind332      | Numeric  | -1   | -0.9997  | -0.9966  | -0.8994  | -0.8587  | 1    | fBodyAcc-bandsEnergy()-9,16      |
| fBodyAcc_bandsEnergy___17_24_Ind333     | Numeric  | -1   | -0.9997  | -0.9981  | -0.9258  | -0.9046  | 1    | fBodyAcc-bandsEnergy()-17,24     |
| fBodyAcc_bandsEnergy___25_32_Ind334     | Numeric  | -1   | -0.9998  | -0.9986  | -0.9619  | -0.9543  | 1    | fBodyAcc-bandsEnergy()-25,32     |
| fBodyAcc_bandsEnergy___33_40_Ind335     | Numeric  | -1   | -0.9997  | -0.9982  | -0.9639  | -0.9548  | 1    | fBodyAcc-bandsEnergy()-33,40     |
| fBodyAcc_bandsEnergy___41_48_Ind336     | Numeric  | -1   | -0.9995  | -0.9965  | -0.9377  | -0.9174  | 1    | fBodyAcc-bandsEnergy()-41,48     |
| fBodyAcc_bandsEnergy___49_56_Ind337     | Numeric  | -1   | -0.9996  | -0.9956  | -0.9416  | -0.9248  | 1    | fBodyAcc-bandsEnergy()-49,56     |
| fBodyAcc_bandsEnergy___57_64_Ind338     | Numeric  | -1   | -0.9999  | -0.9986  | -0.9579  | -0.9729  | 1    | fBodyAcc-bandsEnergy()-57,64     |
| fBodyAcc_bandsEnergy___1_16_Ind339      | Numeric  | -1   | -0.9995  | -0.9865  | -0.8535  | -0.7626  | 1    | fBodyAcc-bandsEnergy()-1,16      |
| fBodyAcc_bandsEnergy___17_32_Ind340     | Numeric  | -1   | -0.9998  | -0.9984  | -0.9389  | -0.9187  | 1    | fBodyAcc-bandsEnergy()-17,32     |
| fBodyAcc_bandsEnergy___33_48_Ind341     | Numeric  | -1   | -0.9997  | -0.9976  | -0.9545  | -0.9403  | 1    | fBodyAcc-bandsEnergy()-33,48     |
| fBodyAcc_bandsEnergy___49_64_Ind342     | Numeric  | -1   | -0.9997  | -0.9954  | -0.946   | -0.934   | 1    | fBodyAcc-bandsEnergy()-49,64     |
| fBodyAcc_bandsEnergy___1_24_Ind343      | Numeric  | -1   | -0.9994  | -0.9866  | -0.8433  | -0.7408  | 1    | fBodyAcc-bandsEnergy()-1,24      |
| fBodyAcc_bandsEnergy___25_48_Ind344     | Numeric  | -1   | -0.9998  | -0.9983  | -0.9598  | -0.9485  | 1    | fBodyAcc-bandsEnergy()-25,48     |
| fBodyAccJerk_mean___X_Ind345            | Numeric  | -1   | -0.9912  | -0.9516  | -0.6567  | -0.327   | 1    | fBodyAccJerk-mean()-X            |
| fBodyAccJerk_mean___Y_Ind346            | Numeric  | -1   | -0.9848  | -0.9257  | -0.629   | -0.2638  | 1    | fBodyAccJerk-mean()-Y            |
| fBodyAccJerk_mean___Z_Ind347            | Numeric  | -1   | -0.9873  | -0.9475  | -0.7436  | -0.5133  | 1    | fBodyAccJerk-mean()-Z            |
| fBodyAccJerk_std___X_Ind348             | Numeric  | -1   | -0.992   | -0.9562  | -0.655   | -0.3203  | 1    | fBodyAccJerk-std()-X             |
| fBodyAccJerk_std___Y_Ind349             | Numeric  | -1   | -0.9865  | -0.928   | -0.6122  | -0.2361  | 1    | fBodyAccJerk-std()-Y             |
| fBodyAccJerk_std___Z_Ind350             | Numeric  | -1   | -0.9895  | -0.959   | -0.7809  | -0.5903  | 1    | fBodyAccJerk-std()-Z             |
| fBodyAccJerk_mad___X_Ind351             | Numeric  | -1   | -0.9897  | -0.9453  | -0.595   | -0.2015  | 1    | fBodyAccJerk-mad()-X             |
| fBodyAccJerk_mad___Y_Ind352             | Numeric  | -1   | -0.9864  | -0.9287  | -0.624   | -0.2556  | 1    | fBodyAccJerk-mad()-Y             |
| fBodyAccJerk_mad___Z_Ind353             | Numeric  | -1   | -0.9884  | -0.955   | -0.7645  | -0.5575  | 1    | fBodyAccJerk-mad()-Z             |
| fBodyAccJerk_max___X_Ind354             | Numeric  | -1   | -0.9936  | -0.9675  | -0.7116  | -0.4447  | 1    | fBodyAccJerk-max()-X             |
| fBodyAccJerk_max___Y_Ind355             | Numeric  | -1   | -0.9881  | -0.943   | -0.6821  | -0.3918  | 1    | fBodyAccJerk-max()-Y             |
| fBodyAccJerk_max___Z_Ind356             | Numeric  | -1   | -0.9898  | -0.9629  | -0.8012  | -0.64    | 1    | fBodyAccJerk-max()-Z             |
| fBodyAccJerk_min___X_Ind357             | Numeric  | -1   | -0.995   | -0.9829  | -0.8827  | -0.8304  | 1    | fBodyAccJerk-min()-X             |
| fBodyAccJerk_min___Y_Ind358             | Numeric  | -1   | -0.9911  | -0.9708  | -0.8602  | -0.7977  | 1    | fBodyAccJerk-min()-Y             |
| fBodyAccJerk_min___Z_Ind359             | Numeric  | -1   | -0.989   | -0.969   | -0.8844  | -0.8453  | 1    | fBodyAccJerk-min()-Z             |
| fBodyAccJerk_sma___Ind360               | Numeric  | -1   | -0.9884  | -0.9357  | -0.6203  | -0.2445  | 1    | fBodyAccJerk-sma()               |
| fBodyAccJerk_energy___X_Ind361          | Numeric  | -1   | -0.9999  | -0.9985  | -0.8502  | -0.7457  | 1    | fBodyAccJerk-energy()-X          |
| fBodyAccJerk_energy___Y_Ind362          | Numeric  | -1   | -0.9997  | -0.9965  | -0.8273  | -0.6926  | 1    | fBodyAccJerk-energy()-Y          |
| fBodyAccJerk_energy___Z_Ind363          | Numeric  | -1   | -0.9998  | -0.9983  | -0.9307  | -0.8929  | 1    | fBodyAccJerk-energy()-Z          |
| fBodyAccJerk_iqr___X_Ind364             | Numeric  | -1   | -0.9892  | -0.9456  | -0.6341  | -0.2984  | 1    | fBodyAccJerk-iqr()-X             |
| fBodyAccJerk_iqr___Y_Ind365             | Numeric  | -1   | -0.9881  | -0.944   | -0.7199  | -0.4543  | 1    | fBodyAccJerk-iqr()-Y             |
| fBodyAccJerk_iqr___Z_Ind366             | Numeric  | -1   | -0.9856  | -0.9509  | -0.7715  | -0.5839  | 1    | fBodyAccJerk-iqr()-Z             |
| fBodyAccJerk_entropy___X_Ind367         | Numeric  | -1   | -1       | -0.679   | -0.2669  | 0.5196   | 1    | fBodyAccJerk-entropy()-X         |
| fBodyAccJerk_entropy___Y_Ind368         | Numeric  | -1   | -1       | -0.6182  | -0.2656  | 0.5085   | 1    | fBodyAccJerk-entropy()-Y         |
| fBodyAccJerk_entropy___Z_Ind369         | Numeric  | -1   | -1       | -0.6706  | -0.3654  | 0.2886   | 1    | fBodyAccJerk-entropy()-Z         |
| fBodyAccJerk_maxInds_X_Ind370           | Numeric  | -1   | -0.68    | -0.4     | -0.4141  | -0.16    | 1    | fBodyAccJerk-maxInds-X           |
| fBodyAccJerk_maxInds_Y_Ind371           | Numeric  | -1   | -0.56    | -0.4     | -0.3969  | -0.24    | 1    | fBodyAccJerk-maxInds-Y           |
| fBodyAccJerk_maxInds_Z_Ind372           | Numeric  | -1   | -0.48    | -0.32    | -0.3245  | -0.16    | 1    | fBodyAccJerk-maxInds-Z           |
| fBodyAccJerk_meanFreq___X_Ind373        | Numeric  | -1   | -0.2977  | -0.04544 | -0.04771 | 0.2045   | 1    | fBodyAccJerk-meanFreq()-X        |
| fBodyAccJerk_meanFreq___Y_Ind374        | Numeric  | -1   | -0.428   | -0.2365  | -0.2134  | 0.008651 | 1    | fBodyAccJerk-meanFreq()-Y        |
| fBodyAccJerk_meanFreq___Z_Ind375        | Numeric  | -1   | -0.3314  | -0.1025  | -0.1238  | 0.09124  | 1    | fBodyAccJerk-meanFreq()-Z        |
| fBodyAccJerk_skewness___X_Ind376        | Numeric  | -1   | -0.5046  | -0.3525  | -0.3155  | -0.1632  | 1    | fBodyAccJerk-skewness()-X        |
| fBodyAccJerk_kurtosis___X_Ind377        | Numeric  | -1   | -0.857   | -0.7733  | -0.7132  | -0.6363  | 1    | fBodyAccJerk-kurtosis()-X        |
| fBodyAccJerk_skewness___Y_Ind378        | Numeric  | -1   | -0.5357  | -0.421   | -0.3998  | -0.2928  | 1    | fBodyAccJerk-skewness()-Y        |
| fBodyAccJerk_kurtosis___Y_Ind379        | Numeric  | -1   | -0.9135  | -0.858   | -0.8231  | -0.7766  | 1    | fBodyAccJerk-kurtosis()-Y        |
| fBodyAccJerk_skewness___Z_Ind380        | Numeric  | -1   | -0.6277  | -0.5194  | -0.4877  | -0.3836  | 1    | fBodyAccJerk-skewness()-Z        |
| fBodyAccJerk_kurtosis___Z_Ind381        | Numeric  | -1   | -0.9118  | -0.8557  | -0.8159  | -0.7684  | 1    | fBodyAccJerk-kurtosis()-Z        |
| fBodyAccJerk_bandsEnergy___1_8_Ind382   | Numeric  | -1   | -1       | -0.9996  | -0.8678  | -0.8053  | 1    | fBodyAccJerk-bandsEnergy()-1,8   |
| fBodyAccJerk_bandsEnergy___9_16_Ind383  | Numeric  | -1   | -0.9999  | -0.9991  | -0.8866  | -0.8141  | 1    | fBodyAccJerk-bandsEnergy()-9,16  |
| fBodyAccJerk_bandsEnergy___17_24_Ind384 | Numeric  | -1   | -0.9999  | -0.9986  | -0.8737  | -0.8108  | 1    | fBodyAccJerk-bandsEnergy()-17,24 |
| fBodyAccJerk_bandsEnergy___25_32_Ind385 | Numeric  | -1   | -0.9999  | -0.9985  | -0.8975  | -0.865   | 1    | fBodyAccJerk-bandsEnergy()-25,32 |
| fBodyAccJerk_bandsEnergy___33_40_Ind386 | Numeric  | -1   | -0.9999  | -0.9989  | -0.9218  | -0.8888  | 1    | fBodyAccJerk-bandsEnergy()-33,40 |
| fBodyAccJerk_bandsEnergy___41_48_Ind387 | Numeric  | -1   | -0.9998  | -0.9987  | -0.903   | -0.8603  | 1    | fBodyAccJerk-bandsEnergy()-41,48 |
| fBodyAccJerk_bandsEnergy___49_56_Ind388 | Numeric  | -1   | -0.9999  | -0.9992  | -0.9451  | -0.9242  | 1    | fBodyAccJerk-bandsEnergy()-49,56 |
| fBodyAccJerk_bandsEnergy___57_64_Ind389 | Numeric  | -1   | -1       | -0.9999  | -0.9845  | -0.9912  | 1    | fBodyAccJerk-bandsEnergy()-57,64 |
| fBodyAccJerk_bandsEnergy___1_16_Ind390  | Numeric  | -1   | -1       | -0.9992  | -0.8682  | -0.7849  | 1    | fBodyAccJerk-bandsEnergy()-1,16  |
| fBodyAccJerk_bandsEnergy___17_32_Ind391 | Numeric  | -1   | -0.9999  | -0.9981  | -0.8547  | -0.7799  | 1    | fBodyAccJerk-bandsEnergy()-17,32 |
| fBodyAccJerk_bandsEnergy___33_48_Ind392 | Numeric  | -1   | -0.9999  | -0.9987  | -0.9075  | -0.8622  | 1    | fBodyAccJerk-bandsEnergy()-33,48 |
| fBodyAccJerk_bandsEnergy___49_64_Ind393 | Numeric  | -1   | -0.9999  | -0.9992  | -0.9431  | -0.9211  | 1    | fBodyAccJerk-bandsEnergy()-49,64 |
| fBodyAccJerk_bandsEnergy___1_24_Ind394  | Numeric  | -1   | -0.9999  | -0.9987  | -0.8461  | -0.7366  | 1    | fBodyAccJerk-bandsEnergy()-1,24  |
| fBodyAccJerk_bandsEnergy___25_48_Ind395 | Numeric  | -1   | -0.9998  | -0.998   | -0.8622  | -0.7992  | 1    | fBodyAccJerk-bandsEnergy()-25,48 |
| fBodyAccJerk_bandsEnergy___1_8_Ind396   | Numeric  | -1   | -0.9998  | -0.9953  | -0.8346  | -0.72    | 1    | fBodyAccJerk-bandsEnergy()-1,8   |
| fBodyAccJerk_bandsEnergy___9_16_Ind397  | Numeric  | -1   | -0.9999  | -0.9978  | -0.8688  | -0.7973  | 1    | fBodyAccJerk-bandsEnergy()-9,16  |
| fBodyAccJerk_bandsEnergy___17_24_Ind398 | Numeric  | -1   | -0.9998  | -0.9974  | -0.8364  | -0.74    | 1    | fBodyAccJerk-bandsEnergy()-17,24 |

| Var                                         | Var Type           | Min. | 1st Qu.   | Median    | Mean      | 3rd Qu.   | Max. | Original Var Name                    |
|---------------------------------------------|--------------------|------|-----------|-----------|-----------|-----------|------|--------------------------------------|
| fBodyAccJerk_bandsEnergy___25_32_Ind399     | Numeric            | -1   | -0.9998   | -0.9979   | -0.9082   | -0.8663   | 1    | fBodyAccJerk-bandsEnergy()-25,32     |
| fBodyAccJerk_bandsEnergy___33_40_Ind400     | Numeric            | -1   | -0.9997   | -0.998    | -0.9158   | -0.8769   | 1    | fBodyAccJerk-bandsEnergy()-33,40     |
| fBodyAccJerk_bandsEnergy___41_48_Ind401     | Numeric            | -1   | -0.9996   | -0.9968   | -0.877    | -0.8108   | 1    | fBodyAccJerk-bandsEnergy()-41,48     |
| fBodyAccJerk_bandsEnergy___49_56_Ind402     | Numeric            | -1   | -0.9997   | -0.9979   | -0.9233   | -0.8872   | 1    | fBodyAccJerk-bandsEnergy()-49,56     |
| fBodyAccJerk_bandsEnergy___57_64_Ind403     | Numeric            | -1   | -1        | -0.9996   | -0.9713   | -0.9838   | 1    | fBodyAccJerk-bandsEnergy()-57,64     |
| fBodyAccJerk_bandsEnergy___1_16_Ind404      | Numeric            | -1   | -0.9998   | -0.9967   | -0.842    | -0.743    | 1    | fBodyAccJerk-bandsEnergy()-1,16      |
| fBodyAccJerk_bandsEnergy___17_32_Ind405     | Numeric            | -1   | -0.9997   | -0.997    | -0.8374   | -0.7346   | 1    | fBodyAccJerk-bandsEnergy()-17,32     |
| fBodyAccJerk_bandsEnergy___33_48_Ind406     | Numeric            | -1   | -0.9996   | -0.9969   | -0.8791   | -0.811    | 1    | fBodyAccJerk-bandsEnergy()-33,48     |
| fBodyAccJerk_bandsEnergy___49_64_Ind407     | Numeric            | -1   | -0.9998   | -0.9981   | -0.9293   | -0.8961   | 1    | fBodyAccJerk-bandsEnergy()-49,64     |
| fBodyAccJerk_bandsEnergy___1_24_Ind408      | Numeric            | -1   | -0.9998   | -0.9964   | -0.8131   | -0.6732   | 1    | fBodyAccJerk-bandsEnergy()-1,24      |
| fBodyAccJerk_bandsEnergy___25_48_Ind409     | Numeric            | -1   | -0.9997   | -0.9975   | -0.8957   | -0.8361   | 1    | fBodyAccJerk-bandsEnergy()-25,48     |
| fBodyAccJerk_bandsEnergy___1_8_Ind410       | Numeric            | -1   | -0.9998   | -0.997    | -0.9007   | -0.8565   | 1    | fBodyAccJerk-bandsEnergy()-1,8       |
| fBodyAccJerk_bandsEnergy___9_16_Ind411      | Numeric            | -1   | -0.9997   | -0.9977   | -0.8993   | -0.8594   | 1    | fBodyAccJerk-bandsEnergy()-9,16      |
| fBodyAccJerk_bandsEnergy___17_24_Ind412     | Numeric            | -1   | -0.9998   | -0.9987   | -0.9314   | -0.9118   | 1    | fBodyAccJerk-bandsEnergy()-17,24     |
| fBodyAccJerk_bandsEnergy___25_32_Ind413     | Numeric            | -1   | -0.9998   | -0.9991   | -0.9634   | -0.9562   | 1    | fBodyAccJerk-bandsEnergy()-25,32     |
| fBodyAccJerk_bandsEnergy___33_40_Ind414     | Numeric            | -1   | -0.9998   | -0.9989   | -0.9674   | -0.9607   | 1    | fBodyAccJerk-bandsEnergy()-33,40     |
| fBodyAccJerk_bandsEnergy___41_48_Ind415     | Numeric            | -1   | -0.9996   | -0.998    | -0.9424   | -0.9253   | 1    | fBodyAccJerk-bandsEnergy()-41,48     |
| fBodyAccJerk_bandsEnergy___49_56_Ind416     | Numeric            | -1   | -0.9995   | -0.9975   | -0.9323   | -0.9151   | 1    | fBodyAccJerk-bandsEnergy()-49,56     |
| fBodyAccJerk_bandsEnergy___57_64_Ind417     | Numeric            | -1   | -0.9999   | -0.9994   | -0.9714   | -0.9871   | 1    | fBodyAccJerk-bandsEnergy()-57,64     |
| fBodyAccJerk_bandsEnergy___1_16_Ind418      | Numeric            | -1   | -0.9997   | -0.9968   | -0.8786   | -0.8185   | 1    | fBodyAccJerk-bandsEnergy()-1,16      |
| fBodyAccJerk_bandsEnergy___17_32_Ind419     | Numeric            | -1   | -0.9998   | -0.9989   | -0.9471   | -0.9288   | 1    | fBodyAccJerk-bandsEnergy()-17,32     |
| fBodyAccJerk_bandsEnergy___33_48_Ind420     | Numeric            | -1   | -0.9997   | -0.9986   | -0.9576   | -0.9451   | 1    | fBodyAccJerk-bandsEnergy()-33,48     |
| fBodyAccJerk_bandsEnergy___49_64_Ind421     | Numeric            | -1   | -0.9995   | -0.9975   | -0.9325   | -0.9157   | 1    | fBodyAccJerk-bandsEnergy()-49,64     |
| fBodyAccJerk_bandsEnergy___1_24_Ind422      | Numeric            | -1   | -0.9997   | -0.9976   | -0.8992   | -0.8468   | 1    | fBodyAccJerk-bandsEnergy()-1,24      |
| fBodyAccJerk_bandsEnergy___25_48_Ind423     | Numeric            | -1   | -0.9998   | -0.9989   | -0.9611   | -0.9502   | 1    | fBodyAccJerk-bandsEnergy()-25,48     |
| fBodyGyro_mean___X_Ind424                   | Numeric            | -1   | -0.9853   | -0.8917   | -0.6721   | -0.3837   | 1    | fBodyGyro-mean()-X                   |
| fBodyGyro_mean___Y_Ind425                   | Numeric            | -1   | -0.9847   | -0.9197   | -0.7062   | -0.4735   | 1    | fBodyGyro-mean()-Y                   |
| fBodyGyro_mean___Z_Ind426                   | Numeric            | -1   | -0.9851   | -0.8877   | -0.6442   | -0.3225   | 1    | fBodyGyro-mean()-Z                   |
| fBodyGyro_std___X_Ind427                    | Numeric            | -1   | -0.9881   | -0.9053   | -0.7386   | -0.5225   | 1    | fBodyGyro-std()-X                    |
| fBodyGyro_std___Y_Ind428                    | Numeric            | -1   | -0.9808   | -0.9061   | -0.6742   | -0.4385   | 1    | fBodyGyro-std()-Y                    |
| fBodyGyro_std___Z_Ind429                    | Numeric            | -1   | -0.9862   | -0.8915   | -0.6904   | -0.4168   | 1    | fBodyGyro-std()-Z                    |
| fBodyGyro_mad___X_Ind430                    | Numeric            | -1   | -0.9861   | -0.8897   | -0.688    | -0.4142   | 1    | fBodyGyro-mad()-X                    |
| fBodyGyro_mad___Y_Ind431                    | Numeric            | -1   | -0.9845   | -0.9204   | -0.7121   | -0.4955   | 1    | fBodyGyro-mad()-Y                    |
| fBodyGyro_mad___Z_Ind432                    | Numeric            | -1   | -0.985    | -0.8887   | -0.6409   | -0.3103   | 1    | fBodyGyro-mad()-Z                    |
| fBodyGyro_max___X_Ind433                    | Numeric            | -1   | -0.9883   | -0.9072   | -0.7355   | -0.5374   | 1    | fBodyGyro-max()-X                    |
| fBodyGyro_max___Y_Ind434                    | Numeric            | -1   | -0.9835   | -0.9211   | -0.7337   | -0.5703   | 1    | fBodyGyro-max()-Y                    |
| fBodyGyro_max___Z_Ind435                    | Numeric            | -1   | -0.9886   | -0.9102   | -0.7642   | -0.5813   | 1    | fBodyGyro-max()-Z                    |
| fBodyGyro_min___X_Ind436                    | Numeric            | -1   | -0.997    | -0.9822   | -0.9315   | -0.9063   | 1    | fBodyGyro-min()-X                    |
| fBodyGyro_min___Y_Ind437                    | Numeric            | -1   | -0.9946   | -0.9747   | -0.9007   | -0.8631   | 1    | fBodyGyro-min()-Y                    |
| fBodyGyro_min___Z_Ind438                    | Numeric            | -1   | -0.9946   | -0.9717   | -0.9088   | -0.8703   | 1    | fBodyGyro-min()-Z                    |
| fBodyGyro_sma___Ind439                      | Numeric            | -1   | -0.9842   | -0.9006   | -0.6603   | -0.3531   | 1    | fBodyGyro-sma()                      |
| fBodyGyro_energy___X_Ind440                 | Numeric            | -1   | -0.9999   | -0.995    | -0.9154   | -0.8652   | 1    | fBodyGyro-energy()-X                 |
| fBodyGyro_energy___Y_Ind441                 | Numeric            | -1   | -0.9998   | -0.9958   | -0.8854   | -0.8455   | 1    | fBodyGyro-energy()-Y                 |
| fBodyGyro_energy___Z_Ind442                 | Numeric            | -1   | -0.9998   | -0.9925   | -0.8696   | -0.7788   | 1    | fBodyGyro-energy()-Z                 |
| fBodyGyro_iqr___X_Ind443                    | Numeric            | -1   | -0.9893   | -0.93     | -0.7073   | -0.4511   | 1    | fBodyGyro-iqr()-X                    |
| fBodyGyro_iqr___Y_Ind444                    | Numeric            | -1   | -0.99     | -0.9419   | -0.7538   | -0.572    | 1    | fBodyGyro-iqr()-Y                    |
| fBodyGyro_iqr___Z_Ind445                    | Numeric            | -1   | -0.9894   | -0.9333   | -0.6969   | -0.438    | 1    | fBodyGyro-iqr()-Z                    |
| fBodyGyro_entropy___X_Ind446                | Numeric            | -1   | -0.6991   | -0.166    | -0.09318  | 0.5172    | 1    | fBodyGyro-entropy()-X                |
| fBodyGyro_entropy___Y_Ind447                | Numeric            | -1   | -0.6365   | -0.132    | -0.04674  | 0.5629    | 1    | fBodyGyro-entropy()-Y                |
| fBodyGyro_entropy___Z_Ind448                | Numeric            | -1   | -0.7588   | -0.249    | -0.1491   | 0.4495    | 1    | fBodyGyro-entropy()-Z                |
| fBodyGyro_maxInds_X_Ind449                  | Numeric            | -1   | -1        | -0.9333   | -0.8789   | -0.8667   | 1    | fBodyGyro-maxInds-X                  |
| fBodyGyro_maxInds_Y_Ind450                  | Numeric            | -1   | -1        | -0.9355   | -0.8012   | -0.6774   | 1    | fBodyGyro-maxInds-Y                  |
| fBodyGyro_maxInds_Z_Ind451                  | Numeric            | -1   | -1        | -0.931    | -0.8079   | -0.6552   | 1    | fBodyGyro-maxInds-Z                  |
| fBodyGyro_meanFreq___X_Ind452               | Numeric            | -1   | -0.2719   | -0.09868  | -0.101    | 0.0681    | 1    | fBodyGyro-meanFreq()-X               |
| fBodyGyro_meanFreq___Y_Ind453               | Numeric            | -1   | -0.3626   | -0.173    | -0.1743   | 0.01366   | 1    | fBodyGyro-meanFreq()-Y               |
| fBodyGyro_meanFreq___Z_Ind454               | Numeric            | -1   | -0.2324   | -0.05369  | -0.05139  | 0.1225    | 1    | fBodyGyro-meanFreq()-Z               |
| fBodyGyro_skewness___X_Ind455               | Numeric            | -1   | -0.4172   | -0.2195   | -0.1768   | 0.03088   | 1    | fBodyGyro-skewness()-X               |
| fBodyGyro_kurtosis___X_Ind456               | Numeric            | -1   | -0.7536   | -0.5839   | -0.494    | -0.3072   | 1    | fBodyGyro-kurtosis()-X               |
| fBodyGyro_skewness___Y_Ind457               | Numeric            | -1   | -0.4495   | -0.249    | -0.1785   | 0.03578   | 1    | fBodyGyro-skewness()-Y               |
| fBodyGyro_kurtosis___Y_Ind458               | Numeric            | -1   | -0.8173   | -0.6584   | -0.5331   | -0.3575   | 1    | fBodyGyro-kurtosis()-Y               |
| fBodyGyro_skewness___Z_Ind459               | Numeric            | -1   | -0.4653   | -0.2704   | -0.2136   | -0.005613 | 1    | fBodyGyro-skewness()-Z               |
| fBodyGyro_kurtosis___Z_Ind460               | Numeric            | -1   | -0.7969   | -0.6366   | -0.5331   | -0.3574   | 1    | fBodyGyro-kurtosis()-Z               |
| fBodyGyro_bandsEnergy___1_8_Ind461          | Numeric            | -1   | -0.9999   | -0.9953   | -0.9292   | -0.897    | 1    | fBodyGyro-bandsEnergy()-1,8          |
| fBodyGyro_bandsEnergy___9_16_Ind462         | Numeric            | -1   | -0.9999   | -0.9975   | -0.9076   | -0.8673   | 1    | fBodyGyro-bandsEnergy()-9,16         |
| fBodyGyro_bandsEnergy___17_24_Ind463        | Numeric            | -1   | -0.9999   | -0.9983   | -0.9201   | -0.8874   | 1    | fBodyGyro-bandsEnergy()-17,24        |
| fBodyGyro_bandsEnergy___25_32_Ind464        | Numeric            | -1   | -1        | -0.9987   | -0.9589   | -0.948    | 1    | fBodyGyro-bandsEnergy()-25,32        |
| fBodyGyro_bandsEnergy___33_40_Ind465        | Numeric            | -1   | -0.9999   | -0.998    | -0.95     | -0.9367   | 1    | fBodyGyro-bandsEnergy()-33,40        |
| fBodyGyro_bandsEnergy___41_48_Ind466        | Numeric            | -1   | -0.9999   | -0.9978   | -0.9522   | -0.935    | 1    | fBodyGyro-bandsEnergy()-41,48        |
| fBodyGyro_bandsEnergy___49_56_Ind467        | Numeric            | -1   | -0.9999   | -0.998    | -0.9641   | -0.9584   | 1    | fBodyGyro-bandsEnergy()-49,56        |
| fBodyGyro_bandsEnergy___57_64_Ind468        | Numeric            | -1   | -1        | -0.9995   | -0.9754   | -0.9836   | 1    | fBodyGyro-bandsEnergy()-57,64        |
| fBodyGyro_bandsEnergy___1_16_Ind469         | Numeric            | -1   | -0.9999   | -0.9951   | -0.9199   | -0.8747   | 1    | fBodyGyro-bandsEnergy()-1,16         |
| fBodyGyro_bandsEnergy___17_32_Ind470        | Numeric            | -1   | -0.9999   | -0.998    | -0.919    | -0.883    | 1    | fBodyGyro-bandsEnergy()-17,32        |
| fBodyGyro_bandsEnergy___33_48_Ind471        | Numeric            | -1   | -0.9999   | -0.9977   | -0.9459   | -0.9286   | 1    | fBodyGyro-bandsEnergy()-33,48        |
| fBodyGyro_bandsEnergy___49_64_Ind472        | Numeric            | -1   | -1        | -0.9982   | -0.9691   | -0.9686   | 1    | fBodyGyro-bandsEnergy()-49,64        |
| fBodyGyro_bandsEnergy___1_24_Ind473         | Numeric            | -1   | -0.9999   | -0.995    | -0.9169   | -0.868    | 1    | fBodyGyro-bandsEnergy()-1,24         |
| fBodyGyro_bandsEnergy___25_48_Ind474        | Numeric            | -1   | -0.9999   | -0.9984   | -0.9547   | -0.9382   | 1    | fBodyGyro-bandsEnergy()-25,48        |
| fBodyGyro_bandsEnergy___1_8_Ind475          | Numeric            | -1   | -0.9997   | -0.9945   | -0.8785   | -0.8466   | 1    | fBodyGyro-bandsEnergy()-1,8          |
| fBodyGyro_bandsEnergy___9_16_Ind476         | Numeric            | -1   | -1        | -0.999    | -0.9574   | -0.9534   | 1    | fBodyGyro-bandsEnergy()-9,16         |
| fBodyGyro_bandsEnergy___17_24_Ind477        | Numeric            | -1   | -1        | -0.9994   | -0.9598   | -0.9647   | 1    | fBodyGyro-bandsEnergy()-17,24        |
| fBodyGyro_bandsEnergy___25_32_Ind478        | Numeric            | -1   | -1        | -0.9994   | -0.9675   | -0.9692   | 1    | fBodyGyro-bandsEnergy()-25,32        |
| fBodyGyro_bandsEnergy___33_40_Ind479        | Numeric            | -1   | -1        | -0.9994   | -0.9776   | -0.9759   | 1    | fBodyGyro-bandsEnergy()-33,40        |
| fBodyGyro_bandsEnergy___41_48_Ind480        | Numeric            | -1   | -0.9999   | -0.9988   | -0.9581   | -0.953    | 1    | fBodyGyro-bandsEnergy()-41,48        |
| fBodyGyro_bandsEnergy___49_56_Ind481        | Numeric            | -1   | -0.9999   | -0.9983   | -0.9524   | -0.9488   | 1    | fBodyGyro-bandsEnergy()-49,56        |
| fBodyGyro_bandsEnergy___57_64_Ind482        | Numeric            | -1   | -1        | -0.9995   | -0.9761   | -0.9866   | 1    | fBodyGyro-bandsEnergy()-57,64        |
| fBodyGyro_bandsEnergy___1_16_Ind483         | Numeric            | -1   | -0.9998   | -0.9955   | -0.8905   | -0.8538   | 1    | fBodyGyro-bandsEnergy()-1,16         |
| fBodyGyro_bandsEnergy___17_32_Ind484        | Numeric            | -1   | -1        | -0.9992   | -0.9526   | -0.9547   | 1    | fBodyGyro-bandsEnergy()-17,32        |
| fBodyGyro_bandsEnergy___33_48_Ind485        | Numeric            | -1   | -1        | -0.9993   | -0.9734   | -0.9703   | 1    | fBodyGyro-bandsEnergy()-33,48        |
| fBodyGyro_bandsEnergy___49_64_Ind486        | Numeric            | -1   | -0.9999   | -0.9982   | -0.9562   | -0.9554   | 1    | fBodyGyro-bandsEnergy()-49,64        |
| fBodyGyro_bandsEnergy___1_24_Ind487         | Numeric            | -1   | -0.9998   | -0.9954   | -0.879    | -0.8369   | 1    | fBodyGyro-bandsEnergy()-1,24         |
| fBodyGyro_bandsEnergy___25_48_Ind488        | Numeric            | -1   | -1        | -0.9993   | -0.9668   | -0.9657   | 1    | fBodyGyro-bandsEnergy()-25,48        |
| fBodyGyro_bandsEnergy___1_8_Ind489          | Numeric            | -1   | -0.9998   | -0.9932   | -0.8992   | -0.8407   | 1    | fBodyGyro-bandsEnergy()-1,8          |
| fBodyGyro_bandsEnergy___9_16_Ind490         | Numeric            | -1   | -0.9999   | -0.9983   | -0.9329   | -0.9141   | 1    | fBodyGyro-bandsEnergy()-9,16         |
| fBodyGyro_bandsEnergy___17_24_Ind491        | Numeric            | -1   | -0.9999   | -0.9987   | -0.9319   | -0.9123   | 1    | fBodyGyro-bandsEnergy()-17,24        |
| fBodyGyro_bandsEnergy___25_32_Ind492        | Numeric            | -1   | -1        | -0.9991   | -0.9656   | -0.9602   | 1    | fBodyGyro-bandsEnergy()-25,32        |
| fBodyGyro_bandsEnergy___33_40_Ind493        | Numeric            | -1   | -0.9999   | -0.9987   | -0.9711   | -0.9661   | 1    | fBodyGyro-bandsEnergy()-33,40        |
| fBodyGyro_bandsEnergy___41_48_Ind494        | Numeric            | -1   | -0.9999   | -0.9977   | -0.9605   | -0.9498   | 1    | fBodyGyro-bandsEnergy()-41,48        |
| fBodyGyro_bandsEnergy___49_56_Ind495        | Numeric            | -1   | -0.9999   | -0.9957   | -0.9513   | -0.9459   | 1    | fBodyGyro-bandsEnergy()-49,56        |
| fBodyGyro_bandsEnergy___57_64_Ind496        | Numeric            | -1   | -1        | -0.999    | -0.9694   | -0.9813   | 1    | fBodyGyro-bandsEnergy()-57,64        |
| fBodyGyro_bandsEnergy___1_16_Ind497         | Numeric            | -1   | -0.9998   | -0.9928   | -0.8816   | -0.8046   | 1    | fBodyGyro-bandsEnergy()-1,16         |
| fBodyGyro_bandsEnergy___17_32_Ind498        | Numeric            | -1   | -0.9999   | -0.9983   | -0.9184   | -0.892    | 1    | fBodyGyro-bandsEnergy()-17,32        |
| fBodyGyro_bandsEnergy___33_48_Ind499        | Numeric            | -1   | -0.9999   | -0.9984   | -0.9682   | -0.9607   | 1    | fBodyGyro-bandsEnergy()-33,48        |
| fBodyGyro_bandsEnergy___49_64_Ind500        | Numeric            | -1   | -0.9999   | -0.9961   | -0.9592   | -0.9585   | 1    | fBodyGyro-bandsEnergy()-49,64        |
| fBodyGyro_bandsEnergy___1_24_Ind501         | Numeric            | -1   | -0.9998   | -0.9927   | -0.873    | -0.7849   | 1    | fBodyGyro-bandsEnergy()-1,24         |
| fBodyGyro_bandsEnergy___25_48_Ind502        | Numeric            | -1   | -0.9999   | -0.9988   | -0.9664   | -0.9592   | 1    | fBodyGyro-bandsEnergy()-25,48        |
| fBodyAccMag_mean___Ind503                   | Numeric            | -1   | -0.9847   | -0.8755   | -0.586    | -0.2173   | 1    | fBodyAccMag-mean()                   |
| fBodyAccMag_std___Ind504                    | Numeric            | -1   | -0.9829   | -0.8547   | -0.6595   | -0.3823   | 1    | fBodyAccMag-std()                    |
| fBodyAccMag_mad___Ind505                    | Numeric            | -1   | -0.9815   | -0.8549   | -0.5961   | -0.253    | 1    | fBodyAccMag-mad()                    |
| fBodyAccMag_max___Ind506                    | Numeric            | -1   | -0.9863   | -0.8772   | -0.7565   | -0.5714   | 1    | fBodyAccMag-max()                    |
| fBodyAccMag_min___Ind507                    | Numeric            | -1   | -0.9916   | -0.9692   | -0.8906   | -0.8388   | 1    | fBodyAccMag-min()                    |
| fBodyAccMag_sma___Ind508                    | Numeric            | -1   | -0.9847   | -0.8755   | -0.586    | -0.2173   | 1    | fBodyAccMag-sma()                    |
| fBodyAccMag_energy___Ind509                 | Numeric            | -1   | -0.9997   | -0.9863   | -0.8219   | -0.7082   | 1    | fBodyAccMag-energy()                 |
| fBodyAccMag_iqr___Ind510                    | Numeric            | -1   | -0.9878   | -0.9307   | -0.6949   | -0.4323   | 1    | fBodyAccMag-iqr()                    |
| fBodyAccMag_entropy___Ind511                | Numeric            | -1   | -0.8735   | -0.3548   | -0.1901   | 0.4906    | 1    | fBodyAccMag-entropy()                |
| fBodyAccMag_maxInds_Ind512                  | Numeric            | -1   | -1        | -0.7931   | -0.7526   | -0.5172   | 1    | fBodyAccMag-maxInds                  |
| fBodyAccMag_meanFreq___Ind513               | Numeric            | -1   | -0.09663  | 0.07026   | 0.07688   | 0.245     | 1    | fBodyAccMag-meanFreq()               |
| fBodyAccMag_skewness___Ind514               | Numeric            | -1   | -0.5752   | -0.4228   | -0.3524   | -0.2041   | 1    | fBodyAccMag-skewness()               |
| fBodyAccMag_kurtosis___Ind515               | Numeric            | -1   | -0.844    | -0.7345   | -0.6321   | -0.5359   | 1    | fBodyAccMag-kurtosis()               |
| fBodyBodyAccJerkMag_mean___Ind516           | Numeric            | -1   | -0.9898   | -0.929    | -0.6208   | -0.26     | 1    | fBodyBodyAccJerkMag-mean()           |
| fBodyBodyAccJerkMag_std___Ind517            | Numeric            | -1   | -0.9907   | -0.9255   | -0.6401   | -0.3082   | 1    | fBodyBodyAccJerkMag-std()            |
| fBodyBodyAccJerkMag_mad___Ind518            | Numeric            | -1   | -0.9882   | -0.9233   | -0.6143   | -0.2515   | 1    | fBodyBodyAccJerkMag-mad()            |
| fBodyBodyAccJerkMag_max___Ind519            | Numeric            | -1   | -0.9925   | -0.9354   | -0.6827   | -0.4043   | 1    | fBodyBodyAccJerkMag-max()            |
| fBodyBodyAccJerkMag_min___Ind520            | Numeric            | -1   | -0.9868   | -0.9597   | -0.8033   | -0.6786   | 1    | fBodyBodyAccJerkMag-min()            |
| fBodyBodyAccJerkMag_sma___Ind521            | Numeric            | -1   | -0.9898   | -0.929    | -0.6208   | -0.26     | 1    | fBodyBodyAccJerkMag-sma()            |
| fBodyBodyAccJerkMag_energy___Ind522         | Numeric            | -1   | -0.9999   | -0.9967   | -0.841    | -0.7305   | 1    | fBodyBodyAccJerkMag-energy()         |
| fBodyBodyAccJerkMag_iqr___Ind523            | Numeric            | -1   | -0.9885   | -0.9422   | -0.6766   | -0.3717   | 1    | fBodyBodyAccJerkMag-iqr()            |
| fBodyBodyAccJerkMag_entropy___Ind524        | Numeric            | -1   | -1        | -0.6821   | -0.3385   | 0.3462    | 1    | fBodyBodyAccJerkMag-entropy()        |
| fBodyBodyAccJerkMag_maxInds_Ind525          | Numeric            | -1   | -0.9683   | -0.9048   | -0.8778   | -0.873    | 1    | fBodyBodyAccJerkMag-maxInds          |
| fBodyBodyAccJerkMag_meanFreq___Ind526       | Numeric            | -1   | -0.002959 | 0.1642    | 0.1732    | 0.3573    | 1    | fBodyBodyAccJerkMag-meanFreq()       |
| fBodyBodyAccJerkMag_skewness___Ind527       | Numeric            | -1   | -0.6014   | -0.3475   | -0.2986   | -0.05769  | 1    | fBodyBodyAccJerkMag-skewness()       |
| fBodyBodyAccJerkMag_kurtosis___Ind528       | Numeric            | -1   | -0.8788   | -0.7137   | -0.6017   | -0.4258   | 1    | fBodyBodyAccJerkMag-kurtosis()       |
| fBodyBodyGyroMag_mean___Ind529              | Numeric            | -1   | -0.9825   | -0.8756   | -0.6974   | -0.4514   | 1    | fBodyBodyGyroMag-mean()              |
| fBodyBodyGyroMag_std___Ind530               | Numeric            | -1   | -0.9782   | -0.8275   | -0.7      | -0.4713   | 1    | fBodyBodyGyroMag-std()               |
| fBodyBodyGyroMag_mad___Ind531               | Numeric            | -1   | -0.9787   | -0.8456   | -0.681    | -0.4185   | 1    | fBodyBodyGyroMag-mad()               |
| fBodyBodyGyroMag_max___Ind532               | Numeric            | -1   | -0.9796   | -0.8272   | -0.7346   | -0.556    | 1    | fBodyBodyGyroMag-max()               |
| fBodyBodyGyroMag_min___Ind533               | Numeric            | -1   | -0.9938   | -0.9592   | -0.8887   | -0.8399   | 1    | fBodyBodyGyroMag-min()               |
| fBodyBodyGyroMag_sma___Ind534               | Numeric            | -1   | -0.9825   | -0.8756   | -0.6974   | -0.4514   | 1    | fBodyBodyGyroMag-sma()               |
| fBodyBodyGyroMag_energy___Ind535            | Numeric            | -1   | -0.9997   | -0.9843   | -0.8813   | -0.8149   | 1    | fBodyBodyGyroMag-energy()            |
| fBodyBodyGyroMag_iqr___Ind536               | Numeric            | -1   | -0.9854   | -0.9126   | -0.7221   | -0.4953   | 1    | fBodyBodyGyroMag-iqr()               |
| fBodyBodyGyroMag_entropy___Ind537           | Numeric            | -1   | -0.665    | -0.155    | -0.07628  | 0.5139    | 1    | fBodyBodyGyroMag-entropy()           |
| fBodyBodyGyroMag_maxInds_Ind538             | Numeric            | -1   | -1        | -0.9487   | -0.887    | -0.8462   | 1    | fBodyBodyGyroMag-maxInds             |
| fBodyBodyGyroMag_meanFreq___Ind539          | Numeric            | -1   | -0.2344   | -0.0521   | -0.04156  | 0.1516    | 1    | fBodyBodyGyroMag-meanFreq()          |
| fBodyBodyGyroMag_skewness___Ind540          | Numeric            | -1   | -0.4996   | -0.3177   | -0.2643   | -0.08497  | 1    | fBodyBodyGyroMag-skewness()          |
| fBodyBodyGyroMag_kurtosis___Ind541          | Numeric            | -1   | -0.8077   | -0.6649   | -0.5759   | -0.4393   | 1    | fBodyBodyGyroMag-kurtosis()          |
| fBodyBodyGyroJerkMag_mean___Ind542          | Numeric            | -1   | -0.9921   | -0.9453   | -0.7798   | -0.6122   | 1    | fBodyBodyGyroJerkMag-mean()          |
| fBodyBodyGyroJerkMag_std___Ind543           | Numeric            | -1   | -0.9926   | -0.9382   | -0.7922   | -0.6437   | 1    | fBodyBodyGyroJerkMag-std()           |
| fBodyBodyGyroJerkMag_mad___Ind544           | Numeric            | -1   | -0.9917   | -0.9351   | -0.7734   | -0.6098   | 1    | fBodyBodyGyroJerkMag-mad()           |
| fBodyBodyGyroJerkMag_max___Ind545           | Numeric            | -1   | -0.9935   | -0.9434   | -0.8099   | -0.6849   | 1    | fBodyBodyGyroJerkMag-max()           |
| fBodyBodyGyroJerkMag_min___Ind546           | Numeric            | -1   | -0.9937   | -0.9727   | -0.8712   | -0.8058   | 1    | fBodyBodyGyroJerkMag-min()           |
| fBodyBodyGyroJerkMag_sma___Ind547           | Numeric            | -1   | -0.9921   | -0.9453   | -0.7798   | -0.6122   | 1    | fBodyBodyGyroJerkMag-sma()           |
| fBodyBodyGyroJerkMag_energy___Ind548        | Numeric            | -1   | -0.9999   | -0.998    | -0.9379   | -0.9227   | 1    | fBodyBodyGyroJerkMag-energy()        |
| fBodyBodyGyroJerkMag_iqr___Ind549           | Numeric            | -1   | -0.9912   | -0.9419   | -0.7727   | -0.6047   | 1    | fBodyBodyGyroJerkMag-iqr()           |
| fBodyBodyGyroJerkMag_entropy___Ind550       | Numeric            | -1   | -0.9235   | -0.4145   | -0.2743   | 0.3372    | 1    | fBodyBodyGyroJerkMag-entropy()       |
| fBodyBodyGyroJerkMag_maxInds_Ind551         | Numeric            | -1   | -0.9683   | -0.9048   | -0.9      | -0.873    | 1    | fBodyBodyGyroJerkMag-maxInds         |
| fBodyBodyGyroJerkMag_meanFreq___Ind552      | Numeric            | -1   | -0.01948  | 0.1362    | 0.1267    | 0.289     | 1    | fBodyBodyGyroJerkMag-meanFreq()      |
| fBodyBodyGyroJerkMag_skewness___Ind553      | Numeric            | -1   | -0.5362   | -0.3352   | -0.2986   | -0.1132   | 1    | fBodyBodyGyroJerkMag-skewness()      |
| fBodyBodyGyroJerkMag_kurtosis___Ind554      | Numeric            | -1   | -0.8418   | -0.7034   | -0.6177   | -0.488    | 1    | fBodyBodyGyroJerkMag-kurtosis()      |
| angle_tBodyAccMean_gravity__Ind555          | Numeric            | -1   | -0.1247   | 0.008146  | 0.007705  | 0.149     | 1    | angle(tBodyAccMean,gravity)          |
| angle_tBodyAccJerkMean__gravityMean__Ind556 | Numeric            | -1   | -0.287    | 0.007668  | 0.002648  | 0.2915    | 1    | angle(tBodyAccJerkMean),gravityMean) |
| angle_tBodyGyroMean_gravityMean__Ind557     | Numeric            | -1   | -0.4931   | 0.01719   | 0.01768   | 0.5361    | 1    | angle(tBodyGyroMean,gravityMean)     |
| angle_tBodyGyroJerkMean_gravityMean__Ind558 | Numeric            | -1   | -0.389    | -0.007186 | -0.009219 | 0.366     | 1    | angle(tBodyGyroJerkMean,gravityMean) |
| angle_X_gravityMean__Ind559                 | Numeric            | -1   | -0.8173   | -0.7156   | -0.4965   | -0.5215   | 1    | angle(X,gravityMean)                 |
| angle_Y_gravityMean__Ind560                 | Numeric            | -1   | 0.002151  | 0.182     | 0.06326   | 0.2508    | 1    | angle(Y,gravityMean)                 |
| angle_Z_gravityMean__Ind561                 | Numeric            | -1   | -0.1319   | -0.003882 | -0.05428  | 0.103     | 1    | angle(Z,gravityMean)                 |
| activity_factor                             | Factor             | NA   | NA        | NA        | NA        | NA        | NA   | NA                                   |




