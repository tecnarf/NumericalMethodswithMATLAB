clear; %limpia todas las variables del workspace
close all; %cierra todas las figuras
clc; %vacia el command window

%% Subplot
% El comando subplot en MATLAB se utiliza para crear múltiples gráficos en una sola figura. 
% Te permite dividir la figura en una cuadrícula de subgráficos y luego dibujar cada gráfico
% en una posición específica de esa cuadrícula.

% Sintaxis Básica: subplot(m, n, p)
% Donde:
% m: Número de filas en la cuadrícula de subgráficos.
% n: Número de columnas en la cuadrícula de subgráficos.
% p: Posición del subgráfico en la cuadrícula (contando de izquierda a derecha y de arriba a abajo).

% Supongamos que queremos crear una figura con 4 subgráficos 
% organizados en una cuadrícula de 2 filas y 2 columnas.

x = linspace(0, 2*pi, 100);
y1 = sin(x);
y2 = cos(x);
y3 = tan(x);
y4 = x.^2;

figure;


% Primer subgráfico
subplot(2, 2, 1);
plot(x, y1);
grid on;%Habilita las cuadriculas o grillas en el grafico
axis([0, 2*pi, -1, 1]);%limita los bordes del grafico
title('sin(x)');

% Segundo subgráfico
subplot(2, 2, 2);
plot(x, y2);
grid on;%Habilita las cuadriculas o grillas en el grafico
axis([0, 2*pi, -1, 1]);%limita los bordes del grafico
title('cos(x)');

% Tercer subgráfico
subplot(2, 2, 3);
plot(x, y3);
grid on;%Habilita las cuadriculas o grillas en el grafico
axis([0, 2*pi, -5, 5]);%limita los bordes del grafico
title('tan(x)');

% Cuarto subgráfico
subplot(2, 2, 4);
plot(x, y4);
grid on;%Habilita las cuadriculas o grillas en el grafico
title('x^2');

%En este ejemplo, la figura se divide en una cuadrícula de 2 filas y 2 columnas. 
%Cada subgráfico se ubica en su posición correspondiente 
%y se dibuja una función diferente en cada uno de ellos.


