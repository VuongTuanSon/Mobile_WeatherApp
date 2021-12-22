class Components {
  double co;
  double no;
  double no2;
  double o3;
  double so2;
  double pm25;
  double pm10;
  double nh3;

  Components(
      {this.co,
        this.no,
        this.no2,
        this.o3,
        this.so2,
        this.pm25,
        this.pm10,
        this.nh3});

  factory Components.fromJson(dynamic json) {
    if (json == null) {
      return Components();
    }
    return Components(
      co: json['co'],
      no: json['no'],
      no2: json['no2'],
      o3: json['o3'],
      so2: json['so2'],
      pm25: json['pm25'],
      pm10: json['pm10'],
      nh3: json['nh3'],
    );
  }
}