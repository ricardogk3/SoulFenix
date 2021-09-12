import 'package:math_expressions/math_expressions.dart';
import 'package:flutter/material.dart';
import '/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import './pages/calc_button.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFCC2222),
        accentColor: Color(0xFFDDDDDD),
        textTheme: GoogleFonts.pragatiNarrowTextTheme(
          (Theme.of(context).textTheme),
        ),
      ),
    );
  }
}
