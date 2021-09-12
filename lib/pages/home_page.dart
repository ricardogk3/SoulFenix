import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'calc_app.dart';
import '../widgets/cartao.dart';
import '../utils/style.dart';
import 'mapa.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

var _url = 'https://www.grupopetropolis.com.br';
void _launchURL() async => await canLaunch(_url)
    ? await launch(_url)
    : throw 'Não foi possível abrir $_url';

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
                  child: InkWell(
                    onTap: () {
                      _launchURL();
                    },
                    child: Container(
                        decoration: bordaRedonda,
                        child: Center(
                            child:
                                Image.asset("assets/images/petropolis.png"))),
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Mapa()));
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.map,
                      size: 32,
                      color: Color(0xFFFFFFFF),
                    ),
                    subtitle: Text(
                      "Locais de reciclagem",
                      style: legendaMenu,
                    ),
                    title: Container(
                      child: Text(
                        "Mapa",
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 24,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CalcApp()));
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.calculate_rounded,
                      size: 32,
                      color: Color(0xFFFFFFFF),
                    ),
                    subtitle: Text(
                      "Conversor de peso",
                      style: legendaMenu,
                    ),
                    title: Container(
                      child: Text(
                        "Calculadora",
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 24,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 20,
                  width: 100,
                  color: Color(0xFFFFFF),
                ),
                ListTile(
                  leading: Icon(
                    Icons.calculate_rounded,
                    size: 32,
                    color: Color(0xFFFFFFFF),
                  ),
                  title: InkWell(
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
                "Reciclagem na sua forma mais simples é o processo de conversão de resíduos em materiais ou produtos de potencial utilidade. Mas o termo reciclar é usado, tecnicamente, apenas para coisas que podem voltar ao seu estado original. Podendo reutilizar materiais coo papel, plástico, vifro, metais, entre outros.O índice nacional de reciclagem é de apenas 3%, o que nos faz  pensar que a Política Nacional de Resíduos Sólidos (PNRS), em vigor há mais de 10 anos, segue não sendo suficientemente aplicada, nos levando a ter como resultado possíveis matérias-primas descartadas no lixo. Em 2018, o país gerou cerca de 79 milhões de toneladas de resíduos, um aumento de quase 1% em relação ao ano anterior. Deste total, a estimativa é de que somente 3% sejam de fato reciclados, sendo que o potencial é de até 30%.",
                // "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at posuere dolor. Maecenas eu augue sit amet lorem congue porttitor. Nunc et nunc eu mauris interdum consequat. Suspendisse mauris elit, auctor eget pretium ac, faucibus ac mi. Phasellus hendrerit ante non sem varius, quis luctus metus ullamcorper. Ut mi lacus, consectetur quis nisi a, molestie imperdiet nisl. Suspendisse ipsum ligula, dignissim sed sem non, sodales sodales enim. Nulla quis est volutpat purus auctor rutrum sed a ante. Donec finibus pellentesque consectetur. Donec dignissim augue vitae tellus accumsan interdum. Fusce ut nunc vitae tortor venenatis imperdiet.",
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
                              child: Container(
                                  child:
                                      Image.asset("assets/images/metal.jpg")),
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
                                "Garrafas PET.",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey.shade600),
                                textAlign: TextAlign.right,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15, bottom: 10),
                              child: Text(
                                  "Os metais não são os únicos que podem ser reutilizados. Sendo os resíduos plásticos uma outra modalidade em alta. O importante é o descarte correto dos materiais, ajudando na sua reciclagem. Os tipos de plástico se diferenciam pela extensão e estrutura dos polímeros, além da sua usabilidade, por ser matéria-prima de diversos produtos usados no nosso dia a dia. Estima-se que a produção de plástico seja mais de 200 milhões de toneladas ao ano e isso se deve, principalmente, ao baixo custo de produção e à durabilidade que eles têm em comparação aos outros tipos de materiais. Os principais plásticos tem um simbolo de reciclagem na sua embalagem, indicando o tipo de plástico.",
                                  style: texto),
                            ),
                            //***** BOTOES DE POPUPS *****/
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        style: botao,
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Alerta(
                                                  "PP",
                                                  "O Polipropileno é um polímero ou plástico derivado do propeno ou propileno. Algumas de suas características incluem ser inquebrável, transparente, brilhante e rígido. É bastante utilizado em filmes para embalagens e alimentos, embalagens industriais, potes e seringas descartáveis. É reciclável.",
                                                  "assets/images/pp.jpg",
                                                  "Polipropileno");
                                            },
                                          );
                                        },
                                        child: Text("PP"),
                                      ),
                                      SizedBox(width: 10),
                                      ElevatedButton(
                                        style: botao,
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Alerta(
                                                  "PEBD",
                                                  "O Polietileno de Baixa Densidade é obtido através da polimerização do etileno, é o polímero de estrutura química mais simples. Por ser um termoplástico, o PEBD é reciclável. É um plástico flexível, leve, transparente e impermeável. Pode ser aplicado em sacolas de supermercados, sacaria industrial, bolsas para soro medicinal, entre outros.",
                                                  "assets/images/peabd.jpg",
                                                  "Polietileno de Baixa Densidade");
                                            },
                                          );
                                        },
                                        child: Text("PEBD"),
                                      ),
                                      SizedBox(width: 10),
                                      ElevatedButton(
                                        style: botao,
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Alerta(
                                                  "PEAD",
                                                  "O PEAD é obtido através da polimerização do etileno e conhecido também como eteno.  Por ser um termoplástico, o PEAD é reciclável. É um plástico inquebrável, resistente a baixas temperaturas, leve e impermeável. É bastante aplicado em embalagens de detergente e óleos automotivos, garrafeiras, tampas, potes, caixas de leite de plástico, garrafas de suco, frascos de shampoo, etc.",
                                                  "assets/images/pead.jpg",
                                                  "Polietileno de Alta Densidade");
                                            },
                                          );
                                        },
                                        child: Text("PEAD"),
                                      ),
                                      SizedBox(width: 10),
                                      ElevatedButton(
                                        style: botao,
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Alerta(
                                                  "PVC",
                                                  "O Policloreto de Vinila contém, em peso, 57% de cloro, obtido através da eletrólise do sal marinho (um recurso natural inesgotável) e 43% de eteno, derivado do petróleo. Para a obtenção do eteno, que representa apenas 43% desta resina, o óleo cru passa por uma destilação na qual é obtida a nafta leve. O eteno é gerado a partir do processo de craqueamento catalítico (quebra de moléculas grandes em moléculas menores com a ação de catalisadores para aceleração do processo) da nafta. Tanto o cloro como o eteno estão na fase gasosa e da reação dos dois é produzido o DCE (dicloro etano).",
                                                  "assets/images/.jpg",
                                                  "Policloreto de Vinila");
                                            },
                                          );
                                        },
                                        child: Text("PVC"),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        style: botao,
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Alerta(
                                                  "EVA",
                                                  "O EVA é obtido através do copolímero de etileno-acetato de vinila. A sua principal característica é a capacidade de ser flexível e resistente ao mesmo tempo. Suas características fazem do EVA um produto competitivo em relação a outros termoplásticos e alguns tipos de borrachas, sendo utilizado no segmento de calçados em compostos expansíveis e reticulados transformados por injeção e pressão. É aplicado em equipamentos de academia, brinquedos, brindes, solados de calçados, entre outros. Não é reciclável.",
                                                  "assets/images/eva.jpg",
                                                  "Latinhas feitas de alumínio");
                                            },
                                          );
                                        },
                                        child: Text("EVA"),
                                      ),
                                      SizedBox(width: 10),
                                      ElevatedButton(
                                        style: botao,
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Alerta(
                                                  "PS",
                                                  "Resina do grupo dos termoplásticos, o Poliestireno é obtido através da polimerização do estireno. Por ser um material barato e frágil, é muito usado na fabricação de produtos descartáveis ou que necessitem de alta transparência. O poliestireno convencional é popularmente conhecido como PS cristal. É aplicado em potes de embalagens em geral, tampas, copos descartáveis, brinquedos, etc.",
                                                  "assets/images/ps.jpg",
                                                  "PS");
                                            },
                                          );
                                        },
                                        child: Text("PS"),
                                      ),
                                      SizedBox(width: 10),
                                      ElevatedButton(
                                        style: botao,
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Alerta(
                                                  "PET",
                                                  "Como vimos acima os plásticos são polímeros produzidos a partir de processos petroquímicos. O PET é um deles e, diferentemente, do que muitos pensam foi desenvolvido há mais de 70 anos. Por ser um material inerte, leve, resistente e transparente, passou a ser utilizado na fabricação de embalagens de bebidas e alimentos no início da década de 1980. Em 1985 cerca de 500 mil toneladas de vasilhames já haviam sido produzidos, somente nos Estados Unidos.",
                                                  "assets/images/pet.jpg",
                                                  "Politereftalato de Etileno");
                                            },
                                          );
                                        },
                                        child: Text("PET"),
                                      ),
                                      SizedBox(width: 10),
                                      ElevatedButton(
                                        style: botao,
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Alerta(
                                                  "ABS",
                                                  "Por último, o ABS, que é obtido através do copolímero de etileno-acetato de vinila. É um termoplástico desenvolvido para aplicações que necessitam de uma boa resistência ao impacto e um bom aspecto visual. É um dos plásticos mais indicados para a produção de carcaças de eletrodomésticos. Tem boa resistência mecânica, fácil moldabilidade, dureza. Por essa razão, é muito utilizado em carcaças de eletrodomésticos, capacetes e painéis automotivos.",
                                                  "assets/images/abs.jpg",
                                                  "Panelas velhas");
                                            },
                                          );
                                        },
                                        child: Text("ABS"),
                                      ),
                                    ],
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
                                "Papelão.",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey.shade600),
                                textAlign: TextAlign.right,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15, bottom: 10),
                              child: Text(
                                  "Os tipos de papel que podem ser reciclados incluem revistas, cadernos, jornais, cartazes, caixas de papelão, papel de faz, envelopes, embalagens longa vida e outros. Tão importante quanto separar itens para a reciclagem é garantir que a coleta seletiva seja realizada corretamente.",
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
                                "Vidros.",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey.shade600),
                                textAlign: TextAlign.right,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15, bottom: 10),
                              child: Text(
                                  "O vidro é 100% reciclável e pode ser reciclado inúmeras vezes sem perdas no processo, pois é feito de minerais como, areia, barrilha, calcário e feldspato. Ao agregarmos o caco na fusão, também diminuímos a retirada de matéria-prima da natureza poupando recursos naturais e contribuindo para uma economia circular.",
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
