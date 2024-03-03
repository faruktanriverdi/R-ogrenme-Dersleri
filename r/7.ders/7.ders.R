
#library(dplyr) kurulumu | dplyr kullanımı() - filter(), select(),rename()

# pankreas<readRDS("pancreas.rds")
# newdata<-pankreas$

setwd("C:\\Users\\faruk\\Desktop\\r")

install.packages("dplyr")
library(dplyr)
library(readxl)

data1<-read_xlsx("ad_cinsiyet_okulnu.xlsx")

erkekler<-data1 %>% 
  filter(Cinsiyet=='E')

class(data1$Cinsiyet) #veri tipini kontrol ettik.s

okulnu<-data1%>%
  filter(`Okul Nu`>=3)

select_data<-data1%>%
  select(1,2)

new_name<-data1%>%
  rename(gender=Cinsiyet)
