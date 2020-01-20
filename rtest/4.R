kor <- c(80, 60, 90, 70)
eng <- c(70, 50, 100)
korEng <- c(kor,eng)
math <- c(95, 70, "95", 80)
kor2 <- c(90,80, T, TRUE)

kor <- 80
math <- 90
eng <- "B"
sco <- c(kor,math,eng)
tot <- sum(sco)

x <- 1:5 # x는 1,2,3,4,5 의 5개의 원소를 갖는 벡터
cat("x : ",x, "\n")

y <- 10:5 # y는 10,9,8,7,6,5 의 6개의 원소를 갖는 벡터
cat("y : ",y,"\n")

res1 <- seq(from = 1, to = 20, by = 2) # 1부터 20까지 2씩 증가
cat("res1 : ",res1, "\n")
res2 <- seq(1, 5, 0.5) #1부터 5까지 0.5씩 증가
cat("res2 : ",res2, "\n")
res3 <- seq(1, 10, length.out = 7) #1부터 10까지 7개 되는 자료 생성
cat("res3 : ",res3, "\n")
res4 <- seq(3, 1000, 3) #3부터 1000까지 3의 배수인 자료 생성
cat("res4 : ",res4, "\n")

data = c(80, 60, 90, 70, 70, 50, 100, 80, 95, 70, 95, 80)
score <- matrix(data,nrow = 4)
print(score)

data = c(80, 60, 90, 70, 70, 50, 100, 80, 95, 70, 95, 80)
score <- matrix(data,ncol = 3, byrow = TRUE)
print(score)

kor <- c(80, 60 , 90 ,70)
eng <- c(70, 50, 100, 80)
math <- c(95, 70, 95, 80)

scoreC <- cbind(kor, eng, math)
cat("cbind : \n "); print(scoreC)

scoreR <- rbind(kor, eng)
cat("rbind : \n"); print(scoreR)

kor <- c(80, 60, 90, 70)
kor[3] <- 95
num <- kor[4]
evenStd <- kor[c(2,4)]
print(evenStd) 

kor <- c(80, 60, 90, 70)
eng <- c(70, 50, 100, 80)
math <- c(95, 70, 95, 80)
totStu <- kor + eng + math
cat("totStu : "); print(totStu)

res <- kor / math
cat("res : "); print(res)

score <- matrix(c(80, 60, 90, 70, 70, 50, 100, 80, 95, 70, 95, 80), nrow = 4)
print(score)
score[2,2] <- score[2,2] + 20
print(score)

kor <- score[,1, drop = FALSE]
print(kor)

substu <- score[c(2,3),c(2,3)]
print(substu)

midSco <- matrix(c(80, 60, 90, 70, 70, 50, 10, 80, 95, 70, 95, 80), nrow = 4)
finSco <- matrix(c(85, 75, 95, 80, 80, 70, 95, 90, 90, 85, 90, 85), nrow = 4)
midSco[3,2] <- 100
totalSco <- midSco + finSco
print(midSco)
print(finSco)
print(totalSco)

midSco <- matrix(c(80, 60, 90, 70, 70, 50, 10, 80, 95, 70, 95, 80), nrow = 4)
colnames(midSco) <- c("국어","영어","수학")
rownames(midSco) <- c("정우성","김철수","송중기","김영희")
print(midSco)