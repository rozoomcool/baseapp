import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:baseapp/features/settings/settings_screen.dart';
import 'package:baseapp/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/bloc/auth_bloc/auth_cubit.dart';

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
        // DashRoute(),
      ],
      appBarBuilder: (context, tabsRouter) => AppBar(
        title: const Text("DekIT"),
        leading: IconButton(
          onPressed: () {
            context.read<AuthCubit>().logOut();
          },
          icon: const FaIcon(FontAwesomeIcons.circleUser),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.plus),
          ),
          IconButton(
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.magnifyingGlass),
          ),
          IconButton(
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.bell),
          ),
        ],
      ),
      transitionBuilder: (context, child, animation) =>
          TransitionsBuilders.slideLeftWithFade(
              context, animation, animation, child),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.pushRoute(const MapsRoute());
        },
        label: const FaIcon(FontAwesomeIcons.locationDot),
        shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(Radius.elliptical(16, 16))),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
                label: 'HOME', icon: FaIcon(FontAwesomeIcons.house)),
            BottomNavigationBarItem(
                label: 'CHAT', icon: FaIcon(FontAwesomeIcons.message)),
            BottomNavigationBarItem(
                label: 'DASH', icon: FaIcon(FontAwesomeIcons.chessBoard)),
            // BottomNavigationBarItem(
            //     label: 'SETTINGS', icon: FaIcon(FontAwesomeIcons.gear)),
          ],
        );
      },
    );
  }
}
