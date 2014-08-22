
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


|                                        | Min. | 1st Qu.   | Median    | Mean      | 3rd Qu.  | Max. |
|----------------------------------------|------|-----------|-----------|-----------|----------|------|
| subject                                | 1    | 9         | 17        | 16.15     | 24       | 30   |
| activity                               | 1    | 2         | 4         | 3.625     | 5        | 6    |
| tBodyAcc_mean___X_Ind1                 | -1   | 0.2626    | 0.2772    | 0.2743    | 0.2884   | 1    |
| tBodyAcc_mean___Y_Ind2                 | -1   | -0.0249   | -0.01716  | -0.01774  | -0.01062 | 1    |
| tBodyAcc_mean___Z_Ind3                 | -1   | -0.121    | -0.1086   | -0.1089   | -0.09759 | 1    |
| tBodyAcc_std___X_Ind4                  | -1   | -0.9924   | -0.943    | -0.6078   | -0.2503  | 1    |
| tBodyAcc_std___Y_Ind5                  | -1   | -0.977    | -0.835    | -0.5102   | -0.05734 | 1    |
| tBodyAcc_std___Z_Ind6                  | -1   | -0.9791   | -0.8508   | -0.6131   | -0.2787  | 1    |
| tBodyAcc_mad___X_Ind7                  | -1   | -0.9933   | -0.9482   | -0.6336   | -0.302   | 1    |
| tBodyAcc_mad___Y_Ind8                  | -1   | -0.977    | -0.8437   | -0.5257   | -0.0874  | 1    |
| tBodyAcc_mad___Z_Ind9                  | -1   | -0.9791   | -0.8451   | -0.615    | -0.2881  | 1    |
| tBodyAcc_max___X_Ind10                 | -1   | -0.9358   | -0.8748   | -0.4667   | -0.01464 | 1    |
| tBodyAcc_max___Y_Ind11                 | -1   | -0.5626   | -0.4682   | -0.3052   | -0.06734 | 1    |
| tBodyAcc_max___Z_Ind12                 | -1   | -0.8122   | -0.7245   | -0.5622   | -0.3456  | 1    |
| tBodyAcc_min___X_Ind13                 | -1   | 0.2125    | 0.7842    | 0.5253    | 0.8438   | 1    |
| tBodyAcc_min___Y_Ind14                 | -1   | 0.1139    | 0.6198    | 0.3895    | 0.6852   | 1    |
| tBodyAcc_min___Z_Ind15                 | -1   | 0.3927    | 0.7722    | 0.598     | 0.8367   | 1    |
| tBodyAcc_sma___Ind16                   | -1   | -0.9817   | -0.8769   | -0.5521   | -0.1228  | 1    |
| tBodyAcc_energy___X_Ind17              | -1   | -0.9999   | -0.9977   | -0.8255   | -0.7157  | 1    |
| tBodyAcc_energy___Y_Ind18              | -1   | -0.9998   | -0.9929   | -0.9027   | -0.8251  | 1    |
| tBodyAcc_energy___Z_Ind19              | -1   | -0.9994   | -0.9842   | -0.8547   | -0.7595  | 1    |
| tBodyAcc_iqr___X_Ind20                 | -1   | -0.9942   | -0.956    | -0.6892   | -0.4079  | 1    |
| tBodyAcc_iqr___Y_Ind21                 | -1   | -0.9813   | -0.8849   | -0.6435   | -0.3247  | 1    |
| tBodyAcc_iqr___Z_Ind22                 | -1   | -0.9785   | -0.8538   | -0.6407   | -0.3364  | 1    |
| tBodyAcc_entropy___X_Ind23             | -1   | -0.5638   | -0.05712  | -0.1003   | 0.3296   | 1    |
| tBodyAcc_entropy___Y_Ind24             | -1   | -0.5496   | -0.1017   | -0.1288   | 0.2831   | 1    |
| tBodyAcc_entropy___Z_Ind25             | -1   | -0.4968   | -0.1364   | -0.1579   | 0.1674   | 1    |
| tBodyAcc_arCoeff___X_1_Ind26           | -1   | -0.3686   | -0.1362   | -0.119    | 0.1332   | 1    |
| tBodyAcc_arCoeff___X_2_Ind27           | -1   | -0.07902  | 0.07753   | 0.1086    | 0.2861   | 1    |
| tBodyAcc_arCoeff___X_3_Ind28           | -1   | -0.1899   | -0.01764  | -0.0357   | 0.1333   | 1    |
| tBodyAcc_arCoeff___X_4_Ind29           | -1   | -0.03386  | 0.1263    | 0.122     | 0.2777   | 1    |
| tBodyAcc_arCoeff___Y_1_Ind30           | -1   | -0.222    | -0.04549  | -0.02968  | 0.1633   | 1    |
| tBodyAcc_arCoeff___Y_2_Ind31           | -1   | -0.129    | 0.01765   | 0.03172   | 0.1808   | 1    |
| tBodyAcc_arCoeff___Y_3_Ind32           | -1   | 0.02895   | 0.1607    | 0.1551    | 0.2882   | 1    |
| tBodyAcc_arCoeff___Y_4_Ind33           | -1   | -0.1657   | -0.01893  | -0.01808  | 0.1312   | 1    |
| tBodyAcc_arCoeff___Z_1_Ind34           | -1   | -0.2065   | 0.0207    | 0.00611   | 0.2235   | 1    |
| tBodyAcc_arCoeff___Z_2_Ind35           | -1   | -0.1181   | 0.009945  | 0.03773   | 0.1796   | 1    |
| tBodyAcc_arCoeff___Z_3_Ind36           | -1   | -0.1108   | 0.04536   | 0.03442   | 0.1943   | 1    |
| tBodyAcc_arCoeff___Z_4_Ind37           | -1   | -0.2395   | -0.0833   | -0.08267  | 0.07475  | 1    |
| tBodyAcc_correlation___X_Y_Ind38       | -1   | -0.3617   | -0.1612   | -0.1203   | 0.08015  | 1    |
| tBodyAcc_correlation___X_Z_Ind39       | -1   | -0.4088   | -0.1918   | -0.1977   | 0.002491 | 1    |
| tBodyAcc_correlation___Y_Z_Ind40       | -1   | -0.1409   | 0.1356    | 0.1022    | 0.3722   | 1    |
| tGravityAcc_mean___X_Ind41             | -1   | 0.8117    | 0.9218    | 0.6692    | 0.9547   | 1    |
| tGravityAcc_mean___Y_Ind42             | -1   | -0.2429   | -0.1436   | 0.004039  | 0.1189   | 1    |
| tGravityAcc_mean___Z_Ind43             | -1   | -0.1167   | 0.0368    | 0.09215   | 0.2162   | 1    |
| tGravityAcc_std___X_Ind44              | -1   | -0.9949   | -0.9819   | -0.9652   | -0.9615  | 1    |
| tGravityAcc_std___Y_Ind45              | -1   | -0.9913   | -0.9759   | -0.9544   | -0.9464  | 1    |
| tGravityAcc_std___Z_Ind46              | -1   | -0.9866   | -0.9665   | -0.9389   | -0.9296  | 1    |
| tGravityAcc_mad___X_Ind47              | -1   | -0.995    | -0.9826   | -0.966    | -0.9628  | 1    |
| tGravityAcc_mad___Y_Ind48              | -1   | -0.9915   | -0.9766   | -0.9554   | -0.9478  | 1    |
| tGravityAcc_mad___Z_Ind49              | -1   | -0.9869   | -0.9676   | -0.9402   | -0.9315  | 1    |
| tGravityAcc_max___X_Ind50              | -1   | 0.7556    | 0.859     | 0.6091    | 0.8878   | 1    |
| tGravityAcc_max___Y_Ind51              | -1   | -0.2496   | -0.1509   | -0.01032  | 0.1179   | 1    |
| tGravityAcc_max___Z_Ind52              | -1   | -0.1116   | 0.04303   | 0.09674   | 0.2168   | 1    |
| tGravityAcc_min___X_Ind53              | -1   | 0.8166    | 0.9288    | 0.6838    | 0.9666   | 1    |
| tGravityAcc_min___Y_Ind54              | -1   | -0.2296   | -0.1284   | 0.01661   | 0.129    | 1    |
| tGravityAcc_min___Z_Ind55              | -1   | -0.1326   | 0.0222    | 0.07935   | 0.1998   | 1    |
| tGravityAcc_sma___Ind56                | -1   | -0.4093   | -0.1313   | -0.09859  | 0.1884   | 1    |
| tGravityAcc_energy___X_Ind57           | -1   | 0.5209    | 0.7912    | 0.4462    | 0.8766   | 1    |
| tGravityAcc_energy___Y_Ind58           | -1   | -0.968    | -0.9098   | -0.7215   | -0.7668  | 1    |
| tGravityAcc_energy___Z_Ind59           | -1   | -0.9911   | -0.9508   | -0.7636   | -0.7872  | 1    |
| tGravityAcc_iqr___X_Ind60              | -1   | -0.9952   | -0.9846   | -0.9682   | -0.9656  | 1    |
| tGravityAcc_iqr___Y_Ind61              | -1   | -0.9924   | -0.9795   | -0.9586   | -0.9521  | 1    |
| tGravityAcc_iqr___Z_Ind62              | -1   | -0.9881   | -0.9712   | -0.9448   | -0.9384  | 1    |
| tGravityAcc_entropy___X_Ind63          | -1   | -1        | -0.7631   | -0.6748   | -0.3996  | 1    |
| tGravityAcc_entropy___Y_Ind64          | -1   | -1        | -1        | -0.8667   | -0.8511  | 1    |
| tGravityAcc_entropy___Z_Ind65          | -1   | -1        | -0.7808   | -0.6691   | -0.4008  | 1    |
| tGravityAcc_arCoeff___X_1_Ind66        | -1   | -0.6512   | -0.5102   | -0.5044   | -0.3667  | 1    |
| tGravityAcc_arCoeff___X_2_Ind67        | -1   | 0.4048    | 0.5552    | 0.5429    | 0.6933   | 1    |
| tGravityAcc_arCoeff___X_3_Ind68        | -1   | -0.7391   | -0.5974   | -0.5807   | -0.4403  | 1    |
| tGravityAcc_arCoeff___X_4_Ind69        | -1   | 0.4711    | 0.6424    | 0.6178    | 0.7846   | 1    |
| tGravityAcc_arCoeff___Y_1_Ind70        | -1   | -0.5461   | -0.3418   | -0.3436   | -0.1434  | 1    |
| tGravityAcc_arCoeff___Y_2_Ind71        | -1   | 0.1278    | 0.3289    | 0.3302    | 0.5352   | 1    |
| tGravityAcc_arCoeff___Y_3_Ind72        | -1   | -0.5584   | -0.3659   | -0.3607   | -0.1726  | 1    |
| tGravityAcc_arCoeff___Y_4_Ind73        | -1   | 0.2301    | 0.4243    | 0.4089    | 0.6048   | 1    |
| tGravityAcc_arCoeff___Z_1_Ind74        | -1   | -0.62     | -0.4261   | -0.4281   | -0.2487  | 1    |
| tGravityAcc_arCoeff___Z_2_Ind75        | -1   | 0.2792    | 0.4501    | 0.4534    | 0.6422   | 1    |
| tGravityAcc_arCoeff___Z_3_Ind76        | -1   | -0.6634   | -0.4787   | -0.478    | -0.3068  | 1    |
| tGravityAcc_arCoeff___Z_4_Ind77        | -1   | 0.3306    | 0.5052    | 0.4995    | 0.6839   | 1    |
| tGravityAcc_correlation___X_Y_Ind78    | -1   | -0.4902   | 0.3609    | 0.1757    | 0.8381   | 1    |
| tGravityAcc_correlation___X_Z_Ind79    | -1   | -0.806    | -0.2174   | -0.1083   | 0.5912   | 1    |
| tGravityAcc_correlation___Y_Z_Ind80    | -1   | -0.609    | 0.1754    | 0.08485   | 0.776    | 1    |
| tBodyAccJerk_mean___X_Ind81            | -1   | 0.06298   | 0.07597   | 0.07894   | 0.09131  | 1    |
| tBodyAccJerk_mean___Y_Ind82            | -1   | -0.01855  | 0.01075   | 0.007948  | 0.03354  | 1    |
| tBodyAccJerk_mean___Z_Ind83            | -1   | -0.03155  | -0.001159 | -0.004675 | 0.02458  | 1    |
| tBodyAccJerk_std___X_Ind84             | -1   | -0.9913   | -0.9513   | -0.6398   | -0.2912  | 1    |
| tBodyAccJerk_std___Y_Ind85             | -1   | -0.985    | -0.925    | -0.608    | -0.2218  | 1    |
| tBodyAccJerk_std___Z_Ind86             | -1   | -0.9892   | -0.9543   | -0.7628   | -0.5485  | 1    |
| tBodyAccJerk_mad___X_Ind87             | -1   | -0.9913   | -0.9578   | -0.6369   | -0.2803  | 1    |
| tBodyAccJerk_mad___Y_Ind88             | -1   | -0.9833   | -0.9265   | -0.594    | -0.1892  | 1    |
| tBodyAccJerk_mad___Z_Ind89             | -1   | -0.988    | -0.9548   | -0.7565   | -0.5357  | 1    |
| tBodyAccJerk_max___X_Ind90             | -1   | -0.9916   | -0.9447   | -0.6996   | -0.4608  | 1    |
| tBodyAccJerk_max___Y_Ind91             | -1   | -0.9901   | -0.9411   | -0.7478   | -0.5351  | 1    |
| tBodyAccJerk_max___Z_Ind92             | -1   | -0.9898   | -0.9564   | -0.8187   | -0.683   | 1    |
| tBodyAccJerk_min___X_Ind93             | -1   | 0.2531    | 0.9377    | 0.616     | 0.9896   | 1    |
| tBodyAccJerk_min___Y_Ind94             | -1   | 0.4017    | 0.9311    | 0.6849    | 0.9886   | 1    |
| tBodyAccJerk_min___Z_Ind95             | -1   | 0.5287    | 0.9404    | 0.7396    | 0.9867   | 1    |
| tBodyAccJerk_sma___Ind96               | -1   | -0.9898   | -0.9478   | -0.647    | -0.2909  | 1    |
| tBodyAccJerk_energy___X_Ind97          | -1   | -0.9999   | -0.9985   | -0.8503   | -0.746   | 1    |
| tBodyAccJerk_energy___Y_Ind98          | -1   | -0.9997   | -0.9965   | -0.8273   | -0.6924  | 1    |
| tBodyAccJerk_energy___Z_Ind99          | -1   | -0.9998   | -0.9983   | -0.9307   | -0.8928  | 1    |
| tBodyAccJerk_iqr___X_Ind100            | -1   | -0.9899   | -0.9634   | -0.6275   | -0.2657  | 1    |
| tBodyAccJerk_iqr___Y_Ind101            | -1   | -0.9836   | -0.9434   | -0.6598   | -0.3295  | 1    |
| tBodyAccJerk_iqr___Z_Ind102            | -1   | -0.9863   | -0.9583   | -0.7708   | -0.5757  | 1    |
| tBodyAccJerk_entropy___X_Ind103        | -1   | -0.7298   | -0.3377   | -0.08261  | 0.5994   | 1    |
| tBodyAccJerk_entropy___Y_Ind104        | -1   | -0.7263   | -0.2842   | -0.08788  | 0.5678   | 1    |
| tBodyAccJerk_entropy___Z_Ind105        | -1   | -0.7211   | -0.3935   | -0.1273   | 0.4941   | 1    |
| tBodyAccJerk_arCoeff___X_1_Ind106      | -1   | -0.3598   | -0.1159   | -0.1086   | 0.1443   | 1    |
| tBodyAccJerk_arCoeff___X_2_Ind107      | -1   | 0.04889   | 0.1729    | 0.1697    | 0.2916   | 1    |
| tBodyAccJerk_arCoeff___X_3_Ind108      | -1   | -0.0878   | 0.07724   | 0.0676    | 0.2343   | 1    |
| tBodyAccJerk_arCoeff___X_4_Ind109      | -1   | -0.003601 | 0.1348    | 0.1265    | 0.2636   | 1    |
| tBodyAccJerk_arCoeff___Y_1_Ind110      | -1   | -0.2766   | -0.08578  | -0.07272  | 0.1399   | 1    |
| tBodyAccJerk_arCoeff___Y_2_Ind111      | -1   | -0.06502  | 0.06698   | 0.06869   | 0.2073   | 1    |
| tBodyAccJerk_arCoeff___Y_3_Ind112      | -1   | 0.02252   | 0.1865    | 0.1745    | 0.3393   | 1    |
| tBodyAccJerk_arCoeff___Y_4_Ind113      | -1   | 0.1852    | 0.3185    | 0.3143    | 0.4521   | 1    |
| tBodyAccJerk_arCoeff___Z_1_Ind114      | -1   | -0.2374   | -0.01346  | -0.03269  | 0.1801   | 1    |
| tBodyAccJerk_arCoeff___Z_2_Ind115      | -1   | -0.03561  | 0.08742   | 0.08868   | 0.2125   | 1    |
| tBodyAccJerk_arCoeff___Z_3_Ind116      | -1   | -0.1433   | 0.0133    | -0.001039 | 0.1582   | 1    |
| tBodyAccJerk_arCoeff___Z_4_Ind117      | -1   | -0.01551  | 0.1502    | 0.1385    | 0.3001   | 1    |
| tBodyAccJerk_correlation___X_Y_Ind118  | -1   | -0.3099   | -0.139    | -0.1381   | 0.02874  | 1    |
| tBodyAccJerk_correlation___X_Z_Ind119  | -1   | -0.1987   | 0.01331   | 0.003025  | 0.207    | 1    |
| tBodyAccJerk_correlation___Y_Z_Ind120  | -1   | -0.1025   | 0.07611   | 0.08032   | 0.2634   | 1    |
| tBodyGyro_mean___X_Ind121              | -1   | -0.04579  | -0.02776  | -0.03098  | -0.01058 | 1    |
| tBodyGyro_mean___Y_Ind122              | -1   | -0.104    | -0.07477  | -0.07472  | -0.0511  | 1    |
| tBodyGyro_mean___Z_Ind123              | -1   | 0.06485   | 0.08626   | 0.08836   | 0.1104   | 1    |
| tBodyGyro_std___X_Ind124               | -1   | -0.9872   | -0.9016   | -0.7212   | -0.4822  | 1    |
| tBodyGyro_std___Y_Ind125               | -1   | -0.9819   | -0.9106   | -0.6827   | -0.4461  | 1    |
| tBodyGyro_std___Z_Ind126               | -1   | -0.985    | -0.8819   | -0.6537   | -0.3379  | 1    |
| tBodyGyro_mad___X_Ind127               | -1   | -0.9881   | -0.9076   | -0.7265   | -0.4918  | 1    |
| tBodyGyro_mad___Y_Ind128               | -1   | -0.983    | -0.9194   | -0.6945   | -0.464   | 1    |
| tBodyGyro_mad___Z_Ind129               | -1   | -0.9859   | -0.8887   | -0.6672   | -0.3635  | 1    |
| tBodyGyro_max___X_Ind130               | -1   | -0.8778   | -0.7948   | -0.6455   | -0.4367  | 1    |
| tBodyGyro_max___Y_Ind131               | -1   | -0.9473   | -0.8901   | -0.738    | -0.5798  | 1    |
| tBodyGyro_max___Z_Ind132               | -1   | -0.7494   | -0.6451   | -0.4842   | -0.2566  | 1    |
| tBodyGyro_min___X_Ind133               | -1   | 0.4628    | 0.7706    | 0.6323    | 0.838    | 1    |
| tBodyGyro_min___Y_Ind134               | -1   | 0.6036    | 0.8528    | 0.7343    | 0.9058   | 1    |
| tBodyGyro_min___Z_Ind135               | -1   | 0.3229    | 0.7418    | 0.5592    | 0.8227   | 1    |
| tBodyGyro_sma___Ind136                 | -1   | -0.9785   | -0.8204   | -0.6027   | -0.2393  | 1    |
| tBodyGyro_energy___X_Ind137            | -1   | -0.9999   | -0.9903   | -0.9016   | -0.8368  | 1    |
| tBodyGyro_energy___Y_Ind138            | -1   | -0.9997   | -0.9925   | -0.8842   | -0.8417  | 1    |
| tBodyGyro_energy___Z_Ind139            | -1   | -0.9997   | -0.981    | -0.873    | -0.7882  | 1    |
| tBodyGyro_iqr___X_Ind140               | -1   | -0.9897   | -0.9187   | -0.7292   | -0.5009  | 1    |
| tBodyGyro_iqr___Y_Ind141               | -1   | -0.9856   | -0.9325   | -0.7172   | -0.5059  | 1    |
| tBodyGyro_iqr___Z_Ind142               | -1   | -0.9891   | -0.9073   | -0.7202   | -0.4745  | 1    |
| tBodyGyro_entropy___X_Ind143           | -1   | -0.5081   | -0.1758   | -0.1449   | 0.189    | 1    |
| tBodyGyro_entropy___Y_Ind144           | -1   | -0.3547   | -0.06425  | -0.09925  | 0.179    | 1    |
| tBodyGyro_entropy___Z_Ind145           | -1   | -0.4647   | 0.03286   | -0.06325  | 0.3089   | 1    |
| tBodyGyro_arCoeff___X_1_Ind146         | -1   | -0.4246   | -0.2435   | -0.2229   | -0.02796 | 1    |
| tBodyGyro_arCoeff___X_2_Ind147         | -1   | -0.01852  | 0.1415    | 0.1477    | 0.3022   | 1    |
| tBodyGyro_arCoeff___X_3_Ind148         | -1   | -0.01473  | 0.1427    | 0.1285    | 0.2825   | 1    |
| tBodyGyro_arCoeff___X_4_Ind149         | -1   | -0.2437   | -0.07804  | -0.08031  | 0.08061  | 1    |
| tBodyGyro_arCoeff___Y_1_Ind150         | -1   | -0.3487   | -0.2103   | -0.2048   | -0.06448 | 1    |
| tBodyGyro_arCoeff___Y_2_Ind151         | -1   | 0.03652   | 0.1646    | 0.1697    | 0.2993   | 1    |
| tBodyGyro_arCoeff___Y_3_Ind152         | -1   | -0.1888   | -0.0393   | -0.04246  | 0.1116   | 1    |
| tBodyGyro_arCoeff___Y_4_Ind153         | -1   | 0.0005374 | 0.1447    | 0.1417    | 0.2901   | 1    |
| tBodyGyro_arCoeff___Z_1_Ind154         | -1   | -0.3355   | -0.1025   | -0.0851   | 0.1626   | 1    |
| tBodyGyro_arCoeff___Z_2_Ind155         | -1   | -0.1667   | 0.06419   | 0.06673   | 0.2904   | 1    |
| tBodyGyro_arCoeff___Z_3_Ind156         | -1   | -0.1955   | 0.01139   | -0.007924 | 0.1875   | 1    |
| tBodyGyro_arCoeff___Z_4_Ind157         | -1   | -0.03189  | 0.1471    | 0.1464    | 0.3216   | 1    |
| tBodyGyro_correlation___X_Y_Ind158     | -1   | -0.4439   | -0.1793   | -0.1693   | 0.08585  | 1    |
| tBodyGyro_correlation___X_Z_Ind159     | -1   | -0.2393   | -0.008026 | 0.01435   | 0.2595   | 1    |
| tBodyGyro_correlation___Y_Z_Ind160     | -1   | -0.4114   | -0.09385  | -0.1057   | 0.1886   | 1    |
| tBodyGyroJerk_mean___X_Ind161          | -1   | -0.1172   | -0.09824  | -0.09671  | -0.0793  | 1    |
| tBodyGyroJerk_mean___Y_Ind162          | -1   | -0.05868  | -0.04056  | -0.04232  | -0.02521 | 1    |
| tBodyGyroJerk_mean___Z_Ind163          | -1   | -0.07936  | -0.05455  | -0.05483  | -0.03168 | 1    |
| tBodyGyroJerk_std___X_Ind164           | -1   | -0.9907   | -0.9348   | -0.7313   | -0.4865  | 1    |
| tBodyGyroJerk_std___Y_Ind165           | -1   | -0.9922   | -0.9548   | -0.7861   | -0.6268  | 1    |
| tBodyGyroJerk_std___Z_Ind166           | -1   | -0.9926   | -0.9503   | -0.7399   | -0.5097  | 1    |
| tBodyGyroJerk_mad___X_Ind167           | -1   | -0.9909   | -0.9427   | -0.73     | -0.4779  | 1    |
| tBodyGyroJerk_mad___Y_Ind168           | -1   | -0.9927   | -0.9623   | -0.7966   | -0.64    | 1    |
| tBodyGyroJerk_mad___Z_Ind169           | -1   | -0.9928   | -0.9579   | -0.7466   | -0.5133  | 1    |
| tBodyGyroJerk_max___X_Ind170           | -1   | -0.9904   | -0.9266   | -0.7473   | -0.5373  | 1    |
| tBodyGyroJerk_max___Y_Ind171           | -1   | -0.9928   | -0.9527   | -0.8099   | -0.6862  | 1    |
| tBodyGyroJerk_max___Z_Ind172           | -1   | -0.9909   | -0.9374   | -0.7427   | -0.5317  | 1    |
| tBodyGyroJerk_min___X_Ind173           | -1   | 0.5658    | 0.9317    | 0.7606    | 0.9906   | 1    |
| tBodyGyroJerk_min___Y_Ind174           | -1   | 0.7209    | 0.9586    | 0.8303    | 0.9937   | 1    |
| tBodyGyroJerk_min___Z_Ind175           | -1   | 0.6439    | 0.9557    | 0.7994    | 0.9938   | 1    |
| tBodyGyroJerk_sma___Ind176             | -1   | -0.9926   | -0.9573   | -0.7668   | -0.5544  | 1    |
| tBodyGyroJerk_energy___X_Ind177        | -1   | -0.9999   | -0.9976   | -0.9169   | -0.8665  | 1    |
| tBodyGyroJerk_energy___Y_Ind178        | -1   | -1        | -0.9989   | -0.9395   | -0.9296  | 1    |
| tBodyGyroJerk_energy___Z_Ind179        | -1   | -0.9999   | -0.9985   | -0.9195   | -0.8776  | 1    |
| tBodyGyroJerk_iqr___X_Ind180           | -1   | -0.9914   | -0.9534   | -0.7375   | -0.493   | 1    |
| tBodyGyroJerk_iqr___Y_Ind181           | -1   | -0.9932   | -0.9698   | -0.8088   | -0.6596  | 1    |
| tBodyGyroJerk_iqr___Z_Ind182           | -1   | -0.9932   | -0.967    | -0.7663   | -0.5481  | 1    |
| tBodyGyroJerk_entropy___X_Ind183       | -1   | -0.5746   | -0.03394  | -0.01519  | 0.5437   | 1    |
| tBodyGyroJerk_entropy___Y_Ind184       | -1   | -0.509    | -0.002381 | 0.01867   | 0.5517   | 1    |
| tBodyGyroJerk_entropy___Z_Ind185       | -1   | -0.6055   | -0.1321   | -0.01511  | 0.5729   | 1    |
| tBodyGyroJerk_arCoeff___X_1_Ind186     | -1   | -0.2504   | -0.08978  | -0.07248  | 0.09698  | 1    |
| tBodyGyroJerk_arCoeff___X_2_Ind187     | -1   | -0.0774   | 0.04018   | 0.04092   | 0.1558   | 1    |
| tBodyGyroJerk_arCoeff___X_3_Ind188     | -1   | 0.02469   | 0.165     | 0.1597    | 0.3028   | 1    |
| tBodyGyroJerk_arCoeff___X_4_Ind189     | -1   | 0.02961   | 0.1715    | 0.1647    | 0.3075   | 1    |
| tBodyGyroJerk_arCoeff___Y_1_Ind190     | -1   | -0.3162   | -0.1689   | -0.1624   | -0.02141 | 1    |
| tBodyGyroJerk_arCoeff___Y_2_Ind191     | -1   | 0.09689   | 0.2004    | 0.2002    | 0.3007   | 1    |
| tBodyGyroJerk_arCoeff___Y_3_Ind192     | -1   | -0.04272  | 0.09034   | 0.08353   | 0.2161   | 1    |
| tBodyGyroJerk_arCoeff___Y_4_Ind193     | -1   | -0.0791   | 0.08264   | 0.08025   | 0.2475   | 1    |
| tBodyGyroJerk_arCoeff___Z_1_Ind194     | -1   | -0.309    | -0.05945  | -0.02865  | 0.2483   | 1    |
| tBodyGyroJerk_arCoeff___Z_2_Ind195     | -1   | -0.1081   | 0.04328   | 0.05238   | 0.2118   | 1    |
| tBodyGyroJerk_arCoeff___Z_3_Ind196     | -1   | -0.07285  | 0.09581   | 0.0888    | 0.2629   | 1    |
| tBodyGyroJerk_arCoeff___Z_4_Ind197     | -1   | -0.1353   | 0.03963   | 0.03353   | 0.2077   | 1    |
| tBodyGyroJerk_correlation___X_Y_Ind198 | -1   | -0.1532   | 0.03434   | 0.03694   | 0.2241   | 1    |
