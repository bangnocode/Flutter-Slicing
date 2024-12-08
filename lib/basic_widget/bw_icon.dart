// lib/simple_row.dart
import 'package:flutter/material.dart';

class BwIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktek Icon'),
      ),
      body: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.star, size: 50.0, color: Colors.yellow),
            SizedBox(width: 20.0),
            Icon(Icons.star, size: 50.0, color: Colors.blue),
            SizedBox(width: 20.0),
            Icon(Icons.star, size: 50.0, color: Colors.green),
          ],
        ),
      ),
    );
  }
}
