import 'dart:convert';

import 'package:baseapp/domain/model/user/user.dart';
import 'package:baseapp/domain/repository/shared/auth_shared_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserCubit extends Cubit<User?> {
  UserCubit() : super(null);

  final AuthSharedRepository authSharedRepository = AuthSharedRepository(GetIt.I<SharedPreferences>());
  final Dio _dio = GetIt.I<Dio>();

  void init() {
    debugPrint(authSharedRepository.getAccessToken());
    Future.sync(() => _dio.get("/user", options: Options(headers: {
      "Accept": "application/json",
      "Authorization": "Bearer ${authSharedRepository.getAccessToken()}"
    }))).then((response) {
      debugPrint(response.toString());
      if (response.statusCode == 200) {
        User user = User.fromJson(response.data);
        emit(user);
      } else {
        emit(null);
      }
    });
  }

  void updateUser(User newUser) async {
    if (state == null) return;
    var oldUser = state!.copyWith(
      avatar: newUser.avatar ?? state!.avatar,
      firstname: newUser.firstname ?? state!.firstname,
      lastname: newUser.lastname ?? state!.lastname,
      surname: newUser.surname ?? state!.surname
    );
    
    debugPrint(oldUser.toString());

    var response = await _dio.put("/user", data: oldUser.toJson(), options: Options(headers: {
      "Content-Type": "application/json",
      "Authorization": "Bearer ${authSharedRepository.getAccessToken()}"
    }));
    if (response.statusCode == 200) {
      emit(User.fromJson(response.data));
    }
  }

}
