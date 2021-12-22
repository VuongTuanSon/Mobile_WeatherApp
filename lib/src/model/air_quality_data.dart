import 'coord.dart';
import 'list.dart';
class AirQualityData {
  final Coord coord;
  final List list;
  AirQualityData({this.coord, this.list});

  factory AirQualityData.fromJson(dynamic json) {
    if (json == null) {
      return AirQualityData();
    }
    return AirQualityData(
        coord: Coord.fromJson(json['coord']),
        list: List.fromJson(json['list'])
    );
  }
}