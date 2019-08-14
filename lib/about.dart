import 'package:flutter/material.dart';
import './drawer.dart';

class AboutPage extends StatelessWidget{
  @override 

  Widget build(BuildContext context){
    
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.deepOrange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('About Doctor Kazmi'),
        ),
        drawer: HagDrawer(),
        body: Container(
            child: Column(
          children: <Widget>[
            Text('About him!'),
          ],
        )),
      ),
    );
  }
}