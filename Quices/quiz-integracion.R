#Análisis numérico 20-30
#Quiz integración
#Elaborado por Sebastián Gutiérrez Zambrano

library(pracma)

f <- function(x) sin(2*x)

a =0
b = 2
n <- 2
error = 1
tol = 0.0001
resultado = 0
while(error > tol)
{
  n = n + 1
  x <- seq(a, b, len = n)
  y <- f(x)
  resultado = trapz(x, y)
  
  h  <- x[2] - x[1]
  ca <- (y[2]-y[1]) / h
  cb <- (y[n]-y[n-1]) / h
  error = abs(h^2/12 * (cb - ca))
}
cat("Se usaron", n, "trapecios para aproximar la integral de la funcion, con una tolerancia de", tol)
cat("Resultado: ", resultado)