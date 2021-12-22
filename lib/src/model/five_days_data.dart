import 'package:weather_app/src/model/weather.dart';

class FiveDayData {
  final String dateTime;
  final int temp;
  final List<Weather> weather;

  FiveDayData({this.dateTime, this.temp, this.weather});

  factory FiveDayData.fromJson(dynamic json) {
    if (json == null) {
      return FiveDayData();
    }

    var f = json['dt_txt'].split(' ')[0].split('-')[2];
    var f1 = json['dt_txt'].split(' ')[0].split('-')[1];
    var l = json['dt_txt'].split(' ')[1].split(':')[0];
    var fandf1andl = '$f-$f1-$l';
    return FiveDayData(
      dateTime: '$fandf1andl',
      temp: (double.parse(json['main']['temp'].toString()) - 273.15).round(),
        weather: (json['weather'] as List)
            ?.map((w) => Weather.fromJson(w))
            ?.toList() ??
            List.empty()
    );
  }
}
