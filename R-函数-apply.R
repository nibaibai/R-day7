# 函数 apply

x <- matrix(1:16,4,4)

apply(x,2,mean)  #"2"代表第二维度即矩阵的列
apply(x,2,sum)
apply(x,1,mean)  #"1"代表第一维度即矩阵的行
apply(x,1,sum)
#等价于以下程序
rowSums(x)
rowMeans(x)
colSums(x)
colMeans(x)

y <- matrix(rnorm(100),10,10)  #rnorm代表随机从正态分布的总体里抽取一百个数据。

apply(y,1,quantile,probs=c(0.25,0.75)) #quantile表示求数据的百分位点，Probs对quantile限定。

x2 <- array(rnorm(2*3*4),c(2,3,4))
apply(x2,c(1,2),mean)
apply(x2,c(1,3),mean)
apply(x2,c(2,3),mean)
apply(x2,c(1,2),sum)
apply(x2,c(2,3),sum)