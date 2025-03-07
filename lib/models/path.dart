// Path model to represent the entire route
import 'package:seeq/models/instruction.dart';

import '../models/point.dart';

class Path {
  final double distance;
  final double weight;
  final int time;
  final int transfers;
  final bool pointsEncoded;
  final List<double> bbox;
  final List<Point> points;
  final List<Instruction> instructions;
  final List<dynamic> legs;
  final Map<String, dynamic> details;
  final double ascend;
  final double descend;
  final List<Point> snappedWaypoints;

  Path({
    required this.distance,
    required this.weight,
    required this.time,
    required this.transfers,
    required this.pointsEncoded,
    required this.bbox,
    required this.points,
    required this.instructions,
    required this.legs,
    required this.details,
    required this.ascend,
    required this.descend,
    required this.snappedWaypoints,
  });

  factory Path.fromJson(Map<String, dynamic> json) {
    return Path(
      distance: json['distance'],
      weight: json['weight'],
      time: json['time'],
      transfers: json['transfers'],
      pointsEncoded: json['points_encoded'],
      bbox: List<double>.from(json['bbox']),
      points: Point.listFromJson(json['points']),
      instructions: List<Instruction>.from(
        json['instructions'].map((x) => Instruction.fromJson(x)),
      ),
      legs: json['legs'] ?? [],
      details: json['details'] ?? {},
      ascend: json['ascend'],
      descend: json['descend'],
      snappedWaypoints: Point.listFromJson(json['snapped_waypoints']),
    );
  }
}

// Points model to represent GeoJSON LineString
class Points {
  final String type;
  final List<List<double>> coordinates;

  Points({
    required this.type,
    required this.coordinates,
  });


}
