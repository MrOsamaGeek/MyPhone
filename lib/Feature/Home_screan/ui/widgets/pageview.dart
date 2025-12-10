import 'package:flutter/material.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/onboarding1.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/onboarding2.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/onboarding3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Pagewidgets extends StatelessWidget {
  final PageController _controller = PageController();
  Pagewidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 770.h,
            child: PageView(
              controller: _controller,
              children: [Onboarding1(), Onboarding2(), Onboarding3()],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(activeDotColor: Color(0xff6B4C36)),
          ),
        ],
      ),
    );
  }
}
