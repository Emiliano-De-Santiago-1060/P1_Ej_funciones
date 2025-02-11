import 'dart:io';

// Función para capturar los datos de la lista
List<double> capturarDatos() {
  List<double> lista = [];
  print('¿Cuántos números deseas ingresar?');
  int cantidad = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < cantidad; i++) {
    print('Ingresa el número ${i + 1}:');
    double numero = double.parse(stdin.readLineSync()!);
    lista.add(numero);
  }
  
  return lista;
}

// Función para mostrar los elementos de la lista
void mostrarElementos(List<double> lista) {
  print('Los elementos de la lista son:');
  for (var numero in lista) {
    print(numero);
  }
}

// Función para calcular el producto de todos los elementos de la lista
double calcularProducto(List<double> lista) {
  double producto = 1.0;
  for (var numero in lista) {
    producto *= numero;
  }
  return producto;
}

void main() {
  List<double> lista = capturarDatos();
  mostrarElementos(lista);

  double producto = calcularProducto(lista);
  print('El producto de todos los elementos es: $producto');
}
