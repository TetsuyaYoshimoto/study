
seiseki = matrix(c(89,90,67,46,50, 57,70,80,85,90,80,90,35,40,50, 40,60,50,45,55,78,85,45,55,60, 55,65,80,75,85,90,85,88,92,95),7,5,byrow = TRUE)
colnames(seiseki) = c("算数","理科","国語","英語","社会")
rownames(seiseki) = c("A","B","C","D","E","F","G")

#seiseki = matrix(c(33100,63,23, 22480,54,10, 17600,47,19, 18100,42,28, 11000,32,11, 13240,38,14, 27800,57,9, 7500,27,6, 6050,21,8, 9320,29,7, 10060,26,9, 16100,37,17, 24300,34,4, 2280,8,1, 14709,2),15,3,byrow = TRUE)
#colnames(seiseki) = c("購入金額","購買得点","来店回数")
#rownames(seiseki) = c("A","B","C","D","E","F","G","H","I","J","K","L","M","N","O")
#plot(seiseki)

seiseki.d = dist(seiseki)
round(seiseki.d)
sei.d = dist(seiseki)
sei.hc = hclust(sei.d)

#par(mfrow=c(2,4))
plot(sei.hc,hang=-1,main="最遠隣法") 

s.hc2 = hclust(sei.d,method="centroid")
plot(s.hc2,hang=-1,main="重心法")

s.hc3 = hclust(sei.d,method="ward.D")
plot(s.hc3,hang=-1,main="ウォード法")

s.hc4 = hclust(sei.d,method="single")
plot(s.hc4,hang=-1,main="最近隣法")

s.hc5 = hclust(sei.d,method="average")
plot(s.hc5,hang=-1,main="群平均法")

s.hc6 = hclust(sei.d,method="median")
plot(s.hc6,hang=-1,main="メディアン法")

s.hc7 = hclust(sei.d,method="mcquitty")
plot(s.hc7,hang=-1,main="McQuitty法")

#par(mfrow=c(2,2))
#sei.hc = hclust(sei.d)
#heatmap(as.matrix(seiseki),Rowv=as.dendrogram(sei.hc))
#heatmap(as.matrix(seiseki),Rowv=as.dendrogram(sei.hc,hang=-1))
#s.hc2 = hclust(sei.d,method="centroid")
#heatmap(as.matrix(seiseki),Rowv=as.dendrogram(s.hc2,hang=-1))
#s.hc3 = hclust(sei.d,method="ward.D")
#heatmap(as.matrix(seiseki),Rowv=as.dendrogram(s.hc3,hang=-1))


