import 'package:flutter/material.dart';
import 'mock_data.dart';


class PrimeraScreen extends StatelessWidget {
  const PrimeraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final planetas = MockPlanetas.listaPlanetas;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
          itemCount: planetas.length,
          itemBuilder: (context, index) {
            final planeta = planetas[index];
            return Card(
              color: Colors.white,
              elevation: 1,
              margin: const EdgeInsets.symmetric(vertical: 4.0),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 6.0,
                ),
                leading: ClipOval(
                  child: Image.asset(
                    planeta.imagen,
                    width: 46,
                    height: 46,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  planeta.nombre,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xFF333333),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}