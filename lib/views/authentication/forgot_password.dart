// ignore_for_file: prefer_const_constructors, unnecessary_import, implementation_imports, unused_import, unnecessary_new, unnecessary_const

import 'package:edualert/firebase/userAuth.dart';
import 'package:edualert/views/authentication/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final AuthenticationServices authService = AuthenticationServices();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF12283C),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                ),
                Text(
                  'Forgot Your Password',
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'E-Mail',
                      labelStyle: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      hintText: 'Write Your E-Mail',
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 179, 179, 179),
                      ),
                      prefixIcon: Image.asset(
                        'assets/images/email.png',
                      ),
                      prefixText: ' ',
                      suffixStyle: TextStyle(color: Colors.green),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 10, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(
                            Colors.white,
                          ),
                        ),
                        child: Text(
                          'Please Enter Your E-Mail To Be Sent A \nPassword Reset Request.',
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: Color.fromARGB(255, 179, 179, 179),
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 5),
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  child: ElevatedButton(
                    onPressed: () {
                      authService.forgetUserPassword(
                          emailController.text, context);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 247, 56, 89),
                      ),
                    ),
                    child: Text(
                      'Recover',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(
                      Colors.white,
                    ),
                  ),
                  child: Text(
                    'Done',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
