import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:baseapp/domain/bloc/user_cubit/user_cubit.dart';
import 'package:baseapp/features/root/scaffold_content.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => UserCubit()..init())
      ],
      child: AutoTabsScaffold(
        routes: const [
          HomeRoute(),
          ChatRoute(),
          DashRoute(),
          SettingsRoute(),
        ],
        appBarBuilder: (context, tabsRouter) {
          return AppBar(
            title: const Text("ITAbrek"),
            centerTitle: false,
            actions: [
              IconButton(
                onPressed: () {
                  context.read<AuthCubit>().logOut();
                },
                icon: const Icon(Iconsax.logout),
              ),
              // ...?actions[tabsRouter.current.name]?.map((e) => e)
            ],
          );
        },
        transitionBuilder: (context, child, animation) =>
            TransitionsBuilders.slideLeftWithFade(
                context, animation, animation, child),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            context.pushRoute(const MapsRoute());
          },
          label: const FaIcon(FontAwesomeIcons.locationDot),
        ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBuilder: (context, tabsRouter) {
          return BottomNavigationBar(
            elevation: 4,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            selectedItemColor: Colors.black87,
            unselectedItemColor: Colors.black54,
            items: const [
              BottomNavigationBarItem(label: 'Главная', icon: Icon(Iconsax.home)),
              BottomNavigationBarItem(label: 'Мессенджер', icon: Icon(Iconsax.message)),
              BottomNavigationBarItem(
                  label: 'Задачи', icon: Icon(Iconsax.task_square)),
              BottomNavigationBarItem(
                  label: 'Профиль', icon: Icon(Iconsax.user)),
            ],
          );
        },
      ),
    );
  }
}
