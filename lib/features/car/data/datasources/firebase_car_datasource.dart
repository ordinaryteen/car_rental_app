import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:car_rental_app/features/car/data/models/car_model.dart';
import 'package:car_rental_app/features/car/domain/entities/car.dart';

class FirebaseCarDataSource {
  final FirebaseFirestore firestore;

  FirebaseCarDataSource({required this.firestore});

  Future<List<Car>> getCars() async {
    var snapshot = await firestore.collection('cars').get();
    return snapshot.docs.map((doc) => CarModel.fromMap(doc.data())).toList();
  }
}
