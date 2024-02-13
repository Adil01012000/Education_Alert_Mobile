import 'dart:async';
import 'package:edualert/alerts.dart';
import 'package:edualert/alerts_attentat.dart';
import 'package:edualert/alerts_incendie.dart';
import 'package:edualert/conference_call.dart';
import 'package:edualert/create_school.dart';
import 'package:edualert/edit_director_information.dart';
import 'package:edualert/edit_school_information.dart';
import 'package:edualert/forgot_password.dart';
import 'package:edualert/invite_staff.dart';
import 'package:edualert/join_school.dart';
import 'package:edualert/login.dart';
import 'package:edualert/remove_staff.dart';
import 'package:edualert/send_feedback.dart';
import 'package:edualert/sign_up.dart';
import './views/director/main_director_screen.dart';
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
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => Login())));
  }

  @override
  Widget build(BuildContext context) {    return Container(
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
