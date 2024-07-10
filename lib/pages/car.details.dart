import 'package:car_rental/data_model/car_model.dart';
import 'package:car_rental/widgets/car_card.dart';
import 'package:car_rental/widgets/more_card.dart';
import 'package:flutter/material.dart';

class CarDetailPage extends StatelessWidget {
  final CarModel car;
  const CarDetailPage({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.info_outlined), Text('information')],
        ),
      ),
      body: Column(
        children: [
          CarCard(
              car: CarModel(
                  model: car.model,
                  distance: car.distance,
                  fuelCapacity: car.fuelCapacity,
                  pricePerHour: car.pricePerHour)),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: const Color(0xffF3F3F3),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              spreadRadius: 5)
                        ]),
                    child: const Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/user.png'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Jane Cooper',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$4,253',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            spreadRadius: 5)
                      ]),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Transform.scale(
                      scale: 1,
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/maps.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                MoreCard(
                    car: CarModel(
                        model: 'Nissan',
                        distance: 53,
                        fuelCapacity: 33,
                        pricePerHour: 33)),
                const SizedBox(
                  height: 5,
                ),
                MoreCard(
                    car: CarModel(
                        model: 'Nissan',
                        distance: 53,
                        fuelCapacity: 33,
                        pricePerHour: 33)),
                const SizedBox(
                  height: 5,
                ),
                MoreCard(
                    car: CarModel(
                        model: 'Nissan',
                        distance: 53,
                        fuelCapacity: 33,
                        pricePerHour: 33)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
