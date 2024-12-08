// lib/simple_scaffold.dart
import 'package:flutter/material.dart';

class BwScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktek Scaffold'),
      ),
      body: const Center(
        child: Text('Halo! ini adalah contoh penggunaan Scaffold'),
      ),
    );
  }
}
