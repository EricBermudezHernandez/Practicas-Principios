# Autor: Eric Bermúdez Hernández
# Fecha ultima modificacion: 21/04/2023

#include <iomanip>
#include <iostream>
#include <vector>

#float v1[] = {10.00000000, 11.00000000, 12.00000000, 13.00000000, 14.00000000,
#              15.00000000, 16.00000000, 17.00000000, 18.00000000, 19.00000000,
#              20.00000000, 21.00000000, 22.00000000, 23.00000000, 24.00000000,
#              25.00000000, 26.00000000, 27.00000000, 28.00000000, 29.00000000,
#              30.00000000, 31.00000000, 32.00000000, 33.00000000, 34.00000000,
#              35.00000000, 36.00000000, 37.00000000, 38.00000000, 39.00000000,
#              40.00000000, 41.00000000, 42.00000000, 43.00000000, 44.00000000,
#              45.00000000, 46.00000000, 47.00000000, 48.00000000, 49.00000000,
#              50.00000000};

#float v2[] = {40.00000000, 39.00000000, 38.00000000, 37.00000000, 36.00000000,
#              35.00000000, 34.00000000, 33.00000000, 32.00000000, 31.00000000,
#              30.00000000, 29.00000000, 28.00000000, 27.00000000, 26.00000000,
#              25.00000000, 24.00000000, 23.00000000, 22.00000000, 21.00000000,
#              20.00000000, 19.00000000, 18.00000000, 17.00000000, 16.00000000,
#              15.00000000, 14.00000000, 13.00000000, 12.00000000, 11.00000000,
#              10.00000000, 9.00000000,  8.00000000,  7.00000000,  6.00000000,
#              5.00000000,  4.00000000,  3.00000000,  2.00000000,  1.00000000};

#void print_vec(float* direccion_base_vec, int size, char* espacio) {
#  for (int i{0}; i < size; i++) {
#    std::cout << std::fixed << std::setprecision(8) << *direccion_base_vec++
#              << *espacio;
#  }
#}

#// Ver la manera de como se puede identificar que vector es
#void change_elto(float* direccion_base_vec, int indice, float valor) {
#  for (int i{0}; i <= indice; ++i) {
#    if (i == indice) {
#      *direccion_base_vec = valor;
#    }
#    direccion_base_vec++;
#  }
#}

#void swap(float* direccion_base_vec, int indice_primer_elemento,
#          int indice_segundo_elemento) {
#  float aux = *(direccion_base_vec + indice_primer_elemento);
#  *(direccion_base_vec + indice_primer_elemento) =
#      *(direccion_base_vec + indice_segundo_elemento);
#  *(direccion_base_vec + indice_segundo_elemento) = aux;
#}

#void mirror(float* direccion_base_vec, int size) {
#  if (size > 1) {
#    swap(direccion_base_vec, 0, (size - 1));
#    mirror(++direccion_base_vec, (size - 2));
#  } else {
#    return;
#  }
#}

#float mult_add(float numero1, float numero2, float numero3) {
#  return ((numero1 * numero2) + numero3);
#}

#float prod_esc(float* direccion_base_vec1, float* direccion_base_vec2,
#               int size) {
#  float resultado{0.0};
#  for (int i{0}; i < size; ++i) {
#    resultado = mult_add(*(direccion_base_vec1 + i), *(direccion_base_vec2 + i),
#                         resultado);
#  }
#  return resultado;
#}

#int main() {
#  char espacio[] = {' '};
#  int aux_n1, aux_n2, n1{40}, n2{40}, opcion, opcion_vector, valor, indice;
#  std::cout << "\nPractica 4 de Principios de Computadores. Subrutinas.\n";
#  do {
#    std::cout << "\nVector con dimension " << n1 << std::endl;
#    print_vec(v1, n1, espacio);
#    std::cout << std::endl;
#    std::cout << "\nVector con dimension " << n2 << std::endl;
#    print_vec(v2, n2, espacio);
#    std::cout << std::endl;
#    std::cout
#        << "\n(1) Cambiar dimension de un vector\n(2) Cambiar un elemento "
#           "de un vector\n"
#           "(3) Invertir un vector\n(4) Calcular el producto escalar de "
#           "dos vectores\n"
#           "(0) Salir\n\nElija opcion: ";
#    std::cin >> opcion;
#    switch (opcion) {
#      case 0:  // Salir
#        break;

#      case 1:  // Cambiar dimensión
#        std::cout << "\nElija vector para realizar la operacion (1) para v1 "
#                     "(2) para v2: ";
#        std::cin >> opcion_vector;
#        if (opcion_vector == 1) {
#          std::cout << "\nIntroduzca nueva dimension para el vector (1-40): ";
#          std::cin >> aux_n1;
#          if (aux_n1 < 0 || aux_n1 > 40) {
#            std::cout << "\nError: Dimension incorrecta.\n";
#          } else {
#            n1 = aux_n1;
#          }
#        } else if (opcion_vector == 2) {
#          std::cout << "\nIntroduzca nueva dimension para el vector (1-40): ";
#          std::cin >> aux_n2;
#          if (aux_n2 < 0 || aux_n2 > 40) {
#            std::cout << "\nError: Dimension incorrecta.\n";
#          } else {
#            n2 = aux_n2;
#          }
#        } else {
#          std::cout << "\nError: opcion incorrecta.\n";
#        }
#        break;

#      case 2:  // Cambiar un elemento
#        std::cout << "\nElija vector para realizar la operacion (1) para v1 "
#                     "(2) para v2: ";
#        std::cin >> opcion_vector;
#        if (opcion_vector == 1) {
#          std::cout << "\nElija el indice del elemento a cambiar: ";
#          std::cin >> indice;
#          if (indice < 0 || indice >= n1) {
#            std::cout << "\nError: Indice incorrecto.\n";
#          } else {
#            std::cout << "\nIntroduce nuevo valor para el elemento elegido: ";
#            std::cin >> valor;
#            change_elto(v1, indice, valor);
#          }
#        } else if (opcion_vector == 2) {
#          std::cout << "\nElija el indice del elemento a cambiar: ";
#          std::cin >> indice;
#          if (indice < 0 || indice >= n2) {
#            std::cout << "\nError: Indice incorrecto.\n";
#          } else {
#            std::cout << "\nIntroduce nuevo valor para el elemento elegido: ";
#            std::cin >> valor;
#            change_elto(v2, indice, valor);
#          }
#        } else {
#          std::cout << "\nError: opcion incorrecta.\n";
#        }
#        break;

#      case 3:  // Invertir un vector
#        std::cout << "\nElija vector para realizar la operacion (1) para v1 "
#                     "(2) para v2: ";
#        std::cin >> opcion_vector;
#        if (opcion_vector == 1) {
#          mirror(v1, n1);
#        } else if (opcion_vector == 2) {
#          mirror(v2, n2);
#        } else {
#          std::cout << "\nError: opcion incorrecta.\n";
#        }
#        break;

#      case 4:  // Calcular producto escalar
#        std::cout << "\nEl producto escalar de los vectores es: "
#                  << prod_esc(v1, v2, n1) << std::endl;
#        break;
#      default:
#        std::cout << "\nError: opcion incorrecta.\n";
#        break;
#    }
#  } while (opcion != 0);
#  std::cout << "\nFIN DEL PROGRAMA." << std::endl;
#  return 0;
#}


size = 4     # bytes que ocupa cada elemento
maxdim = 40  # dimension maxima que puede tener un vector
    .data
v1:         .space 160
v2:         .space 160 
n1:         .word 0 # numero eltos vector 1. Inicialmente suponemos vacios
n2:         .word 0 # numero eltos vector 2. Inicialmente suponemos vacios
space:      .asciiz " "
newline:    .asciiz "\n"
title:      .asciiz "\nPractica 4 de Principios de Computadores. Subrutinas.\n"
menu:       .ascii  "\n(1) Cambiar dimension de un vector\n(2) Cambiar un elemento de un vector\n"
            .ascii  "(3) Invertir un vector\n(4) Calcular el producto escalar de dos vectores\n"
            .asciiz "(0) Salir\n\nElija opcion: ";
cabvec:     .asciiz "\nVector con dimension "
error_op:   .asciiz "\nError: opcion incorrecta.\n"
elige_vec:  .asciiz "\nElija vector para realizar la operacion (1) para v1 (2) para v2: "
elige_elto: .asciiz "\nElija el indice del elemento a cambiar: "
newval:     .asciiz "\nIntroduce nuevo valor para el elemento elegido: "
newdim:     .asciiz "\nIntroduzca nueva dimension para el vector (1-40): "
error_dim:  .asciiz "\nError: Dimension incorrecta.\n"
error_ind:  .asciiz "\nError: Indice incorrecto.\n"
error_d_dim:    .asciiz "\nError: Los vectores tienen distinta dimension.\n"
msg_prodesc:    .asciiz "\nEl producto escalar de los vectores es: "
msg_fin:    .asciiz "\nFIN DEL PROGRAMA."


    .text
#void print_vec(float* direccion_base_vec, int size, char* espacio) {
#  for (int i{0}; i < size; i++) {
#    std::cout << std::fixed << std::setprecision(8) << *direccion_base_vec++
#              << *espacio;
#  }
#}

# ========
# Variables print_vec:
# == Parámetros ==
# $a0 -> espacio
# $a1 -> size
# $a2 -> v1
# == Temporales ==
# $t0 -> i 
# $t1 -> dirección base v1
# $t2 -> size
# $t3 -> espacio
# ========
print_vec:
# Cargamos los parámetros en los registros adecuados
    move $t2, $a1       # size
    lw   $t1, 0($a2)    # dirección_base_vec
    
# for (int i{0}; i < size; i++)
    li  $t0, 0
for_prin_vec:
    beq $t0, $t2, fin_for_prin_vec # Si $t0(i) = $a1(size), salimos de el for
# std::cout << std::fixed << std::setprecision(8) << *direccion_base_vec++
# << *espacio;  
    li       $v0, 2
    mtc1     $t1, $f12   # Movemos el valor del registro $t1 al registro $f0
    syscall
    addi     $t1, 4 # Incrementamos la posición de el vector

# << *espacio;
    #move $a0, $t3
    li   $v0, 4
    syscall

# i++
    addi $t0, 1

    b for_prin_vec # Continuamos el bucle
fin_for_prin_vec:

    jr $ra # Salimos de la función
print_vec_fin:

############################################

#// Ver la manera de como se puede identificar que vector es
#void change_elto(float* direccion_base_vec, int indice, float valor) {
#  for (int i{0}; i <= indice; ++i) {
#    if (i == indice) {
#      *direccion_base_vec = valor;
#    }
#    direccion_base_vec++;
#  }
#}

change_elto:

change_elto_fin:

############################################

#void swap(float* direccion_base_vec, int indice_primer_elemento,
#          int indice_segundo_elemento) {
#  float aux = *(direccion_base_vec + indice_primer_elemento);
#  *(direccion_base_vec + indice_primer_elemento) =
#      *(direccion_base_vec + indice_segundo_elemento);
#  *(direccion_base_vec + indice_segundo_elemento) = aux;
#}

swap:

swap_fin:

############################################

#void mirror(float* direccion_base_vec, int size) {
#  if (size > 1) {
#    swap(direccion_base_vec, 0, (size - 1));
#    mirror(++direccion_base_vec, (size - 2));
#  } else {
#    return;
#  }
#}

mirror:

mirror_fin:

############################################

#float mult_add(float numero1, float numero2, float numero3) {
#  return ((numero1 * numero2) + numero3);
#}

mult_add:

mult_add_fin:

############################################

#float prod_esc(float* direccion_base_vec1, float* direccion_base_vec2,
#               int size) {
#  float resultado{0.0};
#  for (int i{0}; i < size; ++i) {
#    resultado = mult_add(*(direccion_base_vec1 + i), *(direccion_base_vec2 + i),
#                         resultado);
#  }
#  return resultado;
#}

prod_esc:

prod_esc_fin:

############################################

main:
# ========
# Uso de variables:
# Salvadas:
# $s0 -> n1(tamaño v1)
# $s1 -> n2(tamaño v2)
# $s2 -> opcion
# Temporales:
# $t0 -> i
# $t1 -> dirección v1
# ========
# Antes de nada cargamos el valor de el número máximo de elementos(40), 
# almacenado en maxdim en los registros $s0, $s1
    li   $s0, 40
    li   $s1, 40

# Cargamos los valores de v1 y v2, con un for cada uno

# for (int i{0}; i < 40; ++i)
# int i{0}
    li $t0, 0

# Almacenamos la dirección del vector en $t1
    la $t1, v1

# Cargamos flotantes, uno que sirve como incrementador y otro que vamos a ir incrementando y metiendolo en el v1
    li.s $f4, 10.00000000
    li.s $f5, 01.00000000
for_cargar_valores_v1:
    
    beq   $t0, $s0, fin_for_cargar_valores_v1 # Si $t0(i) = $s0(size v1 -> 40), sale del bucle
    swc1  $f4, 0($t1)                         # Guardamos el valor de $f4 en el vector v1
    addi  $t1, 4                              # Incrementamos posición en v1
    add.s $f4, $f4, $f5                       # Incrementamos en 1.00000000 el valor para introducirlo en v1

# ++i
    addi $t0, 1
    b for_cargar_valores_v1

fin_for_cargar_valores_v1:

# for (int j{0}; j < 40; ++j)
# int j{0}
    li $t0, 0

# Almacenamos la dirección del vector en $t1
    la $t1, v2

# Cargamos flotantes, uno que sirve como incrementador y otro que vamos a ir incrementando y metiendolo en el v1
    li.s $f4, 40.00000000
    li.s $f5, 01.00000000     
for_cargar_valores_v2:

    beq   $t0, $s1, fin_for_cargar_valores_v2 # Si $t0(j) = $s1(size v2 -> 40) salimos de el for
    swc1  $f4, 0($t1)                         # Guardamos el valor almacenado en $f4 en el v2
    addi  $t1, 4                              # Incrementamos la posición en v2
    sub.s $f4, $f4, $f5

# ++j
    addi $t0, 1
    b for_cargar_valores_v2 # Seguimos con el bucle
fin_for_cargar_valores_v2:

# std::cout << "\nPractica 4 de Principios de Computadores. Subrutinas.\n";
    li $v0, 4
    la $a0, title
    syscall

#  do {
do_while:
# std::cout << "\nVector con dimension " << n1 << std::endl;
    li $v0, 4
    la $a0, cabvec
    syscall

# << n1($s0)
    li $v0, 1
    move $a0, $s0
    syscall

# << std::endl;
    li $v0, 4
    la $a0, newline
    syscall

# print_vec(v1, n1, espacio);
# Cargamos los parámetros de la función
    la   $a0, space # Cargamos el espacio para enviarlo a la función
    move $a1, $s0   # $a1 = $s0(n1)
    la   $a2, v1    # Cargamos la dirección de memoria de v1 en $a0
    jal  print_vec  # Llamamos a la función print_vec

# std::cout << std::endl;
    li $v0, 4
    la $a0, newline
    syscall

# std::cout << "\nVector con dimension " << n2 << std::endl;
    li $v0, 4
    la $a0, cabvec
    syscall

# << n2($s1) 
    li   $v0, 1
    move $a0, $s1
    syscall

# << std::endl;
    li $v0, 4
    la $a0, newline
    syscall
# print_vec(v2, n2, espacio);
# Cargamos los parámetros de la función
    la   $a0, space # Cargamos el espacio para enviarlo a la función
    move $a1, $s0   # $a1 = $s0(n1)
    la   $a2, v2    # Cargamos la dirección de memoria de v2 en $a0
    jal  print_vec  # Llamamos a la función print_vec

# std::cout << std::endl;
    li $v0, 4
    la $a0, newline
    syscall

# std::cout
# << "\n(1) Cambiar dimension de un vector\n(2) Cambiar un elemento "
# "de un vector\n"
# "(3) Invertir un vector\n(4) Calcular el producto escalar de "
# "dos vectores\n"
# "(0) Salir\n\nElija opcion: ";
    li $v0, 4
    la $a0, menu
    syscall

# std::cin >> opcion;
    li   $v0, 5
    syscall
    move $s2, $v0

switch:

###########
case_0:
    b do_while_fin # Salimos de el do-while y termina el programa
    
fin_case0:

###########
case_1:

fin_case1:
###########
case_2:

fin_case2:
###########
case_3:

fin_case3:
###########
case_4:

fin_case4:
###########

swap_fin:

do_while_fin:
# Fin de el programa

fin_programa:
# std::cout << "\nFIN DEL PROGRAMA." << std::endl;
    li $v0, 4
    la $a0, msg_fin
    syscall
# return 0;
    li $v0, 10
    syscall