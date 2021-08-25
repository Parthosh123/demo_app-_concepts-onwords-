import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/screens/login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
   bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.grey,
           elevation: 5,
           // heroTag: 'logo2',
           child: Icon(Icons.account_circle,size: 35.0,color: isPressed ? Colors.white70: Colors.white),
          onPressed: (){
            setState((){
              isPressed = true;
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),),);
            });
          },
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
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
                    child: Hero(
                      tag: 'mainLogo',
                      child: Image(
                        image: AssetImage('images/mainLogo.png'),
                        height: 170.0,
                      ),
                    ),
                  ),
                  AnimatedTextKit(totalRepeatCount: 30,
                    animatedTexts: [
                      ColorizeAnimatedText(
                        "onWords",
                        textStyle: colorizeTextStyle,
                        colors: colorizeColors,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
