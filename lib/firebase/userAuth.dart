import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthenticationServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> registerUser(String fullNameController, String emailController,
      String phoneController, String passwordController) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: emailController,
        password: passwordController,
      );
      Map<String, dynamic> userData = {
        'full_name': fullNameController,
        'email': emailController,
        'phone': phoneController,
        'role': 'director'
      };
      await _firestore
          .collection('users')
          .doc(userCredential.user!.uid)
          .set(userData);
      print('User registered successfully!');
    } catch (e) {
      print('Error registering user: $e');
    }
  }

  Future<void> loginUser(
      String emailController, String passwordController) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: emailController,
        password: passwordController,
      );
      print("Login successful: ${userCredential.user?.email}");
    } on FirebaseAuthException catch (e) {
      print("Login failed: ${e.message}");
    }
  }

  Future<void> forgetUserPassword(String email) async {
    try {
      _auth.sendPasswordResetEmail(email: email);
      // print(email);
      print('Password reset email sent successfully');
    } catch (e) {
      print('Error sending password reset email: $e');
    }
  }
}
