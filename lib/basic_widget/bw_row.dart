// lib/simple_row_text.dart
import 'package:flutter/material.dart';

class BwRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktek Row'),
      ),
      body: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Text 1',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.blue,
              ),
            ),
            SizedBox(width: 20.0),
            Text(
              'Text 2',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.green,
              ),
            ),
            SizedBox(width: 20.0),
            Text(
              'Text 3',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
