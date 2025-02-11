clear; %limpia todas las variables del workspace
close all; %cierra todas las figuras
clc; %vacia el command window


%% Graficos: Graficar funciones
%La funcion clave para graficar es plot()
%Vamos a graficar funciones trigonometricas de -2*pi hasta 2*pi
%   (1):Generamos el vector x para evaluar la funcion, esto representa el eje x
x=-2*pi:0.0001:2*pi;
%   (2): Hacemos los vectores correspondientes a las funciones evaluadas en los puntos del vector x
%           esto representa los valores de la funcion en el eje y
seno=sin(x);
coseno=cos(x);
tangente=tan(x);
cotangente=cot(x);
figure(1);%Genera una interfaz de edicion para un grafico
plot(x,seno);
grid on;%Habilita las cuadriculas o grillas en el grafico
axis([-2*pi, 2*pi, -5, 5]);%limita los bordes del grafico
xlabel('Valores de la abscisa (x)');
ylabel('Valores de la ordenada (y)');
legend('Sen(x)');%identificador de curvas
title('Grafica de Sen(x) en el intervalo [-2pi, 2pi]');