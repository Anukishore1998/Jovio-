import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/decor.dart';
import 'package:flutter_application_1/screens/deo.dart';
import 'package:flutter_application_1/screens/eventboard.dart';
import 'package:flutter_application_1/screens/homescreen.dart';
import 'package:flutter_application_1/screens/editprofile.dart';
import 'package:flutter_application_1/screens/pick_choose.dart';
// import 'package:flutter_application_1/screens/slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter JOVIO',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            appBarTheme: const AppBarTheme(
                elevation: 1.0, shadowColor: Color.fromRGBO(91, 49, 219, 1))),
        home: Home());
  }
}
