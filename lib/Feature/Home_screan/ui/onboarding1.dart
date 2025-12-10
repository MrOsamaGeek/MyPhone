import 'package:flutter/material.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/onboarding2.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/customs/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Skip',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff898B8C),
                    ),
                  ),
                  SizedBox(width: 5.w),
                  Icon(
                    Icons.arrow_forward_rounded,
                    weight: 18.w,
                    color: Color(0xff898B8C),
                  ),
                ],
              ),

              Image.network(
                'https://cdn.dummyjson.com/product-images/smartphones/iphone-13-pro/3.webp',
                width: 433.w,
                height: 398.h,
              ),

              SizedBox(height: 24.h),
              Text(
                'Find Your Mobile',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff303030),
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                "Confused about your mobile? Don't\n  Worry!Find the best mobile here! ",
                maxLines: 2,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff797E80),
                ),
              ),
              SizedBox(height: 99.h),
              Customcontainer(
                boxcolor: Color(0xff6B4C36),
                text: 'Next',
                textcolor: Colors.white,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Onboarding2()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
