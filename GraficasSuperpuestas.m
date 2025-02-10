clear; %limpia todas las variables del workspace
close all; %cierra todas las figuras
clc; %vacia el command window

%% Varias funciones en una misma grafica
%Generamos el vector x para evaluar la funcion, esto representa el eje x
x=-2*pi:0.0001:2*pi;
%Definimos los vectores correspondientes a las funciones evaluadas en los puntos del vector x
%esto representa los valores de la funcion en el eje y
seno=sin(x);
coseno=cos(x);
tangente=tan(x);
cotangente=cot(x);
%Genera una interfaz de edicion para un grafico (Figure 1)
figure(1);
%El comando hold en MATLAB se utiliza para controlar cómo se añaden nuevas gráficas a una figura 
%existente. Por defecto, cuando creas una nueva gráfica, 
%MATLAB reemplaza el contenido de la figura actual. El comando hold te permite 
%superponer múltiples gráficos en la misma figura sin borrar el contenido existente.
hold on; %hold en español es sostener (permite que se pueda mostrar en la misma ventana o figura 
%las graficas de varias funciones)
plot(x,seno);
plot(x,coseno);
plot(x,tangente);
plot(x,cotangente);
grid on;%Habilita las cuadriculas o grillas en el grafico
axis([-2*pi, 2*pi, -5, 5]);%limita los bordes del grafico
xlabel('Valores de la abscisa (x)');
ylabel('Valores de la ordenada (y)');
legend('sen(x)', 'cos(x)','tan(x)','cotan(x)');%identificador de curvas
title('Grafica de funciones trigonometricas en el intervalo [-2pi, 2pi]');



%hold;%hold=sostener (evita borrar la funcion grafica)