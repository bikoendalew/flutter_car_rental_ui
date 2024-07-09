import 'package:car_rental/data_model/car_model.dart';
import 'package:car_rental/widgets/car_card.dart';
import 'package:flutter/material.dart';

class CarListScreen extends StatelessWidget {
  final List<CarModel> cars = [
    CarModel(model: 'Nissan', distance: 53, fuelCapacity: 33, pricePerHour: 33),
    CarModel(model: 'Nissan', distance: 53, fuelCapacity: 33, pricePerHour: 33),
    CarModel(model: 'Nissan', distance: 53, fuelCapacity: 33, pricePerHour: 33),
    CarModel(model: 'Nissan', distance: 53, fuelCapacity: 33, pricePerHour: 33)
  ];
  CarListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: cars.length,
          itemBuilder: (_, index) {
            return CarCard(car: cars[index]);
          }),
    );
  }
}
