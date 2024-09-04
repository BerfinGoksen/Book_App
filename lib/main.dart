import 'package:books_app/book/Splash.dart';
import 'package:books_app/book/home.dart';
import 'package:flutter/material.dart';

import 'book/details.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(scaffoldBackgroundColor: Colors.white),
      home: const Splash(),
    );
  }
}
