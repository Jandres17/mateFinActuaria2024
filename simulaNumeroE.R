# Esta función realiza el cálculo y gráfica de la aproximación del número e
# con t como argumento de entrada

simulaNumeroE=function(nTotal){
  VA=1
  i=1
  t=1:nTotal
  
  tablaNumeroe=data.frame(t=t, VF=VA*(1+(i/t))^t)
  
  # Creamos un objeto tipo lista con la tabla del número e y algunos otros objetos:
  objetolista1=list(
    tablaE=tablaNumeroe,
    valorActual=VA,
    tasaInteres=i,
    periodosSimulados=nTotal
  )
  
  # Ahora grafico los valores de la tabla del número e:
  plot(x=tablaNumeroe$t, y=tablaNumeroe$VF, type="l", col="green")
  
  return(objetolista1)
}