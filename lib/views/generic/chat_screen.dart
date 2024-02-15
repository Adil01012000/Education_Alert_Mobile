// ignore_for_file: prefer_const_constructors, unnecessary_import, implementation_imports, unused_import, unnecessary_new, prefer_const_literals_to_create_immutables

import 'package:edualert/views/director/director_account_screen.dart';
import 'package:edualert/views/generic/alerts.dart';
import 'package:edualert/views/generic/alerts_incendie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/route_animations.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF12283c),
      appBar: AppBar(
        backgroundColor: Color(0xFF173B5C),
        leading: Image.asset('assets/images/logo.png'),
        title: Center(
          child: Text(
            'Chat',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 22,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(createRoute());
            },
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ],
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
            Divider(
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
