import 'package:flutter/material.dart';
import 'package:hello_world/weather_app/weather_home.dart';
void main(){
  runApp(weather());
}
class weather extends StatelessWidget {
  const weather({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: weather_home(),
    );
  }
}
