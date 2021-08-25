import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/pages.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return Scaffold(
      body:Builder(builder: (context) {
        if (data.orientation.index == Orientation.landscape.index) {
          return ListView(
            padding: EdgeInsets.symmetric(horizontal: data.size.width*0.25),
            children: [
              buildColumn(context),
            ],
          );
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildColumn(context)],
          );
        }
      }),

      );
  }

  Column buildColumn(BuildContext context) {
    final data = MediaQuery.of(context);
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xEEFFFFFF),
              shape: BoxShape.circle,
              border: Border.all(width: 1.0,color: Color(0xEEFFFFFF)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset:  Offset(
                    2.0,
                    2.0,
                  ),
                  blurRadius: 10.0,
                  spreadRadius: 6.0,
                ),
                BoxShadow(
                  color: Colors.white,
                  offset:  Offset(-2.0, -2.0),
                  blurRadius: 0.0,
                  spreadRadius: 10.0,
                ),
              ],
            ),
            child: Flexible(
              child: Hero(
                tag: 'mainLogo',
                child: Image(
                  image: AssetImage('images/mainLogo.png'),
                  height: 200.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 70.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: data.size.width*0.1),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xD0FFFFFF),
                borderRadius: BorderRadius.circular(32.0),
                border: Border.all(width: 1.0,color: Color(0xEEFFFFFF)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset:  Offset(
                      2.0,
                      2.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 6.0,
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset:  Offset(-2.0, -2.0),
                    blurRadius: 0.0,
                    spreadRadius: 10.0,
                  ),
                ],
              ),
              child: TextField(
                textAlign: TextAlign.center,
                decoration:
                    textFieldDecor.copyWith(hintText: 'Enter Your userName'),
              ),
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: data.size.width*0.1),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xD0FFFFFF),
                borderRadius: BorderRadius.circular(32.0),
                border: Border.all(width: 1.0,color: Color(0xEEFFFFFF)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset:  Offset(
                      2.0,
                      2.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 6.0,
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset:  Offset(-2.0, -2.0),
                    blurRadius: 0.0,
                    spreadRadius: 10.0,
                  ),
                ],
              ),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: textFieldDecor.copyWith(
                    hintText: 'Enter Your password'),
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: data.size.width*0.1),
            child: Container(
              width: 150.0,
              decoration: BoxDecoration(
                color: Color(0xD0FFFFFF),
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(width: 1.0,color: Color(0xEEFFFFFF)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset:  Offset(
                      2.0,
                      2.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 6.0,
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset:  Offset(-2.0, -2.0),
                    blurRadius: 0.0,
                    spreadRadius: 10.0,
                  ),
                ],
              ),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Pages(),),);

                  });
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
  }
}
