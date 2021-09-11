import 'package:math_expressions/math_expressions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soulfenix/pages/calc_app.dart';
import 'package:soulfenix/pages/home_page.dart';

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
        primarySwatch: Colors.deepPurple,
        primaryColor: Colors.deepPurple,
        accentColor: Colors.deepPurple[600],
      ),
    );
  }
}