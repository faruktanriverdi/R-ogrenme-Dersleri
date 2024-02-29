#Basit data manipülasyonları  c(), [], $, @ düzencelerinin kullanımı | 
#Kolon ismi değiştirme - names(), colnames() fonksiyonları

library(readxl)
kisisel_bilgiler <- read_xlsx("C:\\Users\\faruk\\Desktop\\r\\ad_cinsiyet_okulnu.xlsx")#veriyiçekme
class(kisisel_bilgiler)

x<-c(1,2,3,4,5) #c()

tek_kolon_ad_soyad<-kisisel_bilgiler$`Ad-Soyad` #isim soyisim alma
tek_kolon_ad_soyad

tek_kolon_ad_soyad2<-kisisel_bilgiler[1]  #1.kolonu alma    #
tek_kolon_ad_soyad2


# [satır,kolon]
tek_kolon_ad_soyad3<-kisisel_bilgiler[1,1:2] #1.row 1 ve 2 özellikleri alma 

yeni_satir_alma<-kisisel_bilgiler[1:3,1:3]

yeni_satir_alma2<-kisisel_bilgiler[c(1,2,3),c(1,2,3)]

list1<-as.list(kisisel_bilgiler)
#list1@

#Kolon ismi Değiştirme
names(kisisel_bilgiler) #kolon isimleri
names(kisisel_bilgiler)[1] #birinci kolon ismini alma
names(kisisel_bilgiler)[1]<-"isimi-soyisimi" #kolon ismini değiştirme

colnames(kisisel_bilgiler)[2]<-"ccinsiyeti"
colnames(kisisel_bilgiler)<-c("a","b","c")
