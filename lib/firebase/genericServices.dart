import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edualert/firebase/userAuth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class GenericServices {
  AuthenticationServices authenticationServices = AuthenticationServices();
  Future<void> addFeedback(
      String name, String message, BuildContext context) async {
    try {
      if (name.isEmpty) {
        authenticationServices.showMessage('Please fill the name field');
        return;
      } else if (message.isEmpty) {
        authenticationServices.showMessage('Please fill the message field');
        return;
      } else {
        String uid = FirebaseAuth.instance.currentUser!.uid;
        DocumentReference docRef =
            await FirebaseFirestore.instance.collection('feedback').add({
          'uid': uid,
          'name': name,
          'message': message,
        });

        authenticationServices.showMessage('Feedbac submitted successfully');
      }
    } catch (error) {
      authenticationServices.showMessage('Error adding feedback: $error');
    }
  }
}
