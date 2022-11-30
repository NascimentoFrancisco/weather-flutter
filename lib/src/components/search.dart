
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../repositories/weather_repositories.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  TextEditingController _cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
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
          child: GestureDetector(
            onTap: () {
              print("Clicado");
              /* searchWeatherData(_cityController.text); */
            },
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 26,
            ),
          ),
        )
      ),
    );
  }
}