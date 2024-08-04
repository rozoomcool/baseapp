import 'dart:convert';
import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:baseapp/domain/model/user/user.dart';
import 'package:baseapp/domain/repository/shared/auth_shared_repository.dart';
import 'package:baseapp/features/chat_room/chat_room_screen.dart';
import 'package:baseapp/router/app_router.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

@RoutePage()
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<User> users = [];

  final Dio dio = GetIt.I<Dio>();
  final AuthSharedRepository authSharedRepository =
      AuthSharedRepository(GetIt.I<SharedPreferences>());

  void fetchUsers() async {
    var response = await dio.get("/user/all",
        options: Options(headers: {
          "Authorization": "Bearer ${authSharedRepository.getAccessToken()}"
        }));
    if (response.statusCode == 200) {
      setState(() {
        users = (response.data as List)
            .map<User>((v) => User.fromJson(v))
            .where((v) => v.role == Role.TEACHER)
            .toList();
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: users.length,
        itemBuilder: (context, index) {
          Uint8List? avatarBytes;
          try {
            var avatar = users[index].avatar!.startsWith("data:") ? users[index].avatar!.substring(23): users[index].avatar!;
            avatarBytes = base64Decode(avatar);
          } catch(e) {
            debugPrint(e.toString());
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: avatarBytes == null
                    ? const CircleAvatar(
                        radius: 24,
                      )
                    : CircleAvatar(
                      radius: 24,
                        backgroundImage:
                            MemoryImage(avatarBytes),
                      ),
                title: Text(users[index].username!),
                subtitle: const Text("subtitle"),
                // trailing: const Badge(),
                onTap: () {
                  // context.pushRoute();
                  AutoRouter.of(context)
                      .push(ChatRoomRoute(username: index.toString()));
                },
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "О себе",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontSize: 20),
              ),
              SizedBox(
                  width: double.infinity,
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(users[index].about ?? ""),
                    ),
                  ))
            ],
          );
        });
  }
}
