
## Ders Tekrarları # 7.derse kadar özet 


x<-1:10
setwd("C:\\Users\\faruk\\Desktop\\r")
#install.packages("readxl")
library(readxl)
cow<-read.csv("cow_all_genes.csv")
cow <- read.csv2("cow_all_genes.csv", header = T, sep = ",")
dog<-read_xlsx("dog.xlsx")
chiampanze<-read.delim("chimpanze_all_gene.txt")

class(dog) #dog<-read_xlsx("dog.xlsx") ->dataframe

dog_list<-as.list(dog)
dog_list1<-list(dog)
dog_matrix<-as.matrix(dog) #matrisler aynı tür veri taşır #matrix de tek tip veri girmeniz gerekir.

x<-1:10
y<-c("faruk","ahmet","mustafa","mehmet","ali")

new_data<-data.frame(x,y) #r de uzunluk lenght  önemli kavram
class(x) #integer
class(y) #charecter
class(new_data) #dataframe  dataframe içerisinde veri tipi birbirinden farklı olan veri türü alır

new_data_matrix<-as.matrix(x,y) #Error in matrix(x, y) : sayısal olmayan matris boyutu

z<-1:10
data_matrix<-as.matrix(x,z)

#[satır,kolon]
kisisel_bilgiler<-read_xlsx("ad_cinsiyet_okulnu.xlsx")
v<-c(1,2,3,4)
ad_soyad_kolon<-kisisel_bilgiler$`Okul Nu`
ad_soyad_kolon
ad_soyad_kolon2<-kisisel_bilgiler[1] #kolon verir
ad_soyad_kolon3<-kisisel_bilgiler[1,1:2] 
yeni_satır_sutun<-kisisel_bilgiler[1:3,1:3]
yeni_satır_sutun2<-kisisel_bilgiler[c(1,2,3),c(1,2,3)]
data1[,1:2]

#kolon ismi değiştirme
names(kisisel_bilgiler)
names(kisisel_bilgiler)[1]
names(kisisel_bilgiler)[1]<-"İSİM-SOYİSİM"
colnames(kisisel_bilgiler)
colnames(kisisel_bilgiler)[2]<-"CİNSİYET"
colnames(kisisel_bilgiler)<-c("İsim&Soyisim","Cinsiyeti","Okul Numarası")








































