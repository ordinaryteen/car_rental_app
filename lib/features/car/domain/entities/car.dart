class Car {
  final String model;
  final double distance;
  final double fuelCapacity;
  final double pricePerHour;

  final String? ownerName;
  final String? ownerImage;
  final double? latitude;
  final double? longitude;
  final List<dynamic>? variants;

  Car({
    required this.model,
    required this.distance,
    required this.fuelCapacity,
    required this.pricePerHour,
    this.ownerName,
    this.ownerImage,
    this.latitude,
    this.longitude,
    this.variants,
  });
}
