---
title: "CodeBook"
author: "David Anthony"
date: "Sunday, March 22, 2015"
output: html_document
---

Test_data holds 30% of the observations across 561 features.
Train_data holds 70% of the observations across 561 features.
The features.txt file holds the name of the features and was used to rename the 561 columns of both test_data and train_data.
The test_data and train_data data frames were combined to form merged_data that holds the enture 10,297 observations on the 561 features of the test data.

Test_y holds the type of activity across the 30% test observations
Train_y holds the type of activity across the 70% observations.
Activity_lables holds what number (1 - 6) equates to the activity label.
Test_y and train_y were updated to replace the numeric activity with the activity label
Merged_y combined test_y and train_y to hold activity labels associated with all 10,297 observations.
Merged_dataset added the column of merged_y to merged_data to be a matrix of 10297 x 562 data frame.
Test_mean holds the mean values of each variable
Test_StdDev holds the standard deviations of each variable.
