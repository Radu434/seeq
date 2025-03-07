import '../models/hit.dart';

class HitController {
  List<Hit> hits = List.empty(growable: true);

  HitController();

  void parseJson(Map<String, dynamic> json) {
    hits =
        (json['hits'] as List).map((item) => Hit.fromJson(item)).toList();
  }
}
