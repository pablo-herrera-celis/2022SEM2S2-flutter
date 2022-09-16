import 'package:calculadora/models/button.models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget filaBotones(List<ButtonModel> lista) {
  List<Widget> listBotton = [];
  lista.forEach((element) {
    listBotton.add(
        ElevatedButton(onPressed: element.metodo, child: Text(element.titulo, style: TextStyle(color: Colors.white), textAlign: TextAlign.center)));
  });

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: listBotton,
  );
}
