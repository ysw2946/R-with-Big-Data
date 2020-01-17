kor <- 80
eng <- 70
mat <- 95
tot <- kor + eng + mat
print("세과목 합계는")
print(tot)

kor <- 80
eng <- 81.67
mat <- 90.0
total <- kor + eng + mat # total = 251.67
avg <- total/3 #avg = 83.89
print(total)
print(avg)

sgrade <- "A" #문자 "A"를 변수에 저장
mode(sgrade)
sname <- "홍길동" # 문자열 "홍길동"을 변수에 저장
mode(sname)

kor <- 95 # kor에 95 저장
above90 <- kor >=90 # kor 값에 90점 이상인가?
below90 <- kor < 90 # kor 값에 90점 미만인가?
print(above90)
print(below90)

today1 <- Sys.Date() # 현재의 날짜 출력
print(today1)
today2 <- Sys.time() # 현재의 날짜와 시간 출력
print(today2)

10%%3
10%/%3

kor <- 80
above70 <- kor >=70 # kor가 70점 이상인가?
print(above70)

kor <- 80
eng <- 70
above70 <- (kor >= 70) & (eng >= 70) # kor가 70점 이상이고
# eng가 70점 이상인가?
print(above70)

score <- c(80,90,70,65,55,30,60,90,88,100,76,30,55,61,89,68,78,70,88,82)
sum(score) # 반 합계 점수
mean(score) # 반 평균 점수
median(score) # 반 중앙값 점수
max(score) # 반 최고 점수
min(score) # 반 최저 점수
length(score) # 반 학생의 수

score <- c(80,90,70,65,55,30,60,90,88,100,76,30,55,61,89,68,78,70,88,82)
sumScore <- sum(score)
avgScore <- mean(score)
cat("총점 = ", sumScore, "평균 점수 = ", avgScore)

score <- c(80,90,70,65,55,30,60,90,88,100,76,30,55,61,89,68,78,70,88,82)
sumScore <- sum(score)
avgScore <- mean(score)
midScore <- median(score)
stdNum <- length(score)
maxScore <- max(score)
minScore <- min(score)

cat("총점 = ", sumScore, "평균 점수 = ", avgScore, "\n")
cat("중앙값 = ", midScore, "학생수 = ", stdNum, "\n")
cat("최대값 = ", maxScore, "최소값 = ", minScore, "\n")