require(data.table)
require(caret)
setwd("/Users/branden/h2oDallas/")

train <- fread("./train.csv", select=c("ID", "target"))

# 5 fold
set.seed(2016)
cvFoldsList <- createFolds(train$target, k=5, list=TRUE, returnTrain=FALSE)
# TrainList for use with Caret
set.seed(2016)
cvFoldsTrainList <- createFolds(train$target, k=5, list=TRUE, returnTrain=TRUE)
set.seed(2016)
cvFolds <- data.frame(foldIndex=createFolds(train$target, k=5, list=FALSE))

save(cvFoldsList, file="./data_trans/cvFoldsList.rda")
save(cvFoldsTrainList, file="./data_trans/cvFoldsTrainList.rda")
write.csv(cvFolds, "./data_trans/cvFolds.csv", row.names = FALSE)

# 10 fold
set.seed(2016)
cvFoldsList10 <- createFolds(train$target, k=10, list=TRUE, returnTrain=FALSE)
# TrainList for use with Caret
set.seed(2016)
cvFoldsTrainList10 <- createFolds(train$target, k=10, list=TRUE, returnTrain=TRUE)
set.seed(2016)
cvFolds10 <- data.frame(foldIndex=createFolds(train$target, k=10, list=FALSE))

save(cvFoldsList10, file="./data_trans/cvFoldsList10.rda")
save(cvFoldsTrainList10, file="./data_trans/cvFoldsTrainList10.rda")
write.csv(cvFolds10, "./data_trans/cvFolds10.csv", row.names=FALSE)

# layer 2 folds
set.seed(1234)
cvFoldsList_lay2 <- createFolds(train$target, k=6, list=TRUE, returnTrain=FALSE)
set.seed(1234)
cvFoldsTrainList_lay2 <- createFolds(train$target, k=6, list=TRUE, returnTrain=TRUE)
set.seed(1234)
cvFolds_lay2 <- data.frame(foldIndex=createFolds(train$target, k=6, list=FALSE))

save(cvFoldsList_lay2, file="./data_trans/cvFoldsList_lay2.rda")
save(cvFoldsTrainList_lay2, file="./data_trans/cvFoldsTrainList_lay2.rda")
write.csv(cvFolds_lay2, "./data_trans/cvFolds_lay2.csv", row.names = FALSE)
