clear; %limpia todas las variables del workspace
close all; %cierra todas las figuras
clc; %vacia el command window

%% Operaciones entre matrices

Matriz1 = [1 -2 1; 2 -1 4; 3 -2 2]; %Una nueva fila se escribe despues del punto y coma
Matriz1Transpuesta = Matriz1'; %comilla simple ' con alt+39
Matriz2 = Matriz1Transpuesta;

%Suma y resta de matrices
Matriz_suma = Matriz1 + Matriz2;
Matriz_resta = Matriz2 - Matriz1;
%Producto de matrices(recordar concidicion necesaria)
Matriz_producto = Matriz1*Matriz2;
%Division de matrices(Por la derecha y por la izquierda)
%Por la derecha(Multiplica una matriz por la inversa de la otra por la derecha)
div_derecha = Matriz1/Matriz2;%Multiplica la Matriz1 por la inversa de la Matriz2 por la derecha 
%Por la izquierda(Multiplica una matriz por la inversa de la otra por la izquierda)
div_izq = Matriz1\Matriz2;%Multiplica la inversa de la Matriz1 por la izquierda de la Matriz2%% Operaciones entre matrices
%Producto elemento a elemento
prod_elem=Matriz1.*Matriz2;
%Division elemento a elemento
div_elem=Matriz1./Matriz2;%Division por la derecha (barra inclinada hacia la derecha)
%div_elem=Matriz1.\Matriz2;%Division por la izquierda (barra inclinada hacia la izquierda)

