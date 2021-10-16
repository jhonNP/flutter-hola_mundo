// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{


  @override
  State<StatefulWidget> createState() => _ContadorPageState();


}

class _ContadorPageState  extends State <ContadorPage>{

final _estiloTexto= new TextStyle(fontSize:30);

int _conteo=0;

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Hola Mundo')
       ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Text('Numero de clicks', style: _estiloTexto),
             Text('$_conteo',style: _estiloTexto,),
           ],
         )
       ),
       floatingActionButton: _crearBotones()
     );
  }


  Widget _crearBotones(){


    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      // ignore: prefer_const_literals_to_create_immutables
      children: <Widget>[
        SizedBox(width:30.0),
        FloatingActionButton(child:Icon(Icons.exposure_zero),onPressed: _reset),
        Expanded(child:SizedBox()),
        FloatingActionButton(child:Icon(Icons.remove),onPressed: _sustraer),
        SizedBox(width:5.0),
        FloatingActionButton(child:Icon(Icons.add),onPressed: _agregar)
      ],
    );
  }

  void _agregar(){
    setState(() =>_conteo++);
  }

  void _sustraer(){
    setState(() =>_conteo--);
  }

  void _reset(){
    setState(() =>_conteo=0);
  }




}