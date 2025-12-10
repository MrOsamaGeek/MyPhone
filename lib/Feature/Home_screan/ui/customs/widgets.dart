import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Customcontainer extends StatelessWidget {
  final Color? boxcolor;
  final Color? textcolor;
  final String? text;
   final double?height;
  final double?width;
  
 final void Function()? onTap;
  const Customcontainer({super.key, this.boxcolor, this.textcolor, this.text, this.onTap, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        
        onTap:onTap ,
        child: Container(
          height:height ??42.h,
          width:width ??343.w,
          decoration: BoxDecoration(
            color: boxcolor,
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: Color(0xff6B4C36)),
          ),
          child: Center(
            child: Text(
              text ?? '',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: textcolor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
