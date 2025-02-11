clear; %limpia todas las variables del workspace
close all; %cierra todas las figuras
clc; %vacia el command window

%% Funciones de entrada y salida de datos
v=[9 8 7 6 5 4 3];
%display(): puede mostrar los valores de variables o cadenas de caracteres
%pero usaremos solamente disp()
disp('Mostrando cadena de caracteres');
disp(v);
display(v);%observe la diferencia entre disp y display
%input(): pide al usuario el intoducir el valor para una variable con un mensaje dentro
%del argumento de la funcion
valor_ingresado=input('Ingrese el valor para la nueva variable: ');
disp(valor_ingresado);
display(valor_ingresado);