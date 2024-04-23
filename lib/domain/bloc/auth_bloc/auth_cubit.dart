import 'package:baseapp/domain/bloc/auth_bloc/auth_state.dart';
import 'package:baseapp/domain/dto/tokens_dto.dart';
import 'package:baseapp/domain/dto/user_dto.dart';
import 'package:baseapp/domain/repository/shared/auth_shared_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(): super(UnknownAuthState());

  final _authSharedRepository = GetIt.I<AuthSharedRepository>();
  final _dio = GetIt.I<Dio>();

  Future<void> signIn(UserDto user) async {
    _dio.post("http://192.168.1.134/auth/login", data: user.toJson());
    var response = await _dio.post("auth/login", data: user.toJson());
    if (response.statusCode == 200) {
      var tokens = TokensDto.fromJson(response.data);
      _authSharedRepository.setTokens(tokens.access, tokens.refresh);
      emit(AuthenticatedAuthState());
    }
  }

  void signUp(UserDto user) async {
  }

  void logOut() {
    emit(UnauthorizedAuthState());
  }

}