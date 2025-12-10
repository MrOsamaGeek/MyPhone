import 'package:flutter/material.dart';
import 'package:flutter_application_2/Feature/Home_screan/ui/widgets/bottomnavagitionbar.dart';
import 'package:flutter_application_2/network/App_Cupit/cubit/app_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class Homepage5 extends StatelessWidget {
  const Homepage5({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child:Normalpage(),
    );
  }
}