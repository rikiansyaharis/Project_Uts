import 'package:flutter/material.dart';
import 'package:projectuts/Routes/Routes.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    onGenerateRoute: RouteGenerator.generateRoute,
    // home: Navigation(),
  ));
}
