import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'calc_app.dart';
import '../widgets/cartao.dart';
import '../utils/style.dart';
import 'mapa.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      drawer: Drawer(
        child: Container(
          alignment: Alignment.bottomLeft,
          color: vermelho,
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DrawerHeader(
                  child: Container(
                      color: Color(0xFFFFFFFF),
                      child: Center(
                          child: Image.asset("assets/images/petropolis.png"))),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Mapa()));
                  },
                  child: Container(
                    child: Text(
                      "Mapa",
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 24,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CalcApp()));
                  },
                  child: Container(
                    child: Text(
                      "Calculadora",
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 24,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Cartao(
                "Você sabe o que \nsignifica reciclagem?",
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at posuere dolor. Maecenas eu augue sit amet lorem congue porttitor. Nunc et nunc eu mauris interdum consequat. Suspendisse mauris elit, auctor eget pretium ac, faucibus ac mi. Phasellus hendrerit ante non sem varius, quis luctus metus ullamcorper. Ut mi lacus, consectetur quis nisi a, molestie imperdiet nisl. Suspendisse ipsum ligula, dignissim sed sem non, sodales sodales enim. Nulla quis est volutpat purus auctor rutrum sed a ante. Donec finibus pellentesque consectetur. Donec dignissim augue vitae tellus accumsan interdum. Fusce ut nunc vitae tortor venenatis imperdiet.",
                "assets/images/main_reciclagem.jpg",
                "Legenda"),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                //****** MATERIAIS BASICOS DE RECICLAGEM ******/
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 10),
                  child: Text(
                    "Materiais básicos \npara reciclagem",
                    style: GoogleFonts.oswald(
                      textStyle: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w200,
                          color: Color(0xFF000000),
                          letterSpacing: 3),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                //***** METAL *****/
                Container(
                  padding: EdgeInsets.all(2),
                  child: Card(
                    child: Expanded(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Text("Metal",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w400)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15, bottom: 5),
                              child: Image.asset("assets/images/metal.jpg"),
                            ),
                            Container(
                              width: double.maxFinite,
                              child: Text(
                                "Torneiras velhas feitas de metal.",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey.shade600),
                                textAlign: TextAlign.right,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15, bottom: 10),
                              child: Text(
                                  "Muitos não sabem, mas o Metal é um dos mais valiosos materiais que vão para as reciclagens. Conhecido também como Latão, pode ser encontrado em algumas torneiras e também em algumas pias. ",
                                  style: texto),
                            ),
                            //***** BOTOES DE POPUPS *****/
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    style: botao,
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Alerta(
                                              "Latinha",
                                              "O material mais conhecido quando se fala da reciclagem de alumínio com certeza é a latinha. Por ela, muitas famílias garantem a renda mensal, abrindo pequenas reciclagens para compras ou trabalhando em alguma empresa maior. A Latinha é o carro chefe das empresas de reciclagem, e pode ser facilmente encontrada e comercializada em qualquer lugar do mundo.",
                                              "assets/images/latinha.jpg",
                                              "Latinhas feitas de alumínio");
                                        },
                                      );
                                    },
                                    child: Text("Latinha"),
                                  ),
                                  SizedBox(width: 10),
                                  ElevatedButton(
                                    style: botao,
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Alerta(
                                              "Esquadrilha",
                                              "Um alumínio que tem grande valor e parcela do mercado de reciclagem é o alumínio de Esquadrilhas. Conhecido também como Perfil, pode ter duas categorias: Perfil Pintado e Perfil Limpo (ou de primeira), sendo que o primeiro tem menos valor que o segundo. Na foto vemos o Perfil de Primeira, pois não possuí nenhuma camada de tinta.",
                                              "assets/images/esquadrilha.jpg",
                                              "Esquadrilhas de metal");
                                        },
                                      );
                                    },
                                    child: Text("Esquadrilha"),
                                  ),
                                  SizedBox(width: 10),
                                  ElevatedButton(
                                    style: botao,
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Alerta(
                                              "Panelas",
                                              "Por falta de informações, muitas pessoas acabam jogando panelas de alumínio no lixo, por achar que não possuem mais valor após perderem ultilidade na cozinha. As panelas tomam conta de grande parte no mercado de sucatas de aluminios. ",
                                              "assets/images/panelas.jpg",
                                              "Panelas velhas");
                                        },
                                      );
                                    },
                                    child: Text("Panelas"),
                                  ),
                                  SizedBox(width: 10),
                                  ElevatedButton(
                                    style: botao,
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Alerta(
                                              "Spray",
                                              "Todo mundo usa ou ja usou desodorante spray, e a grande maioria dessas pessoas acabam descartando no lixo sem saber que esse aluminio pode ser vendido para uma reciclagem. Devemos apenas observar pois, possuem alguns sprays que são feitos de ferro, e não de alumínio. Para saber basta aproximar qualquer ímã e ele fará a identificação.",
                                              "assets/images/spray.jpg",
                                              "Frascos de spray vazios");
                                        },
                                      );
                                    },
                                    child: Text("Spray"),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                //***** PLASTICO *****/
                Container(
                  padding: EdgeInsets.all(2),
                  child: Card(
                    child: Expanded(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Text("Plástico",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w400)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15, bottom: 5),
                              child: Image.asset("assets/images/plastico.jpg"),
                            ),
                            Container(
                              width: double.maxFinite,
                              child: Text(
                                "Torneiras velhas feitas de metal.",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey.shade600),
                                textAlign: TextAlign.right,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15, bottom: 10),
                              child: Text(
                                  "Muitos não sabem, mas o Metal é um dos mais valiosos materiais que vão para as reciclagens. Conhecido também como Latão, pode ser encontrado em algumas torneiras e também em algumas pias. ",
                                  style: texto),
                            ),
                            //***** BOTOES DE POPUPS *****/
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    style: botao,
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Alerta(
                                              "Latinha",
                                              "O material mais conhecido quando se fala da reciclagem de alumínio com certeza é a latinha. Por ela, muitas famílias garantem a renda mensal, abrindo pequenas reciclagens para compras ou trabalhando em alguma empresa maior. A Latinha é o carro chefe das empresas de reciclagem, e pode ser facilmente encontrada e comercializada em qualquer lugar do mundo.",
                                              "assets/images/latinha.jpg",
                                              "Latinhas feitas de alumínio");
                                        },
                                      );
                                    },
                                    child: Text("Latinha"),
                                  ),
                                  SizedBox(width: 10),
                                  ElevatedButton(
                                    style: botao,
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Alerta(
                                              "Esquadrilha",
                                              "Um alumínio que tem grande valor e parcela do mercado de reciclagem é o alumínio de Esquadrilhas. Conhecido também como Perfil, pode ter duas categorias: Perfil Pintado e Perfil Limpo (ou de primeira), sendo que o primeiro tem menos valor que o segundo. Na foto vemos o Perfil de Primeira, pois não possuí nenhuma camada de tinta.",
                                              "assets/images/esquadrilha.jpg",
                                              "Esquadrilhas de metal");
                                        },
                                      );
                                    },
                                    child: Text("Esquadrilha"),
                                  ),
                                  SizedBox(width: 10),
                                  ElevatedButton(
                                    style: botao,
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Alerta(
                                              "Panelas",
                                              "Por falta de informações, muitas pessoas acabam jogando panelas de alumínio no lixo, por achar que não possuem mais valor após perderem ultilidade na cozinha. As panelas tomam conta de grande parte no mercado de sucatas de aluminios. ",
                                              "assets/images/panelas.jpg",
                                              "Panelas velhas");
                                        },
                                      );
                                    },
                                    child: Text("Panelas"),
                                  ),
                                  SizedBox(width: 10),
                                  ElevatedButton(
                                    style: botao,
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Alerta(
                                              "Spray",
                                              "Todo mundo usa ou ja usou desodorante spray, e a grande maioria dessas pessoas acabam descartando no lixo sem saber que esse aluminio pode ser vendido para uma reciclagem. Devemos apenas observar pois, possuem alguns sprays que são feitos de ferro, e não de alumínio. Para saber basta aproximar qualquer ímã e ele fará a identificação.",
                                              "assets/images/spray.jpg",
                                              "Frascos de spray vazios");
                                        },
                                      );
                                    },
                                    child: Text("Spray"),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                //***** PAPEL *****/
                Container(
                  padding: EdgeInsets.all(2),
                  child: Card(
                    child: Expanded(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Text("Papel",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w400)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15, bottom: 5),
                              child: Image.asset("assets/images/papel.jpg"),
                            ),
                            Container(
                              width: double.maxFinite,
                              child: Text(
                                "Torneiras velhas feitas de metal.",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey.shade600),
                                textAlign: TextAlign.right,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15, bottom: 10),
                              child: Text(
                                  "Muitos não sabem, mas o Metal é um dos mais valiosos materiais que vão para as reciclagens. Conhecido também como Latão, pode ser encontrado em algumas torneiras e também em algumas pias. ",
                                  style: texto),
                            ),
                            //***** BOTOES DE POPUPS *****/
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    style: botao,
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Alerta(
                                              "Latinha",
                                              "O material mais conhecido quando se fala da reciclagem de alumínio com certeza é a latinha. Por ela, muitas famílias garantem a renda mensal, abrindo pequenas reciclagens para compras ou trabalhando em alguma empresa maior. A Latinha é o carro chefe das empresas de reciclagem, e pode ser facilmente encontrada e comercializada em qualquer lugar do mundo.",
                                              "assets/images/latinha.jpg",
                                              "Latinhas feitas de alumínio");
                                        },
                                      );
                                    },
                                    child: Text("Latinha"),
                                  ),
                                  SizedBox(width: 10),
                                  ElevatedButton(
                                    style: botao,
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Alerta(
                                              "Esquadrilha",
                                              "Um alumínio que tem grande valor e parcela do mercado de reciclagem é o alumínio de Esquadrilhas. Conhecido também como Perfil, pode ter duas categorias: Perfil Pintado e Perfil Limpo (ou de primeira), sendo que o primeiro tem menos valor que o segundo. Na foto vemos o Perfil de Primeira, pois não possuí nenhuma camada de tinta.",
                                              "assets/images/esquadrilha.jpg",
                                              "Esquadrilhas de metal");
                                        },
                                      );
                                    },
                                    child: Text("Esquadrilha"),
                                  ),
                                  SizedBox(width: 10),
                                  ElevatedButton(
                                    style: botao,
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Alerta(
                                              "Panelas",
                                              "Por falta de informações, muitas pessoas acabam jogando panelas de alumínio no lixo, por achar que não possuem mais valor após perderem ultilidade na cozinha. As panelas tomam conta de grande parte no mercado de sucatas de aluminios. ",
                                              "assets/images/panelas.jpg",
                                              "Panelas velhas");
                                        },
                                      );
                                    },
                                    child: Text("Panelas"),
                                  ),
                                  SizedBox(width: 10),
                                  ElevatedButton(
                                    style: botao,
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Alerta(
                                              "Spray",
                                              "Todo mundo usa ou ja usou desodorante spray, e a grande maioria dessas pessoas acabam descartando no lixo sem saber que esse aluminio pode ser vendido para uma reciclagem. Devemos apenas observar pois, possuem alguns sprays que são feitos de ferro, e não de alumínio. Para saber basta aproximar qualquer ímã e ele fará a identificação.",
                                              "assets/images/spray.jpg",
                                              "Frascos de spray vazios");
                                        },
                                      );
                                    },
                                    child: Text("Spray"),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                //***** VIDRO *****/
                Container(
                  padding: EdgeInsets.all(2),
                  child: Card(
                    child: Expanded(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Text("Vidro",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w400)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15, bottom: 5),
                              child: Image.asset("assets/images/vidro.jpg"),
                            ),
                            Container(
                              width: double.maxFinite,
                              child: Text(
                                "Torneiras velhas feitas de metal.",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey.shade600),
                                textAlign: TextAlign.right,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15, bottom: 10),
                              child: Text(
                                  "Muitos não sabem, mas o Metal é um dos mais valiosos materiais que vão para as reciclagens. Conhecido também como Latão, pode ser encontrado em algumas torneiras e também em algumas pias. ",
                                  style: texto),
                            ),
                            //***** BOTOES DE POPUPS *****/
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    style: botao,
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Alerta(
                                              "Latinha",
                                              "O material mais conhecido quando se fala da reciclagem de alumínio com certeza é a latinha. Por ela, muitas famílias garantem a renda mensal, abrindo pequenas reciclagens para compras ou trabalhando em alguma empresa maior. A Latinha é o carro chefe das empresas de reciclagem, e pode ser facilmente encontrada e comercializada em qualquer lugar do mundo.",
                                              "assets/images/latinha.jpg",
                                              "Latinhas feitas de alumínio");
                                        },
                                      );
                                    },
                                    child: Text("Latinha"),
                                  ),
                                  SizedBox(width: 10),
                                  ElevatedButton(
                                    style: botao,
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Alerta(
                                              "Esquadrilha",
                                              "Um alumínio que tem grande valor e parcela do mercado de reciclagem é o alumínio de Esquadrilhas. Conhecido também como Perfil, pode ter duas categorias: Perfil Pintado e Perfil Limpo (ou de primeira), sendo que o primeiro tem menos valor que o segundo. Na foto vemos o Perfil de Primeira, pois não possuí nenhuma camada de tinta.",
                                              "assets/images/esquadrilha.jpg",
                                              "Esquadrilhas de metal");
                                        },
                                      );
                                    },
                                    child: Text("Esquadrilha"),
                                  ),
                                  SizedBox(width: 10),
                                  ElevatedButton(
                                    style: botao,
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Alerta(
                                              "Panelas",
                                              "Por falta de informações, muitas pessoas acabam jogando panelas de alumínio no lixo, por achar que não possuem mais valor após perderem ultilidade na cozinha. As panelas tomam conta de grande parte no mercado de sucatas de aluminios. ",
                                              "assets/images/panelas.jpg",
                                              "Panelas velhas");
                                        },
                                      );
                                    },
                                    child: Text("Panelas"),
                                  ),
                                  SizedBox(width: 10),
                                  ElevatedButton(
                                    style: botao,
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Alerta(
                                              "Spray",
                                              "Todo mundo usa ou ja usou desodorante spray, e a grande maioria dessas pessoas acabam descartando no lixo sem saber que esse aluminio pode ser vendido para uma reciclagem. Devemos apenas observar pois, possuem alguns sprays que são feitos de ferro, e não de alumínio. Para saber basta aproximar qualquer ímã e ele fará a identificação.",
                                              "assets/images/spray.jpg",
                                              "Frascos de spray vazios");
                                        },
                                      );
                                    },
                                    child: Text("Spray"),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  color: vermelho,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

//********* WIDGET ALERTA ********/
  Widget Alerta(String titulo, String texto, String imagem, String legenda) {
    return AlertDialog(
      backgroundColor: Color(0xFFDDDDDD),
      scrollable: true,
      contentPadding: EdgeInsets.all(2),
      insetPadding: EdgeInsets.all(4),
      actions: [
        ElevatedButton(
          style: botao,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Voltar"),
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
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 5),
                    child: Image.asset(imagem),
                  ),
                  Container(
                    width: double.maxFinite,
                    child: Text(
                      legenda,
                      style:
                          TextStyle(fontSize: 16, color: Colors.grey.shade600),
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
}
