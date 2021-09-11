import 'package:flutter/material.dart';
import '/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SoulFenix',
      theme: ThemeData(
        primaryColor: Color(0xFFCC2222),
        accentColor: Color(0xFFDDDDDD),
      ),
      home: HomePage(),
    );
  }
}
