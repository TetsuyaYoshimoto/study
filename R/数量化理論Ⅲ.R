#双対尺度法、コレスポンデンス分析
library(MASS)
#dat1 = data.frame(値段 = c(1,0,0,0,0,1,1,0,0,0), 原材料 = c(0,1,1,0,0,1,0,1,1,1), 効果効能 = c(0,0,0,0,1,0,0,0,0,0), デザイン = c(1,0,1,0,1,0,0,0,1,0), 香り = c(0,1,1,1,0,0,0,0,0,1), 味わい = c(0,0,0,1,0,0,0,0,1,0))
#dat1 = data.frame(値段 = c("a","b","b","b","b","a","a","b","b","b"), 原材料 = c("b","a","a","b","b","a","b","a","a","a"), 効果効能 = c("b","b","b","b","a","b","b","b","b","b"), デザイン = c("a","b","a","b","a","b","b","b","a","b"), 香り = c("b","a","a","a","b","b","b","b","b","a"), 味わい = c("b","b","b","a","b","b","b","b","a","b"))
#a = qt3(dat1)

#source("http://aoki2.si.gunma-u.ac.jp/R/src/qt3.R", encoding="euc-jp")
#source("http://aoki2.si.gunma-u.ac.jp/R/src/make.dummy.R", encoding="euc-jp")
dat = read.csv('test1.csv', skip=1)
dat = data.frame(dat)
dat[,1:100] = lapply(dat, factor)
qt3(dat)

#dat.co = corresp(dat, nf=min(nrow(dat), ncol(dat))-1)

#dat.co$rscore = scale(dat.co$rscore)
#dat.co$cscore = scale(dat.co$cscore)
#plot(dat.co)
#par(mfrow=c(1,2))
#plot(dat.co$rscore,col="green")
#plot(dat.co$cscore,col="red")

plot(qt3(dat))
