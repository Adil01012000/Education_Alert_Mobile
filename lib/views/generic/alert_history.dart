// ignore_for_file: prefer_const_constructors, unnecessary_import, implementation_imports, unused_import, unnecessary_new, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class ConferenceCall extends StatefulWidget {
  const ConferenceCall({super.key});

  @override
  State<ConferenceCall> createState() => _ConferenceCallState();
}

class _ConferenceCallState extends State<ConferenceCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF12283c),
      appBar: AppBar(
        backgroundColor: Color(0xFF173B5C),
        leading: Image.asset('assets/images/logo.png'),
        title: Center(
          child: Text(
            'Alert History',
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
                'Conference',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            Gap(15),
            Expanded(
              child: ListView(
                children: [
                  Card(
                    color: Color.fromARGB(255, 33, 62, 89),
                    child: ListTile(
                      leading: Text(
                        'You',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      trailing: Image.asset('assets/images/call_incoming.png'),
                    ),
                  ),
                  Card(
                    color: Color.fromARGB(255, 33, 62, 89),
                    child: ListTile(
                      leading: Text(
                        'Julien Robert',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      trailing: Image.asset('assets/images/call_incoming.png'),
                    ),
                  ),
                  Card(
                    color: Color.fromARGB(255, 33, 62, 89),
                    child: ListTile(
                      leading: Text(
                        'Julien Robert',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      trailing: Text(
                        'joining...',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Color.fromARGB(255, 179, 179, 179),
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Color.fromARGB(255, 33, 62, 89),
                    child: ListTile(
                      leading: Text(
                        'Julien Robert',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      trailing: Text(
                        'joining...',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Color.fromARGB(255, 179, 179, 179),
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Color.fromARGB(255, 33, 62, 89),
                    child: ListTile(
                      leading: Text(
                        'Julien Robert',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      trailing: Text(
                        'joining...',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Color.fromARGB(255, 179, 179, 179),
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Color.fromARGB(255, 33, 62, 89),
                    child: ListTile(
                      leading: Text(
                        'Julien Robert',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      trailing: Image.asset('assets/images/call_missed.png'),
                    ),
                  ),
                  Card(
                    color: Color.fromARGB(255, 33, 62, 89),
                    child: ListTile(
                      leading: Text(
                        'Julien Robert',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      trailing: Image.asset('assets/images/call_missed.png'),
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
                  'End Group Call',
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
