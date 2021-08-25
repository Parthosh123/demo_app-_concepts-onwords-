import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  static const String id = 'info_screen';

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Color(0x44000000), //transparent
          elevation: 0,
          title: Center(
            child: Text(
              'onWords Pvt Ltd',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Builder(builder: (context) {
          if (data.orientation.index == Orientation.landscape.index) {
            return ListView(
              padding: EdgeInsets.symmetric(horizontal: data.size.width*0.00),
              children: [
                buildContainer(context),
              ],
            );
          } else {
            return buildContainer(context);
          }
        }),

      ),
    );
  }

  Container buildContainer(context) {
    final data = MediaQuery.of(context);
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            colors: const [
              Colors.red,
              Colors.blue,
            ],
            stops: [
              0.0,1.0
            ],
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal:data.padding.horizontal*2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    //color: Color(0xEEFFFFFF),
                    shape: BoxShape.circle,
                    border: Border.all(width: 0.0, color: Color(0xEEFFFFFF)),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xDA7B4C47),
                        offset: Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 3.0,
                      ),
                      BoxShadow(
                        color: Color(0xDADC544D),
                        offset: Offset(-7.0, -5.0),
                        blurRadius: 10.0,
                        spreadRadius: 0.0,
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 100.0,
                    backgroundImage: AssetImage('images/logo.jpeg'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:data.padding.horizontal*0.5),
                  child: Text(
                    'Onwords',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Pattaya',
                      fontSize: 30.0,
                    ),
                  ),
                ),
                Text(
                  'Home Automation Developer',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Colors.red.withOpacity(0.25),
                  margin:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                  child: Padding(
                    padding: EdgeInsets.all(2.0),
                    child: ListTile(
                      leading: Icon(Icons.phone_android, color: Colors.black),
                      title: Text(
                        '+91 90956 40275',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Colors.blue.withOpacity(0.25),
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: ListTile(
                      leading: Icon(Icons.email, color: Colors.black),
                      title: Text(
                        'Nikhil@onwords.com',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          ),
        ),
      );
  }
}
