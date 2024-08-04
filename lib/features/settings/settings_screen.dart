import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:baseapp/domain/bloc/user_cubit/user_cubit.dart';
import 'package:baseapp/domain/model/user/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';

@RoutePage()
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  ImagePicker imagePicker = ImagePicker();

  @override
  void initState() {
    super.initState();
  }

  Future<String> getBase64EncodeImage() async {
    var image = await imagePicker.pickImage(source: ImageSource.gallery);
    var bytes = await image!.readAsBytes();
    var compressed = await FlutterImageCompress.compressWithList(
      minWidth: 300,
      minHeight: 300,
      bytes,
      quality: 50,
      rotate: 0,
    );
    return base64Encode(compressed);
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
            state != null && state.avatar != null ? Container(
              width: 124,
              height: 124,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(image: MemoryImage(base64Decode(state.avatar!),), fit: BoxFit.cover)
              ),
            ) :
            CircleAvatar(
              radius: 62,
              child: IconButton(
                      onPressed: () async {
                        context.read<UserCubit>().updateUser(
                            User(avatar: (await getBase64EncodeImage())));
                      },
                      icon: const Icon(
                        Iconsax.camera,
                        size: 36,
                      ),
                    ),
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
