import 'package:flutter/material.dart';
import 'mock_data.dart';

class SegundaScreen extends StatelessWidget {
  final Planeta planeta;

  const SegundaScreen({super.key, required this.planeta});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          planeta.nombre,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF616161),
        elevation: 2,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipOval(
                child: Image.asset(
                  planeta.imagen,
                  width: 220,
                  height: 220,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 32),
            Text(
              planeta.descripcion,
              style: const TextStyle(
                fontSize: 17,
                height: 1.4,
                color: Color(0xFF333333),
              ),
            ),
          ],
        ),
      ),
    );
  }
}