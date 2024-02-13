import 'package:flutter/material.dart';

class DirectorSubscriptionScreen extends StatefulWidget {
  const DirectorSubscriptionScreen({super.key});

  @override
  State<DirectorSubscriptionScreen> createState() =>
      _DirectorSubscriptionScreenState();
}

class _DirectorSubscriptionScreenState
    extends State<DirectorSubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Plans')),
    );
  }
}
