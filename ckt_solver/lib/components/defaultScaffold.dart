import 'package:flutter/material.dart';

Widget defaultScaffold(String titulo, Widget corpo) {
  return Scaffold(
    appBar: AppBar(
      title: Text(titulo),
    ),
    body: Container(
      child: corpo,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('ckt_wallpaper.png'), fit: BoxFit.cover)),
    ),
  );
}
