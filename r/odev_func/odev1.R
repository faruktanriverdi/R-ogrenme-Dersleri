
#| Girilen meyve sebze dosyasını import edilerek, func kullanarak yazılan ürünün cinsini bulma

setwd("C:\\Users\\faruk\\Desktop\\r\\odev_func")

library(readxl)
meyve_sebze<-read_xlsx("meyve_sebze.xlsx")

stok_kontrol<-function(){
  
  x<- as.character (readline(prompt = "meyve veya sebze giriniz: "))
  
if (x %in% meyve_sebze$Meyve) {
    print("Bu bir meyvedir")
}else if (x %in% meyve_sebze$Sebze) {
  print("Bu bir sebzedir")
}else{
    print("Kayıtlarımız da böyle ürün yoktur")
  }
  
}
stok_kontrol()
