# Eric Bermúdez Hernández
# Fecha: 01/04/2023

#int main() {
#  int mat[] = {
#      100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114,
#      115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129,
#      130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144,
#      145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159,
#      160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174,
#      175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189,
#      190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204,
#      205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219,
#      220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234,
#      235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249,
#      250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264,
#      265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279,
#      280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294,
#      295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309,
#      310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324,
#      325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339,
#      340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354,
#      355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369,
#      370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384,
#      385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399,
#      400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414,
#      415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429,
#      430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444,
#      445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459,
#      460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474,
#      475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489,
#      490, 491, 492, 493, 494, 495, 496, 497, 498, 499,
#  };
#  int ncol{10}, nfil{20}, opcion{-1}, primer_elemento_fila,
#      segundo_elemento_fila, primer_elemento_columna, segundo_elemento_columna;
#  std::cout
#      << "\nPráctica PR3 de Principios de Computadores. Manejo de Matrices.\n";
#  do {
#    std::cout << "\nLa matriz es " << nfil << "x" << ncol << "\n";
#    // Mostramos la matriz
#    for (int f{0}; f < nfil; ++f) {
#      for (int c{0}; c < ncol; ++c) {
#        std::cout << mat[f * ncol + c] << "  ";
#      }
#      std::cout << "\n";
#    }
#    // Mostramos el menú
#    std::cout
#        << "\n(1) Cambiar dimensiones\n(2) Intercambiar dos elemento\n"
#           "(3) Suma elementos del perimetro\n(4) Calcula max y min de la "
#           "diagonal\n"
#           "(0) Salir\n\nElija opcion: ";
#    std::cin >> opcion;
#    switch (opcion) {
#      case 0:
#        break;

#      case 1: {
#        int nfil_aux, ncol_aux;
#        std::cout << "Introduzca numero de filas: ";
#        std::cin >> nfil_aux;
#        if (nfil_aux <= 0) {
#          std::cout
#              << "\nError: dimension incorrecta. Numero de fila incorrecto.\n";
#          continue;
#        }
#        std::cout << "Introduzca numero de columnas: ";
#        std::cin >> ncol_aux;
#        if (ncol_aux <= 0) {
#          std::cout << "\nError: dimension incorrecta. Numero de columna "
#                       "incorrecto.\n";
#          continue;
#        }
#        if ((nfil_aux * ncol_aux > 400)) {
#          std::cout << "\nError: dimension incorrecta. Excede el maximo numero "
#                       "de elementos (400).\n";
#          continue;
#        }
#        nfil = nfil_aux;
#        ncol = ncol_aux;
#        break;
#      }
#      case 2: {
#        std::cout << "Introduzca fila del primer elemento a cambiar: ";
#        std::cin >> primer_elemento_fila;
#         if (primer_elemento_fila < 0 || primer_elemento_fila >= nfil) {
#          std::cout
#              << "\nError: dimension incorrecta. Numero de fila incorrecto.\n";
#          continue;
#         }
#        std::cout << "Introduzca columna del primer elemento a cambiar: ";
#        std::cin >> primer_elemento_columna;
#         if (primer_elemento_columna < 0 || primer_elemento_columna >= ncol) {
#          std::cout << "\nError: dimension incorrecta. Numero de columna "
#                       "incorrecto.\n";
#          continue;
#         }
#        std::cout << "Introduzca fila del segundo elemento a cambiar: ";
#        std::cin >> segundo_elemento_fila;
#         if (segundo_elemento_fila < 0 || segundo_elemento_fila >= nfil) {
#          std::cout
#              << "\nError: dimension incorrecta. Numero de fila incorrecto.\n";
#          continue;
#        }
#        std::cout << "Introduzca columna del segundo elemento a cambiar: ";
#        std::cin >> segundo_elemento_columna;
#         if (segundo_elemento_columna < 0 || segundo_elemento_columna >= ncol) {
#          std::cout << "\nError: dimension incorrecta. Numero de columna "
#                       "incorrecto.\n";
#          continue;
#        }
#        // aux = (i,j)
#        int aux{mat[primer_elemento_fila * ncol + primer_elemento_columna]};
#        // Cambiamos los elementos:
#        // (i,j) = (r,s)
#        mat[primer_elemento_fila * ncol + primer_elemento_columna] =
#            mat[segundo_elemento_fila * ncol + segundo_elemento_columna];
#        // (r,s) = aux
#        mat[segundo_elemento_fila * ncol + segundo_elemento_columna] = aux;
#        break;
#      }
#      case 3: {
#        int suma{0};
#        // Sumamos elementos primera fila:
#        if (nfil == 1) {
#          for (int j{0}; j < ncol; ++j) {
#            suma += mat[j];
#          }
#        } else if (ncol == 1) {
#          for (int i{(nfil - 1)}; i >= 0; --i) {
#            suma += mat[i * ncol + 0];
#          }
#        } else {
#          for (int j{0}; j < ncol; ++j) {
#            suma += mat[j];
#          }
#          // Sumamos los elementos de la columna de la derecha de la matriz
#          for (int i{1}; i < nfil; ++i) {
#            suma += mat[i * ncol + (ncol - 1)];
#          }
#          // Sumamos los elementos de la fila de abajo
#          for (int j{(ncol - 2)}; j >= 0; --j) {
#            suma += mat[(nfil - 1) * ncol + j];
#          }
#          // Sumamos los elementos de la columna de la izquierda
#          for (int i{(nfil - 2)}; i >= 1; --i) {
#            suma += mat[i * ncol + 0];
#          }
#        }
#        std::cout << "\n\nSuma de los elementos del perímetro: " << suma
#                  << "\n";
#        break;
#      }
#      case 4: {
#        int minimo{999}, maximo{0};
#         for (int i{0}; i < ncol; ++i) {
#           if (nfil == 1) {
#             minimo = mat[0];
#             maximo = mat[0];
#             break;
#           }
#           if (minimo > mat[i * ncol + i]) minimo = mat[i * ncol + i];
#           if (maximo < mat[i * ncol + i]) maximo = mat[i * ncol + i];
#         }
#        std::cout << "\nEl máximo de la diagonal principal es " << maximo
#                  << " y el mínimo " << minimo << "\n";
#        break;
#      }
#      default:
#        std::cout << "\nError: opcion incorrecta.\n";
#        break;
#    }
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
       

nfil:   .word   20 # nuemro de filas de la matriz
ncol:   .word   10 # numero de columnas de la matriz

titulo:     .asciiz "\nPráctica PR3 de Principios de Computadores. Manejo de Matrices.\n"
msg_matriz: .asciiz "\nLa matriz es "
msg_x:      .asciiz "x"
separador:  .asciiz "  " # separador entre numeros
newline:    .asciiz "\n"
msg_menu:   .ascii  "\n(1) Cambiar dimensiones\n(2) Intercambiar dos elemento\n"
            .ascii  "(3) Suma elementos del perimetro\n(4) Calcula max y min de la diagonal\n"
            .asciiz "(0) Salir\n\nElija opcion: "

error_op:   .asciiz "\nError: opcion incorrecta.\n"
msg_nfilas: .asciiz "Introduzca numero de filas: "
msg_ncols:  .asciiz "Introduzca numero de columnas: "
error_nfilas:   .asciiz "\nError: dimension incorrecta. Numero de fila incorrecto.\n"
error_ncols:    .asciiz "\nError: dimension incorrecta. Numero de columna incorrecto.\n"
error_dime:     .asciiz "\nError: dimension incorrecta. Excede el maximo numero de elementos (400).\n"
msg_i:      .asciiz "Introduzca fila del primer elemento a cambiar: "
msg_j:      .asciiz "Introduzca columna del primer elemento a cambiar: "
msg_r:      .asciiz "Introduzca fila del segundo elemento a cambiar: "
msg_s:      .asciiz "Introduzca columna del segundo elemento a cambiar: "
msg_suma:   .asciiz "\n\nSuma de los elementos del perímetro: "
msg_max:    .asciiz "\nEl máximo de la diagonal principal es "
msg_min:    .asciiz " y el mínimo "
msg_fin:    .asciiz "\nFin del programa.\n"

    .text
# ===== REGISTROS SALVADOS =====
# $s0 -> nfil
# $s1 -> ncol
# $s2 -> opcion
# $s3 -> direccion memoria primer elemento matriz
# s4 -> f
# s5 -> c

main:
# Antes de nada, asignamos los valores de las etiquetas nfil y ncol a dos registros para utilizarlos en el programa
    lw $s0, nfil
    lw $s1, ncol
# std::cout << "\nPráctica PR3 de Principios de Computadores. Manejo de Matrices.\n";
    li $v0, 4
    la $a0, titulo
    syscall

do_while:
# std::cout << "\nLa matriz es " << nfil << "x" << ncol << "\n";
# "\nLa matriz es "
    li $v0, 4
    la $a0, msg_matriz
    syscall

# nfil 
    move $a0, $s0
    li   $v0, 1
    syscall

# x
    li $v0, 4
    la $a0, msg_x
    syscall

# ncol 
    move $a0, $s1
    li   $v0, 1
    syscall

# "\n"
    li $v0, 4
    la $a0, newline
    syscall

# Imprimimos la matriz: 
# for (int f{0}; f < nfil; ++f) {
    li $s4, 0 # int f{0}
for_filas:
    bge $s4, $s0, end_for_filas # si f >= nfil salimos del for

# for (int c{0}; c < ncol; ++c) {
    li  $s5, 0 # int c{0}
for_columnas:
    bge $s5, $s1, end_for_columnas # si c >= ncol salimos del for
# std::cout << mat[f * ncol + c] << "  "; -> Esta línea de código la realizaremos en varios pasos:

# 1. Cargamos la dirección de memoria del primer elemento en un registro 
# y cargamos en un registro temporal un 4 para poder realizar los desplazamientos
    la $s3, mat # Primer elemento matriz

# 2. Realizar la operación f * ncol 
    mul $t2, $s4, $s1 # $t2 = $s4(f) * $s1(ncol)

# 3. Sumar al resultado de la operación c
    add $t2, $t2, $s5 # $t2 = $t2(f * ncol) + $s5(c)

# 4. Multiplicar $t2 por 4 para obtener el elemento más tarde
    mul $t2, $t2, size # $t2(f * ncol + c) *= $t3(4)

# 5. Acceder a la posición de memoria por la posición calculada anteriormente
    add $s3, $t2, $s3 # Dirección = dirBase + i-1(f * ncol + c) * Desplazamiento(4)

# 6. Almacenamos el valor obtenido de la dirección de memoria y lo imprimimos por pantalla
    lw $t2, 0($s3)

# 7. Finalmente, imprimimos el resultado:
# std::cout << mat[f * ncol + c];
    move $a0, $t2
    li   $v0, 1
    syscall

# << " ";
    li $v0, 4
    la $a0, separador
    syscall

# ++c
    addi $s5, $s5, 1 
    b    for_columnas # Seguimos iterando en el segundo for
end_for_columnas:

# std::cout << "\n";
    li $v0, 4
    la $a0, newline
    syscall

# ++f
    addi $s4, $s4, 1 
    b    for_filas # Saltamos al primer for
end_for_filas:

menu:
#    std::cout
#        << "\n(1) Cambiar dimensiones\n(2) Intercambiar dos elemento\n"
#           "(3) Suma elementos del perimetro\n(4) Calcula max y min de la "
#           "diagonal\n"
#           "(0) Salir\n\nElija opcion: ";
    li $v0, 4
    la $a0, msg_menu
    syscall

# std::cin >> opcion;
    li   $v0, 5   # Leemos el entero por consola
    syscall
    move $s2, $v0 # Movemos el resultado a un registro salvado
# Se ha escogio la opción 1
    li  $t0, 1 # variable auxiliar con el valor de el case para realizar la comparación
    beq $s2, $t0, case_1
# Se ha escogio la opción 2
    li  $t0, 2 # variable auxiliar con el valor de el case para realizar la comparación
    beq $s2, $t0, case_2
# Se ha escogio la opción 3
    li  $t0, 3 # variable auxiliar con el valor de el case para realizar la comparación
    beq $s2, $t0, case_3
# Se ha escogio la opción 4
    li  $t0, 4 # variable auxiliar con el valor de el case para realizar la comparación
    beq $s2, $t0, case_4
# Se ha escogio la opción 0
    beqz $s2, case_0
# Se ha escogido una opción incorrecta
    b default # Si ninguna de las opciones anteriores se cumple es una opción incorrecta, se salta al default
switch:

case_0:
# break;
    beqz $s2, do_while_fin # Si la opción es igual a 0 salimos del bucle
fin_case0:

case_1:
##############
# Variables temporales usadas en este case:
# $t0 -> nfil_aux
# $t1 -> ncol_aux
# $t2 -> nfil_aux * ncol_aux
# $t3 -> 400
##############
# std::cout << "Introduzca numero de filas: ";
    li $v0, 4
    la $a0, msg_nfilas
    syscall
# std::cin >> nfil_aux;
    li $v0, 5 # Leemos el entero por consola
    syscall
    move $t0, $v0
# if (nfil_aux <= 0) {
# std::cout
# << "\nError: dimension incorrecta. Numero de fila incorrecto.\n";
# continue;
# }
    bgtz $t0, fin_if1 # Comprobamos la condición inversa,si $t0(nfil_aux) > 0 continuamos con el programa
                      # Si sucede lo contrario, entramos en el if y mostramos el mendaje de error
if_1:
# std::cout
# << "\nError: dimension incorrecta. Numero de fila incorrecto.\n";
    li $v0, 4 
    la $a0, error_nfilas
    syscall
# continue;
    b do_while # Continuamos con el bucle
# }
fin_if1:
# std::cout << "Introduzca numero de columnas: ";
    li $v0, 4
    la $a0, msg_ncols
    syscall
# std::cin >> ncol_aux;
    li   $v0, 5
    syscall
    move $t1, $v0
# if (nfil_aux <= 0) {
# std::cout
# << "\nError: dimension incorrecta. Numero de fila incorrecto.\n";
# continue;
# }
    bgtz $t1, fin_if2 # Comprobamos la condición inversa,si $t0(nfil_aux) > 0 continuamos con el programa
                      # Si sucede lo contrario, entramos en el if y mostramos el mendaje de error
if_2:
# std::cout
# << "\nError: dimension incorrecta. Numero de fila incorrecto.\n";
    li $v0, 4
    la $a0, error_ncols
    syscall
# continue;
    b do_while # Continuamos con el bucle
fin_if2:

# if ((nfil_aux * ncol_aux > 400)) {
# std::cout << "\nError: dimension incorrecta. Excede el maximo numero "
# "de elementos (400).\n";
# continue;
# }

# Para comprobar la condición del if, utilizamos dos registros.Uno para guardar nfil * ncol y otro para guardar el valor 400
    mul $t2, $t0, $t1 # $t2 = $t0(nfil_aux) * $t1(ncol_aux)
    li  $t3, 400
    ble $t2, $t3, fin_if3 # Si $t2(nfil_aux * ncol_aux) <= 400 no entramos en el if y continuamos el programa
if_3:
# std::cout << "\nError: dimension incorrecta. Excede el maximo numero "
# "de elementos (400).\n";
    li $v0, 4
    la $a0, error_dime
    syscall
# continue;
    b do_while # Continuamos con el programa
fin_if3:
# nfil = nfil_aux;
    move $s0, $t0
# ncol = ncol_aux;
    move $s1, $t1
# break;
    b do_while # Continuamos con el bucle

fin_case1:
################

################
case_2:
##############
# Variables usadas en este case:
# Temporales:
# $t0, $t1, $t2, $t3, $t4, $t5, $t6
# Salvadas:
# $s3 -> primer_elemento_fila
# $s4 -> primer_elemento_columna
# $s5 -> segundo_elemento_fila
# $s6 -> segundo_elemento_columna
# $s7 -> aux
##############
# std::cout << "Introduzca fila del primer elemento a cambiar: ";
    li $v0, 4
    la $a0, msg_i
    syscall
# std::cin >> primer_elemento_fila;
    li   $v0, 5
    syscall
    move $s3, $v0

# if (primer_elemento_fila < 0 || primer_elemento_fila >= nfil) {
#   std::cout
#   << "\nError: dimension incorrecta. Numero de fila incorrecto.\n";
#   continue;
# }
# primer_elemento_fila >= nfil
    bge $s3, $s0, if1_case2

# primer_elemento_fila < 0
    bgez $s3, fin_if1_case2 # Si el número es >= 0, no entramos en el if y continamos el programa

if1_case2:
# std::cout
# << "\nError: dimension incorrecta. Numero de fila incorrecto.\n";
    li $v0, 4
    la $a0, error_nfilas
    syscall

# continue;
    b do_while
fin_if1_case2:

# std::cout << "Introduzca columna del primer elemento a cambiar: ";
    li $v0, 4
    la $a0, msg_j
    syscall
# std::cin >> primer_elemento_columna;
    li   $v0, 5
    syscall
    move $s4, $v0

# if (primer_elemento_columna < 0 || primer_elemento_columna >= ncol) {
#   std::cout << "\nError: dimension incorrecta. Numero de columna "
#   "incorrecto.\n";
#   continue;
# }
# primer_elemento_columna >= ncol   
    bge $s4, $s1, if2_case2

# primer_elemento_columna < 0
    bgez $s4, fin_if2_case2 # Si el número es >= 0, no entramos en el if y continamos el programa
    
if2_case2:
# std::cout << "\nError: dimension incorrecta. Numero de columna "
# "incorrecto.\n";
    li $v0, 4
    la $a0, error_ncols
    syscall

# continue;
    b do_while
fin_if2_case2:

# std::cout << "Introduzca fila del segundo elemento a cambiar: ";
    li $v0, 4
    la $a0, msg_r
    syscall

# std::cin >> segundo_elemento_fila;
    li   $v0, 5
    syscall
    move $s5, $v0

# if (segundo_elemento_fila < 0 || segundo_elemento_fila >= nfil) {
#   std::cout
#   << "\nError: dimension incorrecta. Numero de fila incorrecto.\n";
#   continue;
# }
# segundo_elemento_fila >= nfil    
    bge $s5, $s0, if3_case2

# segundo_elemento_fila < 0
    bgez $s5, fin_if3_case2 # Si el número es >= 0, no entramos en el if y continamos el programa

if3_case2:
# std::cout
# << "\nError: dimension incorrecta. Numero de fila incorrecto.\n";
    li $v0, 4
    la $a0, error_nfilas
    syscall

# continue;
    b do_while
fin_if3_case2:

# std::cout << "Introduzca columna del segundo elemento a cambiar: ";
    li $v0, 4
    la $a0, msg_s
    syscall

# std::cin >> segundo_elemento_columna;
    li   $v0, 5
    syscall
    move $s6, $v0

# if (segundo_elemento_columna < 0 || segundo_elemento_columna >= ncol) {
# std::cout << "\nError: dimension incorrecta. Numero de columna "
# "incorrecto.\n";
# continue;
# }
# segundo_elemento_columna >= ncol 
    bge $s6, $s1, if4_case2

# primer_elemento_fila < 0
    bgez $s6, fin_if4_case2 # Si el número es >= 0, no entramos en el if y continamos el programa
    
if4_case2:
# std::cout << "\nError: dimension incorrecta. Numero de columna "
# "incorrecto.\n";
    li $v0, 4
    la $a0, error_ncols
    syscall

# continue;
    b do_while
fin_if4_case2:
# int aux{mat[primer_elemento_fila * ncol + primer_elemento_columna]}; -> Esto lo haremos en varios pasos:
# 1. Cargamos la dirección de memoria del primer elemento en un registro 
# y cargamos en un registro temporal un 4 para poder realizar los desplazamientos
    la $t0, mat # Primer elemento matriz

# 2. Calcular: primer_elemento_fila * ncol
    mul $t3, $s3, $s1 # $t3 = $s3(primer_elemento_fila) * $s1(ncol)
# 3. Sumarle a $t3(primer_elemento_fila * ncol) $s4(primer_elemento_columna)
    add $t3, $t3, $s4 # $t3 += primer_elemento_columna

# 4. Multiplicar $t3 por 4 para obtener el elemento más tarde
    mul $t3, $t3, size # $t3(primer_elemento_fila * ncol + primer_elemento_columna) *= 4
# 5. Acceder a la posición de memoria por la posición calculada anteriormente
    add $t0, $t3, $t0 # Dirección = dirBase + i-1(f * ncol + c) * Desplazamiento(4)

# 6. Almacenamos el valor obtenido de la dirección de memoria y lo guardamos en aux
    lw $s7, 0($t0)

# mat[primer_elemento_fila * ncol + primer_elemento_columna] = mat[segundo_elemento_fila * ncol + segundo_elemento_columna];
# Tenemos calculado el elemento de la matriz de la posicion "primer_elemento_fila * ncol + primer_elemento_columna" en $s7
# Solamente tenemos que igualarla a la otra posicion de memoria que queremos intercambiar. Por lo que, procedemos a obtener la dirección de memoria deseada

# 1. Cargamos la dirección de memoria del primer elemento en un registro 
# y cargamos en un registro temporal un 4 para poder realizar los desplazamientos
    la $t5, mat # Primer elemento matriz

# 2. Calcular: segundo_elemento_fila * ncol
    mul $t4, $s5, $s1 # $t4 = $s5(segundo_elemento_fila) * $s1(ncol)

# 3. Sumar al resultado de la operación segundo_elemento_columna($s6)
    add $t4, $t4, $s6 # $t4(segundo_elemento_fila * ncol) + segundo_elemento_columna

# 4. Multiplicar $t4 por 4(size) para obtener el elemento más tarde
    mul $t4, $t4, size

# 5. Acceder a la posición de memoria por la posición calculada anteriormente
    add $t5, $t4, $t5

# 6. Cambiamos el valor de la posición de memoria de $t0 por el de $t5 y el de $t5 por el de aux($s7)
    lw $t6, 0($t5)   # cargar el contenido de la memoria en dirección 0 de $t5 en $t6
    sw $t6, 0($t0)   # (i,j)mat[primer_elemento_fila * ncol + primer_elemento_columna] =
                     # mat[segundo_elemento_fila * ncol + segundo_elemento_columna];

    sw $s7, 0($t5)   # (r,s)mat[segundo_elemento_fila * ncol + segundo_elemento_columna] = aux

# break;
    b do_while # Continuamos con el bucle
fin_case2:
################

################
case_3:
####################
# Variables case 3:
# =TEMPORALES=
# $t0 -> i
# $t1 -> j
# $t2 -> usado para obtener la primera dirección de memoria de mat
# =SALVADOS=
# $s3 -> suma  
####################  

# suma{0}
    li $s3, 0

# if (nfil == 1) {
#   for (int j{0}; j < ncol; ++j) {
#   suma += mat[j];
# }

# Comprobamos las dos condiciones inversas a nfil == 1, que serían > y < para ver si entramos o no en el if
    li  $t0, 1
    bgt $s0, $t0, fin_if_case3 # Si $s0(nfil) > 1 -> nfil != 1
    blt $s0, $t0, fin_if_case3 # Si $s0(nfil) < 1 -> nfil != 1
# Una vez llegados a este punto podemos decir que nfil == 1
    la  $t2, mat # Primer elemento matriz

if_case3:
# int j{0}
    li $t1, 1
for_if_case3:
    bgt  $t1, $s1, fin_else_case3     # Si $t1(j) es mayor que ncol($s1), salimos del for y mostramos la suma
    lw   $t3, 0($t2)

# $s3(suma) += $t2(mat[j])    
    add  $s3, $s3, $t3                
    addi $t2, 4                       # Vamos iterando entre los elementos de la primera fila de la matriz
    
# ++j    
    addi $t1, 1                      
    b for_if_case3 # Continuamos iterando en el for
fin_for_if_case3:

fin_if_case3:

# } else if (ncol == 1) {
#    for (int i{(nfil - 1)}; i >= 0; --i) {
#    suma += mat[i * ncol + 0];
#    }
# }
    li  $t3, 1
    bgt $s1, $t3, fin_else_if_case3 # Si $s1(ncol) > 1 -> ncol != 1
    blt $s1, $t3, fin_else_if_case3 # Si $s1(ncol) < 1 -> ncol != 1
# Llegados a este punto, podemos decir que ncol == 1
# int i{(nfil - 1)};
    sub $t0, $s0, $t3 # $t0(i) = $s0(nfil) - $t3(1)

else_if_case3:

for_else_if_case3:
    bltz $t0, fin_else_case3 # si $t0(i) < 0, salimos del for y mostramos la suma
    la  $t2, mat # Cargamos el primer elemento de la matriz
# Hallamos el valor de mat[i * ncol + 0];
# 1. Calculamos i * ncol
    mul $t4, $t0, $s1 # $t4 = $t0(i) * $s1(ncol)

# 2. Multiplicamos por 4 el resultado
    mul $t4, $t4, size # $t4(i * ncol) * 4(size)

# 3. Accedemos a la posición de memoria i * ncol
    add $t2, $t4, $t2 

# Sumar el valor de la posición de memoria obtenido en $t1 a la variable suma($s3)

# suma += mat[i * ncol + 0];
    lw  $t5, 0($t2)     
    add $s3, $s3, $t5

# --i      
    sub $t0, $t0, $t3 
    b for_else_if_case3 # Continuamos con el for
fin_for_else_if_case3:

fin_else_if_case3:

# // Sumamos elementos primera fila:
# for (int j{0}; j < ncol; ++j) {
# suma += mat[j];
# }

else_case3:
# int j{0}
    li $t1, 0
    la  $t2, mat # Primer elemento matriz
for_sumar_elementos_primerafila:
    bge  $t1, $s1, fin_for_sumar_elementos_primerafila # Si $t1(j) es mayor que ncol($s1), salimos del for
    lw   $t3, 0($t2)
    add  $s3, $s3, $t3                # $s3(suma) += $t2(mat[j])
    addi $t2, 4                       # Vamos iterando entre los elementos de la primera fila de la matriz
    addi $t1, 1                       # ++j
    b for_sumar_elementos_primerafila # Continuamos iterando en el for
fin_for_sumar_elementos_primerafila:

# // Sumamos los elementos de la columna de la derecha de la matriz
# for (int i{1}; i < nfil; ++i) {
# suma += mat[i * ncol + (ncol - 1)];
# }
    
 
# int i{1}
    li $t0, 1 

# Guardamos en un registro (ncol - 1), para usarlo más tarde    
    sub $t3, $s1, $t0 # $t3 = ncol -1 (utilizamos $t0(i) que contiene un 1 para restarlo con $s1(ncol)

for_sumar_elementos_columna_derecha:
    bge $t0, $s0, fin_for_sumar_elementos_columna_derecha
    la $t2, mat # Cargamos el primer elemento de la matriz
# Primero calculamos mat[i * ncol + (ncol - 1)];
# 1. Calculamos i * ncol:
    mul $t4, $t0, $s1 # $t4 = $t0(i) * $s1(ncol)

# 2. Le sumamos $t3(ncol - 1), calculado anteriormente
    add $t4, $t4, $t3 # $t4 += $t3(ncol - 1)

# 3. Multiplicamos el resultado por 4
    mul $t4, $t4, size

# 4.  Acceder a la posición de memoria [i * ncol + (ncol - 1)]:
    add $t2, $t4, $t2 

# Sumamos mat[i * ncol + (ncol - 1)] con suma 
    lw  $t5, 0($t2)

# suma += mat[i * ncol + (ncol - 1)];    
    add $s3, $s3, $t5 

# ++i
    addi $t0, $t0, 1
    b for_sumar_elementos_columna_derecha
fin_for_sumar_elementos_columna_derecha:

# // Sumamos los elementos de la fila de abajo
# for (int j{(ncol - 2)}; j >= 0; --j) {
# suma += mat[(nfil - 1) * ncol + j];
# }

# int j{(ncol - 2)}
    li  $t2, 2
    sub $t1, $s1, $t2 # $t1(j) = $s1(ncol) - $t2(2)s
    li  $t2, 1        # Cargamos $t2 con un 1 para hacer la operación --j
for_sumar_elementos_fila_abajo:
    bltz $t1, fin_for_sumar_elementos_fila_abajo # Si $t1(j) < 0 salimos del for
    la  $t0, mat      # Cargamos el primer elemento de la matriz
# Calculamos mat[(nfil - 1) * ncol + j]
# 1. Calculamos nfil -1
    sub $t3, $s0, $t2 # $t3 = $s0(nfil) - $t2(1)

# 2. Calculamos (nfil - 1) * ncol
    mul $t3, $t3, $s1 # $t3(nfil - 1) *= ncol

# 3. Le sumamos la j al resultado
    add $t3, $t3, $t1

# 4. Multiplicamos el resultado por 4
    mul $t3, $t3, size # $t3((nfil - 1) * ncol + j) * 4(size)

# 5. Acceder a la posición de memoria [(nfil - 1) * ncol + j]:
    add $t0, $t3, $t0

# Sumar el valor de la posición de memoria obtenido en $t0 a la variable suma($s3)
    lw  $t4, 0($t0)

# suma += mat[(nfil - 1) * ncol + j];
    add $s3, $s3, $t4

# --j
    sub $t1, $t1, $t2 
    b for_sumar_elementos_fila_abajo # Continuamos con el for 
fin_for_sumar_elementos_fila_abajo:

# // Sumamos los elementos de la columna de la izquierda
# for (int i{(nfil - 2)}; i >= 1; --i) {
# suma += mat[i * ncol + 0];
# }

# int i{(nfil - 2)}
    
    li  $t2, 2
    sub $t0, $s0, $t2 # $t0(i) = $s0(nfil) - $t2(2) 
    li  $t2, 1        # Cargamos $t2 con un 1 para hacer la operación --i
for_sumar_elementos_columna_izquierda:
    beqz $t0, fin_for_sumar_elementos_columna_izquierda # si $t0(i) = 0, salimos del for
    la  $t1, mat      # Cargamos el primer elemento de la matriz
# Hallamos el valor de mat[i * ncol + 0];
# 1. Calculamos i * ncol
    mul $t3, $t0, $s1 # $t3 = $t0(i) * $s1(ncol)

# 2. Multiplicamos por 4 el resultado
    mul $t3, $t3, size # $t3(i * ncol) * 4(size)

# 3. Accedemos a la posición de memoria i * ncol
    add $t1, $t3, $t1 

# Sumar el valor de la posición de memoria obtenido en $t1 a la variable suma($s3)

# suma += mat[i * ncol + 0];
    lw  $t4, 0($t1)     
    add $s3, $s3, $t4

# --i      
    sub $t0, $t0, $t2 
    b for_sumar_elementos_columna_izquierda # Continuamos con el for
fin_for_sumar_elementos_columna_izquierda:

fin_else_case3:
# std::cout << "\n\nSuma de los elementos del perímetro: " << suma
# << "\n";
    li $v0, 4
    la $a0, msg_suma
    syscall

# << suma 
    li $v0, 1
    move $a0, $s3
    syscall

# << "\n"
    li $v0, 4
    la $a0, newline
    syscall

    b do_while
fin_case3:
################

################
case_4:
####################
# Variables case 4:
# =TEMPORALES=

# =SALVADOS=
# $s3 -> min
# $s4 -> max 
####################  
#int minimo{999}, maximo{0};
# for (int i{0}; i < ncol; ++i) {
#    if (nfil == 1) {
#      minimo = mat[0];
#      maximo = mat[0];
#      break;
#    }
#   if (minimo > mat[i * ncol + i]) minimo = mat[i * ncol + i];
#   if (maximo < mat[i * ncol + i]) maximo = mat[i * ncol + i];
# }

# int minimo{999}, maximo{0};
    li $s3, 999
    li $s4, 0

# int i{0}
    li $t0, 0
for_case4:
    bge $t0, $s1, fin_for_case4 # Si $t0(i) >= $s1(ncol), salimos del for
#    if (nfil == 1) {
#      minimo = mat[0];
#      maximo = mat[0];
#      break;
#    }
    li  $t4, 1 # Variable temporal que usamos para hacer las comparaciones siguientes
# Comprobamos las dos condiciones inversas a nfil == 1, y si ninguna se cumple no entramos en el if    
    blt $s0, $t4, fin_if_case4
    bgt $s0, $t4, fin_if_case4
# nfil == 1
if_case4:
    la $t2, mat # Cargamos el primer elemento de la matriz
    lw $t4, 0($t2)

# minimo = mat[0];
    move $s3, $t4 # $s3(min) = $t4(mat[0])

# maximo = mat[0];
    move $s4, $t4 # $s4(max) = $t4(mat[0])

# break;    
    b fin_for_case4 # Salimos del bucle 
fin_if_case4:

# Calculamos mat[i * ncol + i]
    la $t2, mat # Cargamos el primer elemento de la matriz
# 1. Calculamos i * ncol
    mul $t1, $t0, $s1 # $t1 = $t0(i) * $s1(ncol)

# 2. Le sumamos i
    add $t1, $t1, $t0 # $t1(i * ncol) += $t0(i)

# 3. Multiplicamos por 4 el resultado
    mul $t1, $t1, size # $t1(i * ncol + i) *= 4

# 4. Accedemos a la dirección de memoria i * ncol + i
    add $t2, $t1, $t2

# 5. Almacenamos el valor mat[i * ncol + i] en una variable auxiliar para poder comparar
    lw $t3, 0($t2) 

# if (minimo > mat[i * ncol + i]) minimo = mat[i * ncol + i];
    ble $s3, $t3, fin_if_minimo_case4 # Si $s3(min) <= $t3(mat[i * ncol + i]), no entramos en el if
    if_minimo_case4:
# minimo = mat[i * ncol + i];
        move $s3, $t3
    fin_if_minimo_case4:

# if (maximo < mat[i * ncol + i]) maximo = mat[i * ncol + i];
    bge $s4, $t3, fin_if_maximo_case4 # Si $s4(max) >= $t3(mat[i * ncol + i]), no entramos en el if    
    if_maximo_case4:
# maximo = mat[i * ncol + i];
        move $s4, $t3
    fin_if_maximo_case4:

# ++i
    addi $t0, $t0, 1 
    b    for_case4 # Continuamos con el for
fin_for_case4:

# std::cout << "\nEl máximo de la diagonal principal es " << maximo
#           << " y el mínimo " << minimo << "\n";

# std::cout << "\nEl máximo de la diagonal principal es "
    li $v0, 4
    la $a0, msg_max
    syscall

# << maximo
    li   $v0, 1
    move $a0, $s4
    syscall

# << " y el mínimo "
    li $v0, 4
    la $a0, msg_min
    syscall

# << minimo
    li   $v0, 1
    move $a0, $s3
    syscall

# break;
    b do_while # Continuamos con el bucle
fin_case4:
################
default:
# std::cout << "\nError: opcion incorrecta.\n";   
    li $v0, 4
    la $a0, error_op
    syscall
# break;
    b menu # Continuamos con el bucle, mostrando directamente el menu
switch_fin:

do_while_fin:

fin_programa:
# std::cout << "\nFin del programa.\n";
    li $v0, 4
    la $a0, msg_fin
    syscall

# return 0;
    li $v0, 10
    syscall
