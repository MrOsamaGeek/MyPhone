import 'package:flutter/material.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/verification_code.dart';
import 'package:flutter_application_2/utils/app_assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Forgetpassword extends StatelessWidget {
  final GlobalKey<FormState> formState = GlobalKey();
  final TextEditingController num = TextEditingController();
  Forgetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.h),
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Form(
            key: formState,
            child: Column(
              children: [
                Image.asset(
                  Assets.imagesForrgetpasswored,
                  width: 149.21.w,
                  height: 237.h,
                ),
                SizedBox(height: 16.h),
                Padding(
                  padding: EdgeInsets.only(right: 170.w),
                  child: Text(
                    'Forget Password',
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff303030),
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                Padding(
                  padding: EdgeInsets.only(right: 90.w),
                  child: Text(
                    'Enter your phone number to use it to\nreset your password',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff898B8C),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  height: 45.h,
                  width: 343.w,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your phone number';
                      }
                      if (value.length < 11) {
                        return 'The number is invalid';
                      }
                      if (value.length > 11) {
                        return 'The number is invalid';
                      }
                    },
                    controller: num,
                    decoration: InputDecoration(
                      errorStyle: TextStyle(fontSize: 14, height: 0.5.h),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.h,
                        vertical: 18.w,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),

                      hintText: 'Phone',
                      hintStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff898B8C),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 72.h),
                SizedBox(
                  height: 43.h,
                  width: 343.w,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    color: Color(0xff6B4C36),
                    onPressed: () {
                      if (formState.currentState!.validate()) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Verification(),
                          ),
                        );
                      }
                    },
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
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
