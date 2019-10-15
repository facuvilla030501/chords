import 'package:flutter/material.dart';

class Segunda extends StatelessWidget {

  @override
  Widget build(BuildContext context){
      var listView = ListView(
        children: <Widget>[


          ListTile(
            leading: Icon(Icons.queue_music),
            title: Text("Nombre Cancion"),
            subtitle: Text("Nombre Artista"),
            trailing: Icon(Icons.add_circle_outline),
          ),
          ListTile(
            leading: Icon(Icons.queue_music),
            title: Text("Ejemplo 2"),
            subtitle: Text("Super Cachetes"),
            trailing: Icon(Icons.add_circle_outline),
          ),
          ListTile(
            leading: Icon(Icons.laptop_chromebook),
            title: Text("Windows"),
          ),
          ListTile(
            leading: Icon(Icons.phone_android),
            title: Text("Phone"),
          )
        ],
      );

      return listView;
  }
}