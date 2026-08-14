import 'dart:io';

void main() {
  List<Map<String, dynamic>> productos = [];

  bool continuar = true;

  while (continuar) {
    print('\n===== CATÁLOGO DE PRODUCTOS =====');
    print('1. Agregar producto');
    print('2. Listar productos');
    print('3. Actualizar producto');
    print('4. Eliminar producto');
    print('5. Salir');
    print('=================================');

    stdout.write('Seleccione una opción: ');
    String? opcion = stdin.readLineSync();

    switch (opcion) {
    case '1':
  print('\n===== AGREGAR PRODUCTO =====');

  String nombre = '';

  // Validar nombre
  while (nombre.trim().isEmpty) {
    stdout.write('Nombre del producto: ');
    nombre = stdin.readLineSync() ?? '';

    if (nombre.trim().isEmpty) {
      print('El nombre no puede estar vacío.');
    }
  }

  double? precio;

  // Validar precio
  while (precio == null || precio < 0) {
    stdout.write('Precio: ');
    String entradaPrecio = stdin.readLineSync() ?? '';

    precio = double.tryParse(entradaPrecio);

    if (precio == null || precio < 0) {
      print('Ingrese un precio válido.');
    }
  }

  int? cantidad;

  // Validar cantidad
  while (cantidad == null || cantidad < 0) {
    stdout.write('Cantidad disponible: ');
    String entradaCantidad = stdin.readLineSync() ?? '';

    cantidad = int.tryParse(entradaCantidad);

    if (cantidad == null || cantidad < 0) {
      print('Ingrese una cantidad válida.');
    }
  }

  Map<String, dynamic> producto = {
    'nombre': nombre.trim(),
    'precio': precio,
    'cantidad': cantidad,
  };

  productos.add(producto);

  print('\nProducto agregado correctamente.');
  break;
        

      case '2':
  print('\n===== LISTA DE PRODUCTOS =====');

  if (productos.isEmpty) {
    print('No hay productos registrados.');
  } else {
    for (int i = 0; i < productos.length; i++) {
      print('\nProducto #${i + 1}');
      print('Nombre: ${productos[i]['nombre']}');
      print('Precio: \$${productos[i]['precio']}');
      print('Cantidad disponible: ${productos[i]['cantidad']}');
    }
  }

  break;

      case '3':
  print('\n===== ACTUALIZAR PRODUCTO =====');

  if (productos.isEmpty) {
    print('No hay productos registrados para actualizar.');
    break;
  }

  // Mostrar productos disponibles
  for (int i = 0; i < productos.length; i++) {
    print(
      '${i + 1}. ${productos[i]['nombre']} - '
      '\$${productos[i]['precio']} - '
      'Cantidad: ${productos[i]['cantidad']}',
    );
  }

  stdout.write('\nIngrese el número del producto a actualizar: ');
  String entrada = stdin.readLineSync() ?? '';
  int? numero = int.tryParse(entrada);

  // Validar número de producto
  if (numero == null || numero < 1 || numero > productos.length) {
    print('Número de producto inválido.');
    break;
  }

  // Obtener el producto seleccionado
  Map<String, dynamic> producto = productos[numero - 1];

  print('\nProducto seleccionado: ${producto['nombre']}');

  // Actualizar nombre
  stdout.write(
    'Nuevo nombre (Enter para conservar "${producto['nombre']}"): ',
  );
  String nuevoNombre = stdin.readLineSync() ?? '';

  if (nuevoNombre.trim().isNotEmpty) {
    producto['nombre'] = nuevoNombre.trim();
  }

  // Actualizar precio
  stdout.write(
    'Nuevo precio (Enter para conservar ${producto['precio']}): ',
  );
  String nuevoPrecio = stdin.readLineSync() ?? '';

  if (nuevoPrecio.trim().isNotEmpty) {
    double? precio = double.tryParse(nuevoPrecio);

    if (precio != null && precio >= 0) {
      producto['precio'] = precio;
    } else {
      print('Precio inválido. Se conservará el precio anterior.');
    }
  }

  // Actualizar cantidad
  stdout.write(
    'Nueva cantidad (Enter para conservar ${producto['cantidad']}): ',
  );
  String nuevaCantidad = stdin.readLineSync() ?? '';

  if (nuevaCantidad.trim().isNotEmpty) {
    int? cantidad = int.tryParse(nuevaCantidad);

    if (cantidad != null && cantidad >= 0) {
      producto['cantidad'] = cantidad;
    } else {
      print('Cantidad inválida. Se conservará la cantidad anterior.');
    }
  }

  print('\nProducto actualizado correctamente.');
  break;

      case '4':
       
  print('\n===== ELIMINAR PRODUCTO =====');

  if (productos.isEmpty) {
    print('No hay productos registrados para eliminar.');
    break;
  }

  // Mostrar productos disponibles
  for (int i = 0; i < productos.length; i++) {
    print(
      '${i + 1}. ${productos[i]['nombre']} - '
      '\$${productos[i]['precio']} - '
      'Cantidad: ${productos[i]['cantidad']}',
    );
  }

  stdout.write('\nIngrese el número del producto a eliminar: ');
  String entrada = stdin.readLineSync() ?? '';
  int? numero = int.tryParse(entrada);

  // Validar número
  if (numero == null || numero < 1 || numero > productos.length) {
    print('Número de producto inválido.');
    break;
  }

  String nombre = productos[numero - 1]['nombre'];

  productos.removeAt(numero - 1);

  print('\nProducto "$nombre" eliminado correctamente.');
  break;

      case '5':
        continuar = false;
        print('\nPrograma finalizado.');
        break;

      default:
        print('\nOpción inválida.');
    }
  }
}