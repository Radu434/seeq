import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';

import 'views/search_view.dart';


Future<void> main() async {

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {

    super.initState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'seeq',
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,

      themeMode: ThemeMode.dark,
      home: SearchView()
    );
  }
}