# Autor: Eric Bermúdez Hernández
# Correo electrónico: alu0101517476@ull.edu.es
# Fecha: 7/3/2023

##include<iostream>
##include<cmath>

#int main(void) {
#    double x,error,sen_x, termino,numerador,error_calculado,old_senx;
#    int n,denominador,signo; //iteraciones
#    std::cout << "\n\nAproximación a sen(x) (-1 <= x <= 1) con un error máximo, usando Taylor\n";
#    do {
#        do {
#        std::cout << "\n\nIntroduzca el valor de x (-1 <= x <= 1): ";
#        std::cin >> x;
#        } while ( (x < -1) || (x > 1));
#        do {
#            std::cout << "\nIntroduzca el error maximo permitido en la aproximación (0 < error < 1) (error <= 0 sale del programa): ";
#            std::cin >> error;
#        } while (error >= 1);
#        if (error <= 0) break;
#        n = 0; // iteraciones
#        numerador = x; // primer numerador del termino para n=0
#        denominador = 1; // primer denominador del termino para n=0
#        signo = 1;
#        sen_x = x; // primer termino
#        double xx = x*x; // el numerador siempre se multiplica por x^2 
#        do {
#            old_senx = sen_x;
#            n++; // incremento el termino
#            signo = -signo; // el signo se alterna
#            numerador *= xx; 
#            denominador = (2*n+1) * 2*n * denominador;
#            termino = signo * numerador / denominador; // ultimo termino
#            sen_x += termino;
#            error_calculado = fabs((sen_x - old_senx) / sen_x);
#        } while (error_calculado >= error);
#        std::cout << "\n\n\nsen(x) calculado: " << sen_x;
#        std::cout << "\nerror calculado: " << error_calculado;
#        std::cout << "\nnumero de iteraciones calculadas: " << n;
#    } while (true);
#    std::cout << "\nFin del programa\n";
#    return(0);
#}

    .data
titulo: .asciiz "\n\nAproximación a sen(x) (-1 <= x <= 1) con un error máximo, usando Taylor\n"
petx:   .asciiz "\n\nIntroduzca el valor de x (-1 <= x <= 1): "
pete:   .asciiz "\nIntroduzca el error maximo permitido en la aproximación (0 < error < 1) (error <= 0 sale del programa): "
cadsen: .asciiz "\n\n\nsen(x) calculado: "
caderr: .asciiz "\nerror calculado: "
cadite: .asciiz "\nnumero de iteraciones calculadas: "
cadfin: .asciiz "\nFin del programa\n"
chivato: .asciiz "\nSEN_X: \n"
    
    .text
#Variables de tipo double:
#Registros salvados:
# x -> $f20
# error -> $f22
# sen_x -> $f24
# xx -> $f26
# numerador -> $f28
# error_calculado -> $f30
#~~~~~~~~~~~~~~~~~~~~~~~~~~
#Registros temporales:
# old_senx -> $f4 
# termino -> $f8
#--------------------------
#Variables de tipo entero:
# n -> $s0
# denominador -> $s1
# signo -> $s2
# -signo -> $s3

main:
# std::cout << "\n\nAproximación a sen(x) (-1 <= x <= 1) con un error máximo, usando Taylor\n";
	li $v0, 4
	la $a0, titulo
	syscall

do_principal:

do_secundario1:
# do {
# std::cout << "\n\nIntroduzca el valor de x (-1 <= x <= 1): ";
# std::cin >> x;
# } while ( (x < -1) || (x > 1));

# std::cout << "\n\nIntroduzca el valor de x (-1 <= x <= 1): ";
	li $v0, 4
	la $a0, petx
	syscall
# std::cin >> x;
	li $v0, 7
	syscall
	mov.d $f20, $f0

# Declaro dos registros temporales para hacer las comparaciones del while:
# while ( (x < -1) || (x > 1));
	li.d $f0, -1.0
	li.d $f2, 1.0

# (x < -1)
	c.lt.d $f20, $f0
	bc1t do_secundario1 # Salta a do_secundario1 si el resultado de la comparación es verdadero

# (x > 1)
	c.le.d $f20, $f2
	bc1t do_secundario2 # Salta a do_secundario1 si el resultado de la comparación es verdadero
	b do_secundario1

do_secundario2:
# do {
# std::cout << "\nIntroduzca el error maximo permitido en la aproximación (0 < error < 1) (error <= 0 sale del programa): ";
# std::cin >> error;
# } while (error >= 1);

# std::cout << "\nIntroduzca el error maximo permitido en la aproximación (0 < error < 1) (error <= 0 sale del programa): ";
	li $v0, 4
	la $a0, pete
	syscall
# std::cin >> error;
	li $v0, 7
	syscall
	mov.d $f22, $f0
# condición while: while (error >= 1);
	c.lt.d $f22, $f2
	bc1t fin_do_secundario2 # Salta a do_secundario2 si se cumple la condición de salir al while
	b do_secundario2 # si no se cumple, se vuelve al principio del bucle

fin_do_secundario2:
# if (error <= 0) break;
# Si se cumple la condición saldrá del do-while principal y se irá al final de el programa
	li.d $f4, 0.0
	c.le.d $f22, $f4
	bc1t fin_programa # Si se cumple la condición de arriba, se termina el programa
	
# n = 0; // iteraciones
	li $s0, 0
# numerador = x; // primer numerador del termino para n=0
	mov.d $f28, $f20
# denominador = 1; // primer denominador del termino para n=0
	li $s1, 1
# signo = 1;
	li $s2, 1
# sen_x = x; // primer termino
	mov.d $f24, $f20

# double xx = x*x; // el numerador siempre se multiplica por x^2 
	mul.d $f26, $f20, $f20

do_secundario3:
# old_senx = sen_x;
	mov.d $f4, $f24
# n++; // incremento el termino
	addi $s0,$s0, 1
	move $s0, $s0
# signo = -signo; // el signo se alterna
	neg $s3, $s2
# numerador($f28) *= xx($f26); 
	mul.d $f28, $f28, $f26
# denominador = (2*n+1) * 2*n * denominador;
# (2*n+1)
	li $t5, 2
# 2*n
	mul $t6, $t5, $s0
# 2*n + 1
	addi $t6, 1
# $t6(2*n+1) * $t7($t5(2)*$s0(n))
# $t7 = 2*n
	mul $t7, $t5, $s0
# $t8 = $t6 * $t7
	mul $t8, $t6, $t7
# denominador($s1) = $t8((2*n+1) * (2*n)) * $s1(denominador)
	mul $s1, $t8, $s1
# termino($f8) = signo * numerador / denominador; // ultimo termino
# $f28(numerador) / $f18(denominador)
	mtc1 $s1, $f0 # Convertimos la cariable entera denominador($s1) a double
	mov.d $f18, $f0
	div.d $f8, $f28, $f18
# termino($f8) = $f30(signo) * $f8(numerador / denominador)
	mtc1 $s3, $f0
	mov.d $f30, $f0
	mul.d $f10, $f8, $f30
# sen_x += termino;
	add.d $f24, $f24, $f10

# error_calculado = fabs(($f24(sen_x) - $f4(old_senx) / $f24(sen_x);
# (sen_x - old_senx) / sen_x):

# ($f24(sen_x) - $f4(old_senx)
	sub.d $f10, $f24, $f4
# $f10(sen_x - old_senx) / $f24(sen_x)
	div.d $f18, $f10, $f24

# fabs($f10)
	abs.d $f16, $f18
	mov.d $f10,$f16
# error_calculado = fabs($f10)
	mov.d $f30, $f10

# Condición while: while (error_calculado >= error);
	c.lt.d $f30, $f22 # error_calculado($f30) < error($f22)
	bc1t fin_do_secundario3 # si se cumple la condición de arriba, se sale del bucle
	b do_secundario3 # si no se cumple, vuelve al principio del bucle

fin_do_secundario3:
# std::cout << "\n\n\nsen(x) calculado: " << sen_x;
	li $v0, 4
	la $a0, cadsen
	syscall

# std::cout << sen_x;
	li $v0, 3
	mov.d $f12, $f24
	syscall
# std::cout << "\nerror calculado: " 
	li $v0, 4
	la $a0, caderr
	syscall

# std::cout << error_calculado;
	li $v0, 3
	mov.d $f12, $f30
	syscall

# std::cout << "\nnumero de iteraciones calculadas: "
	li $v0, 4
	la $a0, cadite
	syscall

# std::cout << n
	li $v0, 1
	move $a0, $s0
	syscall

# while(true)
	b do_principal
fin_programa:
#    std::cout << "\nFin del programa\n";
	li $v0, 4
	la $a0, cadfin
	syscall
# Termina el Programa
	li $v0,10
    syscall
