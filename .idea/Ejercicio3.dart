Map<String, double> calificaciones = {};

void main() {
  agregarCalificacion("Ahri", 9.5);
  agregarCalificacion("Yasuo", 7.8);
  agregarCalificacion("Jinx", 8.7);

  mostrarCalificaciones();
}

void agregarCalificacion(String estudiante, double calificacion) {
  calificaciones[estudiante] = calificacion;
  print("Calificación de $estudiante registrada: $calificacion.");
}

void mostrarCalificaciones() {
  print("\nCalificaciones:");
  calificaciones.forEach((estudiante, calificacion) {
    print("$estudiante: $calificacion");
  });
}
