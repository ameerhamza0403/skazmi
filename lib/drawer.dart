import 'package:flutter/material.dart';
import './main.dart';
import './contact.dart';
import './about.dart';

class HagDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          DrawerHeader(
            child: Column(
              children: <Widget>[
                Text('Hospice Admission Guideline',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30)),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: const EdgeInsets.only(top: 40.0, left: 100.0),
                    color: Colors.deepPurpleAccent,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('By Dr. Kazmi',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                    ),
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: IconButton(
                    icon: Icon(Icons.home),
                  ),
                  title: Text('Home',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StoryBook(),
                      ),
                    );
                    // Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: IconButton(
                    icon: Icon(Icons.contacts),
                  ),
                  title: Text('Contact',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContactPage(),
                      ),
                    );
                    // Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: IconButton(
                    icon: Icon(Icons.info),
                  ),
                  title: Text('About',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutPage(),
                      ),
                    );
                    // Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
