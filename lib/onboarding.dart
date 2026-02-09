import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/onboarding.png'),
          Text('Welcome to Car Rental App'),
          Text('Book your dream car in minutes'),
          ElevatedButton(onPressed: () {}, child: Text('Get Started')),
        ],
      ),
    );
  }
}
