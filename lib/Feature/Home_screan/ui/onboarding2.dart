import 'package:flutter/material.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/onboarding3.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/customs/widgets.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
              'https://cdn.dummyjson.com/product-images/smartphones/realme-c35/3.webp',
              width: 433.w,
              height: 398.h,
            ),
            SizedBox(height: 24.h),
            Text(
              'Your Style, Your Way',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: Color(0xff303030),
              ),
            ),
            Text(
              'Create your individual & unique style\n        and look amazing everyday',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff898B8C),
              ),
            ),

            SizedBox(height: 51.h),
            Customcontainer(
              boxcolor: Color(0xff6B4C36),
              text: 'Next',
              textcolor: Colors.white,
              onTap: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => Onboarding3()));
              },
            ),
            SizedBox(height: 16.h),
            Customcontainer(
              text: 'Back',
              textcolor: Color(0xff6B4C36),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
