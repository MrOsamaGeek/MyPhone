import 'package:flutter/material.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/customs/widgets.dart';
import 'package:flutter_application_2/utils/app_assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Customcard2 extends StatefulWidget {
  final String? names;
  final String? images;
  final String? imagedialog;
  final String? imageframedialog;
  final String? imageframe;
  final String? prices;
  const Customcard2({
    super.key,
    this.names,
    this.images,
    this.prices,
    this.imageframe,
    this.imagedialog,
    this.imageframedialog,
  });

  @override
  State<Customcard2> createState() => _Customcard2State();
}
int num=0;
void increas (){
  num ++ ;
}
void decreas (){
  num -- ;
}

class _Customcard2State extends State<Customcard2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            elevation: 6,
            margin: EdgeInsets.all(8.r),
            child: Padding(
              padding: EdgeInsets.all(20.0.r),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        widget.imageframe ?? Assets.imagesFrame195,
                        height: 128.h,
                        width: 126.w,
                        color: Color(0xffEEE6DB),
                      ),
                      Positioned(
                        left: 23.08.w,
                        top: -1.15.h,
                        child: Image.network(
                          widget.images ??
                              'https://cdn.dummyjson.com/product-images/smartphones/iphone-13-pro/3.webp',
                          height: 148.15.h,
                          width: 89.62.w,
                        ),
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(
                          widget.names ?? 'Mobile iphone',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff303030),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20.w, top: 12.h),
                        child: Text(
                          widget.prices ?? '7500\$',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff6B4C36),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12.h),
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

                              child: InkWell(
                                onTap: () {
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
                  Padding(
                    padding: EdgeInsets.only(left: 5.w, top: 45.h),
                    child: Container(
                      height: 30.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: Color(0xffCECFD0),
                      ),
                      child: IconButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Card(
                                        elevation: 6,
                                        margin: EdgeInsets.all(8.r),
                                        child: Center(
                                          child: Column(
                                            children: [
                                              SizedBox(height: 15.h),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: 90.w,
                                                ),
                                                child: Text(
                                                  'Remote Form Cart?',
                                                  style: TextStyle(
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w300,
                                                    color: Color(0xff6B4C36),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 15.h),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 30.h,
                                                    ),
                                                    child: Stack(
                                                      children: [
                                                        Image.asset(
                                                          widget.imageframedialog ??
                                                              Assets
                                                                  .imagesFrame195,
                                                          height: 98.h,
                                                          width: 98.w,
                                                          color: const Color(
                                                            0xffEEE6DB,
                                                          ),
                                                        ),
                                                        Positioned(
                                                          left: 23.08.w,
                                                          top: -1.15.h,
                                                          child: Image.network(
                                                            widget.imagedialog ??
                                                                Assets
                                                                    .imagesFrontViewWoman,
                                                            height: 130.15.h,
                                                            width: 69.62.w,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),

                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 20.h,
                                                    ),
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                left: 10.w,
                                                              ),
                                                          child: Text(
                                                            'Mobile iphone',
                                                            style: TextStyle(
                                                              fontSize: 12.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              color: Color(
                                                                0xff303030,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                right: 30.w,
                                                                top: 5.h,
                                                              ),
                                                          child: Text(
                                                            '7500\$',
                                                            style: TextStyle(
                                                              fontSize: 12.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: Color(
                                                                0xff6B4C36,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(height: 5.h),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                left: 10.w,
                                                              ),
                                                          child: Row(
                                                            children: [
                                                              Container(
                                                                height: 24.h,
                                                                width: 24.w,

                                                                decoration: BoxDecoration(
                                                                  color: Colors
                                                                      .black,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        5.r,
                                                                      ),
                                                                  border: Border.all(
                                                                    color: Colors
                                                                        .black,
                                                                  ),
                                                                ),

                                                                child: Icon(
                                                                  Icons.remove,
                                                                  size: 17.sp,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 10.w,
                                                              ),
                                                              Text(
                                                                '01',
                                                                style: TextStyle(
                                                                  fontSize:
                                                                      16.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Color(
                                                                    0xff6B4C36,
                                                                  ),
                                                                ),
                                                              ),

                                                              SizedBox(
                                                                width: 10.w,
                                                              ),
                                                              Container(
                                                                height: 24.h,
                                                                width: 24.w,
                                                                decoration: BoxDecoration(
                                                                  color: Color(
                                                                    0xff6B4C36,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        5.r,
                                                                      ),
                                                                  border: Border.all(
                                                                    color: Color(
                                                                      0xff6B4C36,
                                                                    ),
                                                                  ),
                                                                ),

                                                                child: Icon(
                                                                  Icons.add,
                                                                  size: 17.sp,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                actions: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Customcontainer(
                                        text: 'Cancel',
                                        textcolor: Colors.black,
                                        onTap: () {
                                          Navigator.of(context).pop();
                                        },
                                        height: 41.h,
                                        width: 123.w,
                                      ),
                                      SizedBox(width: 5.w),
                                      Customcontainer(
                                        height: 41.h,
                                        width: 123.w,
                                        text: 'Remove',
                                        textcolor: Colors.white,
                                        boxcolor: Color(0xff6B4c36),
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        icon: Container(
                          height: 20.h,
                          width: 20.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: const Color(0xffCECFD0),
                          ),
                          child: Icon(
                            Icons.delete,
                            size: 15.sp,
                            color: Color(0xffFF2525),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
