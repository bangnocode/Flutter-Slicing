// lib/simple_aspect_ratio.dart
import 'package:flutter/material.dart';

class LyAspecratio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktek AspectRatio'),
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.yellow,
              child: const Center(
                child: Text(
                  '16:9 Aspect Ratio',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
