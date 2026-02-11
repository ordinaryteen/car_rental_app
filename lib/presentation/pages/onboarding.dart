import 'package:car_rental_app/presentation/pages/car_list.dart';
import 'package:flutter/material.dart';
import 'package:car_rental_app/presentation/widgets/_button.dart';

import 'package:car_rental_app/presentation/pages/map_detail.dart';
import 'package:car_rental_app/data/models/car.dart';

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
                        'Your Premium cars',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Experience the thrill at a lower price',
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          // builder: (context) => CarListScreen(),

                          builder: (context) => MapDetailsPage(
                            car: Car(
                              model: 'Test Car',
                              distance: 100,
                              fuelCapacity: 50,
                              pricePerHour: 20,
                            ),
                          ),
                        ),
                      );
                    },
                    text: "Let's Fuckin Go",
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
