int multiplicacion(int a, int b) {
  return a * b;
}

int flechamultiplocacion(int a, int b) => a * b;

double dividir(int a, int b) {
  return a / b; // División con punto decimal
}

double flechadividir(int a, int b) => a / b; // División con punto decimal

//returnType functionName(parameters) => expression;
//Funcion main
void main(){
  print("Emiliano De Santiago 22308051281060");
  
  print("llamando a la funcion multiplicacion");
  print(multiplicacion(10, 5));
  
  print("llamando a la funcion flechamultiplocacion");
  print(flechamultiplocacion(3, 5));
  
  print("llamando a la funcion dividir");
  print(dividir(10, 5));
  
  print("llamando a la funcion flechadividir");
  print(flechadividir(10, 3));
}
