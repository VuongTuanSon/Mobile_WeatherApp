class Main {
  int aqi;

  Main({this.aqi});

  factory Main.fromJson(dynamic json) {
    if (json == null) {
      return Main();
    }

    return Main(aqi: json['aqi']);
  }
}