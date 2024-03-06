#| R dersi Ödev1
setwd("C:\\Users\\faruk\\Desktop\\r\\odev1")

library(readxl)
kisisel_bilgiler<-read_xlsx("ad_cinsiyet_okulnu.xlsx")
hobi_bilgisi<-read_xlsx("hobi_fobi_yemek.xlsx")
boy_bilgisi<-read_xlsx("boy_listesi.xlsx")

new_dataframe<-merge(kisisel_bilgiler,hobi_bilgisi,by.x = "Ad-Soyad",by.y = "Ad-Soyad")
new_dataframe<-merge(new_dataframe,boy_bilgisi,by = 1,by.y = 1)

class(new_dataframe$Boy)                          
#| cm stringini boşluk ile değiştirdik veri türü numeric formata uygun hale geldi, veri sayısal işleme hazır
                              
##### gsub() function #####
new_dataframe$Boy<-gsub("cm","",new_dataframe$Boy)
new_dataframe$Boy<-as.numeric(new_dataframe$Boy)

new_dataframe$Boy<-new_dataframe$Boy/100

names(new_dataframe)
names(new_dataframe)<-c("ad_soyad","E/K","numara","sevdigi","sevmedigi","yemek","boyu(m)")

write.csv2(new_dataframe,"odev_1.csv")
