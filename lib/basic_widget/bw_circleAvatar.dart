// lib/simple_circle_avatar.dart
import 'package:flutter/material.dart';

class BwCircleavatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktek CircleAvatar'),
        backgroundColor: Colors.black87,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20.0
        ),
      ),
      body: const Center(
        child: Column(
          children: [
            SizedBox(height: 20.0),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue,
              child: Text(
                'F',
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "Fachrezy",
              style: TextStyle(
                fontSize: 20.0
              ),
            )
          ],
      )),
    );
  }
}
