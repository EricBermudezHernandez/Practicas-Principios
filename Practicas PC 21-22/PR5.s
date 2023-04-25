# Autor - Eric Bermúdez Hernández
# Fecha - 4/05/2022

##include <iostream>
#int main () {
#  int mat[400] = {100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119,
#                  120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139,
#                  140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159,
#                  160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179,
#                  180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199,
#                  200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219,
#                  220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239,
#                  240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259,
#                  260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279,
#                  280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299,
#                  300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319,
#                  320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339,
#                  340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359,
#                  360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379,
#                  380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399,
#                  400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419,
#                  420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439,
#                  440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459,
#                  460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479,
#                  480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499};
#  int MaximoElementos = 400, nfil = 20, ncol = 10, numeros = 100, opcion, i, j, aux{0};
#  std::cout << "\nPractica 5 de Principios de Computadores. Matrices.\n";
#do {  
#  // Imprimiendo la matriz
#std::cout << "Matriz con dimension " << nfil << "x" << ncol << std::endl;
#  for (int i = 0; i < nfil; i++) {
#    for (int j = 0; j < ncol; j++) {
#      std::cout << mat[ncol * i + j] << " ";
#    }
#    std::cout << std::endl;
#  }
#  std::cout << "\n(1) Cambiar dimensiones\n(2) Obtener elemento [i,j]\n(3) Invertir fila\n(4) Invertir columna\n(0) Salir\nElija opcion: ";
#  std::cin >> opcion;
#  if (opcion == 0) {
#    break;
#  } else if (opcion == 1) {
#    int i, j; 
#    std::cout << "\nIntroduzca numero de filas: ";
#    std::cin >> i;
#    if (i <= 0) {
#      std::cout << "\nError: dimension incorrecta. Numero de fila incorrecto.\n";
#      continue;
#    }
#    std::cout << "\nIntroduzca numero de columnas: ";
#    std::cin >> j;
#    if (j <= 0) {
#      std::cout << "\nError: dimension incorrecta. Numero de columna incorrecto.\n";
#      continue;
#    }
#    if (i * j > MaximoElementos) {
#      std::cout << "\nError: dimension incorrecta. Excede el maximo numero de elementos (400).\n";
#    } else {
#      nfil = i;
#      ncol = j;
#    }
#  } else if (opcion == 2) {
#    std::cout << "\nObtener el elemento [i,j]. Introduzca indice i (primera fila indice 0): ";
#    std::cin >> i;
#    if (i > nfil || i <= 0) {
#      std::cout << "\nError: dimension incorrecta. Numero de fila incorrecto.\n";
#      continue;
#    }
#    std::cout << "\nObtener el elemento [i,j]. Introduzca indice j (primera columna indice 0): ";
#    std::cin >> j;
#    if (j > ncol || j <= 0) {
#      std::cout << "\nError: dimension incorrecta. Numero de columna incorrecto.\n";
#      continue;
#    }
#      std::cout << "\nElemento obtenido en la posicion indicada: ";
#      std::cout <<  mat[ncol * i + j] << std::endl;
#  } else if (opcion == 3) {
#    std::cout << "\nInvertir la fila [i,*]. Introduzca indice i (primera fila indice 0): ";
#    std::cin >> i;
#    if (i >= nfil || i < 0) {
#      std::cout << "\nError: dimension incorrecta. Numero de fila incorrecto.\n";
#    } else {
#      for (int z = 0; z < nfil; z++) {
#    if (i == z) {
#      for (int j = ncol-1; j >= ncol / 2; j--) {
#       aux = mat[ncol * i + j];
#        mat[ncol * i +j] = mat[ncol*i + ncol-1-j];
#        mat[ncol*i + ncol-1-j] = aux;
#     }
#    }
# }
#  }
#  } else if (opcion == 4) {
#    std::cout << "\nInvertir la columna [*,j]. Introduzca indice j (primera columna indice 0): ";
#    std::cin >> j;
#   if (j >= ncol || j < 0) {
#      std::cout << "\nError: dimension incorrecta. Numero de columna incorrecto.\n";
#    } else {
#    for (int i = 0; i < nfil / 2; i++) {
#    aux = mat[ncol * i + j];
#    mat[ncol * i + j] = mat[(ncol*((nfil-1)-i)) + j];
#    mat[(ncol*((nfil-1)-i)) + j] = aux;
#  }
#  }
#  } else {
#    std::cout << "\nError: opcion incorrecta.\n";
#  }
#  } while (opcion != 0);
#  std::cout << "\nFin del programa.\n";
#  return 0;
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


nfil:   .word   20 # numero de filas de la matriz
ncol:   .word   10 # numero de columnas de la matriz
separador:  .asciiz "  " # separador entre numeros
newline:    .asciiz "\n"
menu:       .ascii  "\n(1) Cambiar dimensiones\n(2) Obtener elemento [i,j]\n"
            .asciiz "(3) Invertir fila\n(4) Invertir columna\n(0) Salir\nElija opcion: "
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
titulo:     .asciiz "\nPractica 5 de Principios de Computadores. Matrices.\n"
header:     .asciiz "Matriz con dimension "
x:          .asciiz " x "
msg_fin:    .asciiz "\nFin del programa.\n"

    .text
# declaración de variables
# $s0(es usada para guardar las direcciones de la matriz) = mat
# $s1 = variable opcion 
# $s2 = nfil
# $s3 = ncol
# $s4 = iterador 'i' en el primer for
# $s5 = iterador 'j' en el primer for
# $s6 = variable i en la opcion 3, usada como indice de las filas
# $s7 = almacena la direccion de memoria de la matriz 
main:
  li    $s4, 0               # Valor salvado igualado a 0, que es el equivalente a la variable entera "i" en c++
  lw    $s2, nfil            # Cargamos en $t1 el valor de nfil para hacer la comparación con "i", en nuestro caso $s4
  lw    $s3, ncol            # Cargamos en $s3 el valor de ncol para hacer la comparación con "j", en nuestro caso $t1
#  std::cout << "\nPractica 5 de Principios de Computadores. Matrices.\n";

  la $a0,titulo
  li $v0,4
  syscall

#do 
do:
# cargamos el registro $s4 a 0 para empezar el for con este registro a 0
  li $s4, 0
#std::cout << "Matriz con dimension "

  la $a0,header
  li $v0,4
  syscall

# std::cout << nfil;

  lw   $a0, nfil
  li   $v0, 1
  syscall

# std::cout << "x";

  la $a0, x
  li $v0, 4
  syscall

# std::cout << ncol;
  
  lw   $a0, ncol
  li   $v0, 1
  syscall

  la  $a0, newline
  li  $v0, 4
  syscall
  b for
# Imprimimos la matriz:
# Cargamos los valores antes de el for: 

AntesDelFor:
  addi	$s4, 1			# incrementamos la i antes de ir al for: $s4(i) = $s4(i) + 1 
  la    $a0, newline
  li    $v0, 4
  syscall

for: 
#  for (int i = 0; i < nfil; i++) 
  bge		$s4, $s2, Finfor	     # Si $s4(i) > $s2(nfil) salta al fin de los dos for

# Cargamos los valores antes de el segundo for:

  li $s5, 0     # Valor salvado igualado a 0, que es el equivalente a la variable entera "J" en c++

# for (int j = 0; j < ncol; j++) {
for2:
  bge  $s5, $s3, AntesDelFor  # Si $s5(j) > $s3(ncol) salta a la etiqueta que está antes de el for, incrementa la i y vuelve a empezar el bucle

# std::cout << mat[ncol * i + j] << " ";
# Realizamos la operación mat[ncol * i + j]:

# ncol * i
# creamos una variable temporal para guardar el resultado ($t3)
  mul	  $t3, $s3, $s4			# $t3 = $s3(ncol) * $s4(i)

# (ncol * i) + j  
  add		$t4, $t3, $s5	    # $t4(resultado suma) = $t3(ncol * i) + $s5(j)

# Guardamos la dirección de memoria de el primer elemento en $s0
  la		$s0, mat		     

# Guardamos un 4 en el valor temporal "$t5" para poder hacer la multiplicacion
  li    $t5, 4           

# Multiplicamos el resultado de la operacion "ncol * i + j", almacenado en la variable $t4 y lo multiplicamos por 4 ($t5) y lo almacenamos en $t6. 
  mul	  $t6, $t4, $t5		  # $t6 = $t4(resultado suma) * $t5(4)

# Accedemos a la dirección de memoria según la posición
  add	  $s0, $t6, $s0		 # $s0 = $t6 + $s0

# Almacenamos el valor de la posición en una variable
  lw    $t7, 0($s0)
 
# std::cout << mat[ncol * i + j]; << " ";
  move $a0, $t7
  li   $v0, 1
  syscall
  la  $a0,separador
  li  $v0, 4
  syscall
# Incrementa la j:
  addi $s5, 1                 # $t1(j) = $t1(j) + 1
  b    for2	# salto a el for2 para continuar el bucle

Finfor:

Menu:
#  std::cout << "\n(1) Cambiar dimensiones\n(2) Obtener elemento [i,j]\n(3) Invertir fila\n(4) Invertir columna\n(0) Salir\nElija opcion: ";

#  std::cout << "\n(1) Cambiar dimensiones\n
  la $a0, menu
  li $v0, 4
  syscall

#  std::cin >> opcion;
  li   $v0, 5
  syscall
  move $s1, $v0   # $s1(opcion) = $v0
AntesdelMenu:
# Esta etiqueta sirve para comprobar que opcion ha escogido el usuario
  li $t0, 0
# Si la opcion escogida es igual a 0 se va a el primera opcion
  beq		$s1, $t0, if1	    
  li $t1, 1
# Si la opcion escogida es igual a 1 se va a la segunda opcion
  beq		$s1, $t1, elseIf1	
  li $t2, 2
# Si la opcion escogida es igual a 2 se va a la tercera opcion
  beq		$s1, $t2, elseIf2	
  li $t3, 3
# Si la opcion escogida es igual a 3 se va a la cuarta opcion
  beq		$s1, $t3, elseif3	
# Si la opcion escogida es igual a 4 se va a la quinta opcion
  li $t4, 4
  beq		$s1, $t4, elseif4	
  b opcion_incorrecta
  
#  if (opcion == 0) {
#    break;
#  }
if1: 
#  if (opcion == 0)
  beqz	$s1, Fin	  # Si $s1 == 0 salta al final del programa

# else if (opcion == 1) 
elseIf1:
  li    $t0, 1             # Igualamos una variable temporal $t0 a 2 para poder realizar una comparación con la variable "opcion"($s1)
  bne		$s1, $t0, elseIf2	 # Si $s1(opcion) != $t0(1) salta a la siguiente opcion (else if 2)
  
#    std::cout << "\nIntroduzca numero de filas: ";
  la $a0, msg_nfilas
  li $v0, 4
  syscall

#    std::cin >> i;
  li    $v0, 5
  syscall
  move 	$t1, $v0		# $t1 = $t1

#    if (i < 0) {
#      std::cout << "\nError: dimension incorrecta. Numero de fila incorrecto.\n";
#    }
if_i:
  bgt		$t1, $zero, Finif_i	# si $t1(i) > 0, saltamos a el fin del if y continuamos con el programa, si no se cumple, nos muestra el mensaje de error
  
# std::cout << "\nError: dimension incorrecta. Numero de fila incorrecto.\n";
  la $a0, error_nfilas
  li $v0, 4
  syscall


  b do

Finif_i:
#  std::cout << "\nIntroduzca numero de columnas: ";
  la $a0, msg_ncols
  li $v0, 4
  syscall

# std::cin >> j;
  li   $v0, 5
  syscall
  move 	$t2, $v0		# $t1 = $v0

#    } if (j > ncol) {
#      std::cout << "\nError: dimension incorrecta. Numero de columna incorrecto.\n";
#    }
if_j:
  bgt		$t2, $zero, Finif_j	# si $t1(i) > 0, saltamos a el fin del if y continuamos con el programa, si no se cumple, nos muestra el mensaje de error
# std::cout << "\nError: dimension incorrecta. Numero de columna incorrecto.\n";
  la $a0, error_ncols
  li $v0, 4
  syscall

  b do
Finif_j:
if2:
  
#  if (i * j > MaximoElementos)
# Para realizar este if, comprobamos la condicion contraria a la que hicimos en c++ para que en caso de que no sea verdad, imprima el mensaje de error y si lo es salta a la etiqueta else
  mul   $t3, $t2, $t1               # $t2(j) * $t1(i)
  ble		$t3, maximoElementos, else	# Si $t3(i * j) <= MaximoElementos(400) saltamos a la etiqueta "else"

#  std::cout << "\nError: dimension incorrecta. Excede el maximo numero de elementos (400).\n";
  la $a0, error_dime
  li $v0, 4
  syscall
  li $s4, 0
  b do
#    } else {
#      nfil = i;
#      ncol = j;
else:
# nfil = i;
  move 	$s2, $t1		# $s2 = $t1(i)
# cambiamos el valor de nfil por el que introducimos en $t1, para que se imprima correctamente por pantalla
  sw		$t1, nfil		
  
# ncol = j;
  move 	$s3, $t2		# $s3 = $t2(j)
# cambiamos el valor de ncol por el que introducimos en $t2, para que se imprima correctamente por pantalla
  sw		$t2, ncol		
  b do
  
Finelseif_1:
# else if (opcion == 2) 
elseIf2: 
  li    $t0, 2
  bne		$s1, $t0, elseif3	# # Si $s1(opcion) != $t0(2) salta a la siguiente opcion (else if 3)
  
# std::cout << "\nObtener el elemento [i,j]. Introduzca indice i (primera fila indice 0): ";
  la $a0, msg_i
  li $v0, 4
  syscall

# std::cin >> i;
  li   $v0, 5
  syscall
  move $t0, $v0		# $t0 = $v0

# if (i >= nfil || i < 0) 
if3:
  bltz	$t0, mensaje_errorfilas_i	      # Si $t0(i) < 0 Salta a la etiqueta y da el mensaje de error
  bge		$t0, $s2, mensaje_errorfilas_i	# if $t0(i) >= $s2(nfil) Salta a la etiqueta y da el mensaje de error
  b leer_j
mensaje_errorfilas_i:

# std::cout << "\nError: dimension incorrecta. Numero de fila incorrecto.\n";
  la  $a0, error_nfilas
  li  $v0, 4
  syscall
  b do

leer_j:
# std::cout << "\nObtener el elemento [i,j]. Introduzca indice j (primera columna indice 0): ";
  la $a0, msg_j
  li $v0, 4
  syscall

# std::cin >> j;
  li    $v0, 5
  syscall
  move 	$t1, $v0		# $t1 = $v0
# if (j > ncol || j <= 0)
if4:
  bltz	$t1, mensaje_errorfilas_j	# Si $t0(i) <= 0 Salta a la etiqueta y da el mensaje de error
  bge		$t1, $s3, mensaje_errorfilas_j	# if $t0 > $t1 then target
  b Finif4
mensaje_errorfilas_j:
#      std::cout << "\nError: dimension incorrecta. Numero de columna incorrecto.\n";
  la $a0, error_ncols
  li $v0, 4
  syscall
  b do
#    if (j < ncol && i < nfil) {
Finif4:
#      std::cout << "\nElemento obtenido en la posicion indicada: ";
  la $a0, msg_elemento
  li $v0, 4
  syscall

# Calculamos ncol * i + j:

# ncol * i
  mul $t6, $s3, $t0  # $t6 = $s3(ncol) * $t0(i)

# (ncol * i) + j
  add		$t6, $t6, $t1		# $t6 = $t6 + $t1

# ((ncol * i) + j) * size(4)
  mul $t6, $t6, size

# Cargamos la primera dirección de memoria de la matriz
  la $s0, mat 

  addu $t6, $s0, $t6

  lw $s7, 0($t6)

# std::cout <<  mat[ncol * i + j] << std::endl;
  move $a0, $s7
  li $v0, 1
  syscall
# salto de linea
  la  $a0, newline
  li  $v0, 4
  syscall
  b do
Finelseif_2:

# else if (opcion == 3) 
elseif3:
#  std::cout << "\nInvertir la fila [i,*]. Introduzca indice i (primera fila indice 0): ";
  la $a0, msg_f
  li $v0, 4
  syscall
#    std::cin >> i;
  li $v0, 5
  syscall
  move 	$s6, $v0		# $t0 = $v0
# if (i >= nfil || i < 0)
  bltz  $s6, mensaje_error_dimensiones # Si $s6(i) = 0 salta a la etiqueta y muestra el error
  blt		$s6, $s2, else2	# Si $s6(i) <= $s2(nfil) salta a else2
mensaje_error_dimensiones:
# std::cout << "\nError: dimension incorrecta. Numero de fila incorrecto.\n";
  la $a0, error_nfilas
  li $v0,4
  syscall
  b do
else2:
#      for (int z = 0; z < nfil; z++) {
  li $t3, 0  # z
for3:
# condición z < nfil
  bge		$t3, $s2, Finfor3	
# if (i == z) 
  bne		$s6, $t3, Finfor4 	
  
#      for (int j = ncol-1; j >= ncol / 2; j--) {
  li    $t4, 1
# j = ncol - 1
  sub		$t5, $s3, $t4		# $s3 = $s3 - $t4(1)

#  for (int j = ncol-1; j >= ncol / 2; j--) {
for4:
# j >= ncol
  li    $t7, 2
  div		$t7,$s3,$t7		      # $t0 / $t1
  blt		$t5, $t7, Finfor4	  # Si $t5(j) <= $s3(ncol) salta a Finfor4
# aux = mat[ncol * i + j];
# ncol * i
  mul $t1, $s3, $s6

# ncol * i($t1) + j($t5)
  add $t1, $t5, $t1

# ((ncol * i)  + j)) * size (4)
  mul $t1, $t1, size  # Avanzamos hasta la posición que queramos y conseguimos el valor
# Cargamos la primera dirección de memoria de la matriz en $s0
  la  $s0, mat
  addu $t6,$s0,$t1
  lw	$t0, 0($t6) 

# mat[ncol * i +j] = mat[ncol*i + ncol-1-j];
  mul $t1, $s3, $s6
  add $t1, $t1, $s3
  li $t2, 1
  sub $t1, $t1, $t2
  sub $t1, $t1, $t5
  mul $t1, $t1, size
  addu $s0, $s0, $t1
  lw $s7, 0($s0)
 
  sw $s7, 0($t6) 
#  mat[ncol*i + ncol-1-j] = aux;
  sw	 $t0, 0($s0)		# 
  
#     }
# j--
  li    $t4, 1
  sub		$t5, $t5, $t4	  # $t5 = $t5 - $t4
  b for4
Finfor4:
# z++
 addi	$t3, $t3, 1			# $t3 = $t3 + 1
 b for3
# }
Finfor3:

  b do

# else if (opcion == 4) 
elseif4:
# std::cout << "\nInvertir la columna [*,j]. Introduzca indice j (primera columna indice 0): ";
  la $a0, msg_c
  li $v0, 4
  syscall
# std::cin >> j;
  li  $v0, 5 		
  syscall
  move $t0, $v0

# if (j >= ncol || j < 0) 
if5:
  bltz	$t0, error_dimension_j      # Si $t0(j) < 0 Salta a la etiqueta y da el mensaje de error
  bge		$t0, $s3, error_dimension_j	# if $t0(j) >= $s3(ncol) Salta a la etiqueta y da el mensaje de error
  b else3

error_dimension_j:
#      std::cout << "\nError: dimension incorrecta. Numero de columna incorrecto.\n";
  la $a0, error_ncols
  li $v0, 4
  syscall
  j  do
else3:
#    for (int i = 0; i < nfil / 2; i++) {
  li $s4, 0 
forColumnas:
  li $t3, 2
  div $t2, $s2, $t3
  bge $s4, $t2, Finelseif_4
#    aux = mat[ncol * i + j];
  
  # ncol * i
  mul $t4, $s3, $s4

# ncol * i + j
  add $t4, $t0, $t4

# ((ncol * i)  + j)) * size (4)
  mul $t4, $t4, size  # Avanzamos hasta la posición que queramos y conseguimos el valor
# Cargamos la primera dirección de memoria de la matriz en $s0
  la   $s0, mat
  addu $s0,$s0,$t4
  lw	 $t5, 0($s0)

#    mat[ncol * i + j] = mat[(ncol*((nfil-1)-i)) + j];
  la $t6, mat
  li $t3, 1
  sub $t1, $s2, $t3
  sub $t1, $t1, $s4
  mul $t1, $t1, $s3
  add $t1, $t1, $t0
  mul $t1, $t1, size
  addu $t6, $t6, $t1
  lw $t7, 0($t6)

  la $t6, mat
  mul $t1, $s3, $s4
  add $t1, $t1, $t0
  mul $t1, $t1, size
  addu $t6, $t6, $t1
  sw $t7, 0($t6)
#    mat[(ncol*((nfil-1)-i)) + j] = aux;
  la $t6, mat
  li $t3, 1
  sub $t1, $s2, $t3
  sub $t1, $t1, $s4
  mul $t1, $t1, $s3
  add $t1, $t1, $t0
  mul $t1, $t1, size
  addu $t6, $t6, $t1
  sw $t5, 0($t6)
# i++
  addi $s4, 1
  j forColumnas
  
Finelseif_4:
 b do
opcion_incorrecta:
# std::cout << "\nError: opcion incorrecta.\n";
  la $a0, error_op
  li $v0, 4
  syscall
  b do
Fin:
#  std::cout << "\nFin del programa.\n";
  la $a0, msg_fin		
  li $v0,4
  syscall
  li $v0, 10
  syscall
