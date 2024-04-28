import 'package:baseapp/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

Map<String, List<Widget>> actions = {
  HomeRoute.name: [
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
  ChatRoute.name: [
    IconButton(
      onPressed: () {},
      icon: const Icon(Iconsax.search_normal),
    ),
    IconButton(
      onPressed: () {},
      icon: const Icon(Iconsax.notification),
    ),
  ],
  DashRoute.name: [
    IconButton(
      onPressed: () {},
      icon: const Icon(Iconsax.notification),
    ),
  ],
  SettingsRoute.name: [
    IconButton(
      onPressed: () {},
      icon: const Icon(Iconsax.search_normal),
    ),
    IconButton(
      onPressed: () {},
      icon: const Icon(Iconsax.notification),
    ),
  ]
};
