import 'package:flutter/material.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/login.dart';

import 'package:flutter_application_2/core/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final GlobalKey<FormState> formState = GlobalKey();

  final TextEditingController name = TextEditingController();

  final TextEditingController email = TextEditingController();

  final TextEditingController number = TextEditingController();

  final TextEditingController number2 = TextEditingController();
  bool _isHidden = true;
  bool _isHidden2 = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.h),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Sign Up',
            style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w500),
          ),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 58.h),
            child: Form(
              key: formState,
              child: Column(
                children: [
                  SizedBox(
                    height: 45.h,
                    width: 343.w,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter your name';
                        }
                      },
                      controller: name,
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
                        prefixIcon: Icon(
                          Icons.person_2_outlined,
                          size: 14.sp,
                          color: Color(0xff898B8C),
                        ),
                        hintText: 'Name',
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter your email';
                        }
                      },
                      controller: email,
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
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          size: 14.sp,
                          color: Color(0xff898B8C),
                        ),
                        hintText: 'Email',
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
                      obscureText: _isHidden,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter your password';
                        }
                        if (value.length < 8) {
                          return 'Min 8 chars';
                        }
                      },
                      controller: number,
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
                        hintText: 'Password',
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
                          return 'Enter your cofirm password';
                        }
                        if (value.length < 8) {
                          return 'Min 8 chars';
                        }
                      },
                      controller: number2,
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
                            MaterialPageRoute(
                              builder: (context) => Homepage5(),
                            ),
                          );
                        }
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 38.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Have an account?',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff898B8C),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff6B4C36),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
