import 'package:books_app/utility/u_font.dart';
import 'package:flutter/material.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.pageController,
  });

  final String image, title, description;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            flex: 10,
            child: Container(child: Image.asset(image)),
          ),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            textAlign: TextAlign.center,
          ),
          Text(
            description,
            style: UFont.desciption,
            textAlign: TextAlign.center,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class Onboard {
  final String image, title, description;
  //final PageController pageController;

  Onboard(
    this.image,
    this.title,
    this.description,
  );
}

final List<Onboard> demoData = [
  Onboard(
    "assets/splash1.png",
    "Only Books Can Help You",
    "Books can help you to increase your knowleadge and become more succesfully",
  ),
  Onboard(
    "assets/splash2.png",
    "Learn Smartly",
    "It's 2022 and it's time to learn every quickly and smartly. All books are storage in cloud and you can access all of them from youe laptop or PC",
  ),
  Onboard(
    "assets/Group 32.png",
    "Book Has Power To Change Eveything",
    "We have true friend in our life and the books is that. Book has power to change yourself and make you more valueable.",
  )
];
