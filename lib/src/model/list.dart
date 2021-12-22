import 'main_air.dart';
import 'components.dart';
class List {
  int dt;
  Main main;
  Components components;

  List({this.dt, this.main, this.components});

  factory List.fromJson(dynamic json) {
    if (json == null) {
      return List();
    }

    return List(
      dt: json['dt'],
      main: Main.fromJson(['main']),
      components: Components.fromJson(json['components']),
    );
  }
}