import 'package:flutter/material.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/confirm.dart';
import 'package:flutter_application_2/utils/app_assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Payment extends StatelessWidget {
  final GlobalKey<FormState> formState = GlobalKey();
  final TextEditingController name = TextEditingController();
  final TextEditingController number = TextEditingController();
  Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Form(
          key: formState,
          child: Column(
            children: [
              Text(
                'Check Out',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff303030),
                ),
              ),
              SizedBox(height: 40.h),
              Padding(
                padding: EdgeInsets.only(right: 200.w),
                child: Text(
                  'Enter your information',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff303030),
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              SizedBox(
                height: 45.h,
                width: 343.w,
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter Your shipping Address';
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
                    hintText: 'Enter Your shipping Address',
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
                      return 'Enter your phone number';
                    }
                    if (value.length < 8) {
                      return 'Min 8 chirs';
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
                    hintText: 'Enter Your Phone Number',
                    hintStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff898B8C),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Divider(),
              ),
              SizedBox(height: 24.h),
              Padding(
                padding: EdgeInsets.only(right: 210.w),
                child: Text(
                  'Payment Method',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff303030),
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              Container(
                height: 45.h,
                width: 343.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: Color(0xff549449)),
                ),
                child: Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (v) {},
                      checkColor: Colors.white,
                      activeColor: Color(0xff549449),
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(5.r),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      'Cash',
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff515C6F),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.h),
              Container(
                height: 45.h,
                width: 343.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(
                    color: const Color.fromARGB(255, 193, 171, 171),
                  ),
                ),
                child: Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (v) {},
                      activeColor: Color(0xffEBEBEB),

                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(5.r),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      'Master Card',
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff515C6F),
                      ),
                    ),
                    SizedBox(width: 15.w),
                    Image.asset(
                      Assets.imagesGroup35,
                      height: 14.h,
                      width: 24.27.w,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 80.h),
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
                        MaterialPageRoute(builder: (context) => MyConfirm()),
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
