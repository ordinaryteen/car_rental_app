import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:car_rental_app/features/car/presentation/bloc/car_bloc.dart';
import 'package:car_rental_app/features/car/presentation/bloc/car_state.dart';
import 'package:car_rental_app/features/car/presentation/widgets/car_card.dart';

class CarListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Choose Your Car',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        foregroundColor: const Color.fromARGB(255, 53, 53, 53),
      ),
      body: BlocBuilder<CarBloc, CarState>(
        builder: (context, state) {
          if (state is CarsLoading) {
            return Center(child: CircularProgressIndicator());
          }

          if (state is CarsLoaded) {
            return Padding(
              padding: const EdgeInsets.only(top: 15),
              child: ListView.builder(
                itemCount: state.cars.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CarCard(car: state.cars[index]),
                  );
                },
              ),
            );
          }

          if (state is CarsError) {
            return Center(child: Text('Error: ${state.message}'));
          }

          return Container(); // Fallback for initial state
        },
      ),
    );
  }
}
