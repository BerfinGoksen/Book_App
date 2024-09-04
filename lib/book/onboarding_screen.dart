import 'package:books_app/book/home.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../utility/onboard.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  late PageController pageController;
  bool isOpened = false;
  bool isBack = false;
  bool skip = true;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isBack
                      ? TextButton(
                          onPressed: () {
                            if (pageController.page == 0) {
                              Navigator.pop(context);
                            } else {
                              pageController.previousPage(
                                curve: Curves.ease, //yumuşak geçiş efekti
                                duration: const Duration(milliseconds: 300),
                              );
                            }
                          },
                          child: const Icon(Icons.arrow_back),
                        )
                      : Container(),
                  skip
                      ? TextButton(
                          onPressed: () {
                            if (pageController.page == 2.0) {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => const Home()),
                              );
                            } else {
                              pageController.nextPage(
                                curve: Curves.ease,
                                duration: const Duration(milliseconds: 300),
                              );
                            }
                          },
                          child: const Text("Skip"),
                        )
                      : Container(),
                ],
              ),
            ),
            // Resimleri ve içerikleri içeren PageView
            Expanded(
              flex: 8,
              child: PageView.builder(
                onPageChanged: (value) {
                  if (value == 2) {
                    isOpened = true;
                    isBack = true;
                    skip = false;
                  } else if (value == 1) {
                    isOpened = false;
                    isBack = true;
                    skip = true;
                  } else {
                    isBack = false;
                    isOpened = false;
                    skip = true;
                  }
                  setState(() {});
                },
                itemCount: demoData.length,
                controller: pageController,
                itemBuilder: (context, index) => OnboardingWidget(
                  image: demoData[index].image,
                  title: demoData[index].title,
                  description: demoData[index].description,
                  pageController: pageController,
                ),
              ),
            ),
            Expanded(
              child: isOpened
                  ? Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => const Home()),
                              );
                            },
                            child: const Text('Get Started Now'),
                          ),
                        ),
                      ],
                    )
                  : SmoothPageIndicator(
                      controller: pageController,
                      count: 3, // Number of pages
                      effect: const WormEffect(), // Customize the effect
                      onDotClicked: (index) {
                        pageController.animateToPage(
                          index,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
