import 'package:flutter/material.dart';
import 'package:car_rental_app/data/models/car.dart';

class CarDetailScreen extends StatelessWidget {
  final Car car;

  const CarDetailScreen({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.info_outline),
            Text(' Information'),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 150,
            child: Image.asset('assets/car_image.png'),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            car.model,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.directions_car,
                    color: Colors.blueGrey,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '${car.distance.toStringAsFixed(0)}km',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 13),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.local_gas_station,
                    color: Colors.blueGrey,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '${car.fuelCapacity.toStringAsFixed(0)}L',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 13),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/user.png'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Jane Cooper',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            '\$4,253',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/maps.png',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
