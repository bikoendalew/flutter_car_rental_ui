import 'package:car_rental/data_model/car_model.dart';
import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  final CarModel car;
  const CarCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: const Color(0xffF3F3F3),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 5)
          ]),
      child: Column(
        children: [
          Image.asset(
            'assets/car_image.png',
            height: 120,
          ),
          Text(
            car.model,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/gps.png'),
                      Text(' ${car.distance.toStringAsFixed(0)}km')
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset('assets/pump.png'),
                      Text(' ${car.fuelCapacity.toStringAsFixed(0)}L')
                    ],
                  ),
                ],
              ),
              Text(
                '\$${car.pricePerHour.toStringAsFixed(2)}/h',
                style: TextStyle(fontSize: 16),
              )
            ],
          )
        ],
      ),
    );
  }
}
