import 'dart:io';
import 'dart:math';

// Calculadora profesional espacial ingresando valores con teclado
void main() {
  print("Emiliano de Santiago Soto 22308051281060");
  print("Calculadora profesional espacial");

  print("Seleccione la operación a realizar:");
  print("1. Suma");
  print("2. Resta");
  print("3. Multiplicación");
  print("4. División");
  print("5. Fórmula general");
  String? opcion = stdin.readLineSync();

  if (opcion != null) {
    switch (opcion) {
      case '1':
      case '2':
      case '3':
      case '4':
        realizarOperacionBasica(opcion);
        break;
      case '5':
        resolverFormulaGeneral();
        break;
      default:
        print("Opción no válida.");
    }
  } else {
    print("Error: Entrada no válida.");
  }
}

void realizarOperacionBasica(String opcion) {
  print("Ingrese el primer valor: ");
  String? valor1 = stdin.readLineSync();
  print("Ingrese el segundo valor: ");
  String? valor2 = stdin.readLineSync();

  if (valor1 != null && valor2 != null) {
    try {
      int numero1 = int.parse(valor1);
      int numero2 = int.parse(valor2);

      switch (opcion) {
        case '1':
          print("La suma es: ${numero1 + numero2}");
          break;
        case '2':
          print("La resta es: ${numero1 - numero2}");
          break;
        case '3':
          print("La multiplicación es: ${numero1 * numero2}");
          break;
        case '4':
          if (numero2 != 0) {
            print("La división es: ${numero1 / numero2}");
          } else {
            print("Error: División por cero.");
          }
          break;
      }
    } catch (e) {
      print("Error: Por favor ingrese números válidos.");
    }
  } else {
    print("Error: Entrada no válida.");
  }
}

void resolverFormulaGeneral() {
  print("Ingrese el coeficiente a: ");
  String? aStr = stdin.readLineSync();
  print("Ingrese el coeficiente b: ");
  String? bStr = stdin.readLineSync();
  print("Ingrese el coeficiente c: ");
  String? cStr = stdin.readLineSync();

  if (aStr != null && bStr != null && cStr != null) {
    try {
      double a = double.parse(aStr);
      double b = double.parse(bStr);
      double c = double.parse(cStr);

      double discriminante = b * b - 4 * a * c;

      if (discriminante >= 0) {
        double x1 = (-b + sqrt(discriminante)) / (2 * a);
        double x2 = (-b - sqrt(discriminante)) / (2 * a);
        print("Las soluciones son: x1 = $x1, x2 = $x2");
      } else {
        print("La ecuación no tiene soluciones reales.");
      }
    } catch (e) {
      print("Error: Por favor ingrese números válidos.");
    }
  } else {
    print("Error: Entrada no válida.");
  }
}