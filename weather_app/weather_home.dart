import 'package:flutter/material.dart';
import 'package:hello_world/weather_app/weather_info.dart';
import 'package:google_fonts/google_fonts.dart';

class weather_home extends StatelessWidget {
  const weather_home({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Weather App",
          style: GoogleFonts.aBeeZee(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        backgroundColor: Colors.blueGrey[300],
      ),
      backgroundColor: Colors.blueGrey[300],
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.blueGrey,
            ),
            width: w * 0.7,
            height: h * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                btn_nav(country: 'INDIA'),
                btn_nav(country: 'CANADA'),
                btn_nav(country: 'UNITED STATES'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class btn_nav extends StatelessWidget {
  final String country;

  const btn_nav({super.key, required this.country});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) {
              return weather_info(name: country);
            },
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(200, 60), // Width x Height
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40), // Boxy corners
        ),
      ),
      child: Text(
        country,
        style: GoogleFonts.aBeeZee(
          color: Colors.blueGrey,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
