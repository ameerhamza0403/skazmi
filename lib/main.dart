import 'package:flutter/material.dart';
import './home.dart';
import './drawer.dart';


// Future main() async{
//   await SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
//   await SystemChrome.setEnabledSystemUIOverlays([]);
//   runApp(StoryBook());
// }

void main() {

  runApp(StoryBook());
}

class StoryBook extends StatelessWidget {
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
          title: Text('Hospice Admission Guideline'),
        ),
        drawer: HagDrawer(),
        body: HomePage(),
         ),
    );
  }
}
