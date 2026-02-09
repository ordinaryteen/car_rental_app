import 'package:flutter/material.dart';
import 'package:car_rental_app/data/models/car.dart';
import 'package:car_rental_app/presentation/widgets/car_card.dart';

class CarListScreen extends StatelessWidget {
  final List<Car> cars = [
    Car(
        model: 'Fortuner 4',
        distance: 12000,
        fuelCapacity: 60,
        pricePerHour: 100),
    Car(
        model: 'Fortuner 35',
        distance: 3000,
        fuelCapacity: 80,
        pricePerHour: 120),
    Car(
        model: 'Fortuner 1',
        distance: 5000,
        fuelCapacity: 70,
        pricePerHour: 140),
    Car(
        model: 'Fortuner 2',
        distance: 16000,
        fuelCapacity: 50,
        pricePerHour: 160),
    Car(
        model: 'Fortuner 1',
        distance: 5000,
        fuelCapacity: 70,
        pricePerHour: 140),
    Car(
        model: 'Fortuner 2',
        distance: 16000,
        fuelCapacity: 50,
        pricePerHour: 160),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Choose Your Car',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        foregroundColor: const Color.fromARGB(255, 53, 53, 53),
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return CarCard(car: cars[index]);
        },
      ),
    );
  }
}
