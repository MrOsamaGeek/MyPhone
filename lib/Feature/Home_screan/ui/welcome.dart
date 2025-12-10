import 'package:flutter/material.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/login.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/sign_up.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/customs/widgets.dart';
import 'package:flutter_application_2/utils/app_assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.network(
              'https://cdn.dummyjson.com/product-images/smartphones/vivo-v9/3.webp',
              height: 450.h,
              width: 656.w,
            ),
            SizedBox(height: 80.h),
            Customcontainer(
              text: 'Create New Account',
              boxcolor: Color(0xff6B4C36),
              textcolor: Colors.white,
              onTap: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => Signup()));
              },
            ),
            SizedBox(height: 16.h),
            Customcontainer(
              text: 'Login',
              textcolor: Color(0xff6B4C36),
              onTap: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => Login()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
