import 'package:auto_route/auto_route.dart';
import 'package:baseapp/domain/bloc/auth_bloc/auth_cubit.dart';
import 'package:baseapp/domain/dto/user_dto.dart';
import 'package:baseapp/domain/model/user/user.dart';
import 'package:baseapp/router/app_router.dart';
import 'package:baseapp/utils/custom_scaffoldutils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../main.dart';

@RoutePage()
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> with TickerProviderStateMixin {
  late final TabController _tabController;
  final usernameController = TextEditingController(text: "");
  final emailController = TextEditingController(text: "");
  final passwordController = TextEditingController(text: "");
  bool isShowPassword = false;
  Role? role;

  bool isReg = true;

  @override
  void initState() {
    super.initState();
  }

  void toggleIsReg() => setState(() {
    isReg = !isReg;
  });

  @override
  Widget build(BuildContext context) {
    bool _keyboardVisible = MediaQuery.of(context).viewInsets.bottom != 0;
    return ScaffoldMessenger(
      key: GetIt.I<CustomScaffoldUtils>().key,
      child: Scaffold(
        // key: getIt<CustomScaffoldUtils>().key,
        body: SafeArea(
          child: isReg ? register() : login(),
        ),
      ),
    );
  }

  Widget login() {
    return Column(
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
                  child: Text(
                    "IT_ABREK",
                    style: Theme.of(context).textTheme.displayLarge,
                  )),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: SingleChildScrollView(
                    child: AnimatedSize(
                      duration: const Duration(milliseconds: 200),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: TextField(
                                controller: emailController,
                                decoration: const InputDecoration(
                                    hintText: "Введите почту",
                                    labelText: "Почта",
                                    border: OutlineInputBorder())),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: TextField(
                                controller: passwordController,
                                obscureText: !isShowPassword,
                                decoration: const InputDecoration(
                                    hintText: "Введите пароль",
                                    labelText: "Пароль",
                                    border: OutlineInputBorder())),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Checkbox(
                                    value: isShowPassword,
                                    onChanged: (val) => togglePasswordVisible(
                                        val ?? false), //  <-- leading Checkbox
                                  ),
                                  Text('Показать пароль',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium)
                                ],
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Забыли пароль?',
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        Theme.of(context).textTheme.labelMedium,
                                  ))
                            ],
                          ),
                          ElevatedButton(
                              onPressed: () {
                                context.read<AuthCubit>().signIn(User(
                                  username: emailController.value.text,
                                  password: passwordController.value.text,
                                  role: Role.STUDENT
                                ));
                              },
                              
                              child: const Text("Войти"))
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 24,),
              TextButton(onPressed: () {
                toggleIsReg();
              }, child: const Text("Зарегаться")),
              
              Expanded(flex: 1, child: Container())
            ],
          );
  }

  Widget register() {
    return Column(
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
                  child: Text(
                    "IT_ABREK",
                    style: Theme.of(context).textTheme.displayLarge,
                  )),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: SingleChildScrollView(
                    child: AnimatedSize(
                      duration: const Duration(milliseconds: 200),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: TextField(
                                controller: emailController,
                                decoration: const InputDecoration(
                                    hintText: "Введите почту",
                                    labelText: "Почта",
                                    border: OutlineInputBorder())),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: TextField(
                                controller: passwordController,
                                obscureText: !isShowPassword,
                                decoration: const InputDecoration(
                                    hintText: "Введите пароль",
                                    labelText: "Пароль",
                                    border: OutlineInputBorder())),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          PopupMenuButton(
                            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                  role?.name ?? "Выбрать роль",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(fontSize: 20),
                                                                ),
                                )),
                              onSelected: (value) => {updateRole(value)},
                              itemBuilder: (context) => [
                                    const PopupMenuItem(
                                      value: Role.STUDENT,
                                      child: Text("Ученик"),
                                    ),
                                    const PopupMenuItem(
                                        value: Role.TEACHER,
                                        child: Text("Сенсей")),
                                  ]),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Checkbox(
                                    value: isShowPassword,
                                    onChanged: (val) => togglePasswordVisible(
                                        val ?? false), //  <-- leading Checkbox
                                  ),
                                  Text('Показать пароль',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium)
                                ],
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Забыли пароль?',
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        Theme.of(context).textTheme.labelMedium,
                                  ))
                            ],
                          ),
                          ElevatedButton(
                              onPressed: () {
                                if (role == null) return;
                                context.read<AuthCubit>().signUp(User(
                                  username: emailController.value.text,
                                  password: passwordController.value.text,
                                  role: role!
                                ));
                              },
                              child: const Text("Регистрация"))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24,),
              TextButton(onPressed: () {
                toggleIsReg();
              }, child: const Text("Войти")),
              Expanded(flex: 1, child: Container())
            ],
          );
  }

  void togglePasswordVisible(bool val) => setState(() => isShowPassword = val);
  void updateRole(Role? value) {
    setState(() {
      role = value;
    });
  }
}
