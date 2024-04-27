import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:baseapp/features/settings/settings_screen.dart';
import 'package:baseapp/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:iconsax/iconsax.dart';
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
        DashRoute(),
        SettingsRoute(),
      ],
      appBarBuilder: (context, tabsRouter) => AppBar(
        title: const Text("ITAbrek"),
        leading: IconButton(
          onPressed: () {
            context.read<AuthCubit>().logOut();
          },
          icon: const Icon(Iconsax.user),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Iconsax.add),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Iconsax.search_normal),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Iconsax.notification),
          ),
        ],
      ),
      transitionBuilder: (context, child, animation) =>
          TransitionsBuilders.slideLeftWithFade(
              context, animation, animation, child),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     context.pushRoute(const MapsRoute());
      //   },
      //   label: const FaIcon(FontAwesomeIcons.locationDot),
      //   // shape: const BeveledRectangleBorder(
      //   //     borderRadius: BorderRadius.all(Radius.elliptical(54, 5))),
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          elevation: 4,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          selectedItemColor: Colors.black87,
          unselectedItemColor: Colors.black54,
          items: const [
            BottomNavigationBarItem(label: 'HOME', icon: Icon(Iconsax.home)),
            BottomNavigationBarItem(label: 'CHAT', icon: Icon(Iconsax.message)),
            BottomNavigationBarItem(
                label: 'DASH', icon: Icon(Iconsax.task_square)),
            BottomNavigationBarItem(
                label: 'SETTINGS', icon: Icon(Iconsax.setting)),
          ],
        );
      },
    );
  }
}





