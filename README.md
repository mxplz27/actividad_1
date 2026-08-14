# Taller 1 - Dart + Gitflow

## Descripción

Aplicación desarrollada en **Dart desde consola** para gestionar un catálogo de productos de una tienda mediante un sistema CRUD.

El programa permite **crear, consultar, actualizar y eliminar productos**, utilizando listas, mapas, ciclos y estructuras `switch-case`.

## Objetivo

Desarrollar una aplicación CRUD en Dart que permita gestionar un catálogo de productos de una tienda de manera sencilla desde la consola.

## Funcionalidades

La aplicación cuenta con un menú principal con las siguientes opciones:

1. **Agregar producto**

   * Registrar el nombre del producto.
   * Registrar el precio.
   * Registrar la cantidad disponible.

2. **Listar productos**

   * Mostrar el número de índice.
   * Mostrar el nombre.
   * Mostrar el precio.
   * Mostrar la cantidad disponible.

3. **Actualizar producto**

   * Seleccionar un producto por su número.
   * Modificar el nombre.
   * Modificar el precio.
   * Modificar la cantidad disponible.
   * Permitir actualizar únicamente un dato y conservar los demás valores.

4. **Eliminar producto**

   * Seleccionar un producto por su número.
   * Eliminarlo de la lista.

5. **Salir**

   * Finalizar la ejecución del programa.

## Conceptos utilizados

Durante el desarrollo se aplicaron los siguientes conceptos:

* Listas (`List`)
* Mapas (`Map`)
* Ciclos `while` y `for`
* Estructuras `switch-case`
* Condicionales `if`
* Entrada de datos mediante consola
* Validación de datos
* Operaciones CRUD

## Estructura del proyecto

```text
actividad_1/
├── bin/
│   └── actividad_1.dart
├── lib/
├── test/
├── .gitignore
├── analysis_options.yaml
├── CHANGELOG.md
├── pubspec.lock
├── pubspec.yaml
└── README.md
```

## Ejecución

Para ejecutar el proyecto es necesario tener instalado Dart.

Desde la terminal, ubicándose en la carpeta principal del proyecto, ejecutar:

```bash
dart run
```

El programa mostrará el menú principal:

```text
===== CATÁLOGO DE PRODUCTOS =====
1. Agregar producto
2. Listar productos
3. Actualizar producto
4. Eliminar producto
5. Salir
=================================
Seleccione una opción:
```

## Validaciones

La aplicación cuenta con validaciones para mejorar el funcionamiento del programa, entre ellas:

* El nombre del producto no puede estar vacío.
* El precio debe ser un valor numérico válido.
* El precio no puede ser negativo.
* La cantidad debe ser un número entero válido.
* La cantidad no puede ser negativa.
* El número del producto debe existir para actualizarlo o eliminarlo.
* Las opciones del menú deben corresponder a las opciones disponibles.

## Git y Gitflow

El proyecto utiliza Git para controlar las versiones del código.

La rama principal de desarrollo utilizada durante el proyecto es:

```text
develop
```

Los cambios fueron organizados mediante commits asociados a cada funcionalidad.

### Commits principales

```text
chore: crear estructura inicial del proyecto Dart
feat: agregar menu principal
feat: agregar registro de productos
feat: agregar listado de productos
feat: agregar actualizacion de productos
feat: agregar eliminacion de productos
feat: agregar validaciones de entrada
```

## Autor

**Mariana López**
