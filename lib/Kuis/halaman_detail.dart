import 'package:flutter/material.dart';
import 'package:kuisrentall/Kuis/rental_car.dart';

class HalamanDetail extends StatefulWidget {
  final RentalCar car;
  const HalamanDetail({Key? key, required this.car}) : super(key: key);
  

  @override
  State<HalamanDetail> createState() => _HalamanDetailState();
}

class _HalamanDetailState extends State<HalamanDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            children: [
              Text(widget.car.brand),
              Text(' '),
              Text(widget.car.model)
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
            children: [
              Container(
                
                width: 300,
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => 
                  Image.network(widget.car.images[index]),
                  itemCount: widget.car.images.length,),
              ),
              SizedBox(height: 10,),

              Container(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(widget.car.brand,),
                      Text(' '),
                      Text(widget.car.model)
                    ],
                  ),
                ),
              ),
              Card(
                child: Row(
                  children: [
                    Text('Brand : '),
                    Text(widget.car.brand)
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Card(
                child: Row(
                  children: [
                    Text('Model : '),
                    Text(widget.car.model)
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Card(
                child: Row(
                  children: [
                    Text('Tahun : '),
                    Text(widget.car.year.toString())
                    
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Card(
                child: Row(
                  children: [
                    Text('Biaya Sewa : '),
                    Text(widget.car.rentalPricePerDay),
                    Text(' / Hari')
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Card(
                child: Row(
                  children: [
                    Text('Status : '),
                    Text(widget.car.available ? 'Tersedia' : 'Tidak Tersedia')
                  ],
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(height: 10,),
              Container(
                child: Row(
                  children: [
                    Text('Deksripsi')
                  ],
                ),
              ),
              Text(widget.car.description)
            ],
          ),
          ),
        ),
      ),
    );
  }
}
