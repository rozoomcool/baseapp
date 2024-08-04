import 'package:baseapp/domain/model/user/user.dart';
import 'package:baseapp/domain/repository/shared/auth_shared_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserCubit extends Cubit<User?> {
  UserCubit() : super(null);
  
  // final AuthSharedRepository authSharedRepository = AuthSharedRepository(GetIt.I<SharedPreferences>());
  final Dio _dio = GetIt.I<Dio>();

  void init() async {
    var response = await _dio.get("/user");
    debugPrint(response.toString());
    if (response.statusCode == 200) {
      User user = User.fromJson(response.data);
      emit(user);
    } else {
      emit(null);
    }
  }

}