import 'package:flutter/material.dart';
import './view/home.dart';

void main() {
  runApp(const MaterialApp(home: FooodApp()));
}

class FooodApp extends StatelessWidget {
  const FooodApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ('just food'),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, primaryColor: Colors.white),
      home: const HomePage(),
    );
  }
}
