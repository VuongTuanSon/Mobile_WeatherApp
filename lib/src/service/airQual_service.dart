import 'package:flutter/foundation.dart';
import 'package:weather_app/src/api/api_repository.dart';
import 'package:weather_app/src/model/air_quality_data.dart';
class airQualService {
  final String lat;
  final String lon;

  String baseUrl = 'https://api.openweathermap.org/data/2.5';
  String apiKey = '3630ef05566a16ae6b1316e4f535117e';

  //https://api.openweathermap.org/data/2.5/air_pollution?lat=21&lon=105&appid=3630ef05566a16ae6b1316e4f535117e

  airQualService({@required this.lon, @required this.lat});
  void getAirQuality({
    Function() beforSend,
    Function(AirQualityData airQualityData) onSuccess,
    Function(dynamic error) onError,
  }) {
    final url = '$baseUrl/air_pollution?lat=21&lon=105&appid=$apiKey';
    ApiRepository(url: '$url', payload: null).get(
        beforeSend: () => {
          if (beforSend != null)
            {
              beforSend(),
            },
        },
        onSuccess: (data) => {
          onSuccess(AirQualityData.fromJson(data)),
        },
        onError: (error) => {
          if (onError != null)
            {
              print(error),
              onError(error),
            }
        });
  }
}