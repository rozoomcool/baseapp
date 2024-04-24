import 'package:baseapp/domain/bloc/auth_bloc/auth_state.dart';
import 'package:baseapp/domain/dto/tokens_dto.dart';
import 'package:baseapp/domain/dto/user_dto.dart';
import 'package:baseapp/domain/repository/shared/auth_shared_repository.dart';
import 'package:baseapp/utils/custom_scaffoldutils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../main.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(UnknownAuthState());

  final _authSharedRepository = GetIt.I<AuthSharedRepository>();
  final _scaffoldUtils = GetIt.I<CustomScaffoldUtils>();
  final _dio = GetIt.I<Dio>();

  init() {
    if(_authSharedRepository.getAccessToken().isNotEmpty && _authSharedRepository.getAccessToken() != "") {
      emit(AuthenticatedAuthState());
    }
  }

  Future<void> signIn(UserDto user) async {
    try {
      debugPrint(_dio.options.baseUrl);
      var response = await _dio.post("/auth/login",
          data: user.toJson());
      debugPrint(response.requestOptions.path);
      if (response.statusCode == 200) {
        var tokens = TokensDto.fromJson(response.data);
        _authSharedRepository.setTokens(tokens.access, tokens.refresh);
        _scaffoldUtils.showSnack("Авторизация успешна");
        emit(AuthenticatedAuthState());
      } else {
        _scaffoldUtils
            .showErrorSnack("Произошла ошибка: ${response.statusCode}");
      }
    } catch (e) {
      debugPrint("ERROR SIGN_IN: $e");
      _scaffoldUtils.showErrorSnack("Произошла ошибка авторизации");
    }
  }

  void signUp(UserDto user) async {
    try {
      var response = await _dio.post("/auth/register",
          data: user.toJson());
      debugPrint(response.toString());
      if (response.statusCode == 201) {
        var tokens = TokensDto.fromJson(response.data);
        _authSharedRepository.setTokens(tokens.access, tokens.refresh);
        _scaffoldUtils.showSnack("Регистрация успешна");
        emit(AuthenticatedAuthState());
      } else {
        _scaffoldUtils
            .showErrorSnack("Произошла ошибка: ${response.statusCode}");
      }
    } catch (e) {
      _scaffoldUtils.showErrorSnack("Произошла ошибка регистрации");
    }
  }

  void logOut() {
    emit(UnauthorizedAuthState());
  }
}
