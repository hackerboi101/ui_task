// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class OnboardingWelcome extends StatefulWidget {
  const OnboardingWelcome({super.key});

  @override
  State<OnboardingWelcome> createState() => _OnboardingWelcomeState();
}

class _OnboardingWelcomeState extends State<OnboardingWelcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Container(
          child: Text('Welcome'),
        ),
      ),
    );
  }
}
