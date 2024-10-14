import 'package:capbooking_app/iconimage/image.dart';
import 'package:flutter/material.dart';

class TravellwithAuto extends StatefulWidget {
  const TravellwithAuto({super.key});

  @override
  State<TravellwithAuto> createState() => _TravellwithAutoState();
}

class _TravellwithAutoState extends State<TravellwithAuto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: Image.asset(AppImage.auto),
        ),
        SizedBox(
          height: 20,
        ),
        Text('Skip traffic, save time',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Colors.grey,
            )),
        SizedBox(
          height: 20,
        ),
        Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Text(
              'Request an on-demand drive on a automoter so you do not have to wait for a bus or metro you will save time and money. and your driver will pick you up at your door with a helmet for you to wear.',
              style: TextStyle(fontSize: 15),
            )),
        SizedBox(
          height: 320,
        ),
        InkWell(
          onTap: () {
            
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 100),
            child: Text(
              'Request Auto Moter',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.4),
                borderRadius: BorderRadius.circular(10)),
          ),
        )
      ],
    ));
  }
}
