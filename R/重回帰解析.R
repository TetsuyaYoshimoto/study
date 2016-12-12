data = read.table("engele1.csv", sep=',',header = T)
#相関行列
cor(data)
#各変数間の散布図
pairs(data)
#重回帰分析
output = lm(data$エンゲル係数~data$たばこ + data$美容サービス + data$教養娯楽 + data$教育費 + data$通信費 + data$交通費 + data$医薬品 + data$履物類 + data$下着類 + data$シャツ.セーター類 + data$洋服 + data$和服 + data$上下水道代金 + data$ガス代 + data$電気代 + data$住居)
summary(output)
