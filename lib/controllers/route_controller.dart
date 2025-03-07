import '../models/path.dart';

class GraphHopperResponse {
  final Map<String, dynamic> hints;
  final Map<String, dynamic> info;
  final List<Path> paths;

  GraphHopperResponse({
    required this.hints,
    required this.info,
    required this.paths,
  });

  factory GraphHopperResponse.fromJson(Map<String, dynamic> json) {
    return GraphHopperResponse(
      hints: json['hints'],
      info: json['info'],
      paths: List<Path>.from(json['paths'].map((x) => Path.fromJson(x))),
    );
  }
}