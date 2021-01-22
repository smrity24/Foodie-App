import 'package:flutter/material.dart';
import 'package:foodie_app/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Foodie App',
      theme: ThemeData(),
      home: HomeScreen(),
    );
  }
}
