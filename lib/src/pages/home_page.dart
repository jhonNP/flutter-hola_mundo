// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{


final estiloTexto= new TextStyle(fontSize:30);

final conteo=10;

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('AppBar')
       ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Text('Numero de clicks', style: estiloTexto),
             Text('$conteo',style: estiloTexto,),
           ],
         )
       ),
       floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Hola Mundo');
        },
        child: Icon(Icons.add)
      ),
     );
  }

  setState(Function() param0) {}

}