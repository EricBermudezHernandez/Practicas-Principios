# int main() {
# std::cout << "PR3 aproximación por serie geométrica" << std::endl;
# double x, error_objetivo, error_cometido = 0, sumatorio, resultado;
# int n = 0;
# do {
#   n = 0;
#   sumatorio = 0;
#   do {
#   std::cout << "Introduzca el valor de x (|x|<1): " << std::endl;
#   std::cin >> x; std::cout << "\n";
# } while (fabs(x) >= 1);
# if (x == 0) {
#   std::cout << "FIN DEL PROGRAMA." << std::endl;
#   exit(EXIT_SUCCESS);
# }
# resultado = (1 / (1 + x));
# std::cout << "Resultado real = "  << resultado << std::endl;
# do {
#   std::cout << "Introduzca el error objetivo: " << std::endl;
#   std::cin >> error_objetivo; std::cout << "\n";
# } while (error_objetivo <= 0 || error_objetivo >= resultado);
# do {
#   sumatorio += pow(-1, n) * pow(x, n);
#   error_cometido = fabs(resultado - sumatorio);
#   n++;
# } while (error_cometido > error_objetivo);
# std::cout << "Resultado calculado para " << n << " terminos = " << sumatorio << std::endl;
# std::cout << "Error cometido para " << n << " terminos = " << error_cometido << std::endl;
# } while (true);
# return 0;
#}
##########################
# NOMBRE:
# ERIC BERMÚDEZ HERNÁNDEZ

# FECHA:
# 22/3/22

 .data
titulo: .asciiz "PR3 aproximación por serie geométrica\n"
finmsg: .asciiz "\nFIN DEL PROGRAMA.\n"
calmsg: .asciiz "\nResultado real = "
pidex:  .asciiz "\nIntroduzca el valor de x (|x|<1): "
piderr: .asciiz "\nIntroduzca el error objetivo: "
resmsg: .asciiz "\nResultado calculado para " 
termsg: .asciiz " terminos = " 
errmsg: .asciiz "\nError cometido para " 
    .text
    # x = $f20
    li.s $f20,0.0

    # error_objetivo = $f21
    li.s $f21,0.0

    # error_cometido = $f22
    li.s $f22,0.0

    # sumatorio = $f23
    li.s $f23,0.0

    # resultado = $f24
    li.s $f24,0.0

    # n = $s0
    move $s0,$zero
    
main:
  # "PR3 aproximación por serie geométrica\n"
  li $v0,4
  la $a0,titulo
  syscall

  do1:
  # inicializar sumatorio($f3) a 0 para que no se acumule el valor al repetir el bucle
  li.s $f23, 0.0

  # inicializar n($s0) a 0 para que no se acumule el valor al repetir el bucle
  li $s0,0

  do2:
  # std::cout << "introduce un valor para x " << std::endl;
  la $a0,pidex
  li $v0,4
  syscall

  # std::cin >> x;
  li $v0,6
  syscall
  mov.s $f20,$f0
  abs.s $f20,$f20
  
  # while (fabs(x) >= 1)
  li.s $f4,1.0
  c.le.s $f4,$f20
  bc1t do2

  #if(x == 0) {
  # std::cout << "FIN DEL PROGRAMA." << std::endl;
  # exit(EXIT_SUCCESS);
  # }
  if: 
  li.s $f5,0.0
  c.eq.s $f20, $f5
  bc1t Fin

  # resultado = (1 / (1 + x));
  li.s  $f5, 1.0
  add.s $f6, $f20,$f5
  div.s		$f24,$f5, $f6			# $f5 / $f6
  
  # std::cout << "Resultado real = ";
  li $v0,4
  la $a0,calmsg
  syscall

  # std::cout << resultado << std::endl;
  mov.s $f12, $f24
  li    $v0,2
  syscall

  do3:
  # std::cout << "introduce un valor para el error objetivo " << std::endl;
  li $v0,4
  la $a0,piderr
  syscall

  # std::cin >> error_objetivo;
  li $v0,6
  syscall
  mov.s $f21,$f0

  # while (error_objetivo <= 0 || error_objetivo >= resultado);
  li.s   $f6,0.0     
  c.le.s $f21,$f6     # si error_objetivo($f21) <= 0
  bc1t   do3
  c.le.s $f24, $f21	 # if $f22 <= $f24 salta a do
  bc1t   do3
  # si (error_objetivo < 0 || error_objetivo > resultado) sale de el do3 y avanza hasta el do4

  mov.s $f16,$f20
  do4: 
  # sumatorio += pow(-1, n) * pow(x, n);
  
  # potencia de un número elevado a 0
  power0:
  bnez $s0,power1
  li.s $f8,1.0
  j    sumatorio

  # pow(-1, n)
  power1:
  li    $t1,1
  bne   $s0,$t1,power3
  neg.s $f8,$f20
  j     sumatorio

  # potencia de un número elevado a otro número
  power3:
  # pow(x, n);
  mul.s $f16,$f16,$f20
  mov.s $f8,$f16
  li    $t1,2
  # comprobar si el exponente es par o impar para dejarlo como un número negativo o positivo
  div   $s0,$t1 
  mfhi  $t1
  beqz  $t1,sumatorio
  neg.s $f8,$f16

  sumatorio:
  add.s $f23,$f23,$f8
  
  # error_cometido = fabs(resultado - sumatorio);
  sub.s  $f22, $f24, $f23
  abs.s  $f22,$f22

  # n++;
  addi	 $s0,1		# $s0 += 1
  c.le.s $f21, $f22
  bc1t   do4

  FinDo:
  #  std::cout << "Resultado calculado para ";
  li $v0,4
  la $a0,resmsg
  syscall

  # std::cout << n;
  move $a0, $s0
  li   $v0,1
  syscall

  # std::cout << " terminos = ";
  li $v0,4
  la $a0,termsg
  syscall

  # std::cout << sumatorio << std::endl;
  mov.s $f12,$f23
  li    $v0,2
  syscall

  # std::cout << "Error cometido para "
  li $v0,4
  la $a0,errmsg
  syscall

  # std::cout << n;
  move $a0, $s0
  li   $v0,1
  syscall

  # std::cout << " terminos = ";
  li $v0,4
  la $a0,termsg
  syscall

  # std::cout << error_cometido << std::endl;
  mov.s $f12, $f22
  li    $v0,2
  syscall

  # while (true)
  j do1 

  Fin:
  li $v0, 4
  la $a0, finmsg
  syscall
  li $v0,10
  syscall


# Cuestiones:

# 1) Mejora tu programa, minimizando el número de operaciones que se realizan al calcular cada término.
# Para optimizar mi programa, lo que hice fue hacer el código en ensamblador, y una vez vi que me daban bien los tests y en el QtSpim, empecé a eliminar todas aquellas operaciones que eran innecesarias.

# 2) Cuando se programa en ensamblador hay que elegir de manera adecuada los registros para realizar las operaciones. Di qué registros utilizaste para tus cálculos y cuál fue tu criterio para elegirlos.
# Para realizar mi programa, puesto que trabajaba con números en flotante, utilizé los registros apropiados siendo estos:
# $f20 = x , $f21 = error_objetivo , $f22 = error_cometido , $f23 = sumatorio 
# Utilizé los registros salvados, que van de $f20 a $f30, debido a que se preservan entre llamadas y me siento más cómodo sabiendo esto, además de que se me parecen más a las variables de c++.
# Aparte de los regtistros salvados, también usé algunos registros temporales,que van de $f4 a $f10), para hacer algunas operaciones puntuales que necesitaran el uso de dos registros.
# Y use también el registro $s0 para "n". Este registro es salvado de tipo entero y lo usé por que n es entero y salvado por la seguridad que me da al usarlo al igual que en los flotantes.

# 3) Explica brevemente cómo puedes transformar tu programa a doble precisión. Escribe de forma detallada si realizar este cambio afecta a la elección de tus registros. Explica también si tiene algún efecto en el programa (sobre todo si mejora en algo los resultados).
# Si quisiera transformar mi programa a doble precisión, lo que haría sería cambiar el uso de mis registros, pudiendo utilizar solo los registros pares, además de las instrucciones aritméticas, cambiando la terminación de ".s" a ."d". 
# En cuanto a si cambia al programar en doble precisión respecto de la simple. Cambia a la hora de hacer los cálculos, siendo estos más precisos.



    

