
#|if for while kullanımı
x<-1:5
y<-6:10

#if else
if(1 %in% x && 3 %in% x ){
  print("ilk if bağlacım")
}else{
  print("Sayi x içerisin de değil")
}

# else if
if(8 %in% x){
  print("ilk if bağlacım")
}else if(3 %in% y){
  print("eleman y içerisindedir")
  
}else{
  print("Eleman hiçbiyer de değil")
}
setwd("C:\\Users\\faruk\\Desktop\\r")

#ifelse
library(readxl)
data_1<-read_xlsx("ad_cinsiyet_okulnu.xlsx")
data_1$renkler<-ifelse(data_1$Cinsiyet=="E","mavi","kırmızı")

#for
merhaba<-c()
for (i in 1:10) {
  merhaba<-c(merhaba,i)
  
}

#while
data_2<-c()
while (length(data_2)<10) {
  data_2<-c(data_2,"Merhaba")
}