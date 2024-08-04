import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:baseapp/domain/bloc/user_cubit/user_cubit.dart';
import 'package:baseapp/domain/model/user/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:stomp_dart_client/stomp_dart_client.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;

@RoutePage()
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  void initState() {
    super.initState();
    initSock();
  }

  void initSock() async {
    final wsUrl = Uri.parse('ws://10.3.1.138/ws');
    final channel = WebSocketChannel.connect(wsUrl);

    await channel.ready;

    channel.stream.listen((message) {
      channel.sink.add('received!');
      channel.sink.close(status.goingAway);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, User?>(builder: (context, state) {
      return SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 24,
            ),
            CircleAvatar(
              radius: 62,
              child: state != null && state.avatar != null
                  ? Image.memory(base64Decode(state.avatar.toString()))
                  : const Icon(Iconsax.camera, size: 36,),
            ),
            SizedBox(
              height: 24,
            ),
            Text(state?.username ?? "...")
          ],
        ),
      ));
    });
  }
}
