
import 'dart:convert';
import 'dart:ffi';
import 'package:http/http.dart' as http;

/* Buscas, instanciações de classes e retornos para o front */

Future searchWeatherData (String city) async{

  String coutry = "BR";

  const String key = "your key";
  String url = "https://api.openweathermap.org/data/2.5/weather?q=${city},${coutry}&appid=${key}&units=metric&lang=pt_br";

  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200){
    
    var data = jsonDecode(response.body);
                 
  }
  
  print(response.statusCode);
}
