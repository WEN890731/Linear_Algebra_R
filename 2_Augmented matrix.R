#「輔助」說明: 
# 「Html輔助」= help.start() 
#「R函式」= help() 及 ? 
# 「搜尋輔助」= help.search() 
# ls() 
# rm(list=ls()) 
##################################### 
# help.search("tranpose") 
# ? t 
# t(A): Note: transpose of A 

################################################################### 
# e.g. 1.1.3 
################################################################### 

# Step 1. Original system. 
# Augumented matrix 
A = matrix(c(1, 2, 3, 6, 2, -3, 2, 14, 3, 1, -1, -2), nrow = 3, byrow = T) 
A
# 3x3 Identity matrix 
I3 <- diag(3) 
I3
# Step 2. To eliminate x, we add (-2) times E1 to E2 and (-3) times E1 to E3. 
R11 = I3; R11[2,1] <- -2; R11 
R12 = I3; R12[3,1] <- -3; R12 
A1 = R12 %*% R11 %*% A; A1 

# Step 3. Multiply E3 by (-1/5). 
R2 <- I3; R2[3,] <- R2[3,]*-1/5; R2 
A2 = R2 %*% A1; A2 

# Step 4. Interchange E2 and E3. 
R3 <- I3 
R3[2,] = I3[3,] 
R3[3,] = I3[2,]; R3 
A3 = R3 %*% A2; A3 

# Step 5. Add -2 times E2 to E1 and 7 times E2 to E3. 
R41 = I3; R41[1,2] <- -2; R41 
R42 = I3; R42[3,2] <- 7; R42 
A4 = R42 %*% R41 %*% A3; A4 

# Step 6. Multiply E3 by 1/10. 
R5 <- I3; R5[3,] <- R5[3,]/10; R5 
A5 = R5 %*% A4; A5 

# Step 7. Add 1 times E3 to E1 and -2 times E3 to E2. 
R61 = I3; R61[1,3] <- 1; R61 
R62 = I3; R62[2,3] <- -2; R62 
A6 = R62 %*% R61 %*% A5; A6 

# Step 8. Thus x = 1, y = -2, z = 3 is the solution. 
A6 

### The whole operations can be written as a sequence of row operations 
A 
Sol = R62 %*% R61 %*% R5 %*% R42 %*% R41 %*% R3 %*% R2 %*% R12 %*% R11 %*% A 
Sol = round(Sol) 
Sol
