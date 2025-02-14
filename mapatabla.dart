void main() {
  // Mapa de Productos
  Map<String, dynamic> producto = {
    "id": 1,
    "nombre": "Galletas",
    "precio": 15.5,
    "descripcion": "Galletas de chocolate",
    "estado": "Disponible",
    "caducidad": "2025-12-31"
  };

  // Mapa de Proveedor
  Map<String, dynamic> proveedor = {
    "id_proveedor": 101,
    "nombre": "Distribuidora S.A.",
    "direccion": "Calle 123, Ciudad",
    "telefono": "555-1234",
    "giro": "Alimentos"
  };

  // Mapa de Personal
  Map<String, dynamic> personal = {
    "id_personal": 201,
    "nombre": "Juan Pérez",
    "apellido": "González",
    "direccion": "Avenida Siempre Viva 742",
    "telefono": "555-5678",
    "cargo": "Cajero",
    "sueldo": 8500.75
  };

  // Mostrar los datos
  print("\nDatos del Producto:");
  producto.forEach((key, value) => print("$key: $value"));

  print("\nDatos del Proveedor:");
  proveedor.forEach((key, value) => print("$key: $value"));

  print("\nDatos del Personal:");
  personal.forEach((key, value) => print("$key: $value"));
}