import 'package:flutter/material.dart';
import './drawer.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.deepOrange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contact Information'),
        ),
        drawer: HagDrawer(),
        body: Container(
            child: Column(
          children: <Widget>[
            Text('Contact us here!'),
          ],
        )),
      ),
    );
  }
}
