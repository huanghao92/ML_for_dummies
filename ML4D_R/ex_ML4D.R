Names <- c("Jane","Sam","Jose","Amy")
Ages <- c(42,33,39,25)
Locations <- factor(c("West","West","South","South"))

EmpData <- data.frame(Name=Names,Age=Ages,Location=Locations)
str(EmpData)
EmpData <- data.frame(Name=Names,Age=Ages,Location=Locations,stringsAsFactors = FALSE) #name column is not factor
str(EmpData)


