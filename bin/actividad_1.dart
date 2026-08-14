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
        print('\nAgregar producto');
        break;

      case '2':
        print('\nListar productos');
        break;

      case '3':
        print('\nActualizar producto');
        break;

      case '4':
        print('\nEliminar producto');
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