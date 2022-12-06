
import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import 'package:mobx/mobx.dart';
import 'package:weather_forecast/src/models/weather_model.dart';
part 'weather.stores.g.dart';


class weatherStore = _weatherStore with _$weatherStore;

abstract class _weatherStore with Store{

  @observable
  String city = "";

  @observable
  bool searching = false;

  @observable
  bool instanciConfirm = false;

  @observable
  Weather? weather;

  @action //Seta a cidade
  void setCity(String value){
    setSearching();
    city = value;
  } 

  @action
  void setSearching(){
    searching = !searching;
  }

  @computed //Verfica se a cidade não está vazia
  bool get isValidCity => city.isNotEmpty;

  @computed
  bool get isValidSearching => searching;

  @action
  void setinstanciConfirm(){
    instanciConfirm = !instanciConfirm;
  }

  /* Metodos relacionados a classe weather */

  @action
  Future<void> setWeather() async{

    var response;
    const String key = "your key";
    String url = "https://api.openweathermap.org/data/2.5/weather?q=${city},BR&appid=${key}&units=metric&lang=pt_br";
    
    if (isValidCity){
      try{
        response = await http.get(Uri.parse(url));
                
        if(response.statusCode == 200){
          weather = Weather.fromJson(jsonDecode(response.body));
          setSearching();
          setinstanciConfirm();
        } else if (response.statusCode == 404){
          print('Cidade não encotrada');
          setSearching();
        }/* Tratamentos dos demais erros*/

      } on ClientException{
        print('Erro de conexão');
        setSearching();
      } on SocketException{
        print('Erro de conexão');
        setSearching();
      } on NoSuchMethodError{
        print('Erro de conexão');
        setSearching();
      }
      
    }
  }

  @computed
  Weather? get getWeather => weather;
    
}
