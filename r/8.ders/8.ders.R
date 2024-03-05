
#| merge() ,tabloloarı birleştirme
#| Farklı kolonlardan veri almak ve bu kolanları yeni data frame altında toplamak – 
#| ( rbind(), cbind(), bind_rows () ) | 
#| R içerisinde oluşturulan data tablosunu export etmek – write.csv() , write_xlsx ()

setwd("C:\\Users\\faruk\\Desktop\\r")
library(readxl)

kisisel_bilgiler<-read_xlsx("ad_cinsiyet_okulnu.xlsx")
hobiler<-read_xlsx("hobi_fobi_yemek.xlsx")

#merge() kullanımı
colnames(kisisel_bilgiler)
colnames(hobiler)
merge_dosya<-merge(kisisel_bilgiler,hobiler,by.x = "Ad-Soyad",by.y = "Ad-Soyad")#kolon isimleri farklı olabilir

#cbind kullanımı()
cbin_data<-cbind(kisisel_bilgiler$Cinsiyet,hobiler$Fobi) #colnames(cbin_data)<-c("Cinsiyet","Fobi")                   
cbind_data2<-cbind(kisisel_bilgiler[3],hobiler[4])
cbind_data3<-cbind(kisisel_bilgiler["Cinsiyet"],hobiler["Fobi"])

#rbind kullanımı()
rbind_data<-rbind(kisisel_bilgiler$`Okul Nu`,hobiler$Yemek)

#bind_rows
library(dplyr)
farkli_row<-bind_rows(kisisel_bilgiler,hobiler)

######## R İçerisinde Oluşturulan Data Tablosunu Export Etmek(Yeni)#########
#write.csv
write.csv(farkli_row,"export_farkli_row.csv")

#write.table
write.table(farkli_row,"export_farkli_row.txt",row.names = F,sep = ",")

#write_xlsx()
library(writexl)
write_xlsx(farkli_row,"export_farkli_row.xlsx")





