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
      descripcion: 'El planeta más cercano al Sol y el más pequeño.',
    ),
    Planeta(
      nombre: 'Venus',
      distancia: '108.2 Millones Km',
      imagen: 'assets/images/venus.png',
      descripcion: 'Segundo planeta desde el Sol y el más caluroso del sistema solar.',
    ),
    Planeta(
      nombre: 'Earth',
      distancia: '149.5 Millones Km',
      imagen: 'assets/images/earth.png',
      descripcion: 'Tercer planeta del sistema solar y el único con agua líquida en la superficie.',
    ),
  ];
}