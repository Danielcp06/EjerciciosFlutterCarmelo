import 'package:flutter/cupertino.dart';
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
          backgroundColor: Colors.black54,
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
                      color: Colors.green,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }


}
