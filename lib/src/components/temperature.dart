import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:weather_forecast/src/pages/home_page.dart';

import '../stores/weather.stores.dart';
import 'package:weather_forecast/src/stores/weather.stores.dart';

class Temperature extends StatelessWidget {
  Temperature({super.key});

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
              /* Weatherstore.isValidSearching 
                  ? */
              Observer(
                builder: (_){
                  return Text('Máxima de ${Weatherstore.getWeather?.temp_max}°C e mínima de ${Weatherstore.getWeather?.temp_min}°C',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                    ),
                  );
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}