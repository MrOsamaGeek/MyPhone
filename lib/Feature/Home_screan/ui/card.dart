import 'package:flutter/material.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/customs/custom_card2.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/customs/widgets.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/payment.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Checkcard extends StatelessWidget {
  const Checkcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(
              'Card',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xff303030),
              ),
            ),
            SizedBox(height: 24.h),
            Customcard2(
              imagedialog:
                  'https://cdn.dummyjson.com/product-images/smartphones/iphone-13-pro/3.webp',
            ),
            SizedBox(height: 24.h),
            Customcard2(
              images:
                  'https://cdn.dummyjson.com/product-images/smartphones/iphone-13-pro/3.webp',
              imagedialog:
                  'https://cdn.dummyjson.com/product-images/smartphones/iphone-13-pro/3.webp',
            ),

            Spacer(),
            Padding(
              padding: EdgeInsets.only(left: 15.w),
              child: Card(
                elevation: 8,
                margin: EdgeInsets.all(10.r),
                child: Padding(
                  padding: EdgeInsets.all(20.0.r),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Total Price',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff000000),
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Text(
                            '\$83.99',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff898B8C),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 40.w),
                      Customcontainer(
                        height: 44.h,
                        width: 189.w,
                        text: 'Check Out',
                        boxcolor: Color(0xff6B4C36),
                        textcolor: Colors.white,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Payment()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
