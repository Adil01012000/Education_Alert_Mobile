// ignore_for_file: prefer_const_constructors, unnecessary_import, implementation_imports, unused_import, unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class RemoveStaff extends StatefulWidget {
  const RemoveStaff({super.key});

  @override
  State<RemoveStaff> createState() => _RemoveStaffState();
}

class _RemoveStaffState extends State<RemoveStaff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF12283c),
      appBar: AppBar(
        backgroundColor: Color(0xFF173B5C),
        leading: Image.asset('assets/images/logo.png'),
        title: Center(
          child: Text(
            'Staff Details',
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Text(
                'Tarik Abaza',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 25, 0, 0),
              child: Row(
                children: [
                  Text(
                    'E-Mail:  ',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        color: Color.fromARGB(255, 179, 179, 179),
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Text(
                    'tarik_abaza@hotmail.com',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
              child: Row(
                children: [
                  Text(
                    'Phone:  ',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        color: Color.fromARGB(255, 179, 179, 179),
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Text(
                    '0038762407769',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
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
                  'Remove User',
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
