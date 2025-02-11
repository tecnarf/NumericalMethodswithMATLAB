clear; %limpia todas las variables del workspace
close all; %cierra todas las figuras
clc; %vacia el command window

%% Funciones especiales para matrices y vectores
%Para mas informacion sobre las funciones que ofrece MATLAB escriba en el
%command window help seguido de la funcion en cuestion, por ejemplo, help conv
M=[1 5 7; 3 9 9; 4 1 2];
N=[1 5 7; 3 9 9; 4 1 2; 6 6 8];
v=[9 8 7 6 5 4 3];
%min():Aplicado a un vector devuelve el valor minimo y su posicion en tanto que 
%aplicada a una matriz devuelve los valores minimos de cada columna   
min_v=min(v);
[minimo_v,pos_min_v]=min(v);
minim_v=[minimo_v,pos_min_v];
min_M=min(M);
%max(): De manera semejante a min(), devuelve el valor maximo de un vector y/o una matriz
max_v=max(v);
[maximo_v, pos_max_v]=max(v);
maximo_v;
pos_max_v;
max_M=max(M);
%sum(): suma todos los elementos de un vector o suma todos los elementos de
%cada columna si se trata de una matriz
sum_v=sum(v);
sum_M=sum(M);
%prod(): Da el producto de los componentes del vector o si se trata de una 
%matriz nos da el producto columna a columna
prod_v=prod(v);
prod_M=prod(M);
%length(): devuelve la dimension de un vector o la mayor de las dimensiones
%entre filas y columnas de una matriz
len_v=length(v);
len_M=length(M);
len_N=length(N);
%size(): Devuelve la dimension de la matriz, tanto su fila como su columna
%como elementos de un vector [cant_filas cant_columnas]
size_v=size(v);
size_M=size(M);
[i, j]=size(N);
%det():Calcula le determinante de una matriz
det_M=det(M);
%inv():Calcula la inversa de una matriz no singular(recordar que se puede
%calcular la inversa por eliminacion gaussiana)
inv_M_1=inv(M);
inv_M_2=M^(-1);%calculo de la inversa por medio del exponente -1
M_cuadrado=M.^(2) %eleva cada uno de los componentes de la matriz al cuadrado
