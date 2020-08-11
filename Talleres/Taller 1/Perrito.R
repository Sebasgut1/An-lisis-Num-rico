#Taller: Elaborar la silueta de un perro
#Elaborado por Sebastián Gutiérrez Zambrano
#Anáñisis Numérico 20-30

y=c(3, 3.7, 3.9, 5.8, 7, 6.4, 4.45, 7, 6.1, 5.2, 5.15, 4.1, 3,
    2, 2.1, 2, 2.17, 2.2, 2, 2.2, 2.25, 2.1, 2.4, 2.18, 2.55, 3.5, 3.5, 3, 3)                                                                                                       
x=c(1, 2,5, 7.2, 9.7, 13, 17.6, 20, 23.5, 24.5, 26.5, 27.5, 27.49,
    25, 24, 23, 20.5, 19, 18.6, 18.1, 14.5, 12.5, 11, 9.5, 8.5, 9, 8.7, 7.5, 1) 

x1=x[1:7] ; y1=y[1:7]
x2=x[7:12] ; y2=y[7:12]
x3=x[12:13] ; y3=y[12:13]
x4=x[13:16] ; y4=y[13:16]
x5=x[16:18] ; y5=y[16:18]
x6=x[18:20] ; y6=y[18:20]
x7=x[20:25] ; y7=y[20:25]
x8=x[25:26] ; y8=y[25:26]
x9=x[26:28] ; y9=y[26:28]
x10=x[28:29] ; y10=y[28:29]


plot(x, y, main = "Perrito", xlim=c(0,30),ylim=c(0,15))



lines(spline(x1, y1, n = 201), col = "red")
lines(spline(x2, y2, n = 201), col = "red")
lines(spline(x3, y3, n = 201), col = "red")
lines(spline(x4, y4, n = 201), col = "red")
lines(spline(x5, y5, n = 201), col = "red")
lines(spline(x6, y6, n = 201), col = "red")
lines(spline(x7, y7, n = 201), col = "red")
lines(spline(x8, y8, n = 201), col = "red")
lines(spline(x9, y9, n = 201), col = "red")
lines(spline(x10, y10, n = 201), col = "red")

    