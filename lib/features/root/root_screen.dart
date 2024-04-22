import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:baseapp/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

@RoutePage()
class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

    @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        ChatRoute(),  
        SettingsRoute(),
      ],
      appBarBuilder: (context, tabsRouter) => AppBar(
        title: const Text("DekIT"),
        leading: IconButton(onPressed: () {  }, icon: const FaIcon(FontAwesomeIcons.circleUser),),
        actions: [
          IconButton(onPressed: () {  }, icon: const FaIcon(FontAwesomeIcons.plus),),
          IconButton(onPressed: () {  }, icon: const FaIcon(FontAwesomeIcons.magnifyingGlass),),
          IconButton(onPressed: () {  }, icon: const FaIcon(FontAwesomeIcons.bell),),
        ],
      ),
      transitionBuilder: (context,child,animation) => TransitionsBuilders.slideLeftWithFade(context, animation, animation, child),
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(label: 'HOME', icon: FaIcon(FontAwesomeIcons.house)),
            BottomNavigationBarItem(label: 'CHAT', icon: FaIcon(FontAwesomeIcons.message)),
            BottomNavigationBarItem(label: 'SETTINGS', icon: FaIcon(FontAwesomeIcons.tools))
          ],
        );
      },
    );
  }
}

