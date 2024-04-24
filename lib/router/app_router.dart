import 'package:auto_route/auto_route.dart';
import 'package:baseapp/domain/bloc/auth_bloc/auth_cubit.dart';
import 'package:baseapp/domain/bloc/auth_bloc/auth_state.dart';
import 'package:baseapp/features/chat/chat_screen.dart';
import 'package:baseapp/features/root/root_screen.dart';
import 'package:baseapp/features/settings/settings_screen.dart';
import 'package:baseapp/router/auth_route_guard.dart';

import '../features/auth/auth_screen.dart';
import '../features/dash/dash_screen.dart';
import '../features/home/home_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {

  final AuthState authState;

  AppRouter({required this.authState});

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: '/',
      page: RootRoute.page,
      guards: [AuthGuard(authState: authState)],
      children: [
        RedirectRoute(path: '', redirectTo: 'home'),
        AutoRoute(path: 'home', page: HomeRoute.page),
        AutoRoute(path: 'chat', page: ChatRoute.page),
        AutoRoute(path: 'dash', page: DashRoute.page),
        AutoRoute(path: 'settings', page: SettingsRoute.page),
      ],
    ),
    AutoRoute(
      path: '/auth',
      page: AuthRoute.page
    )
  ];
}