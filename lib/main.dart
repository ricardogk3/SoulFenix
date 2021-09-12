import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
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
      home: AnimatedSplashScreen(
        duration: 5000,
        splashTransition: SplashTransition.fadeTransition,
        curve: Curves.easeInOut,
        animationDuration: Duration(seconds: 5),
        centered: true,
        backgroundColor: Colors.black,
        splash: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.center,
                matchTextDirection: true,
                repeat: ImageRepeat.noRepeat,
                image: AssetImage("assets/images/splash_screen.png"),
              ),
            ),
          ),
        ),
        nextScreen: HomePage(),
      ),
    );
  }
}
