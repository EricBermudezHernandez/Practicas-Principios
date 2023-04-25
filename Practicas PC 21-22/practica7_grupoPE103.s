# practica 4. Principio de computadoras
# OBJETIVO: introduce el codigo necesario para reproducir el comportamiento del programa
# C++ que se adjunta como comentarios
# Debes documentar debidamente el uso de los registros que has elegido y la correspondencia
# con las variables que has utilizado.

#include <iostream>
#include <stdio.h>
#define nrows 4
#define ncols 3
# /* EN MIPS es multiplicar(dirección del elemento (i,j) de la matriz m1, dirección del elemento (i,j) de la matriz m2)*/
#·int multiplicar(int m1[nrows][ncols], int m2[nrows][ncols],int i,int j){
#	int s;
#	s=m1[i][j]*m2[i][j];
#	return(s);
#}
#
#/* EN MIPS es multiplicar_matrix( dirección base m1, direccion base m2, direccion base m3, número de filas, número de columnas)*/
#
#void multiplicar_matrix(int m1[nrows][ncols],int m2[nrows][ncols],int m3[nrows][ncols],int f, int c){
#	int i,j;
#	for (i = 0; i < f ; i++) {
#			for (j = 0; j < c ; j++)
#				m3[i][j]=multiplicar(m1,m2,i,j);
#			std::cout << std::endl;
#		}
#	}
#
# /* EN MIPS quiero que el cálculo de los desplazamientos estén optimizados.*/
# 
#void print_matrix(int ma[nrows][ncols],int f, int c){
#	int i,j;
#		for (i = 0; i< f ; i++) {
#			for (j = 0; j < c ; j++)
#				std::cout << ma[i][j] << " ";

#		}
#}
#int main(void) {
#	
#	int matrix1[nrows][ncols] = {{1,2,3},{2,2,2},{3,3,3},{4,4,4}};
#	int matrix2[nrows][ncols] = {{1,0,0},{0,1,0},{0,0,1},{0,0,1}};
#	int matrix3[nrows][ncols] = {{0,0,0},{0,0,0},{0,0,0},{0,0,0}};
#	int selection;
#	std::cout << "P7 Principios de computadores.\n ";
#	do {
#		
#		do {
#			std::cout << "Elija opcion <0> Salir, <1> Multiplicar matrices:\n";
#			std::cin >> selection;
#		} while (selection < 0 || selection > 1);
#		std::cout << "Primera Matriz\n";
#		print_matrix(matrix1,nrows,ncols);
#		std::cout << "Segunda Matriz\n";
#		print_matrix(matrix2,nrows,ncols);
#		if (selection == 1) {
#			multiplicar_matrix(matrix1,matrix2,matrix3,nrows,ncols);
#			std::cout << "El resultado de la multiplicacion es:\n";	
#			print_matrix(matrix3,nrows,ncols);
#		}
#    } while (selection != 0);
#   std::cout << "\nFIN DEL PROGRAMA.";
#	return(0);
#}

nrows=4
ncols=3
size=4 # bytes que ocupa un entero

	.data		# directiva que indica la zona de datos
titulo: 		.asciiz	"P7 Principios de computadores.\n" 
msgpregunta:    .asciiz "Elija opcion <0> Salir, <1> Multiplicar matrices:\n"
newline:    .asciiz "\n"
msg1:           .asciiz "Primera Matriz\n"
msg2:           .asciiz "Segunda Matriz\n"
msg3:			.asciiz "El resultado de la multiplicacion es:\n"
msgfin:			.asciiz "\nFIN DEL PROGRAMA."
matrix1:	.word	1, 2, 3
			.word	2, 2, 2
			.word	3, 3, 3
			.word	4, 4, 4
matrix2:	.word	1, 0, 0
			.word	0, 1, 0
			.word	0, 0, 1
			.word	0, 0, 1			
matrix3:	.word	0, 0, 0
			.word	0, 0, 0
			.word	0, 0, 0
			.word	0, 0, 0
	.text		# directiva que indica la zona de código
main:
#void print_matrix(int ma[nrows][ncols],int f, int c){
#	int i,j;
#		for (i = 0; i < f ; i++) {
#			for (j = 0; j < c ; j++)
#				std::cout << ma[i][j] << " ";

#		}
#}



multiplicar:
# $a0 -> int i 
# $a1 -> int j
# $a2 -> direccion base matriz 1
# $a3 -> direccion base matriz 2
#·int multiplicar(int m1[nrows][ncols], int m2[nrows][ncols],int i,int j){
#	int s;
#	s=m1[i][j]*m2[i][j];
#	return(s);
#}
	lw $s0, 0($a0)
	lw $s1, 0($a1)
	lw $s2, 0($a2)
	lw $s3, 0($a3)

# int s
	li $t0, 0

	addi	$s1, $s1 4			# $s1 = $s1 + 4
	addi	$s2, $s2 4	# $s2 =$s2 + 4
	
	mul $t0, $a2, $a3

# metemos el valor de s en la pila
	addi	$sp, $sp, -4		
	sw		$s4, 0($sp)		# 
	jr $ra
	

print_matrix:
# $a0 -> int f
# $a1 -> int c
# $a2 -> direccion base de la matriz

	lw	$s0, 0($a0)	
	lw  $s1, 0($a1)
	lw  $s3, 0($a2)

# int i 
	li $t0,0

# int j
	li $t1, 0


ForFilas:
	bge		$t0, nfil, EndForFilas	# if $t0 >= $t1 then target
	

ForColumnas:
	bge		$t1, ncol, EndForColumnas	# if  >= $t1 then target
	
# i * numcol
	mul $t2, $t0, ncol

# $t2 + j
	add		$t2, $t1, $t2		# $t2 = $11 + $t2

# accedemos a la posicion de memoria
	
	j ForColumnas

EndForColumnas:
	la $a0, newline
	li $v0, 4
	syscall

	j ForFilas
EndForFilas:
	jr $ra

main:
# titulo 
	li $a0, titulo
	la $v0, 4
	syscall

# int selection 
	li $s7,0

# registro para hacer la comparacion
	li $t7, 1
do:
#	do {
#		
#		do {
#			std::cout << "Elija opcion <0> Salir, <1> Multiplicar matrices:\n";
#			std::cin >> selection;

	la $a0, msgpregunta
	li $v0, 4
	syscall

#	 std::cin >> selection;

	li $v0, 5
	syscall
	move 	$s7, $v0		# $s7 = $t1
	bltz 	$s7, Endo
	bgt		$s7, $t7, Endo	# if $s7 > $t1 then target
	b do
# while (selection < 0 || selection > 1);

Endo:

#		std::cout << "Primera Matriz\n";

	la $a0, msg1
	li $v0, 4
	syscall

#		print_matrix(matrix1,nrows,ncols);
	addi	$sp, $sp, -4			#sp = $t1 + 0
	sw		$t1, 0($sp)		# 
	
	