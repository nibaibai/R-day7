# 函数 mapply

list(rep(1,4),rep(2,3),rep(3,2),rep(4,1))
#等价于下列程序
mapply(rep,1:4,4:1)

#构建一个函数

s <- function(n,mean,std){
  rnorm(n,mean,std)
}  #表示从均值为mean,标准差为std的正态总体中抽取n个数

s(4,0,1)  #表示从均值为0,标准差为1的正态总体中抽取4个数

mapply(s,1:5,5:1,2)  #1:5代表n,5:1代表mean,2代表std。
#等价于以下程序
list(s(1,5,2),s(2,4,2),s(3,3,2),s(4,2,2),s(5,1,2))