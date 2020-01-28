name <- readline("Input your name : ")
print(name)

inwei <- readline("당신의 몸무게는 ?")
inhei <- readline("당신의 키는 ?")
wei <- as.numeric(inwei)
hei <- as.numeric(inhei)
vbmi <- (wei*10000)/(hei^2);

cat("당신의 BMI 지수는",vbmi,"입니다.\n")

kor <- scan()
print(kor)

charvalue <- scan(what = character())
print(charvalue)

listvalue <- scan(what = list(name = character(),kor = numeric(),eng = numeric()))
print(listvalue)

student1 <- data.frame()
student1 <- edit(student1)
print(student1)

name = "홍길동"
sum = 254
avg = sum / 3
outMsg <- sprintf("%s 학생의 총점은 %d 이고, 평균은 %.3f입니다.",name, sum, avg)
cat(outMsg) # %s는 네임을 그 자리에 문자형으로 출력하라는 것 %d는 숫자형

inwei <- readline("당신의 몸무게는?") #readline은 문자열로 들어간다
inhei <- readline("당신의 키는?")
wei <- as.numeric(inwei) # 입력한 문자열을 숫자값으로 변경
hei <- as.numeric(inhei)
vbmi <- (wei*10000)/(hei^2);
bmi <- sprintf("당신의 BMI 지수는 %.1f입니다.\n",vbmi)
cat(bmi)

student1 <- data.frame() # 데이터 프레임 입력에 편리한 도구 edit 
student1 <- edit(student1) # 표를 생성할 때 사용
View(student1)

setwd("D:/R with Big Data/강의 실습자료/ch_06")
txtLines <- readLines("ch6_movie_list.txt")
print(txtLines)

setwd("D:/R with Big Data/강의 실습자료/ch_06")
eng <- scan("ch6_score.txt")
print(eng)

setwd("D:/R with Big Data/강의 실습자료/ch_06")
listvalue <- scan("ch6_score_list.txt",what = list(name= character(), 
                                                   kor = numeric(), 
                                                   eng = numeric(), mat = numeric()))
cat("\nlistvalue : \n");
print(listvalue)

setwd("D:/R with Big Data/강의 실습자료/ch_06")
score1 <- read.table("ch6_score_list.txt", header = FALSE, stringsAsFactors = FALSE)
print(score1)

setwd("D:/R with Big Data/강의 실습자료/ch_06")
score1 <- read.table("ch6_score_space.txt", header = TRUE, stringsAsFactors = FALSE)
print(score1)

setwd("D:/R with Big Data/강의 실습자료/ch_06")
score2 <- read.table("ch6_score_comma.csv", header = TRUE, sep = ",",
                     stringsAsFactor = FALSE)
print(score2)

setwd("D:/R with Big Data/강의 실습자료/ch_06")
kor = c(80, 90, 70)
write.table(kor, "kor1.txt")
write.table(kor, "kor2.txt", quote = FALSE , row.names = FALSE, col.names = FALSE)

# 데이터 불러오기
setwd("D:/R with Big Data/강의 실습자료/ch_06")
score1 <- read.table("ch6_score_space.txt", header = TRUE, stringsAsFactors = FALSE)
print(score1)

# 각 학생의 국영수 성적 합계 및 평균 구하기
sumValue <- apply(score1[c(2:4)],1, sum)
avgValue <- apply(score1[c(2:4)],1, mean)
cat("sumValue : \n"); print(sumValue)
cat("avgValue : \n"); print(avgValue)

# 국영수 성적에 합계와 평균에 해당하는 열 추가하기
score2 <- cbind(score1, sum = sumValue, avg = avgValue)
print(score2)

# 텍스트 파일로 저장하기
write.table(score2, "score2.txt", quote = FALSE, row.names = FALSE, col.names= TRUE)
