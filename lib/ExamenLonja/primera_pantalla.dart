import 'package:ejercicios/ExamenLonja/mock_data.dart';
import 'package:ejercicios/ExamenLonja/segunda_pantalla.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PrimeraPantalla(),
    );
  }
}

class PrimeraPantalla extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("La Lonja"),
        actions: [Icon(Icons.sailing_outlined)],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Image.asset(mockTiposPescado[0].imagenUrl),
            title: Text(mockTiposPescado[0].nombre),
            subtitle: Text(mockTiposPescado[0].descripcion),
            trailing: IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SegundaPantalla(0)),
              ),
              icon: Icon(Icons.arrow_right),
            ),
          ),
          ListTile(
            leading: Image.asset(mockTiposPescado[1].imagenUrl),
            title: Text(mockTiposPescado[1].nombre),
            subtitle: Text(mockTiposPescado[1].descripcion),
            trailing: IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SegundaPantalla(1)),
              ),
              icon: Icon(Icons.arrow_right),
            ),
          ),
          ListTile(
            leading: Image.asset(mockTiposPescado[2].imagenUrl),
            title: Text(mockTiposPescado[2].nombre),
            subtitle: Text(mockTiposPescado[2].descripcion),
            trailing: IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SegundaPantalla(2)),
              ),
              icon: Icon(Icons.arrow_right),
            ),
          ),
          ListTile(
            leading: Image.asset(mockTiposPescado[3].imagenUrl),
            title: Text(mockTiposPescado[3].nombre),
            subtitle: Text(mockTiposPescado[3].descripcion),
            trailing: IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SegundaPantalla(3)),
              ),
              icon: Icon(Icons.arrow_right),
            ),
          ),
        ],
      ),
    );
  }
}
