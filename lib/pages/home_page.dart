import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var cinza = Color(0xFFDDDDDD);
  var vermelho = Color(0xFFCC2222);
  var pretro = Color(0xFF000000);
  var branco = Color(0xFFFFFFFF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SoulFenix",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w200,
            )),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            child: Text(
              "Título",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w200,
                color: cinza,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(2),
            height: 120,
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Imagem"),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Texto 1",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("Texto 2"),
                          Text("Texto 3"),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
