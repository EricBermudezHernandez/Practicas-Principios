#include <iomanip>
#include <iostream>
#include <vector>

float v1[] = {10.00000000, 11.00000000, 12.00000000, 13.00000000, 14.00000000,
              15.00000000, 16.00000000, 17.00000000, 18.00000000, 19.00000000,
              20.00000000, 21.00000000, 22.00000000, 23.00000000, 24.00000000,
              25.00000000, 26.00000000, 27.00000000, 28.00000000, 29.00000000,
              30.00000000, 31.00000000, 32.00000000, 33.00000000, 34.00000000,
              35.00000000, 36.00000000, 37.00000000, 38.00000000, 39.00000000,
              40.00000000, 41.00000000, 42.00000000, 43.00000000, 44.00000000,
              45.00000000, 46.00000000, 47.00000000, 48.00000000, 49.00000000,
              50.00000000};

float v2[] = {40.00000000, 39.00000000, 38.00000000, 37.00000000, 36.00000000,
              35.00000000, 34.00000000, 33.00000000, 32.00000000, 31.00000000,
              30.00000000, 29.00000000, 28.00000000, 27.00000000, 26.00000000,
              25.00000000, 24.00000000, 23.00000000, 22.00000000, 21.00000000,
              20.00000000, 19.00000000, 18.00000000, 17.00000000, 16.00000000,
              15.00000000, 14.00000000, 13.00000000, 12.00000000, 11.00000000,
              10.00000000, 9.00000000,  8.00000000,  7.00000000,  6.00000000,
              5.00000000,  4.00000000,  3.00000000,  2.00000000,  1.00000000};

void print_vec(float* direccion_base_vec, int size, char* espacio) {
  for (int i{0}; i < size; i++) {
    std::cout << std::fixed << std::setprecision(8) << *direccion_base_vec++
              << *espacio;
  }
}

// Ver la manera de como se puede identificar que vector es
void change_elto(float* direccion_base_vec, int indice, float valor) {
  for (int i{0}; i <= indice; ++i) {
    if (i == indice) {
      *direccion_base_vec = valor;
    }
    direccion_base_vec++;
  }
}

void swap(float* direccion_base_vec, int indice_primer_elemento,
          int indice_segundo_elemento) {
  float aux = *(direccion_base_vec + indice_primer_elemento);
  *(direccion_base_vec + indice_primer_elemento) =
      *(direccion_base_vec + indice_segundo_elemento);
  *(direccion_base_vec + indice_segundo_elemento) = aux;
}

void mirror(float* direccion_base_vec, int size) {
  if (size > 1) {
    swap(direccion_base_vec, 0, (size - 1));
    mirror(++direccion_base_vec, (size - 2));
  } else {
    return;
  }
}

float mult_add(float numero1, float numero2, float numero3) {
  return ((numero1 * numero2) + numero3);
}

float prod_esc(float* direccion_base_vec1, float* direccion_base_vec2,
               int size) {
  float resultado{0.0};
  for (int i{0}; i < size; ++i) {
    resultado = mult_add(*(direccion_base_vec1 + i), *(direccion_base_vec2 + i),
                         resultado);
  }
  return resultado;
}

int main() {
  char espacio[] = {' '};
  int aux_n1, aux_n2, n1{40}, n2{40}, opcion, opcion_vector, valor, indice;
  std::cout << "\nPractica 4 de Principios de Computadores. Subrutinas.\n";
  do {
    std::cout << "\nVector con dimension " << n1 << std::endl;
    print_vec(v1, n1, espacio);
    std::cout << std::endl;
    std::cout << "\nVector con dimension " << n2 << std::endl;
    print_vec(v2, n2, espacio);
    std::cout << std::endl;
    std::cout
        << "\n(1) Cambiar dimension de un vector\n(2) Cambiar un elemento "
           "de un vector\n"
           "(3) Invertir un vector\n(4) Calcular el producto escalar de "
           "dos vectores\n"
           "(0) Salir\n\nElija opcion: ";
    std::cin >> opcion;
    switch (opcion) {
      case 0:  // Salir
        break;

      case 1:  // Cambiar dimensión
        std::cout << "\nElija vector para realizar la operacion (1) para v1 "
                     "(2) para v2: ";
        std::cin >> opcion_vector;
        if (opcion_vector == 1) {
          std::cout << "\nIntroduzca nueva dimension para el vector (1-40): ";
          std::cin >> aux_n1;
          if (aux_n1 < 0 || aux_n1 > 40) {
            std::cout << "\nError: Dimension incorrecta.\n";
          } else {
            n1 = aux_n1;
          }
        } else if (opcion_vector == 2) {
          std::cout << "\nIntroduzca nueva dimension para el vector (1-40): ";
          std::cin >> aux_n2;
          if (aux_n2 < 0 || aux_n2 > 40) {
            std::cout << "\nError: Dimension incorrecta.\n";
          } else {
            n2 = aux_n2;
          }
        } else {
          std::cout << "\nError: opcion incorrecta.\n";
        }
        break;

      case 2:  // Cambiar un elemento
        std::cout << "\nElija vector para realizar la operacion (1) para v1 "
                     "(2) para v2: ";
        std::cin >> opcion_vector;
        if (opcion_vector == 1) {
          std::cout << "\nElija el indice del elemento a cambiar: ";
          std::cin >> indice;
          if (indice < 0 || indice >= n1) {
            std::cout << "\nError: Indice incorrecto.\n";
          } else {
            std::cout << "\nIntroduce nuevo valor para el elemento elegido: ";
            std::cin >> valor;
            change_elto(v1, indice, valor);
          }
        } else if (opcion_vector == 2) {
          std::cout << "\nElija el indice del elemento a cambiar: ";
          std::cin >> indice;
          if (indice < 0 || indice >= n2) {
            std::cout << "\nError: Indice incorrecto.\n";
          } else {
            std::cout << "\nIntroduce nuevo valor para el elemento elegido: ";
            std::cin >> valor;
            change_elto(v2, indice, valor);
          }
        } else {
          std::cout << "\nError: opcion incorrecta.\n";
        }
        break;

      case 3:  // Invertir un vector
        std::cout << "\nElija vector para realizar la operacion (1) para v1 "
                     "(2) para v2: ";
        std::cin >> opcion_vector;
        if (opcion_vector == 1) {
          mirror(v1, n1);
        } else if (opcion_vector == 2) {
          mirror(v2, n2);
        } else {
          std::cout << "\nError: opcion incorrecta.\n";
        }
        break;

      case 4:  // Calcular producto escalar
        std::cout << "\nEl producto escalar de los vectores es: "
                  << prod_esc(v1, v2, n1) << std::endl;
        break;
      default:
        std::cout << "\nError: opcion incorrecta.\n";
        break;
    }
  } while (opcion != 0);
  std::cout << "\nFIN DEL PROGRAMA." << std::endl;
  return 0;
}