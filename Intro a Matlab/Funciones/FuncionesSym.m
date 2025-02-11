clear; %limpia todas las variables del workspace
close all; %cierra todas las figuras
clc; %vacia el command window


%% El comando sym 

%Se utiliza para crear variables simbolicas en MATLAB. 
%Las variables simbolicas permiten trabajar con expresiones algebraicas, 
%funciones matematicas y otros objetos simbolicos de una manera mas flexible
%y potente que las variables numericas.
%Algunas de las principales caracterasticas y usos del comando sym son:

%    Definir variables simbolicas: Puedes crear variables simbolicas utilizando sym('x'), 
%    sym('f(x)'), etc. Estas variables se pueden utilizar en operaciones 
%    matematicas simbolicas.

%    Realizar calculos simbolicos: Una vez que has definido las variables simbolicas, 
%    puedes realizar operaciones como diferenciacion, integracionn, resolucion de ecuaciones,
%    etc. de manera simbolica. Esto es muy util cuando trabajas con expresiones complejas.

%    Conversion entre formas simbolicas y numericas: Puedes convertir expresiones simbolicas
%    a formas numericas utilizando el comando subs() y viceversa, usando sym().

%    Simplificacion y manipulacion simbolica: El comando simplify() te permite simplificar 
%    expresiones simbolicas, mientras que expand() y collect() te permiten manipular 
%    la expresion de diferentes formas.

%    Representacion grafica: Puedes utilizar las variables simbolicas para generar graficos 
%    de funciones matematicas de manera simbolica.(como lo hace Geogebra)

% Crear una variable simbolica 'x'
x = sym('x');

% Definir una expresion simbolica
f = x^3 + 2*x^2 - 5*x + 1;

% Calcular la derivada de la expresion
df = diff(f, x);

% Imprimir los resultados
disp('Expresion original:');
disp(f);
disp('Derivada:');
disp(df);
