import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/models/weather.dart';
import 'package:weather/repositories/api_repository.dart';

class WeatherProvider extends ChangeNotifier {
  Position? position;
  String nameCity = 'Ha Noi';

  updatePosition(Position positionCurrent) {
    position = positionCurrent;
    notifyListeners();
  }

  Future<WeatherData> getWeatherCurrent() async {
    WeatherData result = await ApiRepository.callApiGetWeather(position);
    nameCity = result.name;
    notifyListeners();
    return result;
  }

  Future<List<WeatherDetail>> getWeatherCurrentDetail() async {
    List<WeatherDetail> result =
        await ApiRepository.callApiGetWeatheDetail(position);
    return result;
  }
}
