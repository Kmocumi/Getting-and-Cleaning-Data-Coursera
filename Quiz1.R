## Question1

#Download the file from the Internet, use browser or commands:
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv.csv"
download.file(url=fileUrl, destfile="idaho_housing.csv")
data <- read.csv("idaho_housing.csv")
head(data)

sum(dat$VAL == 24, na.rm = TRUE)

## Question3

# Load the library to read in the excel file
library(xlsx)

# Read in the data from the given URL
rowIndex <- 18:23
colIndex <- 7:15
dat1 <- read.xlsx(file="NGAP.xlsx",sheetIndex=1,colIndex=colIndx,startRow=18, endRow=23, header=TRUE,mode = "wd")
head(dat1)
sum(dat1$ZIP * dat1$EXT, na.rm = T)





