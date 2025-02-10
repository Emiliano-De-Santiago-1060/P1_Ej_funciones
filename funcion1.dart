//funcion que no devielva valor
//funcion saludar

void saludar(){
  print("Hola mundo!");
}

void escribiendoNombre(){
  print("Emiliano de Santiago Soto");
}

void sumar(double a, double b) {
  double resultado = a + b;
  print("La suma de $a y $b es: $resultado");
}

void restar(double a, double b) {
  double resultado = a - b;
  print("La resta de $a y $b es: $resultado");
}

void multiplicar(double a, double b) {
  double resultado = a * b;
  print("La multiplicación de $a y $b es: $resultado");
}

void dividir(double a, double b) {
  if (b != 0) {
    double resultado = a / b;
    print("La división de $a entre $b es: $resultado");
  } else {
    print("No se puede dividir entre cero");
  }
}

void main() {
  //Emiliano de Santiago Soto: 22308051281060
  //Llamar a la funcion saludar
  
  print("Llamando a la funcion saludar");
  saludar();
  escribiendoNombre();

  double num1 = 10;
  double num2 = 5;

  print("Calculadora Básica:");
  sumar(num1, num2);
  restar(num1, num2);
  multiplicar(num1, num2);
  dividir(num1, num2);
}