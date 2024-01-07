
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:flutter_getit_2_example/modules/auth/login/login_controller.dart';
import 'package:flutter_getit_2_example/modules/auth/login/login_page.dart';

class LoginPageRoute extends FlutterGetItModulePageRouter{
  const LoginPageRoute({super.key});

  @override
  List<Bind<Object>> get bindings => [
    Bind.lazySingleton((i) => LoginController(repository: i()))
  ];

  @override
  WidgetBuilder get view => (context) => const LoginPage();  
}