// ignore_for_file: unnecessary_null_comparison, use_build_context_synchronously, prefer_const_constructors, avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edualert/firebase/userAuth.dart';
import 'package:edualert/views/authentication/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DirectorServices {
  final AuthenticationServices authService = AuthenticationServices();

  Future<void> deleteAccount(BuildContext context) async {
    try {
      User user = FirebaseAuth.instance.currentUser!;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? password = prefs.getString('password');

      if (password != null) {
        AuthCredential credential = EmailAuthProvider.credential(
          email: user.email!,
          password: password,
        );
        await user.reauthenticateWithCredential(credential);
      }
      await user.delete();

      print("Account deleted successfully");

      await FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .delete();

      print("User data deleted from Firestore");

      await prefs.clear();
      print("Data cleared from SharedPreferences");

      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login()));
      authService.showMessage('Account Deleted Successfully!');
    } catch (e) {
      print("Error deleting account: $e");
    }
  }
}
