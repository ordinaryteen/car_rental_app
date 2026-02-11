import 'package:car_rental_app/features/car/domain/entities/car.dart';

abstract class CarRepository {
  Future<List<Car>> fetchCars();
}
