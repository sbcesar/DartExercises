import 'dart:io';

List<String> tareas = [];

void main() {
  while (true) {
    stdout.write("Introduce una tarea (s --> salir): ");
    String? input = stdin.readLineSync();

    if (input == null) continue;

    if (input.toLowerCase() == 's') {
      print("\nSaliendo...");
      break;
    } else if (input.toLowerCase() == 'mostrar') {
      mostrarTareas();
    } else {
      agregarTarea(input);
    }
  }

  mostrarTareas();
}

void agregarTarea(String tarea) {
  tareas.add(tarea);
  print("Tarea $tarea añadida.");
}

void mostrarTareas() {
  print("\nLista de tareas:");
  for (int i = 0; i < tareas.length; i++) {
    print("  ${i + 1}. ${tareas[i]}");
  }
}