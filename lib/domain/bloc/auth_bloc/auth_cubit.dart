import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<String> {
  AuthCubit(): super("");

  void authenticate() {
    emit("authirized");
  }

  void logOut() {
    emit("");
  }

}