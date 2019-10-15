import 'package:flutter/material.dart';

import 'package:transportar/vistaVillablanca/primera.dart' as primera;
import 'package:transportar/vistaVillablanca/segunda.dart' as segunda;
import 'package:transportar/vistaVillablanca/tercera.dart' as tercera;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override //oculta la construccion del software a android
  Widget build(BuildContext context) {
    //fabrica la vista sola
    return MaterialApp(
      //constructor, ya esta cargado en stateleswidget
      title: 'Music',
      theme: ThemeData(
        //contenido para la vista...
        primarySwatch: Colors.deepOrange,
      ),
      home: MyHomePage(title: 'Music'),
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
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Music"),
          backgroundColor: Colors.deepOrange,
          elevation: 0,
          bottom: TabBar(
              controller: controller,
              labelColor: Colors.deepOrange,
              unselectedLabelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)
                      ),
                  color: Colors.white),
              tabs: <Tab>[
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("HOME"),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Icon(Icons.folder),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Icon(Icons.music_note),
                  ),
                ),
              ])),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          new primera.Primera(),
          new segunda.Segunda(),
          new tercera.Tercera(),
        ],
      ),
    );
  }
}
