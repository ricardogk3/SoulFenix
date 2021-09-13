import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:soulfenix/pages/calc_button.dart';

class Latinha extends StatefulWidget {
  @override
  LatinhaState createState() => LatinhaState();
}

class LatinhaState extends State<Latinha> {
  var maskFormatter = new MaskTextInputFormatter(
      mask: '##########', filter: {"#": RegExp(r'[0-9]')});
  // String a = 'R\$ ';
  final _formKey = GlobalKey<FormState>();
  String msg = 'Não é possível inserir mais de 10 dígitos.';
  String _expression = '';

  String quantidade = '';

  void numClick(String text) {
    setState(() => quantidade += text);
    print(quantidade);
  }

  void evaluate(text) {
    String valor = '5';

    setState(() {
      _expression = (double.parse(quantidade) * 0.014925 * double.parse(valor))
          .toStringAsFixed(2);
      _expression = "R\$ " + _expression;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latinheira\$",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w200,
            )),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFDDDDDD),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(12),
                child: Text(
                  _expression,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                validator: (String? texto) {
                  if (texto != null && texto.isNotEmpty) {
                    if (texto.length < 1)
                      return 'Digite a quantidade de produtos';
                  } else {
                    return 'Campo Obrigatório';
                  }
                },
                inputFormatters: [maskFormatter],
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFFCC2222), width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFFCC2222), width: 1.0),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: "Quantidade",
                ),
                onChanged: (texto) => {quantidade = texto, print(quantidade)},
              ),

              SizedBox(height: 10),

              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(width: 1.0, color: Color(0xFFCC2222)),
                ),
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    print("logou1");
                    setState(() {
                      String valor = '5';
                      _expression = (double.parse(quantidade) *
                              0.014925 *
                              double.parse(valor))
                          .toStringAsFixed(2);
                      _expression = "R\$ " + _expression;
                    });
                  } else {
                    print("object");

                    var msg = 'Dados incorretos';

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(msg),
                      ),
                    );
                  }
                },
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Converter quantidade de latinha para dinheiro",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFCC2222),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
