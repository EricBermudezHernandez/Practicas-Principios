#include <iostream>

int main() {
  int mat[] = {
      100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114,
      115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129,
      130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144,
      145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159,
      160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174,
      175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189,
      190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204,
      205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219,
      220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234,
      235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249,
      250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264,
      265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279,
      280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294,
      295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309,
      310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324,
      325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339,
      340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354,
      355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369,
      370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384,
      385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399,
      400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414,
      415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429,
      430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444,
      445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459,
      460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474,
      475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489,
      490, 491, 492, 493, 494, 495, 496, 497, 498, 499,
  };
  int ncol{10}, nfil{20}, opcion{-1}, primer_elemento_fila,
      segundo_elemento_fila, primer_elemento_columna, segundo_elemento_columna;
  std::cout
      << "\nPráctica PR3 de Principios de Computadores. Manejo de Matrices.\n";
  do {
    std::cout << "\nLa matriz es " << nfil << "x" << ncol << "\n";
    // Mostramos la matriz
    for (int f{0}; f < nfil; ++f) {
      for (int c{0}; c < ncol; ++c) {
        std::cout << mat[f * ncol + c] << "  ";
      }
      std::cout << "\n";
    }
    // Mostramos el menú
    std::cout
        << "\n(1) Cambiar dimensiones\n(2) Intercambiar dos elemento\n"
           "(3) Suma elementos del perimetro\n(4) Calcula max y min de la "
           "diagonal\n"
           "(0) Salir\n\nElija opcion: ";
    std::cin >> opcion;
    switch (opcion) {
      case 0:
        break;

      case 1: {
        int nfil_aux, ncol_aux;
        std::cout << "Introduzca numero de filas: ";
        std::cin >> nfil_aux;
        if (nfil_aux <= 0) {
          std::cout
              << "\nError: dimension incorrecta. Numero de fila incorrecto.\n";
          continue;
        }
        std::cout << "Introduzca numero de columnas: ";
        std::cin >> ncol_aux;
        if (ncol_aux <= 0) {
          std::cout << "\nError: dimension incorrecta. Numero de columna "
                       "incorrecto.\n";
          continue;
        }
        if ((nfil_aux * ncol_aux > 400)) {
          std::cout << "\nError: dimension incorrecta. Excede el maximo numero "
                       "de elementos (400).\n";
          continue;
        }
        nfil = nfil_aux;
        ncol = ncol_aux;
        break;
      }
      case 2: {
        std::cout << "Introduzca fila del primer elemento a cambiar: ";
        std::cin >> primer_elemento_fila;
        if (primer_elemento_fila < 0 || primer_elemento_fila >= nfil) {
          std::cout
              << "\nError: dimension incorrecta. Numero de fila incorrecto.\n";
          continue;
        }
        std::cout << "Introduzca columna del primer elemento a cambiar: ";
        std::cin >> primer_elemento_columna;
        if (primer_elemento_columna < 0 || primer_elemento_columna >= ncol) {
          std::cout << "\nError: dimension incorrecta. Numero de columna "
                       "incorrecto.\n";
          continue;
        }
        std::cout << "Introduzca fila del segundo elemento a cambiar: ";
        std::cin >> segundo_elemento_fila;
        if (segundo_elemento_fila < 0 || segundo_elemento_fila >= nfil) {
          std::cout
              << "\nError: dimension incorrecta. Numero de fila incorrecto.\n";
          continue;
        }
        std::cout << "Introduzca columna del segundo elemento a cambiar: ";
        std::cin >> segundo_elemento_columna;
        if (segundo_elemento_columna < 0 || segundo_elemento_columna >= ncol) {
          std::cout << "\nError: dimension incorrecta. Numero de columna "
                       "incorrecto.\n";
          continue;
        }
        // aux = (i,j)
        int aux{mat[primer_elemento_fila * ncol + primer_elemento_columna]};
        // Cambiamos los elementos:
        // (i,j) = (r,s)
        mat[primer_elemento_fila * ncol + primer_elemento_columna] =
            mat[segundo_elemento_fila * ncol + segundo_elemento_columna];
        // (r,s) = aux
        mat[segundo_elemento_fila * ncol + segundo_elemento_columna] = aux;
        break;
      }
      case 3: {
        int suma{0};
        // Sumamos elementos primera fila:
        if (nfil == 1) {
          for (int j{0}; j < ncol; ++j) {
            suma += mat[j];
          }
        } else if (ncol == 1) {
          // Sumamos los elementos de la columna de la izquierda
          for (int i{(nfil - 1)}; i >= 0; --i) {
            suma += mat[i * ncol + 0];
          }
        } else {
          for (int j{0}; j < ncol; ++j) {
            suma += mat[j];
          }
          // Sumamos los elementos de la columna de la derecha de la matriz
          for (int i{1}; i < nfil; ++i) {
            suma += mat[i * ncol + (ncol - 1)];
          }
          // Sumamos los elementos de la fila de abajo
          for (int j{(ncol - 2)}; j >= 0; --j) {
            suma += mat[(nfil - 1) * ncol + j];
          }
          // Sumamos los elementos de la columna de la izquierda
          for (int i{(nfil - 2)}; i >= 1; --i) {
            suma += mat[i * ncol + 0];
          }
        }

        std::cout << "\n\nSuma de los elementos del perímetro: " << suma
                  << "\n";
        break;
      }
      case 4: {
        int minimo{999}, maximo{0};
        for (int i{0}; i < ncol; ++i) {
          if (nfil == 1) {
            minimo = mat[0];
            maximo = mat[0];
            break;
          }
          if (minimo > mat[i * ncol + i]) minimo = mat[i * ncol + i];
          if (maximo < mat[i * ncol + i]) maximo = mat[i * ncol + i];
        }
        std::cout << "\nEl máximo de la diagonal principal es " << maximo
                  << " y el mínimo " << minimo << "\n";
        break;
      }
      default:
        std::cout << "\nError: opcion incorrecta.\n";
        break;
    }
  } while (opcion != 0);
  std::cout << "\nFin del programa.\n";
  return 0;
}