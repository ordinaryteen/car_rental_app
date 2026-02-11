import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:car_rental_app/features/car/domain/repositories/car_repository.dart';
import 'car_event.dart';
import 'car_state.dart';

class CarBloc extends Bloc<CarEvent, CarState> {
  final CarRepository carRepository;

  CarBloc({required this.carRepository}) : super(CarsLoading()) {
    on<LoadCars>((event, emit) async {
      emit(CarsLoading());
      try {
        final cars = await carRepository.fetchCars();
        emit(CarsLoaded(cars));
      } catch (e) {
        emit(CarsError(e.toString()));
      }
    });
  }
}
