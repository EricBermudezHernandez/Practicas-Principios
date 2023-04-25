#include <cmath>
#include <iostream>

// <<  >>

int main() {
  double x, error_objetivo, error_cometido = 0, aux;
  int n = 0;
  std::cout << "introduce un valor para x " << std::endl;
  std::cin >> x;
  std::cout << "introduce un valor para el error objetivo " << std::endl;
  std::cin >> error_objetivo;
   if (x == 0){
      std::cout << "Fin del programa " << std::endl;
      exit(EXIT_SUCCESS);
    } do {
   if (fabs(x) < 1 && error_objetivo > 0 && error_objetivo < (1 / (1 + x))) {    
        aux += pow(-1, n) * pow(x, n);
        error_cometido = fabs(1 / (1 + x) - aux);
        n++;
    }
    } while (error_cometido < error_objetivo); 
  std::cout << n << std::endl;
  std::cout << error_cometido << std::endl;
  return 0;
}
