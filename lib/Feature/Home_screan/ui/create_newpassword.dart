import 'package:flutter/material.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/widgets/bottomnavagitionbar.dart';
import 'package:flutter_application_2/utils/app_assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Newpassword extends StatefulWidget {
  const Newpassword({super.key});

  @override
  State<Newpassword> createState() => _NewpasswordState();
}

class _NewpasswordState extends State<Newpassword> {
  final GlobalKey<FormState> formState = GlobalKey();

  final TextEditingController num1 = TextEditingController();

  final TextEditingController num2 = TextEditingController();
  bool _isHidden = true;
  bool _isHidden2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Form(
          key: formState,
          child: Column(
            children: [
              Image.asset(Assets.imagesRafiki, height: 237.h, width: 294.w),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.only(right: 120.w),
                child: Text(
                  'Create new password',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff303030),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Padding(
                padding: EdgeInsets.only(right: 170.w),
                child: Text(
                  'create your new password',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff51585B),
                  ),
                ),
              ),
              SizedBox(height: 32.h),
              SizedBox(
                height: 45.h,
                width: 343.w,
                child: TextFormField(
                  obscureText: _isHidden,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter your password';
                    }
                    if (value.length < 8) {
                      return 'Min 8 chirs';
                    }
                  },
                  controller: num1,
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
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isHidden
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        size: 14.sp,
                        color: Color(0xff898B8C),
                      ),
                      onPressed: () {
                        setState(() {
                          _isHidden = !_isHidden;
                        });
                      },
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 14.sp,
                      color: Color(0xff898B8C),
                    ),
                    hintText: 'New Password',
                    hintStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff898B8C),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              SizedBox(
                height: 45.h,
                width: 343.w,
                child: TextFormField(
                  obscureText: _isHidden2,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter your password';
                    }
                    if (value.length < 8) {
                      return 'Min 8 chirs';
                    }
                  },
                  controller: num2,
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
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isHidden2
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        size: 14.sp,
                        color: Color(0xff898B8C),
                      ),
                      onPressed: () {
                        setState(() {
                          _isHidden2 = !_isHidden2;
                        });
                      },
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 14.sp,
                      color: Color(0xff898B8C),
                    ),
                    hintText: 'Cofirm Password',
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
                        MaterialPageRoute(builder: (context) => Normalpage()),
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
    );
  }
}
