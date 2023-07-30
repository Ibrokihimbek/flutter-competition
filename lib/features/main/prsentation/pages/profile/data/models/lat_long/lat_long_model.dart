class LatLongModel {
  final double lat;
  final double long;

  LatLongModel({
    required this.lat,
    required this.long,
  });

  factory LatLongModel.fromJson(Map<String, dynamic> json) {
    return LatLongModel(
      lat: json['lat'] as double? ?? 0.0,
      long: json['long'] as double? ?? 0.0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'lat': lat,
      "long": long,
    };
  }
}
