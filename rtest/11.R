calcscore <- function(){
  totvalue <- sum(score1)
  avavalue <- mean(score1)
  cat("성적 합계 :", totvalue,"성적 평균 :",avavalue,"\n")
  score1[2] <<- 95
}

score1 <- c(70, 80, 90, 60)
calcscore()

calcscore <- function(s){
  totvalue <- sum(s)
  avavalue <- mean(s)
  cat("성적 합계 :", totvalue,"성적 평균 :",avavalue,"\n")
}

score1 <- c(70, 80, 90, 60); calcscore(score1)
score2 <- c(80, 75, 65, 96); calcscore(score2)
score3 <- c(50, 92, 75, 80); calcscore(score3)

calcscore <- function(k, e, m){
  totvalue <- k + e + m
  avavalue <- totvalue / 3
  cat("성적 합계 :", totvalue,"성적 평균 :",avavalue,"\n")
}

kor <- c(70, 80, 90, 60);
eng <- c(80, 75, 65, 96);
mat <- c(50, 92, 75, 80);
calcscore(kor, eng, mat)

calcscore2 <- function(s){
  totvalue <- sum(s)
  avavalue <- mean(s)
  result <- c(totvalue, avavalue)
  return(result)
  cat("성적 합계 :", totvalue,"성적 평균 :",avavalue,"\n")
}

score1 <- c(70, 80, 90, 60);
result1 <- calcscore2(score1)
score2 <- c(80, 75, 65, 96);
result2 <- calcscore2(score2)

if(result1[2] > result2[2]){
  print("1반이 2반보다 더 성적이 우수합니다")
} else {
  print("2반이 1반보다 더 성적이 우수합니다")
}


makescoredata <- function(){
  number <- seq(1:5); name <- c("송중기","전지현","송혜교","김태희","정우성")
  kor <- c(58, 63, 85, 69, 90); eng <- c(100, 95, 63, 80, 32)
  mat <- c(98, 45, 56, 89, 60); grade <- c("B","D","A","C","D")
  stuinfo <<- data.frame(number, name, kor, eng, mat, grade)
  colnames(stuinfo) <- c("번호","이름","국어","영어","수학","등급")
  cat("\n성적 데이터 :\n"); print(stuinfo); cat("\n");
}

calcsummean <- function(){
  spos <- 3; tpos <- 5;
  totscore <- apply(stuinfo[,c(spos:tpos)],1,sum)
  avgscore <- apply(stuinfo[,c(spos:tpos)],1,mean)
  resscore <<- data.frame(stuinfo[2],totscore,avgscore)
  cat("\n세과목 합계의 평균 :\n"); print(resscore, digits = 4)
}

overbase70 <- function(){
  basescore <- 70
  stuoverbase <- resscore[resscore$avgscore > basescore, ]
  cat("\n", basescore, "점 이상인 학생은 : \n"); print(stuoverbase, digits = 4)
}

makescoredata()

calcsummean()

overbase70()
