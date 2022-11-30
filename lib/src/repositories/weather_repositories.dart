
import 'dart:convert';
import 'dart:ffi';

import 'package:http/http.dart' as http;

Future searchWeatherData (String city) async{

  String coutry = "BR";

  const String key = "your key";
  String url = "https://api.openweathermap.org/data/2.5/weather?q=${city},${coutry}&appid=${key}&units=metric&lang=pt_br";

  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200){
    
    var data = jsonDecode(response.body);
    print(data);
    print(data['weather'][0]['description']);
    print(data['main']['temp']);
    print(data['main']['temp_max']);
    print(data['main']['temp_min']);
    print(data['wind']['speed']);
    print(data['name']);

             
  }
  print(response.statusCode);
}
