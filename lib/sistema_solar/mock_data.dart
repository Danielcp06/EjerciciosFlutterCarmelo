class Planeta {
  final String nombre;
  final String distancia;
  final String imagen;
  final String descripcion;

  const Planeta({
    required this.nombre,
    required this.distancia,
    required this.imagen,
    required this.descripcion,
  });
}

class MockPlanetas {
  static const List<Planeta> listaPlanetas = [
    Planeta(
      nombre: 'Mercury',
      distancia: '57.9 Millones Km',
      imagen: 'assets/images/mercury.png',
      descripcion: 'Mercury is the smallest planet in our solar system and closest to the Sun.',
    ),
    Planeta(
      nombre: 'Venus',
      distancia: '108.2 Millones Km',
      imagen: 'assets/images/venus.png',
      descripcion: 'Venus’ thick atmosphere makes it the hottest planet in our solar system.',
    ),
    Planeta(
      nombre: 'Earth',
      distancia: '149.5 Millones Km',
      imagen: 'assets/images/earth.png',
      descripcion: 'Earth is our home planet and the only place we know of so far that’s inhabited by living things.',
    ),
  ];
}