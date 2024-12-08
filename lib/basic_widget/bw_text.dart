// lib/simple_text.dart
import 'package:flutter/material.dart';

class BwText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const  Text('Praktek Text'),
        backgroundColor: Colors.brown,
        titleTextStyle: const TextStyle(color: Colors.white),
      ),
      body: const Center(
        child: Text(
          'Halo, ini adalah contoh sederhana penggunaan Text', 
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 1, 44, 78),
          ),
        ),
      ),
    );
  }
}
