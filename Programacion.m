clear; %limpia todas las variables del workspace
close all; %cierra todas las figuras
clc; %vacia el command window

%% PROGRAMACION EN LENGUAJE MATLAB
  %%% ESTRUCTURAS DE CONTROL
  %%% ESTRUCTURAS DE ITERACION

%% Estructuras de control: if, elseif, else
%Para indicar a MATLAB que terminan las estructuras de control es necesario
%finalizar con un "end" al termino de las instrucciones
%if, else y elseif permite ejeutar instrucciones si se cumplen determinadas
%condiciones

control_if=input('Ingrese un numero: ');
if (control_if<1)
    disp('El numero ingresado es menor a 1');
elseif(control_if>1)%nos permite usar una segunda condicion
    disp('El numero ingresado es mayor a 1');
else
    disp('El numero ingresado es 1');%En caso de que no se cumpla ni nguna condicion
end

%% Estructuras de iteracion: for, while
%Permite ejecutar instrucciones un numero exacto de veces
%Bucle: conjunto de instrucciones de un programa cuya ejecucion se repite
%hasta la verificacion de un criterio dado o la obtencion de un
%determinado resultado
%iteracion: Cada una de las sucesivas ejecuciones de un bucle
%Ejemplo: Transponer un vector fila
v=input('Ingrese un vector fila: ');
n=length(v);%cantidad de componentes de v
v_transpuesta=[];%vector vacio(se guardara en esta variable la respuesta final)
for i=1:n
    v_transpuesta=[v_transpuesta; v(i)];%coloca las componentes ubicadas inicialmente en
    %fila en columnas
    %al cabo de la primera iteracion, en v_transpuesta se guarda la primera
    %componente pues v_transpuesta es inicialmente vacio, finalizando la
    %iteracion con v_transpuesta=[componente de v en la 1ra posicion o v(1)] como
    %una matriz 1x1 o vector de una fila y una columna
    %seguidamente v_transpuesta=[v(1); v(2)]
end
disp('vector transpuesto: ');
disp(v_transpuesta);

%El while permite repetir un bucle hasta que se cumpla una condicion.
%Se usa cuando  no se conoce de antemano el numero exacto de repeticiones que se emplearia
%con este ejemplo veremos cuantas veces se tarda (cuantas veces se ejecuta el
%bucle) hasta que el numero aleatorio t sea 5
t=round(10*rand());%t es igual a un numero aleatorio entre 0 y 9
%esta linea es solo para entrar en el bucle
%rand() genera un numero entre 0 y 1
%al hacer 10*rand() se multiplica ese numero entre 0 y 1, por ejemplo
%0.8003 queda multiplicado por 10 quedando 8.003 y la aplicarle round()
%se redondea el 8.003 a entero quedando 8 teniendo asi un numero entero
%entre 0 y 9
contador=0; 
while(t~=5)%mientras t sea distinto de 5 
    contador=contador+1;%sumamos el contador
    t=round(10*rand());%generamos t de vuelta
end
disp('Se genero el numero aleatorio: ')
disp(t);
disp('Se tardo: ');
disp(contador);
disp('iteraciones en generar el numero 5 de forma aleatoria');
