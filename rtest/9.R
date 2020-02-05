str_including_pole <- grep("Pole",c("North Pole","South Pole","Equator"), value = TRUE)
print(str_including_pole)

index_of_pole <- grep("Pole",c("North Pole","South Pole","Equator"), value = FALSE)
print(index_of_pole)

elec_code <- substr("LEDTV-48-B",1,5);
print(elec_code)

list_word <- strsplit("7-24-2017",split="-");
print(list_word)

vec_word <- unlist(list_word);
print(vec_word)

word <- strsplit("2017.7.24",split=".");
print(word)
word1 <- strsplit("2017.7.24",split=".",fixed=TRUE);
print(word1)
word2 <- strsplit("2017.7.24",split="\\.");
print(word2)

pword1 <- paste("2017","5","30");
print(pword1)
pword2 <- paste("2017","5","30",sep="-");
print(pword2)

txt <- "Text Analytics is useful. Text Analytics is also interesting"
new_txt1 <- sub("Text","Data",txt);
print(new_txt1)
new_txt2 <- gsub("Text","Data",txt);
print(new_txt2)

txt <- "Text-Analytics is useful.\n Text Analytics is also interesting.\n"
txt1 <- gsub("\n","",txt)
print(txt1)
txt2 <- gsub("-","",txt1)
print(txt2)

txt <- "Text Analytics is useful. Text Analytics is also interesting"
small_txt <- tolower(txt);
print(small_txt)
capital_txt <- toupper(txt);
print(capital_txt)

grade <- c("B","C","C","B","A","C","C")
freq_grade <- table(grade); print(freq_grade)

library(tm)
setwd("D:/R with Big Data/강의 실습자료/ch_09")
lyrics <- readLines("ch9_2_jingle_bells.txt")

lyrics <- gsub(",","",lyrics)
lyrics <- gsub("\\.","",lyrics)
lyrics <- gsub("-","",lyrics)

lyrics <- tolower(lyrics)
lyricsword <- strsplit(lyrics," ")
lyricswordList <- unlist(lyricsword)

lyricsCount <- table(lyricswordList)
lyricsCount <- sort(lyricsCount, decending=TRUE)
lyricsCount <- lyricsCount[lyricsCount >= 2]
print(lyricsCount)

barplot(lyricsCount, horiz=TRUE,las=1,xlim=c(0,7),col="orange",main="jingle_bells")

lyricswordListNotUsed <- removeWords(lyricswordList, stopwords("en"))

lyricswordListNotUsed <- lyricswordListNotUsed[nchar(lyricswordListNotUsed) >=1]
lyricswordListNotUsed <- table(lyricswordListNotUsed)
lyricswordListNotUsed <- sort(lyricswordListNotUsed, decreasing = TRUE)
lyricswordListNotUsed <- lyricswordListNotUsed[lyricswordListNotUsed >= 2]

barplot(lyricsCount, horiz=TRUE,las=2,xlim=c(0,7),col="mediumseagreen",main="jingle bells")
