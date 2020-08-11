#Primeros ejercicios
#Hecho por Sebastián Gutiérrez


#Aproximación coseno con serie de Taylor
serieDeTaylorCoseno <- function(x)
{
  return (1 - (x ^ 2 / 2) + (x ^ 4 / factorial(4)) - (x^6)/factorial(6))
}


cat("Resultado de Taylor:",
    round(serieDeTaylorCoseno(0.01), 5),
    "\n")
cat("Resultado teórico:",  cos(0.01), "\n")

cat("Error relativo", abs((serieDeTaylorCoseno(0.01)-cos(0.01))/cos(0.01)))


#Aproximación e^x con Taylor

options(digits = 8)
Ejercicio2 <- function(x)
{
    serieDeTaylorEuler <- function(x,n)
    {
      i <- 0
      euler <- 0
      while(i<=n)
      {
        euler = euler + x^i/factorial(i)
        i<- i+1
      }
      
      cat("Resultado de Taylor: ", euler, "\n")
      cat("Resultado teórico: ", exp(x), "\n")
      return((euler-exp(x))/exp(x))
    }
    n <-1
    error <- 1
    contador <- 0
    while(error > 1.e-8)
    {
      contador <- 1 + contador
      error <- abs(serieDeTaylorEuler(x,n))
      n <- n+1
    }
    retorno <- c(contador,error)
    return(retorno)
}
j <- -1
while(j <= 1)
{
  retorno <-  Ejercicio2(j)
cat("Contador para el valor de x = ", j, " es: ", retorno[1], "\n")
cat("Error relativo para el valor de x = ", j, " es: ", retorno[2], "\n")
j <- j+0.1
}


#Error dado por las operaciones aritmeticas

velocidad <- 4
tiempo <-  5
distanciaExacta <-  velocidad * tiempo

errorVel <-  0.1
errorTiempo <-  0.1

velMenor <-  velocidad - errorVel
velMayor <-  velocidad + errorVel


velocidades <-  NULL
tiempos <-  NULL
distancias <-  NULL
erroresRelativos <- NULL
erroresAbsolutos <- NULL

cont <- 1

while(velMenor <= velMayor)
{
  tiempoMenor <-  tiempo - errorTiempo
  tiempoMayor <-  tiempo + errorTiempo
  
  while(tiempoMenor <= tiempoMayor)
  {
    distancias[cont] = velMenor*tiempoMenor
    velocidades[cont]= velMenor
    tiempos[cont] = tiempoMenor
    erroresRelativos[cont] = abs((distancias[cont]-distanciaExacta)/distanciaExacta)
    erroresAbsolutos[cont] = abs(distancias[cont]- distanciaExacta)
    cont <- cont + 1
    tiempoMenor <- tiempoMenor + errorTiempo
  }
  velMenor <- velMenor + errorVel
}

tabla = matrix(c(velocidades, tiempos, distancias, erroresRelativos,erroresAbsolutos), ncol= 5, dimnames = list( seq(1,length(distancias),1),c("Velocidades", "Tiempos", "Distancias",
                                                                                                             "Errores relativos", "Errores Absolutos")))
print(tabla)
