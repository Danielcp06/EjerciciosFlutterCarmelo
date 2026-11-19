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
        title: const Text(
          'Planet Details',
          style: TextStyle(
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
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: ClipOval(
            child: Image.asset(
              planeta.imagen,
              width: 320,
              height: 320,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}