#2. Hozz létre egy generális fgv-t, amely listát vár bemenetként, 
#amely listának minden eleme egy data.frame. A fgv  próbálja meg ezeket 
#összefűzni automatikusan. Ha sikerül összeilleszteni -akár csak néhányat közölük,
#akkor ezt végezze el, és egy attributumban adja hozzá az eredmény data.frame-hez,
#hogy mely listaelemeket hogyan fűzött összefűzi. 
#Majd az eredmény legyen ez a data.frame.

#ezt a Reduce-t a Stackoverflow-n találtam

fgv = function(a){
  if(is.list(a)){
    a1 <- a
  }  
   else stop("nem lista!")  
  
  for (i in length(a1)){
    if (!is.data.frame(a1[[i]])){
      stop("egy vagy több lista elem nem data frame!")
    }
    else next
  }
  
  egyben<<-Reduce(function(df1,df2) merge(df1,df2,all=TRUE,no.dups=TRUE),a1)
  
       tagok <- c("A bemeneti lista ezen tagjai lettek összemergelve:",1:length(a1))
        attr(egyben,"tagok") <<- tagok
}    
  

fgv()
attr(egyben,"tagok")

