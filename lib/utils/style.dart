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
var texto = GoogleFonts.pragatiNarrow(
    textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w400));
var legenda = TextStyle(fontSize: 16, color: Colors.grey.shade600);
var botao = ElevatedButton.styleFrom(
    primary: Color(0xFFCC2222),
    padding: EdgeInsets.symmetric(horizontal: 10),
    textStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.w600));
