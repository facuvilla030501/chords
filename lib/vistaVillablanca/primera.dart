import 'package:flutter/material.dart';
import 'package:transportar/vistaVillablanca/create.dart';

class Primera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'DESEAS CONVERTIR UNA NUEVA PROGRESION ?',
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add,),
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Create())
          );
        }
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
