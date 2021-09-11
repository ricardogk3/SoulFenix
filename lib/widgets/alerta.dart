import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Alerta(String titulo, String texto, String imagem, String legenda) {
  return AlertDialog(
    backgroundColor: Color(0xFFDDDDDD),
    scrollable: true,
    contentPadding: EdgeInsets.all(2),
    insetPadding: EdgeInsets.all(4),
    actions: [
      TextButton(
        child: const Text('Voltar'),
        onPressed: () {
          // Navigator.pop();
        },
      ),
    ],
    title: Text(titulo),
    titleTextStyle: GoogleFonts.oswald(
      textStyle: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.w200,
          color: Color(0xFF000000),
          letterSpacing: 3),
    ),
    elevation: 5,
    content: Container(
      padding: EdgeInsets.all(2),
      // height: 120,
      child: Card(
        child: Expanded(
          child: Container(
            padding: EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Text(texto,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 5),
                  child: Image.asset(imagem),
                ),
                Container(
                  width: double.maxFinite,
                  child: Text(
                    legenda,
                    style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
