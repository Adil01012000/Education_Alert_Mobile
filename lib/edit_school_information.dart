// ignore_for_file: prefer_const_constructors, unnecessary_import, implementation_imports, unused_import, unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class EditSchoolInformation extends StatefulWidget {
  const EditSchoolInformation({super.key});

  @override
  State<EditSchoolInformation> createState() => _EditSchoolInformationState();
}

class _EditSchoolInformationState extends State<EditSchoolInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF12283c),
      appBar: AppBar(
        backgroundColor: Color(0xFF173B5C),
        leading: Image.asset('assets/images/logo.png'),
        title: Center(
          child: Text(
            'School Information',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 22,
              ),
            ),
          ),
        ),
        actions: [Icon(Icons.menu)],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(15, 30, 15, 5),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  hintText: 'Write Your Name',
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
              padding: EdgeInsets.fromLTRB(15, 20, 15, 5),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Address', // Fixed label text
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  hintText: 'Write Your Address',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 179, 179, 179),
                    fontWeight: FontWeight.bold,
                  ),
                  prefixIcon: Image.asset(
                    'assets/images/address_ring.png',
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
              padding: EdgeInsets.fromLTRB(15, 20, 15, 5),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Number', // Fixed label text
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  hintText: 'Write Your Number',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 179, 179, 179),
                    fontWeight: FontWeight.bold,
                  ),
                  prefixIcon: Image.asset(
                    'assets/images/call_ring.png',
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
              padding: const EdgeInsets.fromLTRB(15, 30, 15, 0),
              width: MediaQuery.of(context).size.width,
              height: 90,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 247, 56, 89),
                  ),
                ),
                child: Text(
                  'Update',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
