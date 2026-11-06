import 'package:ejercicios/ExamenLonja/mock_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SegundaPantalla extends StatelessWidget {
  final int id;

  const SegundaPantalla(this.id);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Detalle Captura")),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.blueGrey,
              child: Container(
                margin: EdgeInsets.all(12.00),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blueGrey[700],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(mockCapturas[id].calidad),
                        Text(mockTiposPescado[id].nombre),
                      ],
                    ),
                    Center(child: Text("${mockCapturas[id].precioPorKg}€/kg")),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blueGrey,
              child: Container(
                margin: EdgeInsets.all(12.00),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blueGrey[700],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Datos del Barco"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(mockBarcos[id].nombre),
                        Text(mockCapturas[id].horaDesembarque)
                      ],
                    ),
                    Text(mockBarcos[id].artePesca),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blueGrey,
              child: Container(
                margin: EdgeInsets.all(12.00),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blueGrey[700],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Descripcion"),
                    Text(mockTiposPescado[id].descripcion)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
