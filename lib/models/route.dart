import '../models/path.dart';

class Route {
  final Map<String, dynamic> hints;
  final Map<String, dynamic> info;
  final List<Path> paths;

  Route({
    required this.hints,
    required this.info,
    required this.paths,
  });

  factory Route.fromJson(Map<String, dynamic> json) {
    return Route(
      hints: json['hints'],
      info: json['info'],
      paths: List<Path>.from(json['paths'].map((x) => Path.fromJson(x))),
    );
  }
}