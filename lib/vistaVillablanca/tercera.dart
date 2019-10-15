import 'package:flutter/material.dart';

class Tercera extends StatelessWidget {
  @override //oculta la construccion del software a android
  Widget build(BuildContext context){
    return new Container(
      child: new Center(
        child: new Icon(Icons.local_pizza, size: 150.0, color: Colors.teal),
      ),
    );
  }
}
