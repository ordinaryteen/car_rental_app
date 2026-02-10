import 'package:flutter/material.dart';
import 'package:car_rental_app/data/models/car.dart';
import 'package:car_rental_app/presentation/widgets/more_card.dart';

class CarDetailScreen extends StatelessWidget {
  final Car car;

  const CarDetailScreen({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.info_outline),
            Text(' Information'),
          ],
        ),
        actions: const [
          Opacity(
            opacity: 0.0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Icon(Icons.arrow_back),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // Part 1: Car Image and Description
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Container(
              height: 225,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 5,
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 100,
                    child: Image.asset(
                      'assets/car_image.png',
                      height: 100,
                    ),
                  ),
                  Text(
                    car.model,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.directions_car,
                            color: Colors.blueGrey,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            '${car.distance.toStringAsFixed(0)}km',
                            style: const TextStyle(
                                color: Colors.blueGrey, fontSize: 13),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.local_gas_station,
                            color: Colors.blueGrey,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            '${car.fuelCapacity.toStringAsFixed(0)}L',
                            style: const TextStyle(
                                color: Colors.blueGrey, fontSize: 13),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          // Part 2: User Info and Maps
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xffF3F3F3),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          spreadRadius: 5,
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        const CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/user.png'),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Jane Cooper',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          '\$4,253',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Container(
                    height: 170,
                    decoration: BoxDecoration(
                      color: const Color(0xffF3F3F3),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          spreadRadius: 5,
                        )
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/maps.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Part 3: More Cars
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Column(
              children: [
                MoreCard(
                    car: Car(
                        model: "${car.model}-1",
                        distance: car.distance + 100,
                        fuelCapacity: car.fuelCapacity + 100,
                        pricePerHour: car.pricePerHour + 10)),
                const SizedBox(height: 10),
                MoreCard(
                    car: Car(
                        model: "${car.model}-2",
                        distance: car.distance + 200,
                        fuelCapacity: car.fuelCapacity + 200,
                        pricePerHour: car.pricePerHour + 20)),
                const SizedBox(height: 10),
                MoreCard(
                    car: Car(
                        model: "${car.model}-3",
                        distance: car.distance + 300,
                        fuelCapacity: car.fuelCapacity + 300,
                        pricePerHour: car.pricePerHour + 30)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
