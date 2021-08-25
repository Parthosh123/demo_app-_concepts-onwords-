import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xD5FFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Settings'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: Colors.black,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  offset:  Offset(
                    5.0,
                    5.0,
                  ),
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ),
                BoxShadow(
                  color: Colors.black,
                  offset: const Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ),
              ]
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: Colors.grey,
            ),
            height: double.infinity,
            width: double.infinity,

            child: ListView(
              padding: EdgeInsets.only(top:90.0,right: 10.0,left: 10.0),
              children: [
                Card(
                  shadowColor: Color(0xC1FFFFFF),
                  color: Color(0xDAFFFFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(
                      color: Colors.grey,
                      width: 3.0,
                    ),
                  ),
                  //elevation: 5.0,
                  child: ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text('Profile'),
                  ),
                ),
                Card(
                  shadowColor: Color(0xC1FFFFFF),
                  color: Color(0xDAFFFFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(
                      color: Colors.grey,
                      width: 3.0,
                    ),
                  ),
                  //elevation: 5.0,
                  child: ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text('Profile'),
                  ),
                ),
                Card(
                  shadowColor: Color(0xC1FFFFFF),
                  color: Color(0xDAFFFFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(
                      color: Colors.grey,
                      width: 3.0,
                    ),
                  ),
                  //elevation: 5.0,
                  child: ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text('Profile'),
                  ),
                ),
                Card(
                  shadowColor: Color(0xC1FFFFFF),
                  color: Color(0xDAFFFFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(
                      color: Colors.grey,
                      width: 3.0,
                    ),
                  ),
                  //elevation: 5.0,
                  child: ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text('Profile'),
                  ),
                ),
                Card(
                  shadowColor: Color(0xC1FFFFFF),
                  color: Color(0xDAFFFFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(
                      color: Colors.grey,
                      width: 3.0,
                    ),
                  ),
                  //elevation: 5.0,
                  child: ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text('Profile'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
