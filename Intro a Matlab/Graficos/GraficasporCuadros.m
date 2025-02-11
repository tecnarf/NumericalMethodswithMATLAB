clear; %limpia todas las variables del workspace
close all; %cierra todas las figuras
clc; %vacia el command window

%% Uso de subplot
%Generamos el vector x para evaluar la funcion, esto representa el eje x
x=-2*pi:0.0001:2*pi;
%Definimos los vectores correspondientes a las funciones evaluadas en los puntos del vector x
%esto representa los valores de la funcion en el eje y
seno=sin(x);
coseno=cos(x);
tangente=tan(x);
cotangente=cot(x);
%Genera una interfaz de edicion para un grafico (Figure 1)
%subplot permite graficar varias funciones en una misma ventana grafica pero cada
%una por separado
figure(1);%Creamos una ventana grafica
%subplot(m,n,p) donde m y n indican en cuantas filas y columnas se va dividir 
%la ventana grafica; el numero p es el indice donde ira la grafica
%---Grafico de sen(x)----
subplot(2,2,1);
plot(x,seno);
grid on;
axis([-2*pi, 2*pi, -5, 5]);%limita los bordes del grafico
xlabel('Eje x');
ylabel('Eje y');
legend('Sen(x)');%identificador de curvas
title('Grafica de Sen(x)');
%---Grafico de cos(x) (y sen(x))----
subplot(2,2,2);
plot(x,coseno);
grid on;
axis([-2*pi, 2*pi, -5, 5]);%limita los bordes del grafico
xlabel('Eje x');
ylabel('Eje y');
title('Grafica de Cos(x) y Sen(x)');
subplot(2,2,2);%poniendo dentro de la misma grafica a seno y coseno
hold on;
plot(x,seno);
legend('Cos(x)','Sen(x)');%identificador de curvas
%---Grafico de Tan(x)----
subplot(2,2,3);
plot(x,tangente);
grid on;
axis([-2*pi, 2*pi, -5, 5]);%limita los bordes del grafico
xlabel('Eje x');
ylabel('Eje y');
legend('Tan(x)');%identificador de curvas
title('Grafica de Tan(x)');
%---Grafico de Cotan(x)----
subplot(2,2,4);
plot(x,cotangente);
grid on;
axis([-2*pi, 2*pi, -5, 5]);%limita los bordes del grafico
xlabel('Eje x');
ylabel('Eje y');
legend('Cotan(x)');%identificador de curvas
title('Grafica de Cotan(x)');
