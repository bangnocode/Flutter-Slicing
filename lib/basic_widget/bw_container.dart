// lib/simple_appbar.dart
import 'package:flutter/material.dart';

class BwContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktek Container'),
        backgroundColor: Colors.orange[400],
      ),
      body: Container(
        color: Colors.yellow,
        child: const Center(
          child: Text('Halo! ini adalah contoh penggunaan Container'),
        ),
      ),
    );
  }
}
