# Nombre y Apellidos: Juan Aday Siverio González y Éric Bermúdez Hernández
# Fecha: 05/05/2022


#include <iostream>

#void Swap(int *direccionBase1, int *direccionBase2) {
#    int aux;
#    aux = *direccionBase1;
#    *direccionBase1 = *direccionBase2;
#    *direccionBase2 = aux;
#}
#
#void Print_Matriz(int *direccion_base, int num_filas, int num_col) {
#    for (int i = 0; i < num_filas; i++) {
#        for (int j = 0; j < num_col; j++) {
#            std::cout << direccion_base[i*num_col + j] << " "; 
#        }
#        std::cout << "\n\n";
#    }
#}
#
#void invertir(int *first_element, int number_element, int number_bytes) {
#    if (number_element >= 2) {       
#        Swap(first_element, first_element+number_bytes*(number_element-1));
#        invertir(first_element+number_bytes, number_element-2, number_bytes);
#    }
#}
#
#int main() {
#    int maximoElementos{400};
#    int vector[400] = {100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119
#                    , 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139
#                    , 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159
#                    , 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179
#                    , 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199
#                    , 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219
#                    , 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239
#                    , 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259
#                    , 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279
#                    , 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299
#                    , 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319
#                    , 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339
#                    , 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359
#                    , 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379
#                    , 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399
#                    , 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419
#                    , 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439
#                    , 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459
#                    , 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479
#                    , 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499};
#    int eleccion;
#    int nfilas {20};
#    int ncolumnas {10};
#    do
#    {   
#        Print_Matriz(vector, nfilas, ncolumnas);
#        std::cout << "\n";
#        std::cout << "(1) Cambiar dimensiones\n";
#        std::cout << "(2) Obtener elemento [i,j]\n";
#        std::cout << "(3) Invertir fila\n";
#        std::cout << "(4) Invertir columna\n";
#        std::cout << "(5) Traspuesta\n";
#        std::cout << "(0) Salir\n";
#        std::cin >> eleccion;
#        int i{0};   // sirve para insertar valores momentaneos
#        int j{0};   // sirve para insertar valores momentaneos
#        if (eleccion == 1) {
#            std::cout << "\nIntroduzca numero de filas: ";
#            std::cin >> i;
#            std::cout << "\nIntroduzca numero de columnas: ";
#            std::cin >> j;
#            if (i*j > 400) {
#                std::cout << "\n“Error: dimension incorrecta. Excede el maximo numero de elementos (400).”";
#            } else {
#                nfilas = i;
#                ncolumnas = j;
#            }
#        } else if (eleccion == 2) {
#           std::cout << "\nObtener el elemento [i,j]. Introduzca indice i (primera fila indice 0): ";
#           std::cin >> i;
#           if (i >= 0 && i < nfilas) {
#               std::cout << "\nObtener el elemento [i,j]. Introduzca indice j (primera columna indice 0): ";
#                std::cin >> j;
#                if (j >= 0 && j < ncolumnas) {
#                   std::cout << vector[ncolumnas*i + j] << "\n";
#                } else {
#                     std::cout << "\n“Error: dimension incorrecta. Numero de columna incorrecto”\n";
#                }
#           } else {
#               std::cout << "\n“Error: dimension incorrecta. Numero de fila incorrecto”\n";
#           }
#        } else if (eleccion == 3) { 
#            int var_aux;
#            std::cout << "\nInvertir la fila [i,*]. Introduzca indice i (primera fila indice 0): ";
#            std::cin >> i;
#            if (i >= 0 && i < ncolumnas) {
#                invertir(&vector[ncolumnas*i], ncolumnas, 1);
#            } else {
#                std::cout << "\n“Error: dimension incorrecta. Numero de fila incorrecto”\n";
#            }
#        } else if (eleccion == 4) {
#            int var_aux;
#            std::cout << "\nInvertir la columna [j,*]. Introduzca indice j (primera columna indice 0): ";
#            std::cin >> j;
#            if (j >= 0 && j < nfilas) {
#                invertir(&vector[j], nfilas, ncolumnas);
#            } else {
#                std::cout << "\n“Error: dimension incorrecta. Numero de columna incorrecto”\n";
#            }
#        } else if(eleccion == 5) {
#            int aux{0};
#            if (nfilas == ncolumnas) {
#                for (int i = 0; i < nfilas; i++) {
#                    for (int j = i; j < ncolumnas; j++) {
#                        Swap(&vector[ncolumnas*i+j], &vector[ncolumnas*j+i]);
#                    }
#                }
#            } else {
#                std::cout << "Solo se puede hacer la traspuesta de una matriz cuadrada\n";
#            }
#            
#        } else {
#            std::cout << "\nTe has equivocado de tecla, prueba de nuevo.\n";
#        }
#        std::cout << "\n";
#    } while (eleccion != 0);
#}

maximoElementos=400 # numero de enteros maximo reservado para la matriz 1600 bytes
size=4 # bytes que ocupa un entero
    .data
mat:   .word   100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119
       .word   120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139
       .word   140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159
       .word   160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179
       .word   180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199
       .word   200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219
       .word   220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239
       .word   240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259
       .word   260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279
       .word   280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299
       .word   300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319
       .word   320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339
       .word   340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359
       .word   360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379
       .word   380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399
       .word   400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419
       .word   420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439
       .word   440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459
       .word   460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479
       .word   480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499
       

nfil:   .word   20 # nuemro de filas de la matriz
ncol:   .word   10 # numero de columnas de la matriz
separador:  .asciiz "  " # separador entre numeros
newline:    .asciiz "\n"
menu:       .ascii  "\n(1) Cambiar dimensiones\n(2) Obtener elemento [i,j]\n"
            .asciiz "(3) Invertir fila\n(4) Invertir columna\n(5) Traspuesta\n(0) Salir\nElija opcion: "
error_op:   .asciiz "\nError: opcion incorrecta.\n"
msg_nfilas: .asciiz "\nIntroduzca numero de filas: "
msg_ncols:  .asciiz "\nIntroduzca numero de columnas: "
error_nfilas:   .asciiz "\nError: dimension incorrecta. Numero de fila incorrecto.\n"
error_ncols:    .asciiz "\nError: dimension incorrecta. Numero de columna incorrecto.\n"
error_dime:     .asciiz "\nError: dimension incorrecta. Excede el maximo numero de elementos (400).\n"
msg_i:      .asciiz "\nObtener el elemento [i,j]. Introduzca indice i (primera fila indice 0): "
msg_j:      .asciiz "\nObtener el elemento [i,j]. Introduzca indice j (primera columna indice 0): "
msg_f:      .asciiz "\nInvertir la fila [i,*]. Introduzca indice i (primera fila indice 0): "
msg_c:      .asciiz "\nInvertir la columna [*,j]. Introduzca indice j (primera columna indice 0): "
msg_elemento:   .asciiz "\nElemento obtenido en la posicion indicada: "
titulo:     .asciiz "\nPractica 6 de Principios de Computadores. Matrices con funciones.\n"
header:     .asciiz "Matriz con dimension "
x:          .asciiz " x "
msg_fin:    .asciiz "\nFin del programa.\n"
error_no_cuadrada:  .asciiz "\nError: No se puede calcular la traspuesta en matrices no cuadradas.\n"

    .text

print_matriz:	# funcion que imprime la matriz correspondiente
		# Argumentos:
		# $a0 <- direccion base de la matriz a imprimir
		# $a1 <- numero de filas de la matriz a imprimir
		# $a2 <- numero de columnas de la matriz a imprimir

		move $s5, $a0
		move $s1, $a1
		move $s2, $a2
		li $s6, 0   # i <- $s6
	ForFilas:
	#        for (int i = 0; i < nfilas; i++) {
		bge $s6, $s1, EndForFilas
		li $s7, 0   # j <- $s7
	ForColumnas:
	#            for (int j = 0; j < ncolumnas; j++) {
		bge $s7, $s2, EndForColumnas
		lw $a0, 0($s5)
		li $v0, 1
		syscall
		li $v0, 4
		la $a0, separador
		syscall
	#                std::cout << vector[i*ncolumnas + j] << " ";
		addu $s5, $s5, 4
		addi $s7, $s7, 1
		j ForColumnas
	#            }
	EndForColumnas:
	#            std::cout << "\n";
		li $v0, 4
		la $a0, newline
		syscall
		addi $s6, $s6, 1
		j ForFilas
	#        }
	EndForFilas:
	jr $ra

swap:		# funcion que intercambia el contenido de las direcciones de memoria
		# Argumentos:
		# $a0 <- direccion base del primer valor del vector
		# $a1 <- direccion base del otro valor del vector
	lw $t0, 0($a0)
	lw $t1, 0($a1)

	# Utilizo el registro $t2 como auxiliar para intercambiar valores
	move $t2, $t0
	sw $t1, 0($a0)
	sw $t2, 0($a1)
	
#	li $v0, 4
#	la $a0, newline
#	syscall
#	li $v0, 1
#	move $a0, $t1
#	syscall
#	li $v0, 4
#	la $a0, separador
#	syscall
#	li $v0, 1
#	move $a0, $t2
#	syscall

	jr $ra

traspuesta:	# funcion que realiza la traspuesta de la matriz pasada por parámetros
		# Argumentos:
		# $a0 <- direccion base de la matriz
		# $a1 <- numero de filas (Como se supone que la matriz es cuadrada, 
		# se intuye que tambien es numero de columnas)

	move $t7, $a0	# direccion base de la matriz
	move $t6, $a1	# numero filas y columnas
	# meto en pila la direccion para volver a donde fue invocada la funcion
	# esto se realiza para evadir los problemas al usar el metodo swap.
	addi $sp,$sp,-4
	sw $ra ,0($sp)
	# i <- $t1
	# j <- $t2
	#                for (int i = 0; i < nfilas; i++) {
	li $s3, 0
	ForFilasTras:
		bge $s3, $t6, EndForFilasTras
	#                    for (int j = i; j < ncolumnas; j++) {
	move $s4, $s3
	ForColumnasTras:
		bge $s4, $t6, EndForColumnasTras

		move $t5, $t7 
		mul $t0, $t6, $s3
		add $t0, $t0, $s4
		mul $t0, $t0, size
		addu $t5, $t5, $t0
		move $a0, $t5
		
		move $t5, $t7 
		mul $t0, $t6, $s4
		add $t0, $t0, $s3
		mul $t0, $t0, size
		addu $t5, $t5, $t0
		move $a1, $t5

		addi $sp,$sp,-4
		sw $t7 ,0($sp)
		addi $sp,$sp,-4
		sw $t6 ,0($sp)
		jal swap
		lw $t6, 0($sp)
		addi $sp, $sp, 4
		lw $t7, 0($sp)
		addi $sp, $sp, 4
	#                        aux = vector[ncolumnas*i+j];
	#                        vector[ncolumnas*i+j] = vector[ncolumnas*j+i];
	#                        vector[ncolumnas*j+i] = aux;
		addi $s4, $s4, 1
		j ForColumnasTras
	#                    }
	EndForColumnasTras:
		addi $s3, $s3, 1
		j ForFilasTras
	#                }
	EndForFilasTras:
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra

#void invertir(int *first_element, int number_element, int number_bytes) {
invertir:	# funcion que realiza la inversa de una fila o una columna
		# Argumentos:
		# $a0 <- direccion base del primer elemento de la fila/columna
		# $a1 <- numero de elementos en esa fila/columna
		# $a2 <- numero de bytes
		addi $sp,$sp,-4
		sw $ra ,0($sp)

		move $t0, $a0
		move $t1, $a1
		move $t2, $a2
	IfInvertir:
#    if (number_element >= 2) {    
		li $t7, 2
		blt $t1, $t7, EndIfInvertir
		addi $sp,$sp,-4
		sw $t0 ,0($sp)
		addi $sp,$sp,-4
		sw $t1 ,0($sp)
		addi $sp,$sp,-4
		sw $t2 ,0($sp)
#        Swap(first_element, first_element + number_bytes*(number_element-1));
		move $a0, $t0
		li $t7, 1
		sub $a1, $t1, $t7
		mul $a1, $a1, $t2
		add $a1, $a1, $t0  

		jal swap
		
		lw $t2, 0($sp)
		addi $sp, $sp, 4
		lw $t1, 0($sp)
		addi $sp, $sp, 4
		lw $t0, 0($sp)
		addi $sp, $sp, 4
#       invertir(first_element+number_bytes, number_element-2, number_bytes);
		addu $a0, $t0, $t2
		li $t6, 2
		sub $a1, $t1, $t6
		move $a2, $t2

		jal invertir

		
	EndIfInvertir:
#    }
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		
		jr $ra
#}		

main:
#    int eleccion;	# $s0 -> eleccion
#    int nfilas {20};	# $s1 -> nfilas
	li $s1, 20
#    int ncolumnas {10};# $s2 -> ncolumnas
	li $s2, 10
#    std::cout << "\nPractica 5 de Principios de Computadores. Matrices.\n";
    
    	li $v0, 4
	la $a0, titulo
	syscall
DO:
#    do
#    {      
	li $v0, 4
	la $a0, newline
	syscall
	li $v0, 4
	la $a0, header
	syscall
	li $v0, 1
	move $a0, $s1
	syscall
	li $v0, 4
	la $a0, x
	syscall
	li $v0, 1
	move $a0, $s2
	syscall
	li $v0, 4
	la $a0, newline
	syscall

	la $a0, mat
	move $a1, $s1
	move $a2, $s2
	jal print_matriz

#        std::cout << "\n";
	li $v0, 4
	la $a0, newline
	syscall
#        std::cout << "(1) Cambiar dimensiones\n";
#        std::cout << "(2) Obtener elemento [i,j]\n";
#        std::cout << "(3) Invertir fila\n";
#        std::cout << "(4) Invertir columna\n";
#        std::cout << "(0) Salir\n";
	li $v0, 4
	la $a0, menu
	syscall
#        std::cin >> eleccion;
	li $v0, 5
	syscall
	move $s0, $v0
#        int i{0};   // sirve para insertar valores momentaneos	# $s3 -> i
#        int j{0};   // sirve para insertar valores momentaneos	# $s4 -> j
If1:
#        if (eleccion == 1) {
	li $t3, 1
	bne $s0, $t3, If2
#            std::cout << "\nIntroduzca numero de filas: ";
	li $v0, 4
	la $a0, msg_nfilas
	syscall
#            std::cin >> i;
	li $v0, 5
	syscall
	move $s3, $v0
If1ExcesoI:
#            if (i <= 0) {
	bgt $s3, $zero, FinIf1ExcesoI
	li $v0, 4
	la $a0, error_nfilas
	syscall
	j FinIf1Exceso
#            }
FinIf1ExcesoI:
#            std::cout << "\nIntroduzca numero de columnas: ";
    	li $v0, 4
	la $a0, msg_ncols
	syscall
#            std::cin >> j;
	li $v0, 5
	syscall
	move $s4, $v0

If1ExcesoJ:
#            if (j <= 0) {
	bgt $s4, $zero, FinIf1ExcesoJ
	li $v0, 4
	la $a0, error_ncols
	syscall
	j FinIf1Exceso
#            }
FinIf1ExcesoJ:
#            if (i*j > 400) {
If1Exceso:
	mul $t0, $s3, $s4
	li $t1, maximoElementos
	ble $t0, $t1, ElseIf1Exceso
#                std::cout << "\n“Error: dimension incorrecta. Excede el maximo numero de elementos (400).”";
	li $v0, 4
	la $a0, error_dime
	syscall
	j FinIf1Exceso
#            } else {
ElseIf1Exceso:
#                nfilas = i;
	move $s1, $s3
#                ncolumnas = j;
	move $s2, $s4
#            }
FinIf1Exceso:
	j DO    
#        } else if (eleccion == 2) {
If2:
	li $t0, 2
	bne $s0, $t0, If3 
#           std::cout << "\nObtener el elemento [i,j]. Introduzca indice i (primera fila indice 0): ";
	li $v0, 4
	la $a0, msg_i
	syscall
#           std::cin >> i;
	li $v0, 5
	syscall
	move $s3, $v0
#           if (i >= 0 && i < nfilas) {
If2ContinuaColumna:
	blt $s3, $zero, Else2ContinuaColumna
	bge $s3, $s1, Else2ContinuaColumna
#               std::cout << "\nObtener el elemento [i,j]. Introduzca indice j (primera columna indice 0): ";
	li $v0, 4
	la $a0, msg_j
	syscall
#                std::cin >> j;
	li $v0, 5
	syscall
	move $s4, $v0
#                if (j >= 0 && j < ncolumnas) {
If2ContinuaImprimirValor:
	blt $s4, $zero, ElseContinuaImprimirValor
	bge $s4, $s2, ElseContinuaImprimirValor
#                   std::cout << "\nElemento obtenido en la posicion indicada: " << vector[ncolumnas*i + j] << "\n";
	li $v0, 4
	la $a0, msg_elemento
	syscall
	la $s5, mat
	mul $t0, $s2, $s3
	add $t0, $t0, $s4
	mul $t0, $t0, size
	addu $s5, $s5, $t0 
	lw $a0, 0($s5)
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, newline
	syscall
	j FinIf2
#                } else {
ElseContinuaImprimirValor:
#                     std::cout << "\n“Error: dimension incorrecta. Numero de columna incorrecto”\n";
	li $v0, 4
	la $a0, error_ncols
	syscall
	j FinIf2
#                }
#           } else {
Else2ContinuaColumna:
#               std::cout << "\n“Error: dimension incorrecta. Numero de fila incorrecto”\n";
	li $v0, 4
	la $a0, error_nfilas
	syscall
	j FinIf2
#           }
FinIf2:
	j DO
#        } else if (eleccion == 3) { 
If3:
	li $t0, 3
	bne $s0, $t0, If4
#            int var_aux;   # $s4 <- var_aux
#            std::cout << "\nInvertir la fila [i,*]. Introduzca indice i (primera fila indice 0): ";
	li $v0, 4
	la $a0, msg_f
	syscall
#            std::cin >> i;
	li $v0, 5
	syscall
	move $s3, $v0
#            if (i >= 0 && i < nfilas) {
If3EsApto:
	blt $s3, $zero, ElseIf3EsApto
	bge $s3, $s1, ElseIf3EsApto


	la $a0, mat
	mul $t5, $s2, $s3
	mul $t5, $t5, size
	addu $a0, $a0, $t5
	move $a1, $s2
	li $a2, 4

	jal invertir

	j DO 
#            } else {
ElseIf3EsApto:
#                std::cout << "\n“Error: dimension incorrecta. Numero de fila incorrecto”\n";
	li $v0, 4
	la $a0, error_nfilas
	syscall
#            }
FinIf3:
	j DO
#        } else if (eleccion == 4) {
If4:
	li $t0, 4
	bne $s0, $t0, If5
#            int var_aux; # $s4 <- var_aux
#            std::cout << "\nInvertir la columna [j,*]. Introduzca indice j (primera columna indice 0): ";
	li $v0, 4
	la $a0, msg_c
	syscall
#            std::cin >> j;
	li $v0, 5
	syscall
	move $s3, $v0
#            if (j >= 0 && j < ncolumnas) {
If4EsApto:
	blt $s3, $zero, ElseIf4EsApto
	bge $s3, $s2, ElseIf4EsApto

#	invertir(&vector[j], nfilas, ncolumnas);
	la $a0, mat
	mul $t5, $s3, size
	add $a0, $a0, $t5 

	move $a1, $s1
	mul $a2, $s2, size

	jal invertir
	
	j DO 
#            } else {
ElseIf4EsApto:
#                std::cout << "\n“Error: dimension incorrecta. Numero de columna incorrecto”\n";
	li $v0, 4
	la $a0, error_ncols
	syscall
	j DO
#            }
FinIf4:
#	 else if(eleccion == 5) {
If5:
	li $t0, 5
	bne $s0, $t0, ElseDefinitivo
#            int aux{0};
#            if (nfilas == ncolumnas) {
IfFilasEqualColumn:
	bne $s1, $s2, ElseFilasEqualColumn

	la $a0, mat
	move $a1, $s1
	jal traspuesta
	j DO
#           } else {
ElseFilasEqualColumn:
#		std::cout << "\nError: No se puede calcular la traspuesta en matrices no cuadradas.\n";
	li $v0, 4
	la $a0, error_no_cuadrada
	syscall
	j DO
#           }
EndIfFilasEqualColumn:

ElseDefinitivo:
#        } else if(opcion != 0){
	beq $s0, $zero, FinElseDefinitivo
#            std::cout << "\nError: opcion incorrecta.\n";
	li $v0, 4
	la $a0, error_op
	syscall
	j DO
#        }
FinElseDefinitivo:    
#    } while (eleccion != 0);
#}
	li $v0, 4
	la $a0, msg_fin
	syscall
	li $v0, 10
	syscall