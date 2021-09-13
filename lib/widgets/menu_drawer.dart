import 'package:flutter/material.dart';
import 'package:soulfenix/pages/calc_app.dart';
import 'package:soulfenix/pages/mapa.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utils/style.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                    // _launchURL();
                    launch('https://www.grupopetropolis.com.br');
                  },
                  child: Container(
                      decoration: bordaRedonda,
                      child: Center(
                          child: Image.asset("assets/images/petropolis.png"))),
                ),
              ),
              SizedBox(height: 20),
              /***** CALCULADORA ****/
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
                    "Conversor de peso em Real(R\$)",
                    style: legendaMenu,
                  ),
                  title: Container(
                    child: Text(
                      "Calculadora",
                      style: itemMenu,
                    ),
                  ),
                ),
              ),
              /***** CALCULADORA ****/
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
                    "Conversor de quantidade de latinha",
                    style: legendaMenu,
                  ),
                  title: Container(
                    child: Text(
                      "Calculadora",
                      style: itemMenu,
                    ),
                  ),
                ),
              ),
              /***** MAPA ****/
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Mapa()));
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
                      style: itemMenu,
                    ),
                  ),
                ),
              ),
              Container(
                height: 20,
                width: 100,
                color: Color(0xFFFFFF),
              ),
              Text(
                "Links úteis",
                style: itemMenu,
              ),
              /***** RECICLOTECA ****/
              ListTile(
                leading: Icon(
                  Icons.home,
                  size: 32,
                  color: Color(0xFFFFFFFF),
                ),
                title: InkWell(
                  onTap: () {
                    launch("http://www.recicloteca.org.br");
                  },
                  child: Container(
                    child: Text(
                      "Recicloteca",
                      style: itemMenu,
                    ),
                  ),
                ),
              ),
              /***** ONGSEMFRONTEIRA ****/
              ListTile(
                leading: Icon(
                  Icons.home,
                  size: 32,
                  color: Color(0xFFFFFFFF),
                ),
                title: InkWell(
                  onTap: () {
                    launch("http://www.ongsemfronteira.org");
                  },
                  child: Container(
                    child: Text(
                      "ONG Sem Fronteira",
                      style: itemMenu,
                    ),
                  ),
                ),
              ),
              /***** INSTAGRAM ****/
              ListTile(
                leading: Icon(
                  Icons.home,
                  size: 32,
                  color: Color(0xFFFFFFFF),
                ),
                title: InkWell(
                  onTap: () {
                    launch("https://www.instagram.com/soulfenix89/");
                  },
                  child: Container(
                    child: Text(
                      "Instagram",
                      style: itemMenu,
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
