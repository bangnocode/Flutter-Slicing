// lib/simple_sizedbox.dart
import 'package:flutter/material.dart';

class LySizedbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktek SizedBox'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.blue,
              width: 100,
              height: 100,
              child: const Center(
                child: Text(
                  'Box 1',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0, 
            ),
            Container(
              color: Colors.red,
              width: 100,
              height: 100,
              child: const Center(
                child: Text(
                  'Box 2',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
