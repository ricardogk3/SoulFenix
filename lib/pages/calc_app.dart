import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:math_expressions/math_expressions.dart';
import 'package:soulfenix/pages/calc_button.dart';

class CalcApp extends StatefulWidget {
  @override
  CalcAppState createState() => CalcAppState();
}

class CalcAppState extends State<CalcApp> {
  String msg = 'Não é possível inserir mais de 10 dígitos.';
  String _history = '';
  String _expression = '';
  double tamanhoTexto = 15;
  bool virgula = false;
  bool zerador = false;
  bool czerador = true;

  void allClear(String text) {
    setState(() {
      _history = '';
      _expression = '';
      virgula = false;
    });
  }

  void evaluate(text) {
    String valor = '';
    print(text);
    switch (text) {
      case "PET":
        valor = '0,60';
        break;
      case "PEAD":
        valor = '1,20';
        break;
      case "PVC":
        valor = '1,00';
        break;
      case "PP":
        valor = '0,90';
        break;
      case "PS":
        valor = '0,70';
        break;
      case "PEBD":
        valor = '1,05';
        break;
      case "ALUMÍNIO":
        valor = '5';
        break;
      case "PAPEL":
        valor = '0,60';
        break;
      case "COBRE":
        valor = '15,5';
        break;
      case "TETRA PAK":
        valor = '1,50';
        break;
      case "VIDRO":
        valor = '3,00';
        break;
    }

    setState(() {
      if (czerador) {
        if (_expression != ',') {
          _history = _expression + "*" + valor;
          _expression = (double.parse(_expression.replaceAll(',', '.')) *
                  double.parse(valor.replaceAll(',', '.')))
              .toStringAsFixed(2);
          _expression = "R\$ " + _expression.replaceAll('.', ',');
          czerador = false;
        }
      }
      zerador = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    void numClick(String text) {
      setState(() => {
            czerador = true,
            if (zerador)
              {
                _expression = '',
                zerador = false,
                virgula = false,
              },
            if (virgula)
              {
                if (text != ',')
                  {
                    if (_expression.length < 10)
                      {print(_expression.length), _expression += text}
                    else
                      {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Só pode ser inserido uma vírgula"),
                            duration: const Duration(seconds: 5),
                          ),
                        )
                      },
                    print('1 virgula foi digitada!'),
                    virgula = true,
                  }
                else
                  {
                    print(text),
                  }
              }
            else
              {
                if (text == ',')
                  {
                    if (_expression.length < 10)
                      {print(_expression.length), _expression += text}
                    else
                      {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Só pode ser inserido uma vírgula"),
                            duration: const Duration(seconds: 5),
                          ),
                        ),
                      },
                    print('2 virgulas foi digitada!'),
                    virgula = true,
                  }
                else
                  {
                    if (_expression.length < 10)
                      {print(_expression.length), _expression += text}
                    else
                      {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(msg),
                            duration: const Duration(seconds: 5),
                          ),
                        )
                      },
                  }
              }
          });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w200,
            )),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFDDDDDD),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text(
                  _history,
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 24,
                      color: Color(0xFF545F61),
                    ),
                  ),
                ),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  _expression,
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalcButton(
                  text: '7',
                  callback: numClick,
                  textColor: 0xFFCC2222,
                ),
                CalcButton(
                  text: '8',
                  callback: numClick,
                  textColor: 0xFFCC2222,
                ),
                CalcButton(
                  text: '9',
                  callback: numClick,
                  textColor: 0xFFCC2222,
                ),
                CalcButton(
                  text: 'PET',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFFCC2222,
                  textSize: tamanhoTexto,
                  callback: evaluate,
                  // valor: "+1,2",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalcButton(
                  text: '4',
                  callback: numClick,
                  textColor: 0xFFCC2222,
                ),
                CalcButton(
                  text: '5',
                  callback: numClick,
                  textColor: 0xFFCC2222,
                ),
                CalcButton(
                  text: '6',
                  callback: numClick,
                  textColor: 0xFFCC2222,
                ),
                CalcButton(
                  text: 'PEAD',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFFCC2222,
                  textSize: tamanhoTexto - 1,
                  callback: evaluate,
                  // valor: "_1,5",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalcButton(
                  text: '1',
                  callback: numClick,
                  textColor: 0xFFCC2222,
                ),
                CalcButton(
                  text: '2',
                  callback: numClick,
                  textColor: 0xFFCC2222,
                ),
                CalcButton(
                  text: '3',
                  callback: numClick,
                  textColor: 0xFFCC2222,
                ),
                CalcButton(
                  text: 'PVC',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFFCC2222,
                  textSize: tamanhoTexto,
                  callback: evaluate,
                  // valor: "1.0",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalcButton(
                  text: ',',
                  callback: numClick,
                  textColor: 0xFFCC2222,
                ),
                CalcButton(
                  text: '0',
                  callback: numClick,
                  textColor: 0xFFCC2222,
                ),
                CalcButton(
                  text: '00',
                  callback: numClick,
                  textColor: 0xFFCC2222,
                  textSize: 26,
                ),
                CalcButton(
                  text: 'PP',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFFCC2222,
                  callback: evaluate,
                  textSize: tamanhoTexto,
                  // valor: "0.2",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalcButton(
                  text: 'AC',
                  fillColor: 0xFF000000,
                  textColor: 0xFFCC2222,
                  textSize: 20,
                  callback: allClear,
                ),
                CalcButton(
                  text: 'COBRE',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFFCC2222,
                  callback: evaluate,
                  textSize: tamanhoTexto - 3,
                  // valor: "0.1",
                ),
                CalcButton(
                  text: 'ALUMÍNIO',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFFCC2222,
                  callback: evaluate,
                  textSize: tamanhoTexto - 2,
                  // valor: "2.3",
                ),
                CalcButton(
                  text: 'PS',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFFCC2222,
                  callback: evaluate,
                  textSize: tamanhoTexto,
                  // valor: "0.2",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalcButton(
                  text: 'VIDRO',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFFCC2222,
                  textSize: tamanhoTexto - 3,
                  callback: evaluate,
                ),
                CalcButton(
                  text: 'TETRA PAK',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFFCC2222,
                  textSize: tamanhoTexto - 3,
                  callback: evaluate,
                ),
                CalcButton(
                  text: 'PAPEL',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFFCC2222,
                  callback: evaluate,
                  textSize: tamanhoTexto - 3,
                  // valor: "0.02",
                ),
                CalcButton(
                  text: 'PEBD',
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFFCC2222,
                  callback: evaluate,
                  textSize: tamanhoTexto - 1,
                  // valor: "0.12",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
