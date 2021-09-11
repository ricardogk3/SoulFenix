import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var cinza = Color(0xFFDDDDDD);
  var vermelho = Color(0xFFCC2222);
  var preto = Color(0xFF000000);
  var branco = Color(0xFFFFFFFF);
  var texto = TextStyle(fontWeight: FontWeight.w400);
  var legenda = TextStyle(fontSize: 16, color: Colors.grey.shade600);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDDDDDD),
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
            margin: EdgeInsets.only(top: 30),
            child: Text(
              "Você sabe o que \nsignifica reciclagem?",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w200,
                color: preto,
                wordSpacing: 5,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            padding: EdgeInsets.all(2),
            // height: 120,
            child: Card(
              child: Expanded(
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                          style: texto),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Image.asset("assets/images/main_reciclagem.jpg"),
                      ),
                      Container(
                        width: double.maxFinite,
                        child: Text(
                          "legenda",
                          style: legenda,
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
