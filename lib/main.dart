import 'package:car_rental_app/presentation/pages/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // TEMPORARY: Upload richer data (Run ONCE)
  // await uploadDummyData();

  runApp(const MyApp());
}

Future<void> uploadDummyData() async {
  final CollectionReference carsCollection =
      FirebaseFirestore.instance.collection('cars');

  // Data matching the design perfectly
  final List<Map<String, dynamic>> dummyCars = [
    {
      'model': 'Fortuner GR',
      'distance': 870,
      'fuelCapacity': 50,
      'pricePerHour': 45,
      'ownerName': 'Jane Cooper',
      'ownerImage': 'assets/user.png',
      'latitude': 51.5,
      'longitude': -0.09,
    },
    {
      'model': 'Fortuner GR', // Variant 2
      'distance': 1020,
      'fuelCapacity': 55,
      'pricePerHour': 50,
      'ownerName': 'Jane Cooper',
      'ownerImage': 'assets/user.png',
      'latitude': 51.52,
      'longitude': -0.08,
    },
    {
      'model': 'Fortuner GR', // Variant 3
      'distance': 1500,
      'fuelCapacity': 60,
      'pricePerHour': 55,
      'ownerName': 'Jane Cooper',
      'ownerImage': 'assets/user.png',
      'latitude': 51.54,
      'longitude': -0.10,
    },
  ];

  for (var car in dummyCars) {
    await carsCollection.add(car);
    print('Uploaded Rich Car: ${car['model']}');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: OnboardingScreen(),
    );
  }
}
