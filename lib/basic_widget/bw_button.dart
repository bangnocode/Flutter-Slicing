// lib/simple_button.dart

import 'package:flutter/material.dart';

class BwButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktek Button'),
      ),
      body: Row(
        children: [
          ElevatedButton(
                onPressed: () {
                  print("button1 di click");
                },
                child: const Text("Button1")
            ),
            const SizedBox(width: 20.0),
            ElevatedButton(
                onPressed: () {
                  print("button2 di click");
                },
                child: const Text("Button2")
            ),
        ],
      )
    );
  }
}
