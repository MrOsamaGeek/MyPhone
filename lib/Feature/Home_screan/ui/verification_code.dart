import 'package:flutter/material.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/create_newpassword.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/customs/custom_container2.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/customs/widgets.dart';
import 'package:flutter_application_2/utils/app_assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.h),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              Image.asset(Assets.imagesRafiki, width: 294.w, height: 237.h),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.only(right: 180.w),
                child: Text(
                  'Verification Code',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff303030),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Padding(
                padding: EdgeInsets.only(right: 70.w),
                child: Text(
                  'code have been send to +201078999992',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff898B8C),
                  ),
                ),
              ),
              SizedBox(height: 26.h),
              Padding(
                padding: EdgeInsets.all(25.0.r),
                child: Row(
                  children: [
                    Customcon2(),
                    SizedBox(width: 16.w),
                    Customcon2(),
                    SizedBox(width: 16.w),
                    Customcon2(),
                    SizedBox(width: 16.w),
                    Customcon2(),
                    SizedBox(width: 16.w),
                    Customcon2(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 150.w),
                child: Text(
                  'Resend Code in 02:00',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff898B8C),
                  ),
                ),
              ),
              SizedBox(height: 73.h),
              Customcontainer(
                text: 'Verify',
                textcolor: Colors.white,
                boxcolor: Color(0xff6B4C36),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Newpassword()),
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
