// lib/simple_image.dart
import 'package:flutter/material.dart';

class BwImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktek Image'),
      ),
      body: const Center(
          child: Column(
        children: [
          Row(
            children: [
              Text("Logo Flutter"),
              SizedBox(width: 20.0),
              Image(
                image: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/2560px-Google-flutter-logo.svg.png'),
                width: 200,
              ),
            ],
          ),
          SizedBox(height: 20.0,),
          Row(
            children: [
              Text("Logo Github"),
              SizedBox(width: 20.0),
              Image(
                image: NetworkImage('https://cdn-icons-png.flaticon.com/256/25/25231.png'),
                width: 200,
              ),
            ],
          )
        ],
      )),
    );
  }
}
