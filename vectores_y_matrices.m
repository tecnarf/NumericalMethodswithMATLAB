clear; %limpia todas las variables del workspace
close all; %cierra todas las figuras
clc; %vacia el command window

%% Definicion de vectores(o matrices 1xn o nx1)
%MATLAB asigna el valor 1 para el indice del elemento en la primera posicion  
vector_fila1 = [1 2 3]; %componentes espaciados entre si
vector_fila2 = [4, 5, 6];%O con componentes separadas entre si por comas
vector_columna = [7; 8; 9];%componentes separadas entre si por puntos y comas
vector_intervalo=-2*pi:0.0001:2*pi;%vector con componentes definidas con inicio:paso:fin 
%el vector_intervalo definido anteriormente contiene a los extremos del
%intervalo
%% Definicion de matrices
Matriz1 = [1 -2 1; 2 -1 4; 3 -2 2];%Una nueva fila se escribe despues del punto y coma
Matriz1Transpuesta = Matriz1';%comilla simple ' con alt+39
Matriz2 = Matriz1Transpuesta;