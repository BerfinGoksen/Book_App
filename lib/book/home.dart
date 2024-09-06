import 'package:books_app/book/widget/book_of_the_week.dart';
import 'package:books_app/book/widget/populer_book.dart';
import 'package:flutter/material.dart';
import 'widget/recommended_for_you.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'Book of the week',
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: [
                Image.asset(
                  'assets/Vector 1.png',
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
