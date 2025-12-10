import 'package:flutter/material.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/card.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/customs/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Image.network(
                          'https://cdn.dummyjson.com/product-images/smartphones/iphone-13-pro/3.webp',
                          height: 373.h,
                          width: 375.w,
                        ),
                        Positioned(
                          top: 70.h,
                          left: 10.w,
                          child: Container(
                            height: 40.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              color: Colors.white,
                            ),
                            child: IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: Icon(
                                Icons.arrow_back,
                                color: Color(0xff898B8C),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 70.h,
                          left: 325.w,
                          child: Container(
                            height: 40.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.favorite_border,
                              color: Color(0xff898B8C),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                Row(
                  children: [
                    SizedBox(width: 20.w),
                    Text(
                      'Female’s Style',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff898B8C),
                      ),
                    ),
                    SizedBox(width: 180.w),
                    Icon(Icons.star, color: Color(0xffEFA82A), size: 18.sp),
                    Text(
                      '4.5',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.h),
                Padding(
                  padding: EdgeInsets.only(right: 250.w),
                  child: Text(
                    maxLines: 1,
                    'My Phone',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff303030),
                    ),
                  ),
                ),
                SizedBox(height: 13.h),
                Padding(
                  padding: EdgeInsets.only(right: 220.w),
                  child: Text(
                    maxLines: 1,
                    'Product Details',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff303030),
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: Text(
                    'The iPhone Pro is a cutting-edge smartphone with a\n powerful camera system, high-performance chip, and\n stunning display. It offers advanced features for users\n who demand top-notch technology.',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff898B8C),
                    ),
                  ),
                ),
                SizedBox(height: 12.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Divider(),
                ),
                SizedBox(height: 16.h),
                Padding(
                  padding: EdgeInsets.only(right: 270.w),
                  child: Text(
                    'Select Size',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000),
                    ),
                  ),
                ),

                SizedBox(height: 31.h),

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
                            text: 'Add to cart',
                            boxcolor: Color(0xff6B4C36),
                            textcolor: Colors.white,
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Checkcard(),
                                ),
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
        ),
      ),
    );
  }
}
