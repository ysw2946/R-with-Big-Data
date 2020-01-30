inNUM <- readline("임의의 자연수를 입력하세요 : ")
number <- as.numeric(inNUM)
remainder <- number %% 2

if(remainder == 0){
  result <- "even number"
}else{
  result <- "odd number"
}
cat(number,"is an", result)

score <- 85
if (score >= 90){
  Grade <- "A"
} else if(score >=80){
  Grade <- "B"
} else{
  Grade <- "C"
}
cat("Your grade is", Grade)

for(n in 1:5){
  print(n)
}

x <- c(1,3,5)
for (n in x){
  cat(n,"의 제곱",n*n,"\n")
}

evenCount <- 0
oddCount <- 0
x <- c(3,4,9,1,6,2,6,7,3)
for (n in x)
  if( n %% 2 == 0){
    evenCount <- evenCount + 1
  }else{
    oddCount <- oddCount + 1
  }
cat("짝수의 개수 :",evenCount,"\n")
cat("홀수의 개수 :",oddCount,"\n")

x <- 1; base <- 300
while (x <= base){
  x <- x*2
}
cat(base,"보다 크면서",base,"에 가장 가까운 2의 제곱승 값은",x,"이다","\n");

x <- 0; base <- 100; multi <- 7;
while (x <= base){
  x <- x + multi;
}
cat(base,"을 초과하면서",base,"에 가장 가까운",multi,"의 배수는",x,"입니다")

x <- 0; base <- 100; multi <- 7;
repeat{
  if(x > base) break
  x <- x + multi
}
cat(base,"을 초과하면서",base,"에 가장 가까운",multi,"의 배수는",x,"입니다","\n");

id <- c("1","2","3","4")
name <- c("정우성","민철우","송중기","김영희")
kor <- c(80,60,90,70)
eng <- c(70,50,100,80)
mat <- c(95,70,95,80)
score1 <- data.frame(학번=id,이름=name,국어=kor,영어=eng,수학=mat)
print(score1)

avgValue <- apply(score1[,c(3:5)],1, mean)
print(avgValue)

finalGrade <- c()
for(n in avgValue){
  if(n>=90){
    Grade <- "A"
  } else if(n >= 80){
    Grade <- "B"
  } else if(n >= 70){
    Grade <- "C"
  } else if(n >= 60){
    Grade <- "D"
  } else{
    Grade <- "F"
  }
  finalGrade <- c(finalGrade,Grade)
}
print(finalGrade)

score2 <- cbind(score1,평균 = avgValue, 등급 = finalGrade)
print(score2)
score1 <- cbind(score1,평균 = avgValue, 등급 = finalGrade)
print(score1)
