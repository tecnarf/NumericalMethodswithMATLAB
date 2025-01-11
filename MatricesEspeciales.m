clear; %limpia todas las variables del workspace
close all; %cierra todas las figuras
clc; %vacia el command window

%% Funciones para la creacion de matrices especiales
v=[9 8 7 6 5 4 3];
m=4;
n=5;
%eye(m,n):crea una matriz identidad de m filas y n columnas
Matriz_identidad=eye(m,n);
%zeros(m,n):crea una matriz de elementos nulos de m filas y n columnas
ceros=zeros(m,n);
%ones():crea una matriz de elemeentos unitarios de m filas y n columnas
unos=ones(m,n);
%diag():crea una matriz diagonal donde las componentes de la diagonal
%principal son las componentes de un vector v
diagonal=diag(v);