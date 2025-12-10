import 'package:flutter/material.dart';

import 'package:flutter_application_2/Feature/Home_screan/ui/customs/custom_card.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/product_details.dart';
import 'package:flutter_application_2/network/App_Cupit/cubit/app_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  @override
  void initState() {
    super.initState();
    context.read<AppCubit>().getAllproduct();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Home',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff303030),
                ),
              ),
              SizedBox(height: 10.h),

              BlocConsumer<AppCubit, AppState>(
                listener: (context, state) {},
                builder: (context, state) {
                  if (state is LodingApp) {
                    return Center(child: CircularProgressIndicator());
                  } else if (state is ErrorApp) {
                    return Center(child: Text('Error,tryagain,later.'));
                  } else {
                    var productsList = context.read<AppCubit>().allproduct;
                    return SizedBox(
                      height: 900,
                      child: ListView.builder(
                        itemCount: productsList.length,
                        itemBuilder: (context, index) {
                          return Customcard(
                            onTap: () {
                              Navigator.of(context, rootNavigator: true).push(
                                MaterialPageRoute(
                                  builder: (context) => Product(),
                                ),
                              );
                            },

                            title: productsList[index]['title'],
                            price: productsList[index]['price'].toString(),
                            image: productsList[index]['images'][0],
                          );
                        },
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
