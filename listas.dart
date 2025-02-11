void main(){
  //Emiliano de Santiago Soto: 22308051281060
  print("Emiliano de Santiago Soto 22308051281060");
  List<int> numeros = [1, 2, 3, 4, 5];
  print(numeros);
  print(numeros[0]); 
  //listar los elementos de la lista con un ciclo for
  for (int i = 0; i < numeros.length; i++) {
    print(numeros[i]);
  }
  //lista tipo string con 5 elementos de estaturas
  List<String> estaturas = ["1.70", "1.80", "1.90", "2.00", "2.10"];
  // lista de 5 elementos nombres de personas
  List<String> nombres = ["Emiliano", "Juan", "Pedro", "Maria", "Ana"];
  // imprimir lista de estaturas y nombres
  for (int i = 0; i < estaturas.length; i++) {
    print("Nombre: ${nombres[i]} Estatura: ${estaturas[i]}");
  }



}