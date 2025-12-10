import 'package:flutter/material.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/welcome.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/customs/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            'https://cdn.dummyjson.com/product-images/smartphones/samsung-galaxy-s10/3.webp',
            width: 656.w,
            height: 450.h,
          ),
          SizedBox(height: 24.h),
          Text(
            'Look Good, Feel Good',
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              color: Color(0xff303030),
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            'Hating the mobile in your wardrobe?\n  Explore hunderds of Mobile ideas',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xff898B8C),
            ),
          ),
          SizedBox(height: 88.h),
          Customcontainer(
            boxcolor: Color(0xff6B4C36),
            text: 'Start',
            textcolor: Colors.white,
            onTap: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => Welcome()));
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
    );
  }
}
