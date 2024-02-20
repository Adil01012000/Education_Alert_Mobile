import 'dart:math';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../views/authentication/login.dart';
import '../views/director/main_director_screen.dart';
import '../views/generic/join_school.dart';

class AuthenticationServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  String? uid;

  void showMessage(msg) {
    Fluttertoast.cancel();
    var message = Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  Future<void> registerUser(
    String fullName,
    String email,
    String phone,
    String password,
    BuildContext context,
    String schoolNameController,
    String addressController,
    String phoneController,
  ) async {
    try {
      if (email.isEmpty ||
          password.isEmpty ||
          phone.isEmpty ||
          fullName.isEmpty) {
        showMessage('Please fill all the fields.');
        return;
      }

      if (!RegExp(r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$")
          .hasMatch(email)) {
        showMessage("Invalid email format.");
        return;
      }

      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (userCredential.user != null) {
        uid = userCredential.user!.uid;

        Map<String, dynamic> userData = {
          'uid': uid,
          'full_name': fullName,
          'email': email,
          'phone': phone,
          'role': 'director',
        };

        await _firestore
            .collection('users')
            .doc(userCredential.user!.uid)
            .set(userData);
        showMessage('User successfully created');

        Random random = Random();
        int randomNumber = random.nextInt(1000000);
        String schoolId = randomNumber.toString();

        Map<String, dynamic> schoolData = {
          'director_id': uid,
          'school_name': schoolNameController,
          'adress': addressController,
          'phone': phoneController,
          'school_code': schoolId,
        };

        await _firestore.collection('schools').doc().set(schoolData);
        print('School created successfully!');

        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login()));
      }
    } catch (e) {
      // print('Error Message: $e');
      // showMessage('Error registering user $e');
    }
  }

  Future<void> loginUser(String emailController, String passwordController,
      BuildContext context) async {
    try {
      if (emailController.isEmpty) {
        showMessage('Email cannot be empty.');
        return;
      } else if (passwordController.isEmpty) {
        showMessage('Password cannot be empty.');
      }
      if (!RegExp(r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$")
          .hasMatch(emailController)) {
        showMessage("Invalid email format.");
        return;
      }
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController,
        password: passwordController,
      );

      showMessage("Login successfull");
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => MainDirectorScreen()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        showMessage('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        showMessage('Wrong password provided.');
      } else {
        showMessage("Log In failed due to wrong credentials");
      }
    } catch (e) {
      showMessage("An unexpected error occurred: $e");
    }
  }

  Future<void> forgetUserPassword(String email, BuildContext context) async {
    try {
      if (email.isEmpty) {
        showMessage('Email cannot be empty.');
        return;
      } else {
        _auth.sendPasswordResetEmail(email: email);
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login()));
      }
    } catch (e) {
      showMessage('Error sending password reset email: $e');
    }
  }

  // Future<void> createSchool(String? uid, String schoolNameController,
  //     String addressController, String phoneController) async {
  //   try {
  //     Random random = new Random();
  //     int randomNumber = random.nextInt(1000000);
  //     String schoolId = randomNumber.toString();

  //     Map<String, dynamic> schoolData = {
  //       'director_id': uid,
  //       'school_name': schoolNameController,
  //       'adress': addressController,
  //       'phone': phoneController,
  //       'school_code': schoolId
  //     };
  //     await _firestore.collection('schools').doc().set(schoolData);
  //     print('School created successfully!');
  //   } catch (e) {
  //     print('Error creating school: $e');
  //   }
  // }

  Future<void> saveUserDataToSharedPreferences(
      String email, String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('email', email);
    prefs.setString('password', password);
  }

  Future<void> logOut(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('email');
    await prefs.remove('password');
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Login()));
  }
}
