// lib/simple_wrap.dart
import 'package:flutter/material.dart';

class LyWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Wrap Example'),
      ),
      body: Center(
        child: Wrap(
          spacing: 8.0,
          runSpacing: 8.0, 
          children: <Widget>[
            Container(
              color: Colors.blue,
              width: 100,
              height: 100,
              child: const Center(child: Text('Box 1', style: TextStyle(color: Colors.white))),
            ),
            Container(
              color: Colors.red,
              width: 100,
              height: 100,
              child: const Center(child: Text('Box 2', style: TextStyle(color: Colors.white))),
            ),
            Container(
              color: Colors.green,
              width: 100,
              height: 100,
              child: const Center(child: Text('Box 3', style: TextStyle(color: Colors.white))),
            ),
            Container(
              color: Colors.orange,
              width: 100,
              height: 100,
              child: const Center(child: Text('Box 4', style: TextStyle(color: Colors.white))),
            ),
            Container(
              color: Colors.purple,
              width: 100,
              height: 100,
              child: const Center(child: Text('Box 5', style: TextStyle(color: Colors.white))),
            ),
          ],
        ),
      ),
    );
  }
}
