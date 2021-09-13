// import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import '/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFCC2222),
        accentColor: Color(0xFFDDDDDD),
        textTheme: GoogleFonts.pragatiNarrowTextTheme(
          (Theme.of(context).textTheme),
        ),
      ),
      home: SplashScreenView(
        navigateRoute: HomePage(),
        duration: 5000,
        imageSize: 150,
        imageSrc: "assets/images/splash_screen.png",
        text: "SoulFenix",
        textType: TextType.ColorizeAnimationText,
        textStyle: TextStyle(
          fontSize: 50.0,
        ),
        colors: [
          Colors.white,
          Colors.red,
          Colors.white,
          Colors.white,
          Colors.white,
        ],
        backgroundColor: Colors.black,
      ),
    );
  }
}
