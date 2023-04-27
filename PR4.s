# Autor: Eric Bermúdez Hernández
# Fecha ultima modificacion: 21/04/2023

#include <iomanip>
#include <iostream>
#include <vector>

#void print_vec(float* direccion_base_vec, int size, char* espacio) {
#  for (int i{0}; i < size; i++) {
#    std::cout << std::fixed << std::setprecision(8) << *direccion_base_vec++
#              << *espacio;
#  }
#}

#void change_elto(float* direccion_base_vec, int indice, float valor) {
#  *(direccion_base_vec + indice) = valor;
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
#  float v1[n1], v2[n2], valor_inicial{10.00000000}, incremento{1.00000000};
#  // Cargamos los valores de los dos vectores:
#  // v1:
#  for (int i{0}; i < n1; ++i) {
#    v1[i] = valor_inicial;
#    valor_inicial += incremento;
#  }
#  // v2:
#  valor_inicial = 40.00000000;
#  incremento = 1.00000000;
#  for (int i{0}; i < n1; ++i) {
#    v2[i] = valor_inicial;
#    valor_inicial -= incremento;
#  }
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
#          if (aux_n1 <= 0 || aux_n1 > 40) {
#            std::cout << "\nError: Dimension incorrecta.\n";
#          } else {
#            n1 = aux_n1;
#          }
#        } else if (opcion_vector == 2) {
#          std::cout << "\nIntroduzca nueva dimension para el vector (1-40): ";
#          std::cin >> aux_n2;
#          if (aux_n2 <= 0 || aux_n2 > 40) {
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
#        if (n1 != n2) {
#          std::cout << "\nError: Los vectores tienen distinta dimension.\n";
#        } else {
#          std::cout << "\nEl producto escalar de los vectores es: "
#                  << prod_esc(v1, v2, n1) << std::endl;
#        }
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

print_vec:
# ========
# Variables print_vec:
# == Parámetros ==
# $a0 -> v1 -> $20
# $a1 -> size -> $s1
# $a2 -> espacio
# == Salvados ==
# $f20 -> v1 
# $s1 -> size
# $s2 -> espacio
# ========

# Antes de nada cargamos en la pila para usar registros salvados en esta función
    addi $sp, $sp, -20
    s.s  $f20,0($sp)
    sw   $s1, 4($sp)
    sw   $s2, 8($sp)
    sw   $s3, 12($sp)
    sw   $s4, 16($sp)
    sw   $ra, 20($sp)

# Cargamos los parámetros en los registros adecuados
    l.s  $f20, 0($a0) # dirección_base_vec
    move $s1, $a1     # size
    move $s2, $a2     # espacio
    move $s4, $a0
    
# for (int i{0}; i < size; i++)
    li  $s3, 0
for_prin_vec:
    beq $s3, $s1, fin_for_prin_vec # Si $s3(i) = $s1(size), salimos de el for
# std::cout << std::fixed << std::setprecision(8) << *direccion_base_vec++
# << *espacio;  

    li       $v0, 2
    mov.s    $f12, $f20
    syscall 
    addi     $s4, 4          # Incrementamos la posición de el vector
    l.s      $f20, 0($s4)    # Cargamos el elemento correspondiente del vectr

# << *espacio;
    li   $v0, 4
    move $a0, $s2
    syscall

# i++
    addi $s3, 1

    b for_prin_vec # Continuamos el bucle
fin_for_prin_vec:
# Restauramos todos los valores de vuelta en la pila
    l.s  $f20,0($sp)
    lw   $s1, 4($sp)
    lw   $s2, 8($sp)
    lw   $s3, 12($sp)
    lw   $s4, 16($sp)
    lw   $ra, 20($sp)
    addi $sp, $sp, 20

    jr $ra # Salimos de la función
print_vec_fin:

############################################

#// Ver la manera de como se puede identificar que vector es
#void change_elto(float* direccion_base_vec, int indice, float valor) {
#  *(direccion_base_vec + indice) = valor;
#}

change_elto:
# ==========
# Variables change_elto:
# $a0 -> direccion_base_vec -> $t0
# $a1 -> indice -> $t1
# $f12 -> valor -> $f4
# ==========

#  *(direccion_base_vec + indice) = valor;

# Primero cargamos los parámetros en registros locales
    move   $t0, $a0    # Cargamos la dirección base del vector en otro registro
    move   $t1, $a1    # Cargamos el indice en un registro
    mov.s  $f4, $f12   # Cargamos el valor en un registro

# direccion_base_vec + indice

    mul   $t1, $t1, size
    add   $t1, $t1, $t0 # Obtenemos la posicion de el vector

# *(direccion_base_vec + indice) = valor;
    s.s $f4, 0($t1)

    jr $ra # Volvemos al main
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
#########
# Parámetros swap:
# $a0 -> dir_vec
# $a1 -> indice_primer elemento(0)
# $a2 -> indice_segundo elemento(size - 1)
#########    
# Usamos la pila para guardar $ra para no modificarlo
    addi $sp, $sp, -4
    sw   $ra, 0($sp)

# Pasamos los valores de los parámetros a registros 
# Cargamos dos veces el valor de $a0 por que vamos a necesitar modificar la dirección 2 veces
    move $t5, $a0 # $t5 = $a0(dir_vec)
    move $t4, $a0 # $t4 = $a0(dir_vec)
    move $t2, $a1 # $t2 = $a1(indice_primer elemento(0))
    move $t3, $a2 # $t3 = $a2(indice_segundo elemento(size - 1))

# 1. Calculamos (direccion_base_vec) + (indice_primer_elemento) y (direccion_base_vec) + (indice_segundo_elemento)
# Antes de sumar los indices a las dir. los multiplicamos por 4 para que el desplazamiento sea correcto
    mul $t2, $t2, size
    mul $t3, $t3, size

    add $t5, $t5, $t2 # $t5(dir_vec) += indice_primer_elemento
    add $t4, $t4, $t3 # $t4(dir_vec) += (indice_segundo elemento(size - 1))

# float aux = *(direccion_base_vec + indice_primer_elemento);
    l.s $f4, 0($t5)
    l.s $f5, 0($t4) # Segundo auxiliar adicional

# *(direccion_base_vec + indice_primer_elemento) = *(direccion_base_vec + indice_segundo_elemento);
    s.s $f5, 0($t5) 

# *(direccion_base_vec + indice_segundo_elemento) = aux;
    s.s $f4, 0($t4)

# Dejamos la pila como estaba
    lw   $ra, 0($sp)
    addi $sp, $sp, 4

    jr $ra # Volvemos de la función
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
#########
# == Parámetros mirror ==
# $a0 -> dir_vec
# $a1 -> size
#########
# Usamos la pila para guardar valores en registros salvados:
    addi $sp, $sp, -12
    sw   $s0, 0($sp)
    sw   $s1, 4($sp)
    sw   $ra, 8($sp)

# Cargamos los valores de los parámetros en los registros que guardamos en la pila
    move $s0, $a0 # Cargamos en $a0 la dirección de memoria de el vector
    move $s1, $a1 # Cargamos en $a1 el valor de el size

    li   $t0, 1              # Cargamos un registro temporal con valor 1 para hacer comparaciones
    bgt  $s1, $t0, if_mirror # Si $s1(size) > 1, entra en el if
    b fin_if_mirror          # Si no se cumple que size > 1 no entramos en el if
# if (size > 1) {
if_mirror:


# Calculamos (size - 1) para pasarselo como parámetro a swap
    move $t1, $s1      # Cargamos el valor de $s1, en $t1 para no modificar el valor original
    sub  $t1, $t1, $t0 # $t1(size) -= 1($t0)
# Cargamos parámetros función swap
    move $a0, $s0 # Cargamos en $a0 la dirección del vector que está en $s0
    li   $a1, 0   # $a1 = 0
    move $a2, $t1 # $a2 = (size - 1)
    jal swap # Llamamos a swap

# Llamamos a mirror:
# Calculamos ++direccion_base_vec
    addi $s0, 4 # Aumentamos una posicion

# Calculamos size - 2
    sub $t1, $t1, $t0 # $t1(size - 1) -= 1

# Cargamos los parámetros para mirror
    move $a0, $s0
    move $a1, $t1
    
    jal mirror # Llamamos a mirror

fin_if_mirror:

else_mirror:
# Volvemos a cargar la pila como estaba
    lw   $s0, 0($sp)
    lw   $s1, 4($sp)
    lw   $ra, 8($sp)    
    addi $sp, $sp, 12

# return;
    jr $ra

fin_else_mirror:

mirror_fin:

############################################

#float mult_add(float numero1, float numero2, float numero3) {
#  return ((numero1 * numero2) + numero3);
#}

mult_add:
##########
# == Parámetros mult_add ==
# $f12 -> numero1
# $f13 -> numero2
# $f14 -> numero3
##########

    mov.s $f4, $f12 # Cargamos en $f4 -> numero1
    mov.s  $f5, $f13 # Cargamos en $f5 -> numero2
    mov.s  $f6, $f14 # Cargamos en $f6 -> numero3

# Calculamos ((numero1 * numero2) + numero3)
# numero1 * numero2
    mul.s $f7, $f4, $f5 # $t3 = ($f4(numero1) * $f5(numero2))

# Le sumamos $f6(numero3)
    add.s $f7, $f7, $f6 # $f7(numero1 * numero2) += $f6(numero3)

#  return ((numero1 * numero2) + numero3);
    mov.s $f0, $f7
    jr   $ra # Salimos de la función
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
    s.s   $f4, 0($t1)                         # Guardamos el valor de $f4 en el vector v1
    addi  $t1, 4
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
    la   $a0, v1    # Cargamos la dirección de memoria de el vector
    move $a1, $s0   # Cargamos en $a1 el valor de $s0(n1)
    la   $a2, space # Cargamos en $a2 la dirección de memoria de space 
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
    la   $a0, v2 # Cargamos el espacio para enviarlo a la función
    move $a1, $s1   # $a1 = $s1(n2)
    la   $a2, space    # Cargamos la dirección de memoria de v2 en $a0
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

# Se ejecuta un case específico según lo que el usuario digite como opción:
# Comprobamos case 0:        
    beqz $s2, case_0 # Si $s2(opción) = 0, entramos en el case 0

# Comprobamos case 1:        
    li  $t0, 1           # Cargamos registro temporal con valor 1 para hacer comparación
    beq $s2, $t0, case_1 # Si $s2(opción) = 1, entramos en el case 1
    
# Comprobamos case 2:        
    li  $t0, 2           # Cargamos registro temporal con valor 1 para hacer comparación
    beq $s2, $t0, case_2 # Si $s2(opción) = 2, entramos en el case 2
# Comprobamos case 3:        
    li  $t0, 3           # Cargamos registro temporal con valor 1 para hacer comparación
    beq $s2, $t0, case_3 # Si $s2(opción) = 3, entramos en el case 3

# Comprobamos case 4:
    li  $t0, 4           # Cargamos registro temporal con valor 1 para hacer comparación
    beq $s2, $t0, case_4 # Si $s2(opción) = 3, entramos en el case 3

# Nos han introducido una opción incorrecta, vamos al default de el switch
    b default

switch:

###########
case_0:
    b do_while_fin # Salimos de el do-while y termina el programa
    
fin_case0:

###########
case_1:
# == Variables case 1 ==
# Salvadas:
# $s3 -> aux_n1
# $s4 -> aux_n2
# $s5 -> opcion_vector
# ======================

# std::cout << "\nElija vector para realizar la operacion (1) para v1 "
# "(2) para v2: ";
    li $v0, 4
    la $a0, elige_vec
    syscall

# std::cin >> opcion_vector;    
    li   $v0, 5
    syscall
    move $s5, $v0

# if (opcion_vector == 1) {
    li  $t1, 1 # Cargamos registro temporal con valor 1 para hacer la comparación

# Comprobamos si $s5(opcion_vector) != 1 viendo si $s5 > 1 y $s5 < 1     
    bgt $s5, $t1, fin_if_opcion_vector1
    blt $s5, $t1, fin_if_opcion_vector1
if_opcion_vector1:
# std::cout << "\nIntroduzca nueva dimension para el vector (1-40): ";
    li $v0, 4
    la $a0, newdim
    syscall
# std::cin >> aux_n1;    
    li   $v0, 5
    syscall
    move $s3, $v0

# if (aux_n1 <= 0 || aux_n1 > 40) {
    li   $t1, 40                       # Cargamos registro temporal para realizar comparaciones
    blez $s3, if_comprobar_aux_n1      # Si $s3(aux_n1) es <= 0 entra en el if
    bgt  $s3, $t1, if_comprobar_aux_n1 # Si $s3(aux_n1) es > $t1(40) entra en el if
    b fin_if_comprobar_aux_n1          # Llegados a este punto, podemos decir que aux_n1 no cumple las condiciones por lo que no entra en el if
if_comprobar_aux_n1:

# std::cout << "\nError: Dimension incorrecta.\n";
    li $v0, 4
    la $a0, error_dim
    syscall

    b fin_else_case1 # Saltamos al fin de el else para que no nos salte el mensaje de error
fin_if_comprobar_aux_n1:
# { else {
else_comprobar_aux_n1:

# n1($s0) = aux_n2($s3);
    move $s0, $s3

    b fin_else_case1 # Saltamos al fin de el else para que no nos salte el mensaje de error
fin_else_comprobar_aux_n1:

fin_if_opcion_vector1:

# else if (opcion_vector == 2) {
    li $t1, 2 # Cargamos un registro temporal con valor 2 para hacer comparaciones

# Comprobamos si $s5(opcion_vector) != 1 viendo si $s5 > 1 y $s5 < 1     
    bgt $s5, $t1, fin_else_if_opcion_vector2
    blt $s5, $t1, fin_else_if_opcion_vector2
else_if_opcion_vector2:

# std::cout << "\nIntroduzca nueva dimension para el vector (1-40): ";
    li $v0, 4
    la $a0, newdim
    syscall

# std::cin >> aux_n2;
    li   $v0, 5
    syscall
    move $s4, $v0

# if (aux_n2 <= 0 || aux_n2 > 40) {
    li   $t1, 40                       # Cargamos registro temporal para realizar comparaciones
    blez $s4, if_comprobar_aux_n2      # Si $s4 < 0 entramos en el if
    bgt  $s4, $t1, if_comprobar_aux_n2 # Si $s4(aux_n2) > $t1(40) entramos en el if
    b fin_if_comprobar_aux_n2          # Llegados a este punto, podemos decir que aux_n2 no cumple las condiciones por lo que no entra en el if
if_comprobar_aux_n2:

# std::cout << "\nError: Dimension incorrecta.\n";
    li $v0, 4
    la $a0, error_dim
    syscall

    b fin_else_case1 # Saltamos al fin de el else para que no nos salte el mensaje de error
fin_if_comprobar_aux_n2:

# } else {
else_comprobar_aux_n2:

# n2 = aux_n2;
    move $s1, $s4
    b fin_else_case1 # Saltamos al fin de el else para que no nos salte el mensaje de error
fin_else_comprobar_aux_n2:


fin_else_if_opcion_vector2:

else_case1:

# std::cout << "\nError: opcion incorrecta.\n";
    li $v0, 4
    la $a0, error_op
    syscall

fin_else_case1:

# break;
    b do_while # Continuamos con el bucle
fin_case1:

###########
case_2:
# ========
# == Variables case 2 ==
# Temporales:
# $t0 -> opcion_vector
# $t1 -> valor
# Salvadas:
# $s3 -> opcion_vector
# $s4 -> indice
# ======================

# std::cout << "\nElija vector para realizar la operacion (1) para v1 "
# "(2) para v2: ";
    li $v0, 4
    la $a0, elige_vec
    syscall

# std::cin >> opcion_vector;
    li   $v0, 5
    syscall
    move $t0, $v0

# Comprobamos según la opción que vector es el que modificamos 
    li  $t1, 1                            # Cargamos un 1 para comprobar si el usuario quiere modificar v1
    beq $t0, $t1, if_opcion_vector1_case2 # Si $t0(opcion_vector) = 1, el usuario quiere modificar v1, nos metemos en el if correspondiente
    li  $t1, 2                            # Cargamos un 2 para comprobar si el usuario quiere modificar v2
    beq $t0, $t1, else_if_case2           # Si $t0(opcion_vector) = 2, el usuario quiere modificar v2, entramos en el else if
    b else_case2                          # El usuario digitó una opción incorrecta, salimos de el bucle
# if (opcion_vector == 1) {
if_opcion_vector1_case2:
# std::cout << "\nElija el indice del elemento a cambiar: ";
    li $v0, 4
    la $a0, elige_elto
    syscall

# std::cin >> indice;    
    li   $v0, 5
    syscall
    move $s4, $v0

    bltz $s4, if2_opcion_vector1_case2
    bge  $s4, $s0, if2_opcion_vector1_case2
    b fin_if2_opcion_vector1_case2 # Ninguna de las dos opciones del if se cumplen
    
# if (indice < 0 || indice >= n1) {
if2_opcion_vector1_case2:

# std::cout << "\nError: Indice incorrecto.\n";
    li $v0, 4
    la $a0, error_ind
    syscall
    b do_while # Seguimos con el bucle
fin_if2_opcion_vector1_case2:

else_opcion_vector1_case2:

# std::cout << "\nIntroduce nuevo valor para el elemento elegido: ";
    li $v0, 4       
    la $a0, newval
    syscall

# std::cin >> valor;
    li    $v0, 6
    syscall
    mov.s $f4, $f0

# change_elto(v1, indice, valor);   

    la    $a0, v1     # Cargamos la dirección de memoria de v1 en $a0
    move  $a1, $s4    # $a1 = $s4(indice)
    mov.s $f12, $f4   # $f12 = $f4
    jal  change_elto  # Llamamos a la función change_elto
    b do_while        # Continuamos con el bucle
fin_else_opcion_vector1_case2:

# else if (opcion_vector == 2)
else_if_case2:
# std::cout << "\nElija el indice del elemento a cambiar: ";
    li $v0, 4
    la $a0, elige_elto
    syscall
# std::cin >> indice; 
    li $v0, 5
    syscall
    move $s4, $v0
# if (indice < 0 || indice >= n2) {
# Comprobamos si las dos condiciones se cumplen, y si ocurre entramos en el if

    bltz $s4, if_else_if_case2       # $s4(indice) < 0
    bge  $s4, $s1, if_else_if_case2  # $s4 >= $s1(n2)
    b fin_if_else_if_case2           # Llegados aquí, podemos decir que no se cumple ninguna de las dos condiciones, no entramos en el if
if_else_if_case2:
# std::cout << "\nError: Indice incorrecto.\n";
    li $v0, 4
    la $a0, error_ind
    syscall
    b do_while # Continuamos con el bucle
fin_if_else_if_case2:

# } else {
else_else_if_case2:
# std::cout << "\nIntroduce nuevo valor para el elemento elegido: ";    
    li $v0, 4
    la $a0, newval
    syscall

# std::cin >> valor;
    li    $v0, 6
    syscall
    mov.s $f4, $f0 
# change_elto(v2, indice, valor);
    la    $a0, v2     # Cargamos la dirección de memoria de v2 en $a0
    move  $a1, $s4    # $a1 = $s4(indice)
    mov.s $f12, $f4   # $f12 = $f4
    jal  change_elto  # Llamamos a la función change_elto
    b do_while        # Seguimos con el bucle
fin_else_else_if_case2:

fin_else_if_case2:

fin_if_opcion_vector1_case2:

else_case2:
# std::cout << "\nError: opcion incorrecta.\n";
    li $v0, 4
    la $a0, error_op
    syscall
    b do_while # Continua el bucle
fin_else_case2:

# break;
    b do_while # Continuamos con el bucle
fin_case2:
###########
case_3:
# std::cout << "\nElija vector para realizar la operacion (1) para v1 "
# "(2) para v2: ";
    li $v0, 4
    la $a0, elige_vec
    syscall
# std::cin >> opcion_vector;
    li   $v0, 5
    syscall
    move $t0, $v0

# Comprobamos según la opción que vector es el que modificamos 
    li  $t1, 1                            # Cargamos un 1 para comprobar si el usuario quiere modificar v1
    beq $t0, $t1, if_opcion_vector1_case3 # Si $t0(opcion_vector) = 1, el usuario quiere modificar v1, nos metemos en el if correspondiente
    li  $t1, 2                            # Cargamos un 2 para comprobar si el usuario quiere modificar v2
    beq $t0, $t1, else_if_case3           # Si $t0(opcion_vector) = 2, el usuario quiere modificar v2, entramos en el else if
    b else_case3                          # El usuario digitó una opción incorrecta, salimos de el bucle    
# if (opcion_vector == 1) {
if_opcion_vector1_case3:
# mirror(v1, n1);
    la   $a0, v1  # Cargamos la dirección de memoria de v1 en $a0
    move $a1, $s0 # Cargamos en $a1 el valor de $s0(n1)
    jal mirror    # Llamamos a la función mirror
    b do_while    # Continuamos con el bucle
fin_if_opcion_vector1_case3:


# } else if (opcion_vector == 2) {
else_if_case3:
# mirror(v2, n2);
    la   $a0, v2  # Cargamos la dirección de memoria de v2 en $a1
    move $a1, $s1 # Cargamos en $a1 el valor de $s1(n2)
    jal mirror    # Llamamos a la función
    b do_while    # Continuamos con el bucle
fin_else_if_case3:

# } else {
else_case3:
# std::cout << "\nError: opcion incorrecta.\n";
    li $v0, 4
    la $a0, error_op
    syscall

fin_else_case3:  
# break;
    b do_while # Continuamos con el bucle
fin_case3:
###########
case_4:

    bne $s0, $s1, if_case4 # Si $s0(n1) != $s1(n2)
    b fin_if_case4         # No cumple la condición, no entramos en el if 
# if (n1 != n2) 
if_case4:

# std::cout << "\nError: Los vectores tienen distinta dimension.\n";    
    li $v0, 4
    la $a0, error_d_dim
    syscall
fin_if_case4:

# } else {
else_case4:

# std::cout << "\nEl producto escalar de los vectores es: "
    li $v0, 4
    la $a0, msg_prodesc
    syscall

# << prod_esc(v1, v2, n1) << std::endl;
    la   $a0, v1  # Cargamos la dirección de memoria de v1 en $a0
    la   $a1, v2  # Cargamos la dirección de memoria de v2 en $a1
    move $a2, $s0 # Cargamos el valor de n1(size de los dos vectores) en $a2
    jal prod_esc  # Llamamos a la función prod_esc
fin_else_case4:        

# break;

    b do_while # Continuamos con el bucle
fin_case4:
###########

default:
# std::cout << "\nError: opcion incorrecta.\n";
    li $v0, 4
    la $a0, error_op
    syscall

# break;    
    b do_while # Continuamos con el bucle
fin_default:

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
