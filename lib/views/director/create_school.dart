// ignore_for_file: prefer_const_constructors, unnecessary_import, implementation_imports, unused_import, unnecessary_new

import 'package:edualert/views/director/main_director_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../firebase/userAuth.dart';

class CreateSchool extends StatefulWidget {
  const CreateSchool({super.key});

  @override
  State<CreateSchool> createState() => _CreateSchoolState();
}

class _CreateSchoolState extends State<CreateSchool> {
  final AuthenticationServices authService = AuthenticationServices();
  TextEditingController schoolNameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

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
                  'Create A School',
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 25, 15, 5),
                  child: TextField(
                    controller: schoolNameController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'School Name',
                      labelStyle: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      hintText: 'Write Your School Name',
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 179, 179, 179),
                        fontWeight: FontWeight.bold,
                      ),
                      prefixIcon: Image.asset(
                        'assets/images/school.png',
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
                  padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
                  child: TextField(
                    controller: addressController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Address', // Fixed label text
                      labelStyle: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      hintText: 'Write Your Address',
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 179, 179, 179),
                        fontWeight: FontWeight.bold,
                      ),
                      prefixIcon: Image.asset(
                        'assets/images/location.png',
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
                  padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
                  child: TextField(
                    controller: phoneController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Phone Number', // Fixed label text
                      labelStyle: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      hintText: 'Write Your Number',
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 179, 179, 179),
                        fontWeight: FontWeight.bold,
                      ),
                      prefixIcon: Image.asset(
                        'assets/images/phone.png',
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
                Container(
                  padding: EdgeInsets.fromLTRB(15, 40, 15, 5),
                  width: MediaQuery.of(context).size.width,
                  height: 110,
                  child: ElevatedButton(
                    onPressed: () {
                      print('abc');
                      authService.createSchool(schoolNameController.text,
                          addressController.text, phoneController.text);
                      print('xyz');
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainDirectorScreen()));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 247, 56, 89),
                      ),
                    ),
                    child: Text(
                      'Create School',
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
                    'Back',
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
