import 'package:flutter/material.dart';

import '../../widgets/monthly_packages.dart';
import '../../widgets/custom_package_buttons.dart';
import '';

class DirectorSubscriptionScreen extends StatefulWidget {
  const DirectorSubscriptionScreen({super.key});

  @override
  State<DirectorSubscriptionScreen> createState() =>
      _DirectorSubscriptionScreenState();
}

class _DirectorSubscriptionScreenState
    extends State<DirectorSubscriptionScreen> {
  int activeIndex = -1; // Initially, no button is selected

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
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: [
          Icon(
            Icons.menu,
            color: Colors.white,
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(0, changeColor, activeIndex, 'Monthly'),
              CustomButton(1, changeColor, activeIndex, 'Quarterly'),
              CustomButton(2, changeColor, activeIndex, 'Yearly'),
            ],
          ),
          Expanded(
            child: MonthlyPackagesCards(),
          ),
        ],
      ),
    );
  }
}
