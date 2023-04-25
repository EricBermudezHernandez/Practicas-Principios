# practica 2. Principio de computadoras
# OBJETIVO: introduce el codigo necesario para reproducir el comportamiento del programa
# C++ que se adjunta como comentarios
# Debes documentar debidamente el uso de los registros que has elegido y la correspondencia
# con las variables que has utilizado.
#
#include <iostream>
#int main() {
# int numero, cifra, suma;
#  std::cout << "Suma las cifras de un número entero." << std::endl;
#  std::cout << "Introduzca un 0 para salir del programa." << std::endl;
#  do {
#    std::cout << "Introduzca un entero para calcular la suma de sus cifras (0 "
#                 "para salir): ";
#    std::cin >> numero;
#    if (numero == 0) break;
#    if (numero < 0) numero = 0 - numero;
#    suma = 0;
#    while (numero != 0) {
#      cifra = numero % 10;
#      suma += cifra;
#      numero /= 10;
#    }
#    std::cout << "La suma de las cifras es " << suma << std::endl;
#  } while (true);
#  std::cout << "FIN DEL PROGRAMA. " << std::endl;
#  return 0;
#}

      .data		# directiva que indica la zona de datos
titulo: 	.asciiz	"\nSuma las cifras de un número entero. Introduzca un 0 para salir del programa.\n "
msgnumero:	.asciiz	"\n\nIntroduzca un entero para calcular la suma de sus cifras (0 para salir): "
msgresultado1:	.asciiz	"\nLa suma de las cifras es  "
msgfin:			.asciiz "\nFIN DEL PROGRAMA."

  .text
# declaración de variables

# cifra = $s0
li $s0,0

# suma = $s1
li $s1,0

# numero = $s2
li $s2, 12

main:
  # std::cout << "Suma las cifras de un número entero." << std::endl;
  # std::cout << "Introduzca un 0 para salir del programa." << std::endl;
  la    $a0,titulo
  li		$v0,4 
  syscall

  # do
  do:
  #std::cout << "Introduzca un entero para calcular la suma de sus cifras (0 "para salir): ";
  la    $a0,msgnumero
  li    $v0,4
  syscall


  #std::cin >> numero;
  li    $v0,5
  syscall
  move $v0, $s2	# $s2 = $v0

  # if (numero == 0) break;
  if:
  beqz	$s2, FIN  # si numero($s2) = 0 -> FIN

  # if (numero < 0) numero = 0 - numero;
  if2:
  bgtz		$s2, if2Fin # si numero($s2) > 0 -> if2Fin

  if2Fin:
  # numero = 0 - numero;
  sub		$s2, $zero, $s2		# numero($s2) = zero - $s2
  
  #    suma = 0;
  #move $s1, $zero 

  #    while (numero != 0) 
  while:
  beqz  $s2, whileFin # si numero($s2) = 0 -> Sal del while (whileFin)

  #      cifra = numero % 10;
  li $t0, 10  # registro temporal para poder hacer la división
  div		$s2, $t0		# numero($s2) / 10			 
  mfhi	$s0					# cifra($s0) = numero($s2) mod 10
  
  # suma += cifra;
  add		$s1, $s1, $s0	 # suma($s1) = suma($s1) + cifra ($s0)
  
  # numero /= 10;
  div		$s2, $t0			# numero($s2) / 10
  mflo	$s2					# numero($s2) = floor(numero($s2) / 10) 

  j	while			# jump to while
  
  whileFin:
  # std::cout << "La suma de las cifras es ";
  la  $a0,msgresultado1
  li  $v0, 4
  syscall
  # std::cout << suma << std::endl;
  move $a0, $s1
  li $s1,1
  syscall
  
  FIN:
	# las siguientes instrucciones  imprimen la cadena de fin y finalizan el programa
  # while (true);
  #  std::cout << "FIN DEL PROGRAMA. " << std::endl;
  #  return 0;
  la $a0,msgfin
	li $v0,4
	syscall
	li $v0,10
	syscall