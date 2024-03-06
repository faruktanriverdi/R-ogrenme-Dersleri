#| R dersi Ödev1
setwd("C:\\Users\\faruk\\Desktop\\r\\odev1")

library(readxl)
kisisel_bilgiler<-read_xlsx("ad_cinsiyet_okulnu.xlsx")
hobi_bilgisi<-read_xlsx("hobi_fobi_yemek.xlsx")
boy_bilgisi<-read_xlsx("boy_listesi.xlsx")

new_dataframe<-merge(kisisel_bilgiler,hobi_bilgisi,by.x = "Ad-Soyad",by.y = "Ad-Soyad")
new_dataframe2<-merge(new_dataframe,boy_bilgisi,by = 1,by.y = 1)
