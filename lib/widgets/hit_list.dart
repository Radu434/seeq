import 'package:flutter/material.dart';
import 'package:seeq/models/point.dart';
import 'package:seeq/services/navigation_service.dart';
import '../models/hit.dart';
import '../controllers/hit_controller.dart';
import 'package:geolocator/geolocator.dart';

class HitListView extends StatelessWidget {
  final HitController hitController;

  HitListView({Key? key, required this.hitController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: hitController.hits.length,
      itemBuilder: (context, index) {
        final hit = hitController.hits[index];
        return ListTile(
          title: Text(hit.name),
          subtitle: Text(hit.city ?? hit.country),
          leading: Icon(Icons.location_on),
          onTap: () async {


            Position pos = await Geolocator.getCurrentPosition();
            print(await NavigationService.route(
                hit.point, Point(lat: pos.latitude, lng: pos.longitude)));
          },
        );
      },
    );
  }
}
