library(data.table)

t1 <- fread("./train.csv", select="ID")
s1 <- fread("./test.csv", select="ID")

set.seed(100)
train_sample <- data.table(sample=sample(t1$ID, size = 50000, replace = FALSE))
set.seed(101)
test_sample <- data.table(sample=sample(s1$ID, size = 50000, replace = FALSE))

write.csv(train_sample, "./data_trans/train_sample.csv", row.names=FALSE)
write.csv(test_sample, "./data_trans/test_sample.csv", row.names=FALSE)
