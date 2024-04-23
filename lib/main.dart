import 'package:baseapp/router/app_router.dart';
import 'package:baseapp/router/loggeer_observer.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final SharedPreferences prefs = await SharedPreferences.getInstance();
  GetIt.I.registerFactory(() => prefs);

  runApp(const MyApp());
}