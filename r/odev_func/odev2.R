
#| Basit Hesap Makinesi Yapımı 


hesap_makinesi <- function() {
  
  x<-as.numeric(readline(prompt = "Lütfen ilk sayınızı giriniz: ")) 
  y<-as.numeric(readline(prompt = "Lütfen ikinci sayınızı giriniz:"))
  print("toplama | cıkarma | carpma | bolme | us alma")
  islem_tercihi<-readline("Yapmak istediğiniz işlemi yukarıdaki işlemlerden birini yazınız ")
  
  if (islem_tercihi=="toplama") {
    print(x+y)
  } else if (islem_tercihi=="cıkarma") {
    print(x-y)
  } else if(islem_tercihi=="carpma"){
    print(x*y)
  }else if(islem_tercihi=="bolme"){
    print(x/y)
  }else if(islem_tercihi=="us alma"){
    print(x**y)
  }else{
      print("Seçimizi gercekleştiremiyoruz")
  }
  
  
}
hesap_makinesi()
