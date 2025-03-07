import 'package:flutter/material.dart';
import 'package:seeq/controllers/hit_controller.dart';
import 'package:seeq/services/navigation_service.dart';
import 'package:seeq/widgets/hit_list.dart';

class SearchView extends StatefulWidget {
  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  TextEditingController textEditingControllerLocation = TextEditingController();
  HitController hitController = HitController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search View')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Container(
                color: Colors.white,
                child: TextField(
                  controller: textEditingControllerLocation,
                  style: const TextStyle(),
                ),
              ),
            ),
            Center(
              child: FilledButton(onPressed: ()async {
                hitController.parseJson(await NavigationService.geoCode(
                    textEditingControllerLocation.text));
                setState(() {

                });
              }, child: const Text("NAVIGAM BAI")),
            ),
            SizedBox(height: 300,
            child: HitListView(hitController: hitController))
          ],
        ),
      ),
    );
  }
}
