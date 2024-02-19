import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DirectorServices {
  Future<void> deleteAccount() async {
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
    } catch (e) {
      print("Error deleting account: $e");
    }
  }
}
