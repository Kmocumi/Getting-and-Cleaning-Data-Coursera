## Question1

# Download the file from the Internet, use browser or commands:
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv.csv"
download.file(url=fileUrl, destfile="idaho_housing.csv")
data <- read.csv("idaho_housing.csv")
head(data)

# Solution
sum(dat$VAL == 24, na.rm = TRUE)

## Question3

# Load the library to read in the excel file
library(xlsx)
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
download.file(fileUrl, destfile = "NGAP.xlsx", method = "curl")
dateDownloaded <- date()

# Read in the data from the given URL
dat1 <- read.xlsx(file="NGAP.xlsx",sheetIndex=1,rowIndex = 18:23,colIndex = 7:15 )
head(dat1)

#Solution
sum(dat1$Zip * dat1$Ext, na.rm = T)

## Question4

# delete the "s" of "https://" first
library(XML)
fileUrl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
doc <- xmlTreeParse(file = fileUrl, useInternal = TRUE)
rootNode <- xmlRoot(doc)
xmlName(rootNode)
zipcode <- xpathSApply(rootNode,"//zipcode",xmlValue)
length(zipcode[zipcode==21231])

## Question5
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
download.file(url=fileUrl, destfile="fsspid.csv", method="curl")
dateDownloaded <- date()
library(data.table)
DT <- fread(input="fsspid.csv", sep=",")

# check the answer from very beginning.
system.time(sapply(split(DT$pwgtp15,DT$SEX),mean))

system.time(mean(DT[DT$SEX==1,]$pwgtp15);mean(DT[DT$SEX==2,]$pwgtp15))

system.time(tapply(DT$pwgtp15,DT$SEX,mean))

system.time(DT[,mean(pwgtp15),by=SEX])

system.time(rowMeans(DT)[DT$SEX==1]; rowMeans(DT)[DT$SEX==2])

system.time(mean(DT$pwgtp15,by=DT$SEX))





