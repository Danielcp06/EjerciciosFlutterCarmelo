class Planeta {
  final String nombre;
  final String imagen;
  final String descripcion;

  const Planeta({
    required this.nombre,
    required this.imagen,
    required this.descripcion,
  });
}

class MockPlanetas {
  static const List<Planeta> listaPlanetas = [
    Planeta(
      nombre: 'Earth',
      imagen: 'assets/images/earth.png',
      descripcion: 'Tercer planeta del sistema solar y el único con agua líquida en la superficie.',
    ),
    Planeta(
      nombre: 'Venus',
      imagen: 'assets/images/venus.png',
      descripcion: 'Segundo planeta desde el Sol y el más caluroso del sistema solar.',
    ),
    Planeta(
      nombre: 'Mercury',
      imagen: 'assets/images/mercury.png',
      descripcion: 'El planeta más cercano al Sol y el más pequeño.',
    ),
    Planeta(
      nombre: 'Mars',
      imagen: 'assets/images/mars.png',
      descripcion: 'Conocido como el planeta rojo por el óxido de hierro de su superficie.',
    ),
    Planeta(
      nombre: 'Jupiter',
      imagen: 'assets/images/jupiter.png',
      descripcion: 'El planeta más grande del sistema solar, un gigante gaseoso.',
    ),
    Planeta(
      nombre: 'Saturn',
      imagen: 'assets/images/saturn.png',
      descripcion: 'Famoso por su espectacular sistema de anillos brillantes.',
    ),
    Planeta(
      nombre: 'Uranus',
      imagen: 'assets/images/uranus.png',
      descripcion: 'Gigante de hielo que rota prácticamente de lado.',
    ),
    Planeta(
      nombre: 'Neptune',
      imagen: 'assets/images/neptune.png',
      descripcion: 'El planeta más lejano del Sol, azotado por vientos supersónicos.',
    ),
    Planeta(
      nombre: 'Pluto',
      imagen: 'assets/images/pluto.png',
      descripcion: 'Planeta enano situado en el cinturón de Kuiper.',
    ),
  ];
}