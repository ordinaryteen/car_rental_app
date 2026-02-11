import 'package:car_rental_app/features/car/domain/entities/car.dart';

class CarModel extends Car {
  CarModel({
    required super.model,
    required super.distance,
    required super.fuelCapacity,
    required super.pricePerHour,
    super.ownerName,
    super.ownerImage,
    super.latitude,
    super.longitude,
    super.variants,
  });

  factory CarModel.fromMap(Map<String, dynamic> map) {
    return CarModel(
      model: map['model'],
      distance: (map['distance'] as num).toDouble(),
      fuelCapacity: (map['fuelCapacity'] as num).toDouble(),
      pricePerHour: (map['pricePerHour'] as num).toDouble(),
      ownerName: map['ownerName'],
      ownerImage: map['ownerImage'],
      latitude:
          map['latitude'] != null ? (map['latitude'] as num).toDouble() : null,
      longitude: map['longitude'] != null
          ? (map['longitude'] as num).toDouble()
          : null,
      variants: map['variants'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'model': model,
      'distance': distance,
      'fuelCapacity': fuelCapacity,
      'pricePerHour': pricePerHour,
      'ownerName': ownerName,
      'ownerImage': ownerImage,
      'latitude': latitude,
      'longitude': longitude,
      'variants': variants,
    };
  }
}
