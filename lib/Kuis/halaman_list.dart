import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:kuisrentall/Kuis/halaman_detail.dart';
import 'package:kuisrentall/Kuis/rental_car.dart';

class HalamanList extends StatelessWidget {
  const HalamanList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Rental Mobil'),
          ),
        ),
        body: ListView.builder(
          itemCount: rentalCar.length,
          itemBuilder: (context, index) {
            final RentalCar car = rentalCar[index];
            return ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HalamanDetail(car: car),
                    ));
              },
              leading: Image.network(
                car.images[1],
                width: 150,
                height: 300,
                fit: BoxFit.cover,
              ),
              title: Row(
                
                  children: [Text(car.brand), Text(' '), Text(car.model)],
                
              ),
              subtitle: Row(
                
                  children: [
                    Text(car.rentalPricePerDay),
                    Text(' / Hari'),
                  ],
                
              ),
            );
          },
        ));
  }
}
