import 'package:flutter/material.dart';
import 'package:shopapp_ui/constant.dart';
import 'package:shopapp_ui/screens/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
