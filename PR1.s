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
# n -> $f16
# denominador -> $f18 
#--------------------------
#Variables de tipo entero:
# signo -> $s2

main:

# std::cout << "\n\nAproximación a sen(x) (-1 <= x <= 1) con un error máximo, usando Taylor\n";
    li $v0, 4
    la $a0, titulo
    syscall

do_principal:

do_secundario1:
# std::cout << "\n\nIntroduzca el valor de x (-1 <= x <= 1): ";
    li $v0, 4
    la $a0, petx
    syscall
# std::cin >> x;
    li $v0, 7
    syscall
    mov.d $f20, $f0
# } while ( (x < -1) || (x > 1));
# Primera condición while: (x < -1)
    li.d $f10, -1.0
    c.lt.d $f20, $f10 # comparamos x($f20) con -1($f10)
    bc1t do_secundario1 # tal como estamos traduciendo, si se cumple la condición 
                        # saltamos al principio del bucle
# Segunda condición while: (x > 1)
    li.d $f10, 1.0
    c.le.d $f20, $f10 # Hacemos la condición inversa, comparando si x es menor o igual a 1
    bc1f do_secundario1 # Si no se cumple la condición inversa, es que es mayor, 
                        # por lo que saltamos al principio del bucle tal y como queremos
# do {
do_secundario2:
# std::cout << "\nIntroduzca el error maximo permitido en la aproximación (0 < error < 1) (error <= 0 sale del programa): ";
    li $v0, 4
    la $a0, pete
    syscall
# std::cin >> error;
    li $v0, 7
    syscall
    mov.d $f22, $f0
# while (error >= 1);
    li.d $f10, 1.0 # volvemos a hacer el li.d por que,
                   # $f10 al ser un registro temporal perdió el  valor después del syscall anterior
    c.lt.d $f22, $f10 # Comprobamos la condición inversa
    bc1f do_secundario2 # Si no se cumple la condición inversa, es que es mayor o igual,
                        # que es la condición que realmente queremos comprobar para volver al principio del bucle

# if (error <= 0) break;
    li.d $f10, 0.0
    c.le.d $f22, $f10
    bc1t fin_programa # Si se cumple que es menor o igual, se termina el programa
# n = 0; // iteraciones
    li.d $f16, 0.0
# numerador = x; // primer numerador del termino para n=0
    mov.d $f28, $f20
# denominador = 1; // primer denominador del termino para n=0
    li.d $f18, 1.0
# signo = 1;
    li $s2, 1
# sen_x = x; // primer termino
    mov.d $f24, $f20
# double xx = x*x; // el numerador siempre se multiplica por x^2 
    mul.d $f10, $f20, $f20
    mov.d $f26, $f10

# do {
do_secundario3:
    
# old_senx = sen_x;
    mov.d $f4, $f24
# n++; // incremento el termino
    li.d $f10, 1.0
    add.d $f16, $f16, $f10

# signo = -signo; // el signo se alterna
    neg $s2, $s2
# numerador *= xx; 
    mul.d $f28, $f28, $f26
# denominador = (2*n+1) * 2*n * denominador; -> Esta operación la realizamos en varios pasos:

# 1. Realizar la operación: "(2*n)"
    li.d $f10, 2.0 # declaramos una variable auxiliar que vale 2 para multiplicarla a la n($f16)
    mul.d $f10, $f16, $f10 # hacmos la operación y lo guardamos en $f10
# 2. Realizar la operación "2*n($f10) * denominador($f18)
    mul.d $f18, $f10, $f18 # Realizamos la operación y lo guardamos en $f18

# 3. Le sumamos 1 a $f10 = 2*n para después realizar la operación restante
    li.d $f2, 1.0 # Utilizo el registro $f2 por que no me quedan más registros para utilizar
    add.d $f10, $f10, $f2 # (2*n) + 1
# 4. Realizamos la operación final multiplicando los dos registros $f10(2*n + 1) y $f18(2*n * denominador) y almacenándolo en $f18
    mul.d $f18 , $f18, $f10 # Realizamos la operación:(2*n+1) * 2*n * denominador

# termino = signo * numerador / denominador; // ultimo termino -> Esta operación la realizamos en varios pasos:

# 1. Numerador / denominador
    div.d $f10, $f28, $f18

# 2. termino = $s2(signo) * $f10(numerador / denominador);
# primero pasamos $s2 a flotante
    mtc1 $s2, $f0 # Convertimos la variable entera denominador($s2) a double
	cvt.d.w $f2, $f0
    mul.d $f8, $f10, $f2 #Realizamos la operación y la guardamos en $f8

# sen_x += termino;
    add.d $f24, $f24, $f8
# error_calculado = fabs((sen_x - old_senx) / sen_x); -> Esta operación la dividimos en varios pasos:
# 1. Realizamos (sen_x - old_senx) y lo guardamos en $f10
    sub.d $f10, $f24, $f4

# 2. Realizamos el valor absoluto de la operación anterior
    abs.d $f2, $f10
    mov.d $f30, $f2
# 2. Hacemos $f2 / sen_x($f24)
    div.d $f30, $f30, $f24

# while (error_calculado >= error);
    c.lt.d $f30, $f22 # Comprobamos la condición inversa a la que realmente queremos comprobar
    bc1f do_secundario3 # si no se cumple la condición inversa es que es mayor o igual, 
                        # por lo que volvemos al principio del bucle

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
	li $v0, 3
	mov.d $f12, $f16
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
