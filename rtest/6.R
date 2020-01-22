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

setwd("D:/R with Big Data/강의 실습자료/ch_06/Data")
txtLines <- readLines("ch6_movie_list.txt")
print(txtLines)