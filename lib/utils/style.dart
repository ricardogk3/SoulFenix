import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//oi
var cinza = Color(0xFFDDDDDD);
var vermelho = Color(0xFFCC2222);
var preto = Color(0xFF000000);
var branco = Color(0xFFFFFFFF);
var titulo = GoogleFonts.oswald(
  textStyle: TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.w300,
      color: Color(0xFF000000),
      letterSpacing: 3),
);
var tituloApp = GoogleFonts.oswald(
  textStyle: TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w300,
    color: Color(0xFFFFFFFF),
    letterSpacing: 3,
  ),
);
var texto = GoogleFonts.pragatiNarrow(
    textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w400));
var legenda = TextStyle(fontSize: 16, color: Color(0xFFDDDDDD));
var legendaMenu = TextStyle(fontSize: 16, color: Color(0xFFDDDDDD));
var itemMenu = TextStyle(
    color: Color(0xFFFFFFFF), fontSize: 24, fontWeight: FontWeight.w300);

var botao = ElevatedButton.styleFrom(
    primary: Color(0xFFCC2222),
    padding: EdgeInsets.symmetric(horizontal: 10),
    textStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.w600));
var bordaRedonda = BoxDecoration(
    borderRadius: BorderRadius.circular(5), color: Color(0xFFFFFFFF));
