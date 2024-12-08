// lib/simple_appbar.dart
import 'package:flutter/material.dart';

class BwAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contoh AppBar'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text('Halo! ini adalah contoh penggunaan AppBar'),
      ),
    );
  }
}
