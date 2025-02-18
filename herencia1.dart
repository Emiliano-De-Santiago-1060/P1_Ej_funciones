

// Definir la clase Animal
class Animal {
  // Atributos de la clase Animal
  int idAnimal;
  String nombre;
  String raza;

  // Constructor de la clase Animal
  Animal(this.idAnimal, this.nombre, this.raza);

  // Función comer
  void comer() {
    print('$nombre está comiendo.');
  }
}

// Definir la clase Perro que hereda de Animal
class Perro extends Animal {
  // Constructor de la clase Perro
  Perro(int idAnimal, String nombre, String raza) : super(idAnimal, nombre, raza);

  // Función correr
  void correr() {
    print('$nombre está corriendo.');
  }

  // Función dormir
  void dormir() {
    print('$nombre está durmiendo.');
  }
}// fin de la clase Perro

void main() {
  // Crear un objeto Perro
  Perro tobi = Perro(1, 'Edgar', 'Labrador');
  
 print("Emiliano De Santiago Soto");
 print("22308051281060");
  // Llamar a las funciones
  tobi.comer();
  tobi.correr();
  tobi.dormir();
}