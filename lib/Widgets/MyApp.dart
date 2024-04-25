import 'package:flutter/material.dart';
import 'package:whatsapp2/Screens/homePage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeIos(),
    );
  }
}
