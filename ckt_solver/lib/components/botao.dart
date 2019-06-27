import 'package:flutter/material.dart';

Widget botao(Function func, String titulo) {
  return Container(
    width: double.infinity,
    child: RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      padding: EdgeInsets.symmetric(vertical: 13.0),
      child: Text(
        titulo,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      color: Color(0xff2595A6),
      onPressed: func,
    ),
  );
}
