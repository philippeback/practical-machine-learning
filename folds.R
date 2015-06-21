# Let's have some fun with partitions and folds, to see how things are going.
# Always nice to have several entries to test the model against.

folds <- createFolds(trainingSet$classe, k=5)
training1<-trainingSet[folds$Fold1,]
training2<-trainingSet[folds$Fold2,]
training3<-trainingSet[folds$Fold3,]
training4<-trainingSet[folds$Fold4,]
training5<-trainingSet[folds$Fold5,]