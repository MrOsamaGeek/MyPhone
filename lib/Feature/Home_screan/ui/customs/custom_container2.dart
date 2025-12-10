import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Customcon2 extends StatelessWidget {
   final Color? boxcolor;
  final Color? textcolor;
  final String? text;
  final double?height;
  final double?width;
  const Customcon2({super.key, this.boxcolor, this.textcolor, this.text, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height:height ??50.h,
        width:width ??50.w,
        decoration: BoxDecoration(
          color: boxcolor,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: Color(0xff6B4C36)),
        ),
        child: Center(child: Text(text??'',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w300,color: textcolor),),),
      ),
    );
  }
}
