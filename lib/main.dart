import 'package:bazinga/search/search.binding.dart';
import 'package:bazinga/search/search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Bazinga',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Search(),
      initialBinding: SearchBinding(),
    );
  }
}
