import 'dart:async';
import 'package:edualert/views/generic/alerts.dart';
import 'package:edualert/views/generic/alerts_attentat.dart';
import 'package:edualert/views/generic/alerts_incendie.dart';
import 'package:edualert/views/generic/conference_call.dart';
import 'package:edualert/views/director/create_school.dart';
import 'package:edualert/views/director/edit_director_information.dart';
import 'package:edualert/views/director/edit_school_information.dart';
import 'package:edualert/views/authentication/forgot_password.dart';
import 'package:edualert/views/director/invite_staff.dart';
import 'package:edualert/views/generic/join_school.dart';
import 'package:edualert/views/authentication/login.dart';
import 'package:edualert/views/director/remove_staff.dart';
import 'package:edualert/views/generic/procedure_details.dart';
import 'package:edualert/views/generic/send_feedback.dart';
import 'package:edualert/views/authentication/sign_up.dart';
import './views/director/main_director_screen.dart';
import 'package:flutter/material.dart';

import 'views/director/director_subscription_screen.dart';

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
            context, MaterialPageRoute(builder: (context) => Login())));
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
