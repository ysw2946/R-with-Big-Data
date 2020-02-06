fourCalcFun <- function(a,b){
  totvalue <- a + b; minusvalue <- a - b
  mulvalue <- a * b; divvalue <- a / b
  cat(a, "+", b, "=", totvalue,"\n")
  cat(a, "-", b, "=", minusvalue,"\n")
  cat(a, "*", b, "=", mulvalue,"\n")
  cat(a, "/", b, "=", divvalue,"\n")
}

divfun <- function(a,b){
  quotient <- a / b
  remainder <- a %% b
  cat(a, "/", b, "=", quotient, "\n")
  cat(a, "%%", b, "=", remainder, "\n")
}
