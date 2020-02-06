library(rvest)
ur1 <- "http://media.daum.net/ranking/popular"
daumSrc <- read_html(ur1)
rankNEwsTagTemp <- html_nodes(daumSrc, ".tit_thumb")
rankNewsTag <- html_nodes(daumSrc, ".link_txt")

rankNewsText <- html_text(rankNewsTag)
print(rankNewsText)

ur1 <- "https://movie.daum.net/moviedb/grade?movieId=126030&type=netizen"

daumMovieSrc <- read_html(ur1)
daumMovieTag <- html_nodes(daumMovieSrc,".desc_review")
daumMovieText <- html_text(daumMovieTag)

daumMovieText <- gsub("\t","", daumMovieText)
daumMovieText <- gsub("\n","", daumMovieText)
daumMovieText <- gsub("\r","", daumMovieText)

#daumMovieText1 <- Filter(function(x){nchar(x) >= 2}, daumMovieText)
daumMovieText1 <- daumMovieText[nchar(daumMovieText) >= 2]
print(daumMovieText1)

allText = NULL
page <- c(1:3)
for(i in page){
  ur1 <- sprintf("https://movie.daum.net/moviedb/grade?movieId=126030&type=netizen&page=%d",i)
  daumMovieSrc <- read_html(ur1)
  daumMovieTag <- html_nodes(daumMovieSrc,".desc_review")
  daumMovieText <- html_text(daumMovieTag)

  daumMovieText <- gsub("\t","", daumMovieText)
  daumMovieText <- gsub("\n","", daumMovieText)
  daumMovieText <- gsub("\r","", daumMovieText)

  daumMovieText <- unlist(daumMovieText)
  daumMovieText1 <- Filter(function(x){nchar(x) >= 2}, daumMovieText)

  allText <- c(allText, daumMovieText1)
}

print(allText)
