import 'package:car_rental_app/features/car/presentation/bloc/car_bloc.dart';
import 'package:car_rental_app/features/car/presentation/bloc/car_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:car_rental_app/injection_container.dart'
    as di; // dependency injection
import 'package:car_rental_app/features/car/presentation/pages/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  di.init(); // Initialize Dependency Injection
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => di.getIt<CarBloc>()..add(LoadCars()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: OnboardingScreen(),
      ),
    );
  }
}
