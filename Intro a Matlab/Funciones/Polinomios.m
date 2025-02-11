clear; %limpia todas las variables del workspace
close all; %cierra todas las figuras
clc; %vacia el command window

%% POLINOMIOS EN MATLAB

%Los polinomios son representados por vectores. Utilizamos la notacion de polinomios 
%con exponente en orden decreciente de izquierda a derecha(mas frecuente que el
%ordenamiento ascendente de izquierda a derecha)
%Las componentes del vector correspondiente al polinomio son los coeficientes 
%de la variable, por ejemplo:
%P(x)=x^2+2*x+3 ==>  polin=[1 2 3] y viceversa
%polin=[1(x^2) 2(x^1) 3(x^0)] ==> P(x)=(1)*x^2+(2)*x+(3) = x^2+2*x+3;
%roots():retorna un vector con las raices del polinomio(puntos donde el
%grafico de la funcion corta al eje x)
polin=[1 2 3];
raices=roots(polin);
%polyval(polinomio, vector):evalua al polinomio en distintos puntos que son especificados
%con un vector en el segundo argumento de la funcion. Evaluando con un vector de muchas 
%componentes nos sirve para graficar el polinomio
%graficar
eval=polyval(polin,[1 2]);%se evalua al polinomio "polin" en los puntos x=1 y x=2
%poly():genera un polinomio que tengo como raices un conjunto de valores
%dado en forma de vector
polinomio_generado=poly(polin);%se genera un polinomio cuya raices son las componentes 
%del vector polin
%conv():realiza la convolucion de dos polinomios(la convolucion de
%polinomios es un producto en este caso)
conv_pol_producto=conv(polin,polinomio_generado);%recuerde que el que el grado de un pollinomio 
%es el exponente de la variable de mayor de exponente y que el producto de dos polinomios
%tiene por grado la suma de los exponentes de los polinomios factores