
import 'dart:convert';
import 'dart:ffi';
import 'package:http/http.dart' as http;

import 'package:mobx/mobx.dart';
import 'package:weather_forecast/src/models/weather_model.dart';
part 'weather.stores.g.dart';


class weatherStore = _weatherStore with _$weatherStore;

abstract class _weatherStore with Store{

  _weatherStore(){
    autorun((_){
      print(city);
    });
  }

  @observable
  String city = "";

  @observable
  bool searching = false;

  /* @observable
  Weather? weather; */

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

}
