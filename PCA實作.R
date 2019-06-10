# 讀取資料
data <- read.csv("./DATA.csv", row.names = "id")
data

# 共變異數矩陣
covmatrix <- cov(data)
covmatrix

# 相關係數矩陣
cormatrix <- cor(data)
cormatrix

# 使用套件觀察變數間的相關程度
library(corrplot)
corrplot(cormatrix)

library(PerformanceAnalytics)
m <- as.matrix(data)
chart.Correlation(m, histogram = TRUE, method = "pearson", pch = 19)

# 主成分分析 -------------------------------------------------------------------

## 1.以共變異數矩陣進行分析
pca1 <- princomp(data, cor = F)
pca1
summary(pca1)
print(pca1$loadings, digits = 8, cutoff = 0)
pca1$scores
biplot(pca1)
plot(pca1)

## 2.以相關係數矩陣進行分析 (建議)
pca2 <- princomp(data, cor = T)
pca2
summary(pca2)
print(pca2$loadings, digits = 8, cutoff = 0)
pca2$scores
biplot(pca2)
plot(pca2)