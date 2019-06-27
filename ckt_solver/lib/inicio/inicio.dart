import 'package:ckt_solver/components/botao.dart';
import 'package:ckt_solver/components/defaultScaffold.dart';
import 'package:ckt_solver/quiz/quiz1.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: defaultScaffold(
          "Inicio",
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  botaoCkt(context, "R", "Circuito Resistivo"),
                  Padding(
                    padding: EdgeInsets.all(5),
                  ),
                  botaoCkt(context, "RL", "Circuito De 1º Ordem RL"),
                  Padding(
                    padding: EdgeInsets.all(5),
                  ),
                  botaoCkt(context, "RC", "Circuito De 1º Ordem RC"),
                  Padding(
                    padding: EdgeInsets.all(5),
                  ),
                  botaoCkt(context, "RLC", "Circuito De 2º Ordem RLC"),
                ],
              ))),
    );
  }

  Widget botaoCkt(BuildContext context, String tipoCkt, String titulo) {
    return botao(() {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Quiz1Page(
                    tipoCkt: tipoCkt,
                  )));
    }, titulo);
  }
}
