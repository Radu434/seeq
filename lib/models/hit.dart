import 'package:seeq/models/point.dart';

class Hit {
  final Point point;
  final List<double>? extent;
  final String name;
  final String country;
  final String countryCode;
  final String? city;
  final String? street;
  final String? postcode;
  final int osmId;
  final String osmType;
  final String osmKey;
  final String osmValue;

  Hit({
    required this.point,
    this.extent,
    required this.name,
    required this.country,
    required this.countryCode,
    this.city,
    this.street,
    this.postcode,
    required this.osmId,
    required this.osmType,
    required this.osmKey,
    required this.osmValue,
  });

  factory Hit.fromJson(Map<String, dynamic> json) {
    return Hit(
      point: Point.fromJson(json['point']),
      extent: json['extent'] != null ? List<double>.from(json['extent']) : null,
      name: json['name'] ?? '',
      country: json['country'] ?? '',
      countryCode: json['countrycode'] ?? '',
      city: json['city'],
      street: json['street'],
      postcode: json['postcode'],
      osmId: json['osm_id'],
      osmType: json['osm_type'],
      osmKey: json['osm_key'],
      osmValue: json['osm_value'],
    );
  }
}

