import 'dart:io'; // Importar la librería para entrada/salida

// Clase Producto
class Producto {
  int idProducto;
  String nombre;
  double precio;
  String descripcion;
  String estado;
  DateTime caducidad;

  // Constructor
  Producto({
    required this.idProducto,
    required this.nombre,
    required this.precio,
    required this.descripcion,
    required this.estado,
    required this.caducidad,
  });

  // Método para capturar datos
  void capturaDatos() {
    print("Ingrese los datos del producto:");
    stdout.write("ID Producto: ");
    idProducto = int.parse(stdin.readLineSync()!);
    stdout.write("Nombre: ");
    nombre = stdin.readLineSync()!;
    stdout.write("Precio: ");
    precio = double.parse(stdin.readLineSync()!);
    stdout.write("Descripción: ");
    descripcion = stdin.readLineSync()!;
    stdout.write("Estado: ");
    estado = stdin.readLineSync()!;
    stdout.write("Caducidad (YYYY-MM-DD): ");
    caducidad = DateTime.parse(stdin.readLineSync()!);
    print("Datos capturados exitosamente.\n");
  }

  // Método para mostrar datos
  void mostrarDatos() {
    print("""
Datos del producto:
- ID Producto: $idProducto
- Nombre: $nombre
- Precio: \$${precio.toStringAsFixed(2)}
- Descripción: $descripcion
- Estado: $estado
- Caducidad: ${caducidad.toLocal()}
""");
  }
}

// Clase Cliente
class Cliente {
  int idCliente;
  String nombre;
  String direccion;
  String telefono;
  DateTime fechaNacimiento;

  // Constructor
  Cliente({
    required this.idCliente,
    required this.nombre,
    required this.direccion,
    required this.telefono,
    required this.fechaNacimiento,
  });

  // Método para capturar datos
  void capturaDatos() {
    print("Ingrese los datos del cliente:");
    stdout.write("ID Cliente: ");
    idCliente = int.parse(stdin.readLineSync()!);
    stdout.write("Nombre: ");
    nombre = stdin.readLineSync()!;
    stdout.write("Dirección: ");
    direccion = stdin.readLineSync()!;
    stdout.write("Teléfono: ");
    telefono = stdin.readLineSync()!;
    stdout.write("Fecha de nacimiento (YYYY-MM-DD): ");
    fechaNacimiento = DateTime.parse(stdin.readLineSync()!);
    print("Datos capturados exitosamente.\n");
  }

  // Método para mostrar datos
  void mostrarDatos() {
    print("""
Datos del cliente:
- ID Cliente: $idCliente
- Nombre: $nombre
- Dirección: $direccion
- Teléfono: $telefono
- Fecha de nacimiento: ${fechaNacimiento.toLocal()}
""");
  }
}

// Clase Venta
class Venta {
  int idVenta;
  int idPersonal;
  int idProducto;
  int idCliente;
  DateTime fecha;
  int cantidad;
  double total;

  // Constructor
  Venta({
    required this.idVenta,
    required this.idPersonal,
    required this.idProducto,
    required this.idCliente,
    required this.fecha,
    required this.cantidad,
    required this.total,
  });

  // Método para capturar datos
  void capturaDatos() {
    print("Ingrese los datos de la venta:");
    stdout.write("ID Venta: ");
    idVenta = int.parse(stdin.readLineSync()!);
    stdout.write("ID Personal: ");
    idPersonal = int.parse(stdin.readLineSync()!);
    stdout.write("ID Producto: ");
    idProducto = int.parse(stdin.readLineSync()!);
    stdout.write("ID Cliente: ");
    idCliente = int.parse(stdin.readLineSync()!);
    stdout.write("Fecha de venta (YYYY-MM-DD): ");
    fecha = DateTime.parse(stdin.readLineSync()!);
    stdout.write("Cantidad: ");
    cantidad = int.parse(stdin.readLineSync()!);
    stdout.write("Total: ");
    total = double.parse(stdin.readLineSync()!);
    print("Datos capturados exitosamente.\n");
  }

  // Método para mostrar datos
  void mostrarDatos() {
    print("""
Datos de la venta:
- ID Venta: $idVenta
- ID Personal: $idPersonal
- ID Producto: $idProducto
- ID Cliente: $idCliente
- Fecha: ${fecha.toLocal()}
- Cantidad: $cantidad
- Total: \$${total.toStringAsFixed(2)}
""");
  }
}

// Clase Main
void main() {
  print('Emiliano de Santiago Soto Mat: 22308051281060');

  stdout.write("Ingrese 'iniciar' para comenzar la captura de datos: ");
  String? comando = stdin.readLineSync();

  if (comando != null && comando.toLowerCase() == 'iniciar') {
    // Crear y capturar datos para un producto
    Producto producto1 = Producto(
      idProducto: 0,
      nombre: '',
      precio: 0.0,
      descripcion: '',
      estado: '',
      caducidad: DateTime.now(),
    );
    producto1.capturaDatos();
    producto1.mostrarDatos();

    // Crear y capturar datos para un cliente
    Cliente cliente1 = Cliente(
      idCliente: 0,
      nombre: '',
      direccion: '',
      telefono: '',
      fechaNacimiento: DateTime.now(),
    );
    cliente1.capturaDatos();
    cliente1.mostrarDatos();

    // Crear y capturar datos para una venta
    Venta venta1 = Venta(
      idVenta: 0,
      idPersonal: 0,
      idProducto: 0,
      idCliente: 0,
      fecha: DateTime.now(),
      cantidad: 0,
      total: 0.0,
    );
    venta1.capturaDatos();
    venta1.mostrarDatos();

    // Productos de snacks predefinidos
    List<Producto> snacks = [
      Producto(
        idProducto: 1,
        nombre: 'Papas Fritas',
        precio: 1.50,
        descripcion: 'Bolsa de papas fritas',
        estado: 'Disponible',
        caducidad: DateTime(2025, 12, 31),
      ),
      Producto(
        idProducto: 2,
        nombre: 'Galletas',
        precio: 1.00,
        descripcion: 'Paquete de galletas',
        estado: 'Disponible',
        caducidad: DateTime(2025, 11, 30),
      ),
      Producto(
        idProducto: 3,
        nombre: 'Refresco',
        precio: 0.75,
        descripcion: 'Lata de refresco',
        estado: 'Disponible',
        caducidad: DateTime(2025, 10, 31),
      ),
    ];

    // Mostrar productos de snacks
    for (var snack in snacks) {
      snack.mostrarDatos();
    }
  } else {
    print("Comando no reconocido. El programa se cerrará.");
  }
}