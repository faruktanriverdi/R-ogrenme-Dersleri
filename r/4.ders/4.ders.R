

###--Data oluşturma | Dataların farklı formatlarda tutulması (.txt, .xlsx, vb.) --###
##########---Tablo import--Data import---#####
# R içerisine farklı formattaki dosyalar nasıl aktarılır
####--Dosya okutma türleri fonsiyonları | setwd() dizin tanımı--###


setwd("C:\\Users\\faruk\\Desktop\\r")
inek<-read.csv("cow_all_genes.csv")
inek<-read.csv2("cow_all_genes.csv",header=T,sep =",")

#install.packages("readxl")

library(readxl)

kopek<-read_excel("dog.xlsx")

sempanze<-read.delim("chimpanze_all_gene.txt")

