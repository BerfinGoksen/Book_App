import 'package:books_app/utility/u_color.dart';
import 'package:books_app/utility/u_font.dart';
import 'package:flutter/material.dart';
import 'onboarding_screen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToOnboarding();
  }

  _navigateToOnboarding() async {
    await Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Onboarding(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: UColor.yankeesBlue),
          child: Stack(
            children: [
              Image.asset('assets/Ellipse 1.png'),
              Positioned(right: -50, top: 0, bottom: 0, child: Image.asset('assets/Ellipse 2.png')),
              Positioned(
                bottom: 0,
                child: Image.asset(
                  'assets/Ellipse 3.png',
                  scale: 1.05,
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/Book.png'),
                    Text(
                      'EASY BOOK',
                      style: UFont.h1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
