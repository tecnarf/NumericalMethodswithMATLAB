clear; %limpia todas las variables del workspace
close all; %cierra todas las figuras
clc; %vacia el command window

%% Comando hold
%El comando hold en MATLAB se utiliza para controlar cómo se añaden nuevas gráficas 
%a una figura existente. Por defecto, cuando creas una nueva gráfica, MATLAB reemplaza el contenido 
%de la figura actual. El comando hold te permite superponer múltiples gráficos en la misma figura 
%sin borrar el contenido existente.

%% Uso del Comando hold:

%hold on: Permite añadir nuevas gráficas a la figura actual sin borrar las gráficas existentes.

%hold off: Vuelve al comportamiento predeterminado, es decir, las nuevas gráficas reemplazan el contenido de la figura.

%hold: Alterna entre los estados hold on y hold off.

%alternativa para graficar
x = linspace(-2*pi, 2*pi, 100);
y1 = sin(x);
y2 = cos(x);


plot(x, y1);  % Dibuja la gráfica de y1 = sin(x)
hold on;      % Activa hold on
grid on;       %muestra el grafico con cuadriculas
axis([-2*pi, 2*pi, -1, 1]);%limita los bordes del grafico
xlabel('Valores de la abscisa (x)');
ylabel('Valores de la ordenada (y)');
title('Grafica de Sen(x) y Cos(x) en el intervalo [-2pi, 2pi]');
plot(x, y2);  % Añade la gráfica de y2 = cos(x) sin borrar la gráfica anterio
legend('Sen(x)',  'Cos(x)');%identificador de curvas

