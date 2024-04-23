import 'package:auto_route/auto_route.dart';
import 'package:baseapp/domain/bloc/auth_bloc/auth_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

@RoutePage()
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    bool _keyboardVisible = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  child: Text(
                    "DekIT",
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.yellow,
                  child: Switch(value: false, onChanged: (bool value) {   },),
                )),
            Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 36),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: TextField(
                            decoration: InputDecoration(
                                labelText: "Никнейм",
                                border: OutlineInputBorder())),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: TextField(
                            decoration: InputDecoration(
                                labelText: "Почта",
                                border: OutlineInputBorder())),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: TextField(
                            decoration: InputDecoration(
                                labelText: "Пароль",
                                border: OutlineInputBorder())),
                      ),
                      const SizedBox(height: 16,),
                      ElevatedButton(onPressed: () => {}, child: Text("Зарегистрироваться"))
                    ],
                  ),
                ),
              ),
            ),
            Expanded(flex: 1, child: Container())
          ],
        ),
      ),
    );
  }
}
