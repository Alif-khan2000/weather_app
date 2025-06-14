import 'package:flutter/material.dart';

class weather_info extends StatelessWidget {
  final String name;

  const weather_info({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Ink.image(image: AssetImage('images/$name.jpg'), fit: BoxFit.cover),
          Positioned(
            left: 35,
            bottom: 50,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              backgroundColor: Colors.blueGrey,
              child: Icon(Icons.arrow_back, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
