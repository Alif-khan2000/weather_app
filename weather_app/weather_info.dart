import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class weather_info extends StatelessWidget {
  final String name;

  const weather_info({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
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
          Positioned(
            left: 110,
            bottom: 50,
            child: Container(
              width: w * .62,
              height: 55,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Center(
                child: Text(name,style: GoogleFonts.aBeeZee(color: Colors.white),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
