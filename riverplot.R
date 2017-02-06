library(data.table)
setwd("H:/Prosjekter/viz/")

data <- fread("opr_data.csv")

data$opr_fylke <- as.character(data$opr_sykehus_m)
for(i in 1:length(data$opr_fylke)){
  if(nchar(data$opr_fylke[i]) == 3){
    data$opr_fylke[i] <- substr(data$opr_fylke[i],1,1)
  } else{
    data$opr_fylke[i] <- substr(data$opr_fylke[i],1,2)
  }
}

data$opr_fylke <- as.integer(data$opr_fylke)
data$bosted <- data$FYLKE


