import 'dart:math';

class Point {
  double lat;
  double lng;
  bool passed;

  Point({required this.lat, required this.lng, this.passed = false});

  String dataToString() {
    return '$lat, $lng';
  }

  factory Point.fromJson(Map<String, dynamic> json) {
    return Point(
      lat: json['lat'],
      lng: json['lng'],
    );
  }

  static List<Point> listFromJson(Map<String, dynamic> json) {
    return List<Point>.from(
      json['coordinates'].map((x) => Point(lat: x[1], lng: x[0])),  // Corrected order
    );
  }
}
