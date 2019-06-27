import 'package:ckt_solver/components/botao.dart';
import 'package:ckt_solver/components/defaultScaffold.dart';
import 'package:ckt_solver/components/input.dart';
import 'package:flutter/material.dart';

class Quiz2Page extends StatefulWidget {
  final String tipoCkt;
  final int numeroNos;
  Quiz2Page({Key key, this.tipoCkt, this.numeroNos}) : super(key: key);

  _Quiz2PageState createState() => _Quiz2PageState();
}

class _Quiz2PageState extends State<Quiz2Page> {
  String startNo = "0";
  String endNo = "0";

  String tipoAtual = "R";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: defaultScaffold(
          "Quiz 2",
          Container(
              child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
              ),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.transparent,
                    border: Border.all(width: 1, color: Colors.white)),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Novo componente",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                    Container(
                        // margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Column(children: [
                          new Text("Inicio"),
                          Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(15)),
                              child: DropdownButton<String>(
                                items: getDropdownItens(widget.numeroNos),
                                value: startNo,
                                onChanged: setStartNo,
                              ))
                        ])),
                        Expanded(
                            flex: 3,
                            child: Column(children: [
                              new Text("Tipo de componente"),
                              Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: DropdownButton<String>(
                                    items: getDropdowntipo(widget.tipoCkt),
                                    value: tipoAtual,
                                    onChanged: setTipo,
                                  ))
                            ])),
                        Expanded(
                            child: Column(children: [
                          new Text("Fim"),
                          Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(15)),
                              child: DropdownButton<String>(
                                items: getDropdownItens(widget.numeroNos),
                                value: endNo,
                                onChanged: setEndNo,
                              ))
                        ])),
                      ],
                    )),
                    Padding(
                      padding: EdgeInsets.all(5),
                    ),
                    OutlineInput(
                      type: "numero",
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                    ),
                    botao(() {}, "Adicionar")
                  ],
                ),
              )
            ],
          ))),
    );
  }

  void setStartNo(String nNo) {
    setState(() {
      startNo = nNo;
    });
  }

  void setEndNo(String nNo) {
    setState(() {
      endNo = nNo;
    });
  }

  void setTipo(String tipo) {
    print(tipo);
    setState(() {
      tipoAtual = tipo;
    });
  }

  List<DropdownMenuItem<String>> getDropdownItens(int numeroNos) {
    List<DropdownMenuItem<String>> lista = [];
    for (var i = 0; i < numeroNos; i++) {
      lista.add(DropdownMenuItem(
          child: Text(
            i.toString(),
            style: TextStyle(color: Colors.black),
          ),
          value: i.toString()));
    }
    print(lista);
    return lista;
  }

  List<DropdownMenuItem<String>> getDropdowntipo(String tipoCkt) {
    List<DropdownMenuItem<String>> lista = [];
    if (tipoCkt.contains("R")) {
      lista.add(DropdownMenuItem(
          child: Text(
            "Fonte de Tenção",
            style: TextStyle(color: Colors.black),
          ),
          value: "V"));
      lista.add(DropdownMenuItem(
          child: Text(
            "Fonte de Corrente",
            style: TextStyle(color: Colors.black),
          ),
          value: "I"));
      lista.add(DropdownMenuItem(
          child: Text(
            "Resistor",
            style: TextStyle(color: Colors.black),
          ),
          value: "R"));
      if (tipoCkt.contains("L")) {
        lista.add(DropdownMenuItem(
            child: Text(
              "Indutor",
              style: TextStyle(color: Colors.black),
            ),
            value: "L"));
      }
      if (tipoCkt.contains("C")) {
        lista.add(DropdownMenuItem(
            child: Text(
              "Capacitor",
              style: TextStyle(color: Colors.black),
            ),
            value: "C"));
      }
    }
    return lista;
  }
}
