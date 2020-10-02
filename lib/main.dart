import 'package:khobidi_trace/login.dart';
import 'package:khobidi_trace/nearby.dart';
import 'package:khobidi_trace/register.dart';
import 'package:khobidi_trace/welcome.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        NearbyInterface.id: (context) => NearbyInterface(),
      },
    );
  }
}

//class App extends StatelessWidget {
//@override
//Widget build(BuildContext context) {
//return MaterialApp(
//debugShowCheckedModeBanner: false,
//home: WelcomeScreen(),
//);
//}
//}
