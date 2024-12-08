// lib/simple_center.dart
import 'package:flutter/material.dart';

class LyCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktek Center'),
      ),
      body: const Center(
        child: Text(
          'Teks ini berada di tengah!',
          style: TextStyle(fontSize: 24, color: Colors.blue),
        ),
      ),
    );
  }
}
