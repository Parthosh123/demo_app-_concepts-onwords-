import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/screens/history_screen.dart';
import 'package:myapp/screens/settings_screen.dart';
import 'package:slide_to_act/slide_to_act.dart';

class ImageScreen extends StatefulWidget {
  final String item;
  final String text;

  ImageScreen(this.item, this.text);

  @override
  _MyImageScreen createState() => _MyImageScreen(item, text);
}

class _MyImageScreen extends State<ImageScreen> {
  final String item;
  final String text;
  _MyImageScreen(this.item, this.text);
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    //Color _color =Colors.red;
    //bool isColor = false;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xE9FFFFFF),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50.0, bottom: 30.0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // border: Border.all(
                        //   color: Colors.grey,
                        // ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: const Offset(
                              6.0,
                              6.0,
                            ),
                            blurRadius: 16.0,
                            spreadRadius: 10.0,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: const Offset(
                              -6.0,
                              -6.0,
                            ),
                            blurRadius: 16.0,
                            spreadRadius: 0.0,
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 170.0,
                        backgroundImage: AssetImage(item),
                      ),
                    ),
                  ),
                  Text(
                    text,
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: IconButton(
                        icon: FontAwesomeIcons.history,
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) =>
                                  HistoryScreen());
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: IconButton(
                        icon: FontAwesomeIcons.list,
                        onPressed: () {
                          setState(() {});
                        },
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: IconButton(
                        icon: FontAwesomeIcons.userCog,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SettingsScreen()));
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 50.0),
                child: Builder(
                  builder: (context) {
                    final GlobalKey<SlideActionState> _key = GlobalKey();
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SlideAction(
                        key: _key,
                        onSubmit: () {
                          setState(() {
                            if (isSelected == false) {
                              isSelected = true;
                            } else {
                              isSelected = false;
                            }
                            Future.delayed(
                              Duration(seconds: 1),
                                  () => _key.currentState.reset(),
                            );
                          });
                        },
                        elevation: 19,
                        text: isSelected
                            ? 'slide to check out'
                            : 'slide to check in',
                        textStyle: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                        ),
                        innerColor: Color(0xE2F8C16C),
                        outerColor: Color(0xE9FFFFFF),
                        sliderButtonIconSize: 48,
                        sliderButtonYOffset: -5,
                        sliderButtonIcon: Icon(FontAwesomeIcons.chevronRight,size: 30.0,),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class IconButton extends StatelessWidget {
  IconButton({this.icon, this.onPressed});
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        size: 40.0,
        color: Color(0xFF974C48),
      ),
      onPressed: onPressed,
      constraints: BoxConstraints(
        minHeight: 80.0,
      ),
      shape: CircleBorder(),
      fillColor: Colors.white,
      elevation: 9.0,
    );
  }
}
