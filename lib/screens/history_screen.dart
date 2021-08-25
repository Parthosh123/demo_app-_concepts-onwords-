import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF767676),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
            color: Color(0xE2F8F7F7),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(//history indicator.
                padding: EdgeInsets.only(right: 220.0),
                child: Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                    //borderRadius: BorderRadius.circular(30.0),
                    //color: Colors.red,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: const Offset(
                          2.0,
                          2.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 4.0,
                      ),
                      BoxShadow(
                        color: Colors.white,
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.account_circle,
                    ),
                  ),
                ),
              ),
              Container(
                height: 280.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    //color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset:  Offset(
                          10.0,
                          5.0,
                        ),
                        blurRadius: 12.0,
                        spreadRadius: 3.0,
                      ),
                      BoxShadow(
                        color: Colors.grey,
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ),
                    ]
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white,
                  ),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text('login history')),


                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
