import 'dart:io';

// Clase base Productos
class Productos {
  int id;
  String nombre;
  double precio;
  String descripcion;
  String estado;
  DateTime caducidad;

  // Constructor
  Productos(this.id, this.nombre, this.precio, this.descripcion, this.estado, this.caducidad);

  // Método para capturar datos del producto desde la consola
  void capturaDatos() {
    print('Ingrese el ID del producto:');
    id = int.parse(stdin.readLineSync()!);
    print('Ingrese el nombre del producto:');
    nombre = stdin.readLineSync()!;
    print('Ingrese el precio del producto:');
    precio = double.parse(stdin.readLineSync()!);
    print('Ingrese la descripción del producto:');
    descripcion = stdin.readLineSync()!;
    print('Ingrese el estado del producto:');
    estado = stdin.readLineSync()!;
    print('Ingrese la fecha de caducidad (YYYY-MM-DD):');
    caducidad = DateTime.parse(stdin.readLineSync()!);
  }
}

// Clase Ventas que hereda de Productos
class Ventas extends Productos {
  int idVenta;
  int idPersonal;
  int idCliente;
  int cantidad;
  double total;
  DateTime fecha;

  // Constructor
  Ventas(int id, String nombre, double precio, String descripcion, String estado, DateTime caducidad, this.idVenta, this.idPersonal, this.idCliente, this.cantidad, this.total, this.fecha)
      : super(id, nombre, precio, descripcion, estado, caducidad);

  // Método para capturar datos de la venta desde la consola
  void capturaDatosVenta() {
    super.capturaDatos();
    print('Ingrese el ID de la venta:');
    idVenta = int.parse(stdin.readLineSync()!);
    print('Ingrese el ID del personal:');
    idPersonal = int.parse(stdin.readLineSync()!);
    print('Ingrese el ID del cliente:');
    idCliente = int.parse(stdin.readLineSync()!);
    print('Ingrese la cantidad:');
    cantidad = int.parse(stdin.readLineSync()!);
    total = cantidad * precio;
    print('Ingrese la fecha de la venta (YYYY-MM-DD):');
    fecha = DateTime.parse(stdin.readLineSync()!);
  }

  // Método para mostrar los datos de la venta
  void mostrarDatosVenta() {
    print('\nDatos de la Venta:');
    print('ID Venta: $idVenta');
    print('ID Personal: $idPersonal');
    print('ID Cliente: $idCliente');
    print('Cantidad: $cantidad');
    print('Total: \$${total.toStringAsFixed(2)}');
    print('Fecha: $fecha');
    print('\nDatos del Producto:');
    print('ID Producto: $id');
    print('Nombre: $nombre');
    print('Precio: \$${precio.toStringAsFixed(2)}');
    print('Descripción: $descripcion');
    print('Estado: $estado');
    print('Fecha de Caducidad: $caducidad');
  }
}

void main() {
  // Crear una instancia de Ventas con datos previamente llenados
  Ventas venta = Ventas(1, 'Producto A', 100.0, 'Descripción del Producto A', 'Nuevo', DateTime(2025, 12, 31), 1, 101, 201, 2, 200.0, DateTime(2025, 2, 18));
  
  // Mostrar los datos capturados
  venta.mostrarDatosVenta();

  // Imprimir nombre y número de identificación
  print("Emiliano De Santiago Soto");
  print("22308051281060");
}