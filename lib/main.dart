import 'package:flutter/material.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/splash.dart';
import 'package:flutter_application_2/core/dio_helper.dart';
import 'package:flutter_application_2/network/App_Cupit/cubit/app_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  DioHelper.initializeDio();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: BlocProvider(
        create: (context) => AppCubit(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
          home: Splash(),
        ),
      ),
    );
  }
}
