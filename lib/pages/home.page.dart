import 'package:calculadora/models/button.models.dart';
import 'package:flutter/material.dart';
import '../widgets/botones.calculadora.widgets.dart';
import 'package:function_tree/function_tree.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List <String> listaOperaciones = [];
  String textOperacion = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              //height: 100,
              color: Colors.red,
              child: Row(
                children: [
                Text(textOperacion),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            color: Colors.green,
            child: Row(
              children: [
                Text("Resultado")
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              height: 100,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  filaBotones([
                    ButtonModel(titulo: "%", metodo: (){
                      textOperacion = "1";
                      setState(() {
                        textOperacion = "1";
                      });
                    }),
                    ButtonModel(titulo: "CE", metodo: (){print("dos");}),
                    ButtonModel(titulo: "C", metodo: (){print("tres");}),
                    ButtonModel(titulo: "<=", metodo: (){print("tres");}),
                    ]),
                  filaBotones([
                    ButtonModel(titulo: "1/x", metodo: (){print("uno");}),
                    ButtonModel(titulo: "x²", metodo: (){print("dos");}),
                    ButtonModel(titulo: "√", metodo: (){print("tres");}),
                    ButtonModel(titulo: "÷", metodo: (){print("tres");}),
                    ]),
                  filaBotones([
                    ButtonModel(titulo: "7", metodo: (){print("uno");}),
                    ButtonModel(titulo: "8", metodo: (){print("dos");}),
                    ButtonModel(titulo: "9", metodo: (){print("tres");}),
                    ButtonModel(titulo: "x", metodo: (){print("tres");}),
                    ]),
                  filaBotones([
                    ButtonModel(titulo: "4", metodo: (){print("uno");}),
                    ButtonModel(titulo: "5", metodo: (){print("dos");}),
                    ButtonModel(titulo: "6", metodo: (){print("tres");}),
                    ButtonModel(titulo: "-", metodo: (){print("tres");}),
                    ]),
                  filaBotones([
                    ButtonModel(titulo: "1", metodo: (){
                      print("uno");
                      setState(() {
                        textOperacion += "1";
                      });
                      listaOperaciones.add(textOperacion);  
                    }),
                    ButtonModel(titulo: "2", metodo: (){print("dos");}),
                    ButtonModel(titulo: "3", metodo: (){print("tres");}),
                    ButtonModel(titulo: "+", metodo: (){
                      print("mas");
                      setState(() {
                        textOperacion += "+";
                      });
                      listaOperaciones.add(textOperacion);  
                    }),
                    ]),
                  filaBotones([
                    ButtonModel(titulo: "+/-", metodo: (){print("uno");}),
                    ButtonModel(titulo: "0", metodo: (){print("dos");}),
                    ButtonModel(titulo: ",", metodo: (){print("tres");}),
                    ButtonModel(titulo: "=", metodo: (){
                      print("igual");
                    setState(() {
                        textOperacion += "=";
                        print(listaOperaciones);
                      }); 
                    }),
                    ]),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
