import 'package:flutter/material.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/customs/widgets.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/widgets/bottomnavagitionbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyConfirm extends StatelessWidget {
  const MyConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 201, 197, 197),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Card(
              margin: EdgeInsets.all(10.r),
              elevation: 20,
              child: Padding(
                padding: EdgeInsets.all(20.0.r),
                child: Center(
                  child: Column(
                    children: [
                      Transform.scale(
                        scale: 3,
                        child: Checkbox(
                          value: true,
                          onChanged: (v) {},
                          activeColor: Color(0xff549449),
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(6.r),
                          ),
                        ),
                      ),
                      SizedBox(height: 21.33.h),
                      Text(
                        'Success!',
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff549449),
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        'Your order has been successfully,\n  you can track your order , check\n                 All My Orders ',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff898B8C),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Customcontainer(
                        text: 'Back to Home',
                        textcolor: Color(0xff303030),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Normalpage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
