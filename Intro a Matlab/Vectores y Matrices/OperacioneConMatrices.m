clear; %limpia todas las variables del workspace
close all; %cierra todas las figuras
clc; %vacia el command window

%% Operaciones con matrices

Matriz1 = [1 -2 1; 2 -1 4; 3 -2 2]; %Una nueva fila se escribe despues del punto y coma
%Sumar un escalar a una matriz
Matriz1_mas_10 = Matriz1 + 10;
%Aplicar alguna funcion trigonometrica una matriz (ejemplo sin())
Seno_rad_Matriz1 = sin(Matriz1); %el argumento se considera en radianes
Seno_grados_sexagesimales_Matriz1 = sind(Matriz1); %el argumento esta grados sexagesimales (degrees)
%Elevar cada elemento a un exponente
Matriz1_al_cuad_elemento = Matriz1.^2;
%Elevar la matriz al cuadrado(MatrizxMatriz)
Matriz1_al_cuad = Matriz1^2;