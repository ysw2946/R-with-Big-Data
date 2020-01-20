stuOneData <- list(Number=1,Name="김철수", scoKor = 60, scoEng = 50, 
                   scoMat = 70, grade = "D")
stuOneData <- list(1,"김철수",60,50,70,"D")
print(stuOneData)

number <- seq(1:4)
name <- c("정우성","김철수","송중기","김영희")
kor <- c(80, 60, 90, 70)
eng <- c(70, 50, 100, 80)
mat <- c(95, 70, 95, 80)
grade <- c("B","D","A","C")
stuInfo <- data.frame(number,name,kor,eng,mat,grade,stringsAsFactors = FALSE)
print(stuInfo)
str(stuInfo)

stuOneData <- list(Number=1,Name="김철수", scoKor = 60, scoEng = 50, 
                   scoMat = 70, grade = "D")
stuOneData$scoEng <- 60 
stuOneData$scoSci <- 90 # 과학 성적 주기, 기존에 없는 항목에 값을 대입할 경우 추가됨
stuOneData$grade <- NULL # 기존 리스트 항목에 NULL값을 대입하면 삭제됨
print(stuOneData)

number <- seq(1:4)
name <- c("정우성","김철수","송중기","김영희")
kor <- c(80, 60, 90, 70)
eng <- c(70, 50, 100, 80)
mat <- c(95, 70, 95, 80)
grade <- c("B","D","A","C")
stuInfo <- data.frame(number,name,kor,eng,mat,grade,stringsAsFactors = FALSE)
stuInfo$kor[3] <- 85
scoKor <- stuInfo$kor # 국어 점수를 추출하여 scoKor 벡터에 저장
stuOne <- stuInfo[3,] # 3번 학생 데이터를 추출하여 stuOne 데이터 프레임에 저장
scores <- stuInfo[,c(3:5)] # 국어, 영어, 수학 세 과목 성적을 scores 데이터 프레임에 저장
students <- stuInfo[c(2:3),] # 2번과 3번 학생 데이터를 추출하여 students 데이터 프레임에 저장

number <- seq(1:4)
name <- c("정우성","김철수","송중기","김영희")
kor <- c(80, 60, 90, 70)
eng <- c(70, 50, 100, 80)
mat <- c(95, 70, 95, 80)
grade <- c("B","D","A","C")
stuInfo <- data.frame(번호 = number,이름 = name,국어 = kor,영어 = eng,
                        수학 = mat, 학점 = grade,stringsAsFactors = FALSE)
res1 <- stuInfo$이름 ; print(res1) # 태그 이름"$이름"으로 name 행에 접근
res2 <- stuInfo[[2]] ; print(res2) # 이름 열을 벡터로 변환한다. stuInfo$이름 과 동일
res3 <- stuInfo["이름"] ; print(res3) # 이름 열을 데이터 프레임 구조로 변환
res4 <- stuInfo[2] ; print(res4) #이름 열을 데이터 프레임 구조로 변환 stuInfo["이름"]과 동일

print(class(res1))
print(class(res3))

number <- seq(1:4)
name <- c("정우성","김철수","송중기","김영희")
kor <- c(80, 60, 90, 70)
eng <- c(70, 50, 100, 80)
mat <- c(95, 70, 95, 80)
grade <- c("B","D","A","C")
stuInfo <- data.frame(number,name,kor,eng,mat,grade,stringsAsFactors = FALSE)
sci <- c(95, 85, 75, 80)
stuOne <- list(5,"홍길동",85, 95, 80, 90,"A");
stuTwo <- list(6,"광개토",95, 80, 90, "A");
stuInfo <- cbind(stuInfo[, c(1:5)],sci,stuInfo[6])
stuInfo <- rbind(stuInfo[c(1:2), ],stuOne,stuInfo[c(3:4),])
stuInfo <- rbind(stuInfo, stuTwo)
stuInfo <- stuInfo[-c(1,3),] # -를 하면 그 행,열을 삭제해라 라는 뜻