import 'package:auto_route/auto_route.dart';
import 'package:baseapp/router/app_router.dart';
import 'package:baseapp/utils/custom_scaffoldutils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';

import '../../main.dart';

@RoutePage()
class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

    @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      key: GetIt.I<CustomScaffoldUtils>().key,
      routes: const [
        HomeRoute(),
        ChatRoute(),  
        SettingsRoute(),
      ],
      transitionBuilder: (context,child,animation) => FadeTransition(
            opacity: animation,
            child: child,
          ),
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(label: 'Users', icon: FaIcon(FontAwesomeIcons.section)),
            BottomNavigationBarItem(label: 'Posts', icon: FaIcon(FontAwesomeIcons.section)), 
            BottomNavigationBarItem(label: 'Settings', icon: FaIcon(FontAwesomeIcons.section))
          ],
        );
      },
    );
  }
}

