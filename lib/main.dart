import 'package:flutter/material.dart';
import 'package:week10/home.dart';
import 'package:week10/screen1.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {

  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Home.route,
      routes: {
        Home.route : (c) => const Home(),
        Screen1.route : (c) => const Screen1()
      },

    );
  }}