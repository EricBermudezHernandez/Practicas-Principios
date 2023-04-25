# Nombre: 
# Fecha: 24/05/2022
# ENUNCIADO:
# Realizar un programa en mips que imprima un 1 si la suma de los elementos de una matriz es par, y un 0 si es impar
# Para ello deberás realizar lo siguiente:
#
# *) Realiza una funcion recursiva llamada sumapar que calcula si la suma de los elementos de un vector es par
#    Esta funcion sumapar recibe dos argumentos enteros. El primer arguemnto es la direccion de memoria del vector
#    El segundo argumento es el numero de elementos del vector
#    La funcion devolvera un 1 si la suma de los elementos del vector es par y 0 en caso contrario
#
# *) Realiza una función llamada matrizpar que hace uso de la funcion anterior sumapar (para saber si una fila es par)
#    para determinar si la suma de los elementos de una matriz es par o impar. Esta funcion recibe tres argumentos enteros
#    direccion base de la matriz, numero de filas y numero de columnas. 
#    La funcion devolvera un 1 si la suma de los elementos de la matriz es par y un 0 en caso contrario
#
# *) Desarrolla el cuerpo principal del programa de forma que se imprima la cadena etiquetada como "title" y se invoque
#    a la funcion matrizpar e imprima el resultado.
#
#  El programa no solamente debe funcionar, sino que para ser correcto debe cumplir con los convenios explicados en clase
#  y hacer un uso adecuado de los recursos explicados.


# #include<iostream>
# const int nfil = 5, ncol = 10;

# // funcion recursiva que dicer si la suma de los elementos de un vector es par o no
# // devuelve un 1 si es par y un 0 si es impar
# int sumapar(int vector[], int dimension, int indice) {
#     if (dimension == 0) return(1); // un vector vacio, la suma de sus elementos es 0 es par
#     else {
#         int resto = vector[indice] % 2; 
#         return( sumapar(vector,dimension-1,indice+1) ^ resto );  // xor del resto con la llamada recursiva
#     } 
# }

# // funcion interativa para comprobar si la suma de los elementos de una matriz es par o no
# // devuelve 1 si es par, y 0 si es impar
# int matrizpar(int mat[nfil][ncol], int f, int c) {
#     int i,resultado = 1;
#     for ( i = 0 ; i < nfil ; i++ ) {
#         resultado = (resultado == sumapar(mat[i],ncol,0));
#     }
#     return(resultado);
# }

# // funcion iterativa que comnprueba si una matriz es par

# int main(void) {
	
#     int v[ncol] = {3, 1, 2, 5, 7, 9, 5, 0, 8, 2};

#     int m[nfil][ncol] = {   {1, 1, 2, 5, 7, 9, 5, 0, 8, 3},
#                             {1, 3, 1, 1, 1, 0, 5, 2, 1, 3},
#                             {3, 2, 2, 4, 1, 1, 7, 2, 1, 1},
#                             {2, 1, 2, 3, 2, 2, 2, 1, 1, 9},
#                             {3, 1, 2, 5, 7, 8, 5, 0, 8, 3},
#                         };
   

#     std::cout << "Comprobacion que la matriz es par (1 cierto, 0 falso): " << matrizpar(m,nfil,ncol) << "\n";
#     return(0);
# }

nfil = 5
ncol = 10
size = 4
		.data
mat:    .word   1, 9, 2, 5, 7, 9, 5, 0, 8, 2
		.word   1, 8, 1, 1, 1, 0, 5, 2, 1, 3
		.word   3, 7, 2, 4, 1, 1, 7, 2, 1, 1
		.word   2, 6, 2, 3, 2, 2, 2, 2, 1, 9
		.word   3, 4, 2, 5, 7, 9, 5, 0, 8, 3

newline:    .asciiz "\n"
title:      .asciiz "Comprobacion que la matriz es par (1 cierto, 0 falso): "

		.text
		