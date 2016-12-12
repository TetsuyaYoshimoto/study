data = read.csv("logstic.csv", header = TRUE)
ans = glm(data$入試の合否 ~ data$内申点 + data$偏差値, data, family = binomial(link = "logit"))
summary(ans)
fitted(ans)
