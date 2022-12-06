
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:weather_forecast/src/models/weather_model.dart';
import 'package:weather_forecast/src/pages/home_page.dart';
import 'package:weather_forecast/src/stores/weather.stores.dart';


class Search extends StatefulWidget {
  Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  TextEditingController _cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      controller: _cityController,
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        filled: true,
        fillColor: Color.fromARGB(108, 98, 100, 117)/* Color.fromARGB(87, 24, 43, 124) */,
        border: OutlineInputBorder(),
        labelText: 'Cidade',
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
          ),
        ),
        labelStyle: TextStyle(color: Colors.white),
        suffixIcon: Padding(
          padding: EdgeInsets.all(2),
          child: Observer(
            builder: (_){
              return GestureDetector(
                onTap: 
                  Weatherstore.isValidSearching 
                  ? null : ()async{
                      Weatherstore.setCity(_cityController.text);
                      await Weatherstore.setWeather();
                    },
                child: Weatherstore.isValidSearching 
                  ?CircularProgressIndicator(
                    color: Colors.white,
                  )
                  :Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 26,
                ),
              );
            },
          ),
        )
      ),
    );
  }
}