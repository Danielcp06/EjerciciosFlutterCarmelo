import 'package:flutter/material.dart';
import 'mock_data.dart';
import 'segunda_screen.dart';

class PrimeraScreen extends StatelessWidget {
  const PrimeraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final planetas = MockPlanetas.listaPlanetas;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Solar System',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF616161),
        elevation: 2,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        itemCount: planetas.length,
        itemBuilder: (context, index) {
          final planeta = planetas[index];
          return ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 14.0,
            ),
            leading: ClipOval(
              child: Image.asset(
                planeta.imagen,
                width: 48,
                height: 48,
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
            subtitle: Text(
              planeta.distancia,
              style: const TextStyle(
                fontSize: 13,
                color: Color(0xFF888888),
              ),
            ),
            trailing: const Icon(
              Icons.chevron_right,
              color: Color(0xFF9E9E9E),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SegundaScreen(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}