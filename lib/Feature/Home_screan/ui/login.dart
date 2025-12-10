import 'package:flutter/material.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/forget_password.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/sign_up.dart';
import 'package:flutter_application_2/core/home_page.dart';
import 'package:flutter_application_2/utils/app_assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> formState = GlobalKey();
  final TextEditingController name = TextEditingController();

  final TextEditingController number = TextEditingController();

  bool status = false;
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.h),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Login',
            style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w500),
          ),
        ),

        body: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 69.h),
            child: Form(
              key: formState,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 45.h,
                    width: 343.w,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter your email';
                        }
                      },
                      controller: name,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.r),
                        ),

                        errorStyle: TextStyle(fontSize: 14, height: 0.5.h),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide(width: 1.5.w),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 18.h,
                          horizontal: 16.w,
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
                          return 'Min 8 chirs';
                        }
                      },
                      controller: number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.r),
                        ),

                        errorStyle: TextStyle(fontSize: 14, height: 0.5.h),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide(width: 1.5.w),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 18.h,
                          horizontal: 16.w,
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
                  SizedBox(height: 12.h),
                  Row(
                    children: [
                      Checkbox(
                        activeColor: Color(0xff6B4C36),
                        value: status,
                        onChanged: (val) {
                          setState(() {
                            status = val!;
                          });
                        },
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(-1.r),
                        ),
                        side: BorderSide(color: Color(0xff6B4C36)),
                      ),
                      Text(
                        'Remember me',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff898B8C),
                        ),
                      ),
                      SizedBox(width: 120.w),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Forgetpassword(),
                            ),
                          );
                        },
                        child: Text(
                          'Forget password ?',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff6B4C36),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 56.h),
                  Padding(
                    padding: EdgeInsets.only(right: 280.w),
                    child: Text('Frame 121'),
                  ),
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

                  SizedBox(height: 62.h),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Row(
                      children: [
                        Expanded(child: Divider()),
                        SizedBox(width: 10.w),
                        Text(
                          'Or continue with',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff898B8C),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(child: Divider()),
                      ],
                    ),
                  ),
                  SizedBox(height: 32.h),
                  Image.asset(
                    Assets.imagesFacegoogle,
                    height: 50.h,
                    width: 118.w,
                  ),
                  SizedBox(height: 32.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff898B8C),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Signup()),
                          );
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
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
