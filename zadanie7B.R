podatek_Belki = function(przychod, koszt, typ_aktywa){
  zysk = przychod - koszt
  if (zysk <= 0){
    return(0)
  }
  else if (typ_aktywa == "akcje"||typ_aktywa=="obligacje"){
    return(zysk*(0.19))
  }
  else if (typ_aktywa == "kryptowaluty"){
    if (zysk <= 85528){
      return(zysk*0.18)
    }
    else {
      return((85528*0.18+(zysk-85528)*0.36))
    }
  }
}

podatek_Belki(15000, 10000, "akcje")        
podatek_Belki(8000, 10000, "akcje")         
podatek_Belki(150000, 50000, "kryptowaluty")
podatek_Belki(1500, 1000, "lokata")
