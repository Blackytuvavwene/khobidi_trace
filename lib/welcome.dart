import 'package:khobidi_trace/workflow/rnd_btn.dart';
import 'package:flutter/material.dart';

import 'login.dart';
import 'register.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Column(
            //crossAxisAlignment: CrossAxisAlignment.baseline,
            children: <Widget>[
              Container(
                  height: 550,
                  child: Stack(children: <Widget>[
                    Positioned(
                        //top: 0,
                        //height: 550,
                        //width: width,
                        child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('images/backg.png'),
                        fit: BoxFit.cover,
                      )),
                    ))
                  ])),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(
                        height: 100.0,
                      ),
                      RoundedButton(
                        title: 'Get started',
                        colour: Colors.lightBlueAccent,
                        onPressed: () {
                          Navigator.pushNamed(context, LoginScreen.id);
                        },
                      ),
                    ]),
              )
            ]));
  }
}
