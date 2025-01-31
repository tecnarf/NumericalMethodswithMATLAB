clear; %limpia todas las variables del workspace
close all; %cierra todas las figuras
clc; %vacia el command window

%Funciones

%% Funciones inline

%Permiten crear una funcion(entiendase por funcion al concepto dado en programacion)
%a partir de una cadena de caracteres 
%Observacion: seran borradas en versiones futuras de MATLAB, es decir ya no
%sera posible definir funciones de esta forma
%Ejemplo: funcion sinc normalizada(es el nombre con que se identifica particularmente a la
%expresion (sin(pi*x))/(pi*x))

func_sinc_in=inline('sin(pi*x)/(pi*x)','x');
func_sinc_pi_1=func_sinc_in(pi);%se trata de un paso por valor a la funcion que hemos creado
%anteriormente por medio de inline
%comprobamos los resultados con la funcion nativa de MATLAB "sinc()"
func_sinc_pi_2=sinc(pi);
%Ejemplo de funcion con mas parametros: Area de un triangulo 
area_triangulo_in=inline('b*h/2','b','h');%los parametros siempre deben ser cadena de
%caracteres
area_triangulo_1=area_triangulo_in(3,4);

%% Funciones handle
%Se crean de forma similar a las funciones inline, sin embargo, los
%argumentos van dentro de un operador "@"(arroba), separados por comas (@(b,h))y 
%la funcion va en un segundo parentesis, que no se especifica dentro de una cadena en
%comparacion con las funciones inline(no se pone entre comillas simples)
func_sinc_hand=@(x)(sin(pi*x)/(pi*x));%funcion sinc pero definida como funcion handle
func_sinc_pi_3=func_sinc_hand(pi);
%Ejemplo: Area de un triangulo
area_triangulo_hand=@(b,h)(b*h/2);
area_triangulo_2=area_triangulo_hand(3,4);
%En conclusion ambas formas de definir funciones son casi identicas con la
%salvedad de que inline ya no estara disponible en versiones posteriores de
%MATLAB