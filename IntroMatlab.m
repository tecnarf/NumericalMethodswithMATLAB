%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear; %limpia todas las variables del workspace
close all; %cierra todas las figuras
clc; %vacia el command window
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% OPERACIONES Y FUNCIONES MAS COMUNES EN MATLAB
  
  &&&  ASIGNACIONES Y DEFINICIONES
  &&&  DEFINICION DE VECTORES Y MATRICES
  &&&  MATRICES
       &&&%  OPERACIONES CON Y ENTRE MATRICES
       &&&%  CONCATENACION DE MATRICES
       &&&%  INDEXACION DE MATRICES
  &&& FUNCIONES ESPECIALES PARA MATRICES Y VECTORES
  &&& MATRICES ESPECIALES

%% Asignaciones y definiciones
var_a = 3;
var_b = var_a;%podemos asignar el valor de otra variable a una nueva
var_c = var_a*var_b;

%% Definicion de vectores(o matrices 1xn o nx1)
%MATLAB asigna el valor 1 para el indice de elemento en la primera posicion  
vector_fila1 = [1 2 3]; %componentes espaciados entre si
vector_fila2 = [4, 5, 6];%O con componentes separadas entre si por comas
vector_columna = [7; 8; 9];%componentes separadas entre si por puntos y comas
vector_intervalo=-2*pi:0.0001:2*pi;%vector con componentes que van desde inicio:paso:fin 
%el vector_intervalo definido anteriormente contiene a los extremos del
%intervalo
%% Definicion de matrices
Matriz1 = [1 -2 1; 2 -1 4; 3 -2 2]; %Una nueva fila se escribe despues del punto y coma
Matriz1Transpuesta = Matriz1'; %comilla simple ' con alt+39
Matriz2 = Matriz1Transpuesta;

%%Matrices

%% Operaciones con matrices
%Sumar un escalar a una matriz
Matriz1_mas_10 = Matriz1 + 10;
%Aplicar alguna funcion trigonometrica una matriz (ejemplo sin())
Seno_rad_Matriz1 = sin(Matriz1); %el argumento se considera en radianes
Seno_grados_sexagesimales_Matri1 = sind(Matriz1); %el argumento esta grados sexagesimales (degrees)
%Elevar cada elemento a un exponente
Matriz1_al_cuad_elemento = Matriz1.^2;
%Elevar la matriz al cuadrado(MatrizxMatriz)
Matriz1_al_cuad = Matriz1^2;
%% Operaciones entre matrices
%Suma y resta de matrices
Matriz_suma = Matriz1 + Matriz2;
Matriz_resta = Matriz2 - Matriz1;
%Producto de matrices(recordar concidicion necesaria)
Matriz_producto = Matriz1*Matriz2;
%Division de matrices(Por la derecha y por la izquierda)
%Por la derecha(Multiplica una matriz por la inversa de la otra por la derecha)
div_derecha = Matriz1/Matriz2;%Multiplica la Matriz1 por la inversa de la Matriz2 por la derecha 
%Por la izquierda(Multiplica una matriz por la inversa de la otra por la izquierda)
div_izq = Matriz1\Matriz2;%Multiplica la inversa de la Matriz1 por la izquierda de la Matriz2

%Concatenacion de matrices
concat_der = [Matriz1 Matriz2];
concat_abajo = [Matriz1; Matriz2];
%Producto elemento a elemento
prod_elem=Matriz1.*Matriz2;
%Division elemento a elemento
div_elem=Matriz1./Matriz2;%Division por la derecha (barra inclinada hacia la derecha)
%div_elem=Matriz1.\Matriz2;%Division por la izquierda (barra inclinada hacia la izquierda)

%% Indexacion de matrices
%La indexacion de matrices en MATLAB es identica la usada en el libros 
%Elemento de la fila i,columna j de una matriz A
i=2; 
j=3;
A=Matriz1;
A_23=A(2,3);
%Sabemos que los elementos de los vectores los podemos 
%ubicar en una fila (vector fila) o ubicar en una columna (vector columna)
%en donde ambos pueden ser tratados como matrices, 1xn en el caso de un
%vector fila o nx1 si se tiene un vector columna, pues los vectores en 
%esencia son matrices con las dimensiones antes mecionadas
%De este modo podemos indexar los vectores como si fueran matrices
u=vector_fila1;
u_2=u(i);%elemnto en la posicion i=2 del vector u 
%se puede indexar un vector de la misma forma que una matriz atendiendo a
%si es un vector fila o columna
u_3=u(1,3);
u_2=u(1,i);
%Los indices tambien pueden ser vectores donde sus componentes hacen
%referencia a las filas y/o columnas a seleccionar de una matriz dando como
%resultado lo que podemos llamar como una submatriz de la matriz en
%cuestion
%Por ejemplo,queremos seleccionar los elementos de las filas 2 y 3, y de las columnas 1 y 2 de la
%matriz A
%|--- 1 --- -2 --- 1 |
%|    |      |       |           |1 -2|
%|--- 2 --- -1 --- 4 |    ==>    |2 -1| 
%|    |      |       |
%|    3     -2     2 |
A_f12_c12=A([1,2],[1,2]); %en el lugar del indice i(filas)   => vector[filas a seleccionar]
                          %en el lugar de indice j(columnas) => vector[columnas a seleccionar]
%si queremos seleccionar una fila o columna completa hacemos:
%(i,:) => para seleccionar una fila completa
%(:,j) => para seleccionar una columna completa
A_f1=A(1,:);%Extraemos la fila 1 completa
A_c1=A(:,1);%Extraemos la columna 1 completa
%Todas las operaciones de indexacion se pueden utilizar para asignar nuevos
%valores para los elementos de la matriz
B=Matriz1';
B(1,1)=0;%asignamos el valor 0 en la posicion (1,1) de la matriz B
B(3,:)=[0 0 0];%reemplazamos a la fila 3 por una fila de ceros 
B(:,3)=[0; 0; 0];%reemplazamos a la columna 3 por una columna de ceros
%(notar que la susstitucion en forma de vector columna)
%B(:,3)=[0 0 0] puede asignarse tambien de esta forma
C=[0 0 0; 0 0 0; 0 0 0];
C([1 2],[1 2])=[1 2; 3 4];%asignamos los valores de esta matriz 2x2 a la matriz C 3x3
%en los lugares comprendidos por la submatriz C([1 2],[1 2])=[C(1,1) C(1,2); C(2,1) C(2,2)]

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
%%M.^(2) eleva cada uno de los componentes de la matriz al cuadrado

%% Funciones para la creacion de matrices especiales
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% FUNCIONES DE ENTRADA Y SALIDA

%display(): puede mostrar los valores de variables o cadenas de caracteres
%pero usaremos solamente disp()
%disp('Mostrando cadena de caracteres');
%disp(v);
%display(v);%observe la diferencia entre disp y display
%input(): pide al usuario el ingreso de una variable con un mensaje dentro
%del argumento de la funcion
%valor_ingresado=input('Ingrese el valor para la nueva variable: ');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% POLINOMIOS Y FUNCIONES EN MATLAB

%Los polinomios son representados por vectores. Utilizamos la notacion de polinomios 
%con exponente en orden decreciente de izquierda a derecha(mas frecuente que el
%ordenamiento ascendente de izquierda a derecha)
%Las componentes del vector correspondiente a al polinomio son los coeficientes 
%de la variable, por ejemplo:
%P(x)=x^2+2*x+3 ==>  polin=[1 2 3] y viceversa
%polin=[1(x^2) 2(x^1) 3(x^0)] ==> P(x)=(1)*x^2+(2)*x+(3) = x^2+2*x+3;
%roots():retorna un vector con las raices del polinomio(puntos donde el
%grafico de la funcion corta al eje x)
polin=[1 2 3];
raices=roots(polin);
%polyval(polinomio, vector):evalua al polinomio en distintos puntos que son especificados
%con un vector en el segundo argumento de la funcion. Evaluando con un vector de muchas 
%componentes nos sirve para graficar el polinomio
%graficar
eval=polyval(polin,[1 2]);%se evalua al polinomio "polin" en los puntos x=1 y x=2
%poly():genera un polinomio que tengo como raices un conjunto de valores
%dado en forma de vector
polinomio_generado=poly(polin);%se genera un polinomio cuya raices son las componentes 
%del vector polin
%conv():realiza la convolucion de dos polinomios(la convolucion de
%polinomios es un producto en este caso)
conv_pol_producto=conv(polin,polinomio_generado);%recuerde que el que el grado de un pollinomio 
%es el exponente de la variable de mayor de exponente y que el producto de dos polinomios
%tiene por grado la suma de los exponentes de los polinomios factores
%% Funciones inline
%Permiten crear una funcion(entiendase por funcion al concepto dado en programacion)
%a partir de una cadena de caracteres 
%Observacion: seran borradas en versiones futuras de MATLAB, es decir ya no
%sera posible definir funciones de esta forma
%Ejemplo: funcion sinc normalizada(es el nombre con que se identifica particularmente a la
%expresion sin(pi*x)/(pi*x))
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
func_sinc_hand=@(x)(sin(pi*x)/(pi*x));%funcuon sinc pero definida como funcion handle
func_sinc_pi_3=func_sinc_hand(pi);
%Ejemplo: Area de un triangulo
area_triangulo_hand=@(b,h)(b*h/2);
area_triangulo_2=area_triangulo_hand(3,4);
%En conclusion ambas formas de definir funciones son casi identicas con la
%salvedad de que inline ya no estara disponible en versiones posteriores de
%MATLAB
%% El comando sym 
%Se utiliza para crear variables simbólicas en MATLAB. 
%Las variables simbólicas permiten trabajar con expresiones algebraicas, 
%funciones matemáticas y otros objetos simbólicos de una manera más flexible
%y potente que las variables numéricas.
%Algunas de las principales características y usos del comando sym son:

%    Definir variables simbólicas: Puedes crear variables simbólicas utilizando sym('x'), 
%    sym('f(x)'), etc. Estas variables se pueden utilizar en operaciones 
%    matemáticas simbólicas.

%    Realizar cálculos simbólicos: Una vez que has definido las variables simbólicas, 
%    puedes realizar operaciones como diferenciación, integración, resolución de ecuaciones,
%    etc. de manera simbólica. Esto es muy útil cuando trabajas con expresiones complejas.

%    Conversión entre formas simbólicas y numéricas: Puedes convertir expresiones simbólicas
%    a formas numéricas utilizando el comando subs() y viceversa, usando sym().

%    Simplificación y manipulación simbólica: El comando simplify() te permite simplificar 
%    expresiones simbólicas, mientras que expand() y collect() te permiten manipular 
%    la expresión de diferentes formas.

%    Representación gráfica: Puedes utilizar las variables simbólicas para generar gráficos 
%    de funciones matemáticas de manera simbólica.(como lo hace Geogebra)

% Crear una variable simbólica 'x'
x = sym('x');

% Definir una expresión simbólica
f = x^3 + 2*x^2 - 5*x + 1;

% Calcular la derivada de la expresión
df = diff(f, x);

% Simplificar la expresión
f_simplified = simplify(f);

% Imprimir los resultados
disp('Expresión original:');
disp(f);
disp('Derivada:');
disp(df);
disp('Expresión simplificada:');
disp(f_simplified);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% PROGRAMACION EN LENGUAJE MATLAB
  %%% ESTRUCTURAS DE CONTROL
  %%% ESTRUCTURAS DE ITERACION

%% Estructuras de control: if, elseif, else

%Para indicar a MATLAB que terminan las estructuras de control es necesario
%finalizar con un "end" al termino de las instrucciones
%if, else y elseif permite ejeutar instrucciones si se cumplen determinadas
%instrucciones
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
%Bucle:
%iteracion:
%Ejemplo: Transponer un vector fila
v=input('Ingrese un vector fila: ');
n=length(v);%cantidad de componentes de v
v_transpuesta=[];%vector vacio(se guardara en esta variable la respuesta final)
for i=1:n
    v_transpuesta=[v_transpuesta; v(i)];%coloca las componentes ubicadas inicialmente en
    %fila en columnas
    %al cabo de la primera iteracion en v_transpuesta se guarda la primera
    %componente pues v_transpuesta es inicialmente vacio finalizando la
    %iteracion con v_transpuesta=[componente de v en la 1ra psoicion o v(1)] como
    %una matriz 1x1 o vector de una fila y una columna
    %seguidamente v_transpuesta=[v(1), v(2)]
end
disp('vector transpuesto: ');
disp(v_transpuesta);
%El while permite repetir un bucle hasta que se cumpla una condicion cuando
%no se conoce de antemano el numero exacto de repeticiones que se emplearia
%con este ejemplo veremos cuatas veces se tardó(cuantas veces se ejecute el
%bucle) hasta que el numero aleatorio t fuera 5
t=round(10*rand());%t es igual a un numero aleatorio entre 0 y 9
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% GRAFICOS DE FUNCIONES

%La funcion clave para graficar es plot()
%Vamos a graficar funciones trigonometricas de -2*pi hasta 2*pi
%   (1):Generamos el vector x para evaluar la funcion, esto representa el eje x
x=-2*pi:0.0001:2*pi;
%   (2): Hacemos los vectores correspondientes a las funciones evaluadas en los puntos del vector x
%           esto representa los valores de la funcion en el eje y
seno=sin(x);
coseno=cos(x);
tangente=tan(x);
cotangente=cot(x);
figure(1);%Genera una interfaz de edicion para un grafico
plot(x,seno);
grid on;%Habilita las cuadriculas o grillas en el grafico
axis([-2*pi, 2*pi, -5, 5]);%limita los bordes del grafico
xlabel('Valores de la abscisa (x)');
ylabel('Valores de la ordenada (y)');
legend('Sen(x)');%identificador de curvas
title('Grafica de Sen(x) en el intervalo [-2pi, 2pi]');
%% Varias funciones en una misma grafica
figure(2);
hold on;%hold=sostener (evita borrar la funcion grafica
plot(x,seno);
plot(x,coseno);
plot(x,tangente);
plot(x,cotangente);
grid on;%Habilita las cuadriculas o grillas en el grafico
axis([-2*pi, 2*pi, -5, 5]);%limita los bordes del grafico
xlabel('Valores de la abscisa (x)');
ylabel('Valores de la ordenada (y)');
legend('sen(x)', 'cos(x)','tan(x)','cotan(x)');%identificador de curvas
title('Grafica de funciones trigonometricas en el intervalo [-2pi, 2pi]');

%% Uso de subplot
%permite graficar varias funciones en una misma ventana grafica pero cada
%una por separado
figure(3);%Creamos una ventana grafica
%subplot(m,n,p) donde m y n indican en cuantas filas y columnas se va dividir 
%la ventana grafica; el numero p es el indice donde irá la grafica
%---Grafico de sen(x)----
subplot(2,2,1);
plot(x,seno);
grid on;
axis([-2*pi, 2*pi, -5, 5]);%limita los bordes del grafico
xlabel('Eje x');
ylabel('Eje y');
legend('Sen(x)');%identificador de curvas
title('Grafica de Sen(x)');
%---Grafico de cos(x)----
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


































