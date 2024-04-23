

import 'package:baseapp/di/network_module.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../domain/repository/shared/auth_shared_repository.dart';

void initModules() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final AuthSharedRepository authSharedRepository = AuthSharedRepository(prefs);
  GetIt.I.registerFactory(() => prefs);
  GetIt.I.registerFactory(() => authSharedRepository);
  GetIt.I.registerFactory(() => configureDio(authSharedRepository));
}