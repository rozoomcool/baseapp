import 'package:baseapp/database/entities/message_entity.dart';
import 'package:baseapp/di/init_modules.dart';
import 'package:baseapp/domain/repository/shared/auth_shared_repository.dart';
import 'package:baseapp/router/app_router.dart';
import 'package:baseapp/router/loggeer_observer.dart';
import 'package:baseapp/utils/custom_scaffoldutils.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/app.dart';
import 'di/network_module.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    [MessageEntitySchema],
    directory: dir.path,
  );

  GetIt.I.registerFactory(() => isar);

  // initModules();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final AuthSharedRepository authSharedRepository = AuthSharedRepository(prefs);
  GetIt.I.registerFactory(() => prefs);
  GetIt.I.registerSingleton(authSharedRepository);
  GetIt.I.registerFactory(() => configureDio(authSharedRepository)..options.headers.addAll({"Authorization": "Bearer ${prefs.getString("access")}"}));
  GetIt.I.registerSingleton<CustomScaffoldUtils>(CustomScaffoldUtils());

  runApp(const MyApp());
}