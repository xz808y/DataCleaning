test_data <- read.table("X_test.txt", header=TRUE)
train_data <- read.table("X_train.txt", header=TRUE)

y_test_data <- read.table("features.txt")

for (i in 1:561) {
  names(test_data)[i]<-paste(y_test_data[i,2])
  names(train_data)[i]<-paste(y_test_data[i,2]) 
}

merged_data <- rbind(test_data, train_data)

test_y <- read.table("y_test.txt", header=TRUE)

activity_labels <- read.table("activity_labels.txt", header=FALSE)

for (i in 1:2946) {
  
  if (test_y[i,1] == "1") {
  test_y[i,1] <- as.character(activity_lables[1,2])
} 
  else if (test_y[i,1] == "2") {
  test_y[i,1] <- as.character(activity_lables[2,2])
} 
  else if (test_y[i,1] == "3") {
  test_y[i,1] <- as.character(activity_lables[3,2])
} 
  else if (test_y[i,1] == "4") {
  test_y[i,1] <- as.character(activity_lables[4,2])
} 
else if (test_y[i,1] == "5") {
  test_y[i,1] <- as.character(activity_lables[5,2])
} 
else {
  test_y[i,1] <- as.character(activity_lables[6,2])
}
}

train_y <- read.table("y_train.txt", header=TRUE)

for (i in 1:7351) {
  
  if (train_y[i,1] == "1") {
    train_y[i,1] <- as.character(activity_lables[1,2])
  } 
  else if (train_y[i,1] == "2") {
    train_y[i,1] <- as.character(activity_lables[2,2])
  } 
  else if (train_y[i,1] == "3") {
    train_y[i,1] <- as.character(activity_lables[3,2])
  } 
  else if (train_y[i,1] == "4") {
    train_y[i,1] <- as.character(activity_lables[4,2])
  } 
  else if (train_y[i,1] == "5") {
    train_y[i,1] <- as.character(activity_lables[5,2])
  } 
  else {
    train_y[i,1] <- as.character(activity_lables[6,2])
  }
}

merged_y <- rbind(test_y, train_y)

merged_dataset <- cbind(merged_data, merged_y)

test_Mean <- vector()
test_StdDev <- vector()

for (i in 1:561) {
  
  test_Mean[i] <- rbind(mean(merged_data[1:10297,i]))
  test_StdDev[i] <- rbind(sd(merged_data[1:10297,i])) 
}

