import 'package:flutter/material.dart';
import 'package:genaai/Screens/home_screen.dart';
import 'package:genaai/Screens/city_screen.dart';
import 'package:genaai/Screens/size_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const HomeScreen(), //becomes the default route named '/'
    routes: <String, WidgetBuilder>{
      '/CityScreen': (BuildContext context) => const CityScreen(),
      '/SizeScreen': (BuildContext context) => const SizeScreen(),
    },
  ));
}
