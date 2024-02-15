// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:edualert/views/director/payment_history.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/monthly_packages.dart';
import '../../widgets/custom_package_buttons.dart';
import '';
import '../../widgets/route_animations.dart';

class DirectorSubscriptionScreen extends StatefulWidget {
  const DirectorSubscriptionScreen({super.key});

  @override
  State<DirectorSubscriptionScreen> createState() =>
      _DirectorSubscriptionScreenState();
}

class _DirectorSubscriptionScreenState
    extends State<DirectorSubscriptionScreen> {
  int activeIndex = 0; // Initially, no button is selected

  void changeColor(int index) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF12283C),
      appBar: AppBar(
        backgroundColor: Color(0xFF173B5C),
        leading: Image.asset('assets/images/logo.png'),
        title: Center(
          child: Text(
            'Subscription Plan',
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
              ))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(0, changeColor, activeIndex, 'Monthly'),
                CustomButton(1, changeColor, activeIndex, 'Quarterly'),
                CustomButton(2, changeColor, activeIndex, 'Yearly'),
              ],
            ),
          ),
          Expanded(
            child: MonthlyPackagesCards(),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 70),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaymentHistory()),
                );
              },
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(
                  Colors.white,
                ),
              ),
              child: Text(
                'View Payment History',
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
        ],
      ),
    );
  }
}
