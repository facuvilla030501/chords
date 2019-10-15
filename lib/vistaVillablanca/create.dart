import 'package:flutter/material.dart';
import 'package:transportar/vistaVillablanca/inicio.dart';

class Create extends StatelessWidget {
  @override //oculta la construccion del software a android
  Widget build(BuildContext context) {
    //fabrica la vista sola
    return MaterialApp(
      title: 'Music',
      theme: ThemeData(
        //contenido para la vista...
        primarySwatch: Colors.deepOrange,
      ),
      home: MyHomePage(title: 'Crear'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Music"),
        backgroundColor: Colors.deepOrange,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
          child:
          Icon(
            Icons.save,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyApp()));
          }), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
