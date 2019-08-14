import 'package:flutter/material.dart';
import './drawer.dart';
import 'package:pinch_zoom_image/pinch_zoom_image.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.green,
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
            PinchZoomImage(
              image: Image.asset(
                "./assets/60.jpg",
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/1.1329,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
