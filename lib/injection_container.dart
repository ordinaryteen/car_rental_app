import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:car_rental_app/features/car/data/datasources/firebase_car_datasource.dart';
import 'package:car_rental_app/features/car/data/repositories/car_repository_impl.dart';
import 'package:car_rental_app/features/car/domain/repositories/car_repository.dart';
import 'package:car_rental_app/features/car/presentation/bloc/car_bloc.dart';

// GetIt Service Locator
final getIt = GetIt.instance;

void init() {
  // 1. Presentation (BLoC) - Use Factory (Creates new instance every time)
  getIt.registerFactory(() => CarBloc(carRepository: getIt()));

  // 2. Domain (Repository) - Use LazySingleton (Creates once)
  getIt.registerLazySingleton<CarRepository>(
    () => CarRepositoryImpl(dataSource: getIt()),
  );

  // 3. Data (DataSource) - Use LazySingleton
  getIt.registerLazySingleton<FirebaseCarDataSource>(
    () => FirebaseCarDataSource(firestore: getIt()),
  );

  // 4. External (Firebase)
  getIt.registerLazySingleton(() => FirebaseFirestore.instance);
}
