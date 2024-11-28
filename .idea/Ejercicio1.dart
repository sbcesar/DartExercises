import 'dart:io';

Set<String> generosFavoritos = {};

void main() {
  print("Gestor de Géneros Musicales\n");

  while (true) {
    stdout.write("Introduce un género musical (s --> salir): ");
    String? input = stdin.readLineSync();

    if (input.toLowerCase() == 's') {
      print("\nSaliendo...");
      break;
    }

    agregarGenero(input);
  }

  print("\nTus géneros favoritos son: $generosFavoritos");
}

void agregarGenero(String genero) {
  if (generosFavoritos.length >= 5) {
    print("Error: No puedes agregar más de 5 géneros favoritos.");
  } else if (!generosFavoritos.add(genero)) {
    print("Error: El género $genero ya está en la lista.");
  } else {
    print("Género $genero agregado.");
  }
}



