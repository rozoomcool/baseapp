import 'package:auto_route/auto_route.dart';
import 'package:baseapp/features/chat/chat_screen.dart';
import 'package:baseapp/features/root/root_screen.dart';
import 'package:baseapp/features/settings/settings_screen.dart';

import '../features/auth/auth_screen.dart';
import '../features/home/home_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: '/',
      page: RootRoute.page,
      children: [
        RedirectRoute(path: '', redirectTo: 'home'),
        AutoRoute(path: 'home', page: HomeRoute.page),
        AutoRoute(path: 'chat', page: ChatRoute.page),
        AutoRoute(path: 'settings', page: SettingsRoute.page),
      ],
    ),
    AutoRoute(
      path: '/auth',
      page: AuthRoute.page
    )
  ];
}