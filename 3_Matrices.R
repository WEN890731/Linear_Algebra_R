# Matrices ----------------------------------------------------------------

# 3.1 Matrices
?matrix
A <- matrix(c(1, 3, 2, 2, 8, 9), nrow = 2, ncol = 3, byrow = FALSE)
A
A2 <- matrix(c(1, 3, 2, 2, 8, 9), ncol = 3, byrow = TRUE)
A2

# 3.2 Multiplying a matrix with a number
7*A

# 3.3 Transpose of matrices
t(A)

# 3.4 Sum of matrices
B <- matrix(c(5, 8, 3, 4, 2, 7), ncol = 3, byrow = T)
A + B

# 3.5 Multiplication of a matrix and a vector
# 矩陣相乘要使用%*%
A %*% a
A * a
a1 <- c(1, 2, 3, 4)
A * a1

# 3.6 Multiplication of matrices
A <- matrix(c(1, 3, 2, 2, 8, 9), ncol = 2)
A
B <- matrix(c(5, 8, 4, 2), ncol = 2)
B
A %*% B

# 3.7 Vectors as matrices
# One can regard a column vector of length r as an r × 1 matrix and a row
# vector of length c as a 1 × c matrix.

# 3.8 Some special matrices
# 0-matrix
O <- matrix(0, nrow = 2, ncol = 3)
O
# 1-matrix
e <- matrix(1, nrow = 2, ncol = 3)
e
# Diagonal matrix
D <- diag(c(1, 2, 3))
D
# identity matrix
I <- diag(1, 3);
I
# 找出主對角線的元素
D ; diag(D)
A ; diag(A)

# 3.9 Inverse of matrices
A <- matrix(c(1, 3, 2, 4), ncol = 2, byrow = T)
A
B <- solve(A)
B
A %*% B
B %*% A

# 3.10 Solving systems of linear equations
# x1 + 3*x2 = 7
# 2*x1 + 4*x2 = 10
A <- matrix(c(1, 2, 3, 4), ncol = 2) ; A
b <- c(7, 10) ; b
x <- solve(A) %*% b ; x

# 3.11 Trace
A <- matrix(c(1, 2, 3, 4), ncol = 2) ; A
sum(diag(A))

# 3.12 Determinant
A <- matrix(c(1, 2, 3, 4), ncol = 2) ; A
det(A)

# 3.13 Some additional rules for matrix operations

# 3.14 Details on inverse matrices
## 下載套件 https://cran.r-project.org/web/packages/RConics/RConics.pdf
install.packages("RConics")
library(RConics)
A <- matrix(c(1, 4, 5, 3, 7, 2, 2, 8, 3), nrow = 3, ncol = 3)
minor(A, 2, 3)
cofactor(A, 2, 3)
adjoint(A)

# 3.14.4 Inverting an n × n matrix (列運算)
A <- matrix(c(2, 2, 3, 3, 5, 9, 5, 6, 7), ncol = 3) ; A
AB <- cbind(A, diag(c(1, 1, 1))) ; AB
AB[1, ] <- AB[1, ]/AB[1, 1] ; AB 
AB[2, ] <- AB[2, ] - 2 * AB[1, ] ; AB
AB[3, ] <- AB[3, ] - 3 * AB[1, ] ; AB
AB[2, ] <- AB[2, ]/AB[2, 2] ; AB
AB[3, ] <- AB[3, ] - 4.5 * AB[2, ] ; AB
AB[3, ] <- AB[3, ]/AB[3, 3] ; AB
AB[2, ] <- AB[2, ] - 0.5 * AB[3, ] ; AB
AB[1, ] <- AB[1, ] - 2.5 * AB[3, ] ; AB
AB[1, ] <- AB[1, ] - 1.5 * AB[2, ] ; AB
B <- AB[, 4:6] ; B
A %*% B

