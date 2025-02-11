clear; %limpia todas las variables del workspace
close all; %cierra todas las figuras
clc; %vacia el command window


%% Indexacion de matrices
%La indexacion de matrices en MATLAB es identica la usada en los libros 
%Elemento de la fila i,columna j de una matriz A
vector_fila1 = [1 2 3]; %componentes espaciados entre si
Matriz1 = [1 -2 1; 2 -1 4; 3 -2 2]; %Una nueva fila se escribe despues del punto y coma
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
u_2=u(i);%elemento en la posicion i=2 del vector u 
%se puede indexar un vector de la misma forma que una matriz atendiendo a
%si es un vector fila o columna
u_3=u(1,3);
u_2=u(1,i);

%Los indices tambien pueden ser vectores, donde sus componentes hacen
%referencia a las filas y/o columnas a seleccionar de una matriz dando como
%resultado lo que podemos llamar como una submatriz de la matriz en
%cuestion
%Por ejemplo,queremos seleccionar los elementos de las filas 1 y 2, 
%ubicados en las columnas 1 y 2 de la matriz A
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
%(notar que la sustitucion en forma de vector columna)
%B(:,3)=[0 0 0] puede asignarse tambien de esta forma
C=[0 0 0; 0 0 0; 0 0 0];
C([1 2],[1 2])=[1 2; 3 4];%asignamos los valores de esta matriz 2x2 a la matriz C 3x3
%en los lugares comprendidos por la submatriz C([1 2],[1 2])=[C(1,1) C(1,2); C(2,1) C(2,2)]