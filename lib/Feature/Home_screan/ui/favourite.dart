import 'package:flutter/material.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/customs/custom_card.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/product_details.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 30.h),
              Row(
                children: [
                  SizedBox(width: 25.w),
                  Icon(
                    Icons.arrow_back_rounded,
                    weight: 18.w,
                    color: Color(0xff898B8C),
                  ),
                  SizedBox(width: 130.w),
                  Text(
                    'Favourite',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff303030),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              Column(
                children: [
                  Customcard(
                    image:
                        'https://cdn.dummyjson.com/product-images/smartphones/iphone-13-pro/3.webp',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Product()),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Column(
                children: [
                  Customcard(
                    image:
                        'https://cdn.dummyjson.com/product-images/smartphones/iphone-13-pro/3.webp',
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Column(
                children: [
                  Customcard(
                    image:
                        'https://cdn.dummyjson.com/product-images/smartphones/iphone-13-pro/3.webp',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Product()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
