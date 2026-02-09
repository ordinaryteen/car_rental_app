import 'package:flutter/material.dart';

import 'package:car_rental_app/presentation/widgets/car_rental_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // image section
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(30.0),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/onboarding.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // description section
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Premium cars. \nEnjoy the luxury',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Premium and prestige car daily rental. \nExperience the thrill at a lower price',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: CarRentalButton(
                    onPressed: () {},
                    text: "Let's Go",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
