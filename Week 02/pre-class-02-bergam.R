exp.draws.1<-rexp(n=200)
mean(exp.draws.1)
sd(exp.draws.1)

exp.draws.0.2<-rexp(n=200,rate=0.2)
mean(exp.draws.0.2)
sd(exp.draws.0.2)

exp.draws.5<-rexp(n=200,rate=5)
mean(exp.draws.5)
sd(exp.draws.5)

exp.draws.7.3<-rexp(n=200,rate=7.3)
mean(exp.draws.7.3)
sd(exp.draws.7.3)

exp.draws.10<-rexp(n=200,rate=10)
mean(exp.draws.10)
sd(exp.draws.10)

hist(exp.draws.1)

plot(exp.draws.1)

plot(exp.draws.0.2,exp.draws.10)

exp.1.mean<-mean(exp.draws.1)
exp.0.2.mean<-mean(exp.draws.0.2)
exp.5.mean<-mean(exp.draws.5)
exp.7.3.mean<-mean(exp.draws.7.3)
exp.10.mean<-mean(exp.draws.10)
vector.mean<-c(exp.1.mean,exp.0.2.mean,exp.5.mean,exp.7.3.mean,exp.10.mean)

vector.rates<-c(1,0.2,5,7.3,10)

exp.1.sd<-sd(exp.draws.1)
exp.0.2.sd<-sd(exp.draws.0.2)
exp.5.sd<-sd(exp.draws.5)
exp.7.3.sd<-sd(exp.draws.7.3)
exp.10.sd<-sd(exp.draws.10)
vector.sd<-c(exp.1.sd,exp.0.2.sd,exp.5.sd,exp.7.3.sd,exp.10.sd)

plot(vector.mean,vector.rates)

plot(vector.sd,vector.rates)

plot(vector.mean,vector.sd)


big.exp.draws.1<-rexp(1.1E6)
mean(big.exp.draws.1)
sd(big.exp.draws.1)

hist(big.exp.draws.1)

greater.than.1<-which(big.exp.draws.1>1)
mean(greater.than.1)

big.exp.draws.1.mat<-matrix(big.exp.draws.1, nrow = 1100, ncol = 1000)
histogram.rexp<-hist(big.exp.draws.1.mat)

mean(big.exp.draws.1.mat[,371])
     

all.col.means<-colMeans(big.exp.draws.1.mat)
hist(all.col.means)
     
     
