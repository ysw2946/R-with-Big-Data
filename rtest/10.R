library(wordcloud);
library(KoNLP);
library(NIADic);
library(Sejong);
useNIADic();
useSejongDic();

setwd("D:/R with Big Data/강의 실습자료/ch_10")
proper_noun <- c('문대통령','문재인');
set_proper_noun <- data.frame(proper_noun, tag='ncn');
dics <- c('Sejong','insighter','woorimalsam')

news <- readLines("ch10_1_news.txt")

buildDictionary("NIADic","",data.frame("문대통령","ncn"))

noun1 <- extractNoun(news) # 명사 추출
noun2 <- unlist(noun1) # 리스트를 벡터로 변환
noun3 <- noun2[nchar(noun2) >= 2] # noun2에서 단어의 글자 수가 2이상인 단어 추출

nounCount1 <- table(noun3)

nounCount <- head(sort(nounCount1, decreasing = TRUE), 15)
print(nounCount)

wordcloud(names(nounCount),freq = nounCount, scale = c(5,1),
          rot.per = 0.5, min.freq = 2, random.order = FALSE, random.color = TRUE)

library(RColorBrewer)
palete <- brewer.pal(9, "Set1")
wordcloud(names(nounCount), freq = nounCount, scale = c(5,1), rot.per = 0.25,
          min.freq = 2, random.order = FALSE, random.color = TRUE, colors = palete)

install.packages("ggplot2")
install.packages("ggmap")
library(ggplot2)
library(ggmap)

register_google(key='AIzaSyB4I4dsUqAj6pisgckesbLpy5JaiLoeSxk')
library(ggmap)

setwd("D:/R with Big Data/강의 실습자료/ch_10")
loc <- read.csv("대한민국도시.csv", header =TRUE)
print(loc)

kor <- get_map("Jeonju", zoom = 7, maptype = "roadmap")
korMap <- ggmap(kor)
print(korMap)

devtools::install_github("dkahle/ggmap")
