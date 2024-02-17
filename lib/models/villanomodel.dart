class Villano {
  final String nombre;
  final String descripcion;

  Villano({
    required this.nombre,
    required this.descripcion,
  });

  factory Villano.fromJson(Map<String, dynamic> json) {
    return Villano(
      nombre: json['nombre'] ?? '',
      descripcion: json['descripcion'] ?? '',
    );
  }
}