import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/app_assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Customcard extends StatefulWidget {
  final void Function()? onTap;
  final String? image;
  final String? price;
  final String? title;
  const Customcard({super.key, this.image, this.onTap, this.price, this.title});

  @override
  State<Customcard> createState() => _CustomcardState();
}
int num =0;
void increas (){
  num ++ ;
}
void decreas (){
  num -- ;
}

class _CustomcardState extends State<Customcard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: widget.onTap,
        child: Card(
          elevation: 6,
          margin: EdgeInsets.all(8.r),
          child: Padding(
            padding: EdgeInsets.all(15.0.r),
            child: Row(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      Assets.imagesFrame195,
                      height: 138.h,
                      width: 136.w,
                      color: Color(0xffEEE6DB),
                    ),
                    Positioned(
                      left: 23.08.w,
                      top: -1.15.h,
                      child: Image.network(
                        widget.image ?? "",
                        height: 148.15.h,
                        width: 89.62.w,
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: EdgeInsets.only(left: 20.w, bottom: 20.h),
                  child: Column(
                    children: [
                      Text(
                        widget.title ?? 'Mobile iphone',

                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff303030),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 95.w, top: 12.h),
                        child: Row(
                          children: [
                            Text(
                              widget.price ?? '7500',
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff6B4C36),
                              ),
                            ),
                            SizedBox(width: 2.w),
                            Text(
                              '\$',
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff6B4C36),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 50.w, top: 12.h),
                        child: Row(
                          children: [
                            Container(
                              height: 24.h,
                              width: 24.w,

                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(5.r),
                                border: Border.all(color: Colors.black),
                              ),

                              child: InkWell(onTap: () {
                                setState(() {
                                  decreas();
                                });
                              },
                                child: Icon(
                                  Icons.remove,
                                  size: 17.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              '$num',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff6B4C36),
                              ),
                            ),

                            SizedBox(width: 10.w),
                            Container(
                              height: 24.h,
                              width: 24.w,
                              decoration: BoxDecoration(
                                color: Color(0xff6B4C36),
                                borderRadius: BorderRadius.circular(5.r),
                                border: Border.all(color: Color(0xff6B4C36)),
                              ),

                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    increas();
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  size: 17.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 150.h),
                  child: Icon(Icons.favorite, color: Color(0xff6B4C36)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
