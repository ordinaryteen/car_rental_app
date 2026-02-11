import 'package:car_rental_app/features/car/data/datasources/firebase_car_datasource.dart';
import 'package:car_rental_app/features/car/domain/entities/car.dart';
import 'package:car_rental_app/features/car/domain/repositories/car_repository.dart';

class CarRepositoryImpl implements CarRepository {
  final FirebaseCarDataSource dataSource;

  CarRepositoryImpl({required this.dataSource});

  @override
  Future<List<Car>> fetchCars() {
    return dataSource.getCars();
  }
}
