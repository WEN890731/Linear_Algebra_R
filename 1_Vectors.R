
# 2 Vectors -----------------------------------------------------------------

# 2.1 Vectors 行向量
a <- c(1, 2, 3) 
a

# 2.2 Transponse of vecotrs 
t(a)

# 2.3 Multiplying a vector by a number 
7*a

# 2.4 Sum of vectors 
a <- c(1, 3, 2)
b <- c(2, 8, 9)
a + b

# 2.5 (Inner) product of vectors
# 1*2 + 3*8 + 2*9 = 2 + 24 + 18 = 44 
sum(a*b)

# 2.6 The length (norm) of a vector
sqrt(sum(a*a))

# 2.7 The 0-vector and 1-vector
rep(0, 5)
rep(1, 5)

# 2.8 Orthogonal (perpendicular) vectors 
# 正交 - 向量內積等於0
v1 <- c(1, 1)
v2 <- c(-1, 1)
sum(v1*v2)


