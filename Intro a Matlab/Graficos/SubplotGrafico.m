clear; %limpia todas las variables del workspace
close all; %cierra todas las figuras
clc; %vacia el command window

%% Subplot
% El comando subplot en MATLAB se utiliza para crear m�ltiples gr�ficos en una sola figura. 
% Te permite dividir la figura en una cuadr�cula de subgr�ficos y luego dibujar cada gr�fico
% en una posici�n espec�fica de esa cuadr�cula.

% Sintaxis B�sica: subplot(m, n, p)
% Donde:
% m: N�mero de filas en la cuadr�cula de subgr�ficos.
% n: N�mero de columnas en la cuadr�cula de subgr�ficos.
% p: Posici�n del subgr�fico en la cuadr�cula (contando de izquierda a derecha y de arriba a abajo).

% Supongamos que queremos crear una figura con 4 subgr�ficos 
% organizados en una cuadr�cula de 2 filas y 2 columnas.

x = linspace(0, 2*pi, 100);
y1 = sin(x);
y2 = cos(x);
y3 = tan(x);
y4 = x.^2;

figure;


% Primer subgr�fico
subplot(2, 2, 1);
plot(x, y1);
grid on;%Habilita las cuadriculas o grillas en el grafico
axis([0, 2*pi, -1, 1]);%limita los bordes del grafico
title('sin(x)');

% Segundo subgr�fico
subplot(2, 2, 2);
plot(x, y2);
grid on;%Habilita las cuadriculas o grillas en el grafico
axis([0, 2*pi, -1, 1]);%limita los bordes del grafico
title('cos(x)');

% Tercer subgr�fico
subplot(2, 2, 3);
plot(x, y3);
grid on;%Habilita las cuadriculas o grillas en el grafico
axis([0, 2*pi, -5, 5]);%limita los bordes del grafico
title('tan(x)');

% Cuarto subgr�fico
subplot(2, 2, 4);
plot(x, y4);
grid on;%Habilita las cuadriculas o grillas en el grafico
title('x^2');

%En este ejemplo, la figura se divide en una cuadr�cula de 2 filas y 2 columnas. 
%Cada subgr�fico se ubica en su posici�n correspondiente 
%y se dibuja una funci�n diferente en cada uno de ellos.


