# Segunda Especialidad UNA Puno
# Gerardo Mamani
# gerardocmamani@gmail.com

A <- matrix(c(2,3,2,1,4,1,-2,3),3,3)


B <- matrix(c(-1,3,4,1,4,0,0,1),3,3)


dim(A)

A[1,2]


t(A)


qr(A)$rank


det(A)


A + B


A - B


A%*%B


5*B


A%*%solve(B)


C <- matrix(c(-1,5,0,1,-2,0,-1,0,1),3,3)


G <- matrix(c(8,1,2,3,1,4,4,5,2,4,3,6,3,5,6,1),4,4)


F <- matrix(c(5,0,0,0,4,0,0,0,3),3,3)


H <- matrix(c(5,0,0,0,5,0,0,0,5),3,3)


I <- matrix(c(1,0,0,0,1,0,0,0,1),3,3)


solve(A)


A <- matrix(c(1,3,2,4),2,2)
B <- matrix(c(5,6),2,1)
C <- matrix(c(7,8),1,2)
D <- matrix(c(9),1,1)
sup <- cbind(A,B)
inf <- cbind(C,D)
E <- rbind(sup, inf)


eq <-  noquote(paste(expression("2x + y &=5\\\\x -y &=4")))

X<-matrix(c(2,1,1,-1),2,2)
y<-matrix(c(5,4),2,1)
b<-solve(X)%*%y
b

X <- matrix(c(1,1,1,1,1,6,5,4,4.5,6.2),5,2)

y <- matrix(c(22,20,16,15,20),5,1)


betas <- solve(t(X)%*%X)%*%t(X)%*%y
betas

print(paste0("a= ", betas[1]))
print(paste0("b= ", betas[2]))


lm(y ~ X[,-1] )


y <- matrix(c(6,11,4,3,5,9,10),7,1)
X0 <- matrix(c(4,7,2,1,3,7,8,5,2,6,9,4,3,2,4,3,4,6,5,4,5),7,3)

data <- data.frame(y,X0)

library(knitr)
library(tidyverse)


X <- cbind(rep(1,7),X0)

y <- matrix(c(6,11,4,3,5,9,10),7,1)
X0 <- matrix(c(4,7,2,1,3,7,8,5,2,6,9,4,3,2,4,3,4,6,5,4,5),7,3)
X <- cbind(rep(1,7),X0)

betas <- solve(t(X)%*%X)%*%t(X)%*%y
betas


lm(y ~ 0 + X)


y.hat <- X %*% betas
y.hat


e <- y - y.hat
e


f1 <- read.table(header = FALSE, text = "
                 18	15	16	18	15
16	14	16	18	17
16	13	16	14	16
15	16	15	15	16
15	16	16	15	16")


library(knitr)


kable(f1, format = "markdown")


f2 <- read.table(header = FALSE, text = "
                16	20	19	17	14
16	14	14	15	17
22	13	12	15	16
21	18	15	14	18
16	17	13	15	13
")



kable(f2, format = "markdown")


f1 <- as.vector(as.matrix(f1))
f2 <- as.vector(as.matrix(f2))
mean(f1)

mean(f2)


var(f1)


var(f2)


library(ggplot2)

df <- rbind(data.frame(number=f1, pop="F1"), data.frame(number=f2, pop="F2"))
ggplot(df, aes( y=number, x=pop, fill=pop)) +
  scale_fill_manual(values=c("#E69F00", "#56B4E9")) +
  geom_violin(trim=FALSE)

