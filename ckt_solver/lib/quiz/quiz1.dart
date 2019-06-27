import 'package:ckt_solver/components/botao.dart';
import 'package:ckt_solver/components/defaultScaffold.dart';
import 'package:ckt_solver/components/input.dart';
import 'package:ckt_solver/quiz/quiz2.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Quiz1Page extends StatelessWidget {
  final String tipoCkt;
  const Quiz1Page({Key key, this.tipoCkt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _errNumero = false;
    TextEditingController numeroCtrl = new TextEditingController();
    return Container(
      child: defaultScaffold(
          "Quiz 1",
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Quiz",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 30),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),
                  Text(
                    "Preencha para prosseguir",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                  OutlineInput(
                    label: 'Numero de nós',
                    type: "numero",
                    err: _errNumero,
                    controller: numeroCtrl,
                    // valor: "2",
                    hint: 'Quantos nós o ckt possui?',
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                  botao(() {
                    print(numeroCtrl.text);
                    if (numeroCtrl.text == "" ||
                        double.tryParse(numeroCtrl.text) < 2) {
                      Alert(
                        context: context,
                        type: AlertType.error,
                        title: "Erro",
                        desc: "Numero de nós invalido",
                        buttons: [
                          DialogButton(
                            child: Text(
                              "Ok",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () => Navigator.pop(context),
                            width: 120,
                          )
                        ],
                      ).show();
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Quiz2Page(
                                    tipoCkt: tipoCkt,
                                    numeroNos: int.tryParse(numeroCtrl.text),
                                  )));
                    }
                  }, "Avançar")
                ],
              ))),
    );
  }
}
