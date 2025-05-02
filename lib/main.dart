import 'package:Jimenez/Menu.dart';
import 'package:Jimenez/pagina11.dart';
import 'package:Jimenez/pagina5.dart';
import 'package:Jimenez/pantalla1.dart';
import 'package:Jimenez/pantalla10.dart';
import 'package:Jimenez/pantalla2.dart';
import 'package:Jimenez/pantalla3.dart';
import 'package:Jimenez/pantalla4.dart';
import 'package:Jimenez/pantalla6.dart';
import 'package:Jimenez/pantalla7.dart';
import 'package:Jimenez/pantalla8.dart';
import 'package:Jimenez/pantalla9.dart';
import 'package:flutter/material.dart';

void main() => runApp(Widgets());

class Widgets extends StatelessWidget {
  const Widgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Entre Paginas Routes",
      initialRoute: '/',
      routes: {
// When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const Menu(),
// When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla1': (context) => const PaginaUno(),
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
        '/pantalla7': (context) => const PantallaSiete(),
        '/pantalla8': (context) => const PantallaOcho(),
        '/pantalla9': (context) => const PantallaNueve(),
        '/pantalla10': (context) => const PantallaDiez(),
        '/pantalla11': (context) => const PaginaOnce(),
      },
    );
  }
}
