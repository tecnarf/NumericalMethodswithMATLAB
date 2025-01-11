clear; %limpia todas las variables del workspace
close all; %cierra todas las figuras
clc; %vacia el command window

%Concatenacion de matrices
Matriz1 = [1 -2 1; 2 -1 4; 3 -2 2];
Matriz1Transpuesta = Matriz1'; %comilla simple ' con alt+39
Matriz2 = Matriz1Transpuesta;
concat_der = [Matriz1 Matriz2];
concat_abajo = [Matriz1; Matriz2];
