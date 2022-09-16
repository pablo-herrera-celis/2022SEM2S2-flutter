import 'package:calculadora/models/button.models.dart';
import 'package:flutter/material.dart';
import '../widgets/botones.calculadora.widgets.dart';
import 'package:function_tree/function_tree.dart';
import 'package:math_expressions/math_expressions.dart';

import '../widgets/historial.widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List <String> captura = [];
  List <String> historialreverse = [];
  String textOperacion = "", num="", operacion="", result = "", operCompleta = "", error = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Mode"),
        backgroundColor: Color.fromRGBO(47, 47, 47, 1),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Color.fromRGBO(61, 61, 61, 1),
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Column(
                    children: [
                      Column(
                        children: [
                          Container(
                              padding: const EdgeInsets.all(20),
                              alignment: Alignment.center,
                              child: history(historialreverse)),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                              padding: const EdgeInsets.all(1),
                              alignment: Alignment.center,
                              child: Text(
                                operCompleta,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                              )),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Color.fromRGBO(64, 64, 64, 1),
              child: Row(
                children: [
                  Column(
                    children: [
                      Column(
                        children: [
                          Container(
                              padding: const EdgeInsets.all(5),
                              alignment: Alignment.centerRight,
                              child: Text(
                                num,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                              )),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                              padding: const EdgeInsets.all(5),
                              alignment: Alignment.centerRight,
                              child: Text(
                                error,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                              )),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Color.fromRGBO(56, 56, 56, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  filaBotones([
                    ButtonModel(
                        titulo: "7",
                        metodo: () {
                          setState(() {
                            num += "7";
                            error = "";
                          });
                        }),
                    ButtonModel(
                        titulo: "8",
                        metodo: () {
                          setState(() {
                            num += "8";
                            error = "";
                          });
                        }),
                    ButtonModel(
                        titulo: "9",
                        metodo: () {
                          setState(() {
                            num += "9";
                            error = "";
                          });
                        }),
                    ButtonModel(
                        titulo: "÷",
                        metodo: () {
                          setState(() {
                            operacion = "/";
                            if (num != "") {
                              operCompleta += num;
                            }
                            operCompleta += operacion;
                            num = "";
                          });
                        }),
                    ButtonModel(
                        titulo: "DEL",
                        metodo: () {
                          setState(() {
                            final pos = num.length - 1;
                            num = num.substring(0, pos);
                          });
                        }),
                    ButtonModel(
                        titulo: "C",
                        metodo: () {
                          setState(() {
                            operacion = "";
                            num = "";
                            operCompleta = "";
                            error = "";
                          });
                        }),
                  ]),
                  filaBotones([
                    ButtonModel(
                        titulo: "4",
                        metodo: () {
                          setState(() {
                            num += "4";
                            error = "";
                          });
                        }),
                    ButtonModel(
                        titulo: "5",
                        metodo: () {
                          setState(() {
                            num += "5";
                            error = "";
                          });
                        }),
                    ButtonModel(
                        titulo: "6",
                        metodo: () {
                          setState(() {
                            num += "6";
                            error = "";
                          });
                        }),
                    ButtonModel(
                        titulo: "x",
                        metodo: () {
                          setState(() {
                            operacion = "x";
                            if (num != "") {
                              operCompleta += num;
                            }
                            operCompleta += operacion;
                            num = "";
                          });
                        }),
                    ButtonModel(
                        titulo: "(",
                        metodo: () {
                          setState(() {
                            operacion = "(";
                            if (num != "") {
                              operCompleta += num;
                            }
                            operCompleta += operacion;
                            num = "";
                          });
                        }),
                    ButtonModel(
                        titulo: ")",
                        metodo: () {
                          setState(() {
                            operacion = ")";
                            if (num != "") {
                              operCompleta += num;
                            }
                            operCompleta += operacion;
                            num = "";
                          });
                        }),
                  ]),
                  filaBotones([
                    ButtonModel(
                        titulo: "1",
                        metodo: () {
                          setState(() {
                            num += "1";
                            error = "";
                          });
                        }),
                    ButtonModel(
                        titulo: "2",
                        metodo: () {
                          setState(() {
                            num += "2";
                            error = "";
                          });
                        }),
                    ButtonModel(
                        titulo: "3",
                        metodo: () {
                          setState(() {
                            num += "3";
                            error = "";
                          });
                        }),
                    ButtonModel(
                        titulo: "-",
                        metodo: () {
                          setState(() {
                            operacion = "-";
                            if (num != "") {
                              operCompleta += num;
                            }
                            operCompleta += operacion;
                            num = "";
                          });
                        }),
                    ButtonModel(
                        titulo: "x^2",
                        metodo: () {
                          setState(() {
                            operacion = "(2)^(";
                            if (num != "") {
                              operCompleta += num;
                            }
                            operCompleta += operacion;
                            num = "";
                          });
                        }),
                    ButtonModel(
                        titulo: "√x",
                        metodo: () {
                          setState(() {
                            operacion = "√(";
                            if (num != "") {
                              operCompleta += num;
                            }
                            operCompleta += operacion;
                            num = "";
                          });
                        }),
                  ]),
                  filaBotones([
                    ButtonModel(
                        titulo: "0",
                        metodo: () {
                          setState(() {
                            num += "0";
                            error = "";
                          });
                        }),
                    ButtonModel(
                        titulo: "%",
                        metodo: () {
                          setState(() {
                            if (num != "") {
                              double porcentaje = double.parse(num) / 100;
                              num = porcentaje.toString();
                              operCompleta += num;
                              num = "";
                            }
                          });
                        }),
                    ButtonModel(
                        titulo: ",",
                        metodo: () {
                          setState(() {
                            operacion = ",";
                            if (num != "") {
                              operCompleta += num;
                            }
                            operCompleta += operacion;
                            num = "";
                          });
                        }),
                    ButtonModel(
                        titulo: "+",
                        metodo: () {
                          setState(() {
                            operacion = "+";
                            if (num != "") {
                              operCompleta += num;
                            }
                            operCompleta += operacion;
                            num = "";
                          });
                        }),
                    ButtonModel(
                        titulo: "=",
                        metodo: () {
                          setState(() {
                            if (num != "") {
                              operCompleta += num;
                            }
                            String result = operCompleta
                                .replaceAll("x", "*")
                                .replaceAll("√", "sqrt");
                            try {
                              Parser p = Parser();
                              Expression exp = p.parse(result);
                              ContextModel cm = ContextModel();
                              double eval =
                                  exp.evaluate(EvaluationType.REAL, cm);
                              result = eval.toString();
                              operCompleta += "= $result";
                              captura.add(operCompleta);
                              historialreverse = captura.reversed.toList();
                              operCompleta = "";
                              num = "";
                              operacion = "";
                            } on RangeError {
                              error = "Error en la operacion";
                              operCompleta = "";
                              num = "";
                              operacion = "";
                            } on FormatException {
                              error = "Error en la operacion";
                              operCompleta = "";
                              num = "";
                              operacion = "";
                            }
                          });
                        }),
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
