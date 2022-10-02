# liposomal bupivacaine_others

# load packages and data base
install.packages("openxlsx")
install.packages("dplyr")
library(openxlsx)
library(dplyr)
data <- read.xlsx("Data extraction cleaned.xlsx", sheet = 3)

# View data

View(data)

# Delete Refid=21 , cause tomaron pre-operatorio otros analgesicos, delete cols
data1 <- data[-c(1,2,3,4),]
data1 <- data1[,-c(7,19,20,21)]
view(data1)

# RefID = id, Intervention = int, Intervention.Dose = intd, Comparison.(bupivacaine,.placebo,.other) = c  "Comparison.Dose"                          "Outcomes"                                
[7] "Total.participants.(n)"                   "Total.Intervention.(n)"                   "Total.comparator(n)"                     
[10] "mean"                                     "SD"                                       "median"                                  
[13] "IQR"                                      "mean.1"                                   "SD.1"                                    
[16] "median.1"                                 "IQR.1"                                    "p-value"      
rename(data1, RefID = id, Intervention = int, Intervention.Dose = intd)

