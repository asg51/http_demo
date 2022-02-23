import 'package:flutter/material.dart';
import 'package:http_demo/screens/main_screen.dart';

import 'data/api/product_api.dart';

void main() {
  runApp( HttpApp());
}

class HttpApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}
