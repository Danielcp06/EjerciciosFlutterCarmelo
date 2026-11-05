import 'package:flutter/material.dart';

void main() {
  runApp(Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text("Tablero de Juego Tactico"),
          backgroundColor: Colors.blueGrey[900],
        ),
        backgroundColor: Colors.white,

        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(

                      color: Colors.blueGrey[700],
                      child: Column(

                        children: [
                          nuevaFila(),
                          nuevaFila(),
                          nuevaFila(),
                          nuevaFila(),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.blueGrey[700],
                      child: Container(
                        margin: EdgeInsets.all(2.00),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blueGrey[600],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(child: Text("Jugador 1 (Azul)")),
                                  Center(child: Icon(Icons.person, color: Colors.blue,)),
                                  Center(child: Text("Puntos: 120"),),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Center(child: Text("Jugador 2 (Rojo)")),
                                  Center(child: Icon(Icons.person, color: Colors.red,)),
                                  Center(child: Text("Puntos: 120"),),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),



                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: ListView(
                  children: [
                    Center(child: Text("Historial de Movimientos"),),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text("1"),
                      ),
                      title: Text("Jugador 1 movio pieza"),
                      subtitle: Text("Caballero a la casilla C4"),
                      trailing: Icon(Icons.history),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.red,
                        child: Text("2"),
                      ),
                      title: Text("Jugador 2 movio pieza"),
                      subtitle: Text("Caballero a la casilla C4"),
                      trailing: Icon(Icons.history),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text("3"),
                      ),
                      title: Text("Jugador 1 movio pieza"),
                      subtitle: Text("Caballero a la casilla C4"),
                      trailing: Icon(Icons.history),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.red,
                        child: Text("4"),
                      ),
                      title: Text("Jugador 2 movio pieza"),
                      subtitle: Text("Caballero a la casilla C4"),
                      trailing: Icon(Icons.history),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget nuevaCasilla() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(2.00),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.blueGrey[600],
        ),
        child: Center(child: Icon(Icons.shield)),
      ),
    );
  }

  Widget nuevaFila() {
    return Expanded(
      child: Row(
        children: [
          nuevaCasilla(),
          nuevaCasilla(),
          nuevaCasilla(),
          nuevaCasilla(),
        ],
      ),
    );
  }

}

