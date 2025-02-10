double calcularAreaDeRectanulo(double base, double altura) {
  return base * altura;
}
void mostrarNombre(String nombre) {
  print("El nombre es: $nombre");
}

void main() {
  print("Emiliano De Santiago Soto: 22308051281060");
  print("Llamando a la funcion mostrarNombre");
  mostrarNombre("Emi 1");
  mostrarNombre("Emi 2");
  double base = 10;
  double altura = 5;
  double area = calcularAreaDeRectanulo(base, altura);
  print("El area del rectangulo es: $area");
}