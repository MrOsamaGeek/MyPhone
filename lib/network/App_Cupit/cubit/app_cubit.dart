import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/dio_helper.dart';
import 'package:meta/meta.dart';
import 'package:dio/dio.dart';
part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  List<Map<String, dynamic>> allproduct = [];
  void getAllproduct() async {
    emit(LodingApp());
    try {
      final Response response = await DioHelper.getDate(
        endpoint: "products/category/smartphones",
      );
      for (var map in response.data['products']) {
        allproduct.add(map);
      }
      emit(SuccessfullyApp());
    } catch (error) {
      log(error.toString());
      emit(ErrorApp());
    }
  }
}
