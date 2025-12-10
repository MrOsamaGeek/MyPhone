import 'package:flutter/material.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/customs/widgets.dart';
import 'package:flutter_application_2/utils/app_assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 237, 239),
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 20.w),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(Icons.arrow_back, color: Color(0xff898B8C)),
                  ),
                  SizedBox(width: 140.w),
                  Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff303030),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40.h),
              Row(
                children: [
                  SizedBox(width: 20.w),
                  Image.asset(Assets.imagesPortfile, height: 68.h, width: 68.w),

                  Column(
                    children: [
                      Text(
                        'Medo Rashad',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff303030),
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Padding(
                        padding:  EdgeInsets.only(left: 10.w),
                        child: Text(
                          'medo2025@gmail.com',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff303030),
                          ),
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Customcontainer(
                        text: 'Edit Profile',
                        textcolor: Colors.white,
                        boxcolor: Color(0xff6B4C36),
                        height: 36.h,
                        width: 123.w,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              Card(
                color: Colors.white,
                elevation: 4,
                margin: EdgeInsets.all(8.r),
                child: Padding(
                  padding: EdgeInsets.all(20.r),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.menu_sharp, color: Color(0xff898B8C)),
                          SizedBox(width: 15.w),
                          Text(
                            'All My Orders',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff898B8C),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24.h),
                      Row(
                        children: [
                          Icon(
                            Icons.dark_mode_outlined,
                            color: Color(0xff898B8C),
                          ),
                          SizedBox(width: 15.w),
                          Text(
                            'Dark Mode',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff898B8C),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24.h),
                      Row(
                        children: [
                          Icon(
                            Icons.credit_card_sharp,
                            color: Color(0xff898B8C),
                          ),
                          SizedBox(width: 15.w),
                          Text(
                            'Pending Payments',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff898B8C),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24.h),
                      Row(
                        children: [
                          Icon(
                            Icons.shopping_bag_outlined,
                            color: Color(0xff898B8C),
                          ),
                          SizedBox(width: 15.w),
                          Text(
                            'Finished Orders',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff898B8C),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Card(
                color: Colors.white,
                elevation: 4,
                margin: EdgeInsets.all(8.r),
                child: Padding(
                  padding:  EdgeInsets.all(20.0.r),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.notifications_outlined,
                            color: Color(0xff898B8C),
                          ),
                          SizedBox(width: 15.w),
                          Text(
                            'Notification Setting',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff898B8C),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24.h),
                      Row(
                        children: [
                          Icon(Icons.security, color: Color(0xff898B8C)),
                          SizedBox(width: 15.w),
                          Text(
                            'Privacy Policy',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff898B8C),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24.h),
                      Row(
                        children: [
                          Icon(
                            Icons.question_answer_outlined,
                            color: Color(0xff898B8C),
                          ),
                          SizedBox(width: 15.w),
                          Text(
                            'Frequently Asked Questions',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff898B8C),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24.h),
                      Row(
                        children: [
                          Icon(Icons.language, color: Color(0xff898B8C)),
                          SizedBox(width: 15.w),
                          Text(
                            'Language',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff898B8C),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              Row(
                children: [
                  SizedBox(width: 12.w),
                  Icon(Icons.logout, color: Color(0xff6B4C36)),
                  SizedBox(width: 15.w),
                  Text(
                    'Log Out',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff6B4C36),
                    ),
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
