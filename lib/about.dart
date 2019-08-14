import 'package:flutter/material.dart';
import './drawer.dart';

class AboutPage extends StatelessWidget {
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
          title: Text('About The Book'),
        ),
        drawer: HagDrawer(),
        body: Container(
            child: ListView(
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(40.0),
                child: Column(
                  children: <Widget>[
                    Text(
                        'This book made this difficult subject of hospice admission guidelines really easy and visually appealing. It is very easy to understand. '),
                    SizedBox(height: 40),
                    Text(
                        'It’s a work of art. Strengths: It is very appealing and easy to memorize & review quickly the guidelines. It is like a work book. Any medical professional who saw this book wants to have a copy Benefits: It benefits hospice (your organization). Increases referrals by teaching the most difficult subject of prognostication and end of life time line recognition. Improves: Physicians understand when to refer patients to hospice. Easy to prognosticate. Send this as a gift to your doctors, nurses, paramedical professionals. This is the basic information regarding when to consider sending patients to hospice.'),
                    SizedBox(height: 40),
                    Text(
                        'It is like a work book. Any medical professional who saw this book wants to have a copy Benefits: It benefits hospice (your organization). Increases referrals by teaching the most difficult subject of prognostication and end of life time line recognition.'),
                    SizedBox(height: 40),
                    Text(
                        'Improves: Physicians understand when to refer patients to hospice. Easy to prognosticate. Send this as a gift to your doctors, nurses, paramedical professionals. This is the basic information regarding when to consider sending patients to hospice.'),
                  ],
                )),
          ],
        )),
      ),
    );
  }
}
