import 'dart:async';
import 'package:edualert/create_school.dart';
import 'package:edualert/forgot_password.dart';
import 'package:edualert/join_school.dart';
import 'package:edualert/login.dart';
import 'package:edualert/sign_up.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => JoinSchool())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF12283C),
      child: Image.asset(
        'assets/images/logo.png',
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App Bar")),
      body: Center(
          child: Text(
        "Home page",
        textScaleFactor: 2,
      )),
    );
  }
}
