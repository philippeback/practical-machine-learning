library(doParallel)
cl <- makeCluster(detectCores())
registerDoParallel(cl)
model <- train(classe ~ ., 
               trainingPartition, 
               method="rf",
               trControl = trainControl(),
               tuneGrid = NULL, 
               tuneLength = 3
)
stopCluster()