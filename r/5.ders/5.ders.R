
#Data Frame | Matrix | Listeler |R da data tutma yöntemlerinin birbirine dönüştürülmesi


#Data import
library(readxl)
kopek <-read_xlsx("C:\\Users\\faruk\\Desktop\\r\\dog.xlsx")

#check data class

class(kopek)

##datayı diğer tiplere çevirme

kopek_list<-as.list(kopek)

kopek_matrix<- as.matrix(kopek)

x<-1:5 #numeric 
y<-c("Merhaba","Mustafa","Lisans","Ybs","proje") #string

yeni_data<-data.frame(x,y)  # r dilinde length uzunluk önemli

class(x)
class(y)
class(yeni_data) #DataFrame     #dataframe de birbirinden farklı veri tiplerini saklıyabiliriz.
class(yeni_data$y)


z<-11:15
yeni_data_matrix<-as.matrix(x,z)

