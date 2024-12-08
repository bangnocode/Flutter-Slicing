// lib/simple_gridview.dart
import 'package:flutter/material.dart';

class LyGridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktek GridView'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(6, (index) {
          return Card(
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                'Item ${index + 1}',
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          );
        }),
      ),
    );
  }
}
