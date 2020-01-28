kor <- c(61, 78 , 95, 80, 72)
plot(kor, type="b", pch=1)

kor <- c(61, 78, 95, 80, 72)
eng <- c(81, 87, 90, 70, 82)
plot(kor, type="b", pch=1)

points(eng,type="b",pch=2, lty = 2, lwd = 2)
grid()
txt = c("kor","eng")
legend("topright",txt,pch=1:2, bty = "n")

kor <- c(61, 78, 95, 80, 72)
no <- c(201701, 201702, 201703, 201704, 201705)
plot(no,kor)

data("pressure")
print(head(pressure))
plot(pressure)
grid()

data("pressure")
plot(pressure, type="b",
     xlim = c(0,400),
     ylim = c(0,850),
     main = "Temp. , & Pres.",
     xlab = "온도", ylab = "기압",
     cex.lab = 1.1,
     col = 2)
grid()

plot(pressure)
title(main = "온도와 기압간의 관계", col.main = "dark blue")
arrows(100, 200, 150, 10)
text(110, 250, "temperature & pressure", cex = 1.2, col = "blue")
points(200, 600, pch = 8, cex = 2)

data <- c(203, 325, 412, 500, 120)
name <- c("금정점", "서구점", "동구점", "사상점", "중구점")
barplot(data,
        main = "가맹점별 판매실적",
        names.arg = name,
        col = c("black", "red", "green", "blue", "cyan"),
        ylab = "판매실적(백만원)", ylim = c(0,600))

setwd("D:/R with Big Data/강의 실습자료/ch_07")
kor <- scan("ch7_1_kor.txt")
print(kor)
hist(kor,
     breaks = 10,
     freq = FALSE,
     col = c("red", "blue", "green"), main = "국어 점수의 분포", # col=rainbow(!0)으로 여러가지 색으로 표현할 수 있다.
     xlab = "국어점수", ylab = "미흡")

x <- c(203, 325, 412, 500, 120)
lbl <- c("금정점", "서구점", "동구점", "사상점", "중구점")
pie(x, main = "가맹점별 판매실적",
    labels = lbl,
    radius = 1.0,
    col = rainbow(length(x)))

setwd("D:/R with Big Data/강의 실습자료/ch_07")
kor <- scan("ch7_1_kor.txt")
boxplot(kor, main = "국어 점수의 분포", ylab = "점수", col =5)
print(max(kor));print(min(kor)); print(median(kor))

setwd("D:/R with Big Data/강의 실습자료/ch_07")
data = read.table("ch7_2_1_student.txt", header = TRUE, stringsAsFactor= FALSE)

barplot(data$kor, main = "국어 성적", ylim=c(0,100), xlab = "이름", ylab = "점수",
        names.arg=data$name, col=c(1,2,3,4,5,6))
barplot(data$eng, main = "영어 성적", ylim=c(0,100), xlab = "이름", ylab = "점수",
        names.arg=data$name, col=c(1,2,3,4,5,6))
barplot(data$mat, main = "수학 성적", ylim=c(0,100), xlab = "이름", ylab = "점수",
        names.arg=data$name, col=c(1,2,3,4,5,6))

setwd("D:/R with BIg Data/강의 실습자료/ch_07")
data <- read.table("ch7_2_1_student.txt", header= TRUE, stringsAsFactor = FALSE)

data1 <- data[,-1] # 첫열은 제외
data2 <- as.matrix(data1)
name <- c("국어","영어","수학")

barplot(data2, main = "과목별 성적", names.arg = name, ylim = c(0,150),
        ylab = "점수", col = rainbow(nrow(data2)), beside = TRUE)

legend(1,140, data$name, cex = 0.8, fill = rainbow(nrow(data2)), horiz = T)

setwd("D:/R with BIg Data/강의 실습자료/ch_07")
data <- read.table("ch7_2_1_student.txt", header= TRUE, stringsAsFactor = FALSE)

data1 <- data[,-1] # 첫열은 제외
data2 <- t(data1)

barplot(data2, names.arg=data$name, ylim=c(0,350), ylab="점수",
        border="cyan", col = c(2,3,4), beside = FALSE)
legend("topright",c("국어","영어","수학"), cex=0.7, bty = "n",
       fill = c(2,3,4), horiz = T)