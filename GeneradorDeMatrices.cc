#include <iostream>
#include <fstream>
#include <cstdlib>
#include <ctime>
#include <string>

using namespace std;

const int MAX_DIMENSION = 100;

void generarMatriz(int dimension)
{
  int matriz[MAX_DIMENSION][MAX_DIMENSION];
  srand(time(0));
  for (int i = 0; i < dimension; i++)
  {
    for (int j = 0; j < dimension; j++)
    {
      matriz[i][j] = rand() % 100;
    }
  }

  // Crear el nombre del archivo según la dimensión de la matriz
  string nombreArchivo = to_string(dimension) + "x" + to_string(dimension) + ".txt";
  ofstream archivo(nombreArchivo);

  archivo << dimension << ' ' << dimension << std::endl;

  for (int i = 0; i < dimension; i++)
  {
    for (int j = 0; j < dimension; j++)
    {
      archivo << matriz[i][j] << " ";
    }
    archivo << endl;
  }

  archivo.close();
}

int main()
{
  generarMatriz(2);
  generarMatriz(5);
  generarMatriz(10);
  generarMatriz(50);
  generarMatriz(100);

  return 0;
}