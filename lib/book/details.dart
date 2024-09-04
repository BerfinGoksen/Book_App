import 'package:books_app/utility/u_color.dart';
import 'package:books_app/utility/u_font.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: UColor.yankeesBlue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: UColor.yankeesBlue,
              ),
              child: Container(
                margin: const EdgeInsets.all(50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/Book.png',
                      scale: 0.5,
                    ),
                    Column(
                      children: [
                        Text(
                          'The Ps Of Money',
                          style: UFont.h1.copyWith(fontSize: 20),
                        ),
                        Text(
                          'data',
                          style: UFont.desciption,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width * 0.8,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Text(
                    'About the book',
                    style: UFont.h1Black,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'ŞLFMVPŞEKGMNVŞEOTKNBGMŞLEKGBMPRDÖĞSLMDVPĞW',
                    style: UFont.desciption,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'News',
                    style: UFont.h1Black,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset('assets/Book.png'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
