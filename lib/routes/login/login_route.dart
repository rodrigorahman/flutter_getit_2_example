import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:flutter_getit_2_example/routes/login/login_controller.dart';
import 'package:flutter_getit_2_example/routes/login/login_page.dart';

class LoginRoute extends FlutterGetItPageRouter {
  const LoginRoute({super.key});

  @override
  List<Bind<Object>> get bindings => [
    Bind.lazySingleton((i) => LoginController(serviceForApplication: i()))
  ];

  @override
  String get routeName => '/login';

  @override
  WidgetBuilder get view => (context) => const LoginPage();
}
