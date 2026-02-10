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

  factory Car.fromMap(Map<String, dynamic> map) {
    return Car(
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
}
