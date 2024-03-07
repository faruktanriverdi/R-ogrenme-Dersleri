
#| Kullanıcıdan veri alma işlemleri readline()

setwd("C:\\Users\\faruk\\Desktop\\r")

kullanici_verisi<-readline(prompt = "Bir karakter veya sayı giriniz? ") #veri türünü belirlemezsek string alır
kullanici_verisi

#alınan verinin türünün belirlenmesi
kullanici_Verisi<- as.numeric(readline(prompt = "Bir karakter veya sayı giriniz? ")) #alınan veri türü numeric 
kullanici_Verisi

class(kullanici_Verisi)

# fonksiyon kullanımı

ilk_func <-function(){
  x<-as.numeric(readline(prompt =" x sayısını giriniz " ))
  y<-as.numeric(readline(prompt =" y sayısını giriniz " ))
  
  print(x + y)
  
} 
ilk_func()
ilk_func()


