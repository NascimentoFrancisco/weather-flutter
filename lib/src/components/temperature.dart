import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Temperature extends StatelessWidget {
  const Temperature({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Color.fromARGB(166, 6, 10, 39)/* Color.fromARGB(255, 7, 96, 168) */
        ),
        child: Padding(
          padding: EdgeInsets.all(4),
          child: Row(
            children: [
              Icon(Icons.thermostat,color: Color.fromARGB(255, 56, 152, 231),),
              Text('Temp max e min',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}