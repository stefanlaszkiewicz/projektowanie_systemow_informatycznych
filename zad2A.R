przelicz_walute = function(kwota, kurs = 4.32){
  przeliczona_kwota = kwota*kurs
  return(przeliczona_kwota)
}

przelicz_walute(100)
przelicz_walute(100,4.5)