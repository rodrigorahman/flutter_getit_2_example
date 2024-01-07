import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:flutter_getit_2_example/modules/auth/login/login_page_route.dart';
import 'package:flutter_getit_2_example/modules/auth/register/register_page.dart';
import 'package:flutter_getit_2_example/repository/login_repository.dart';

import 'login/login_page.dart';

class AuthModule extends FlutterGetItModule {

  @override
  List<Bind> get bindings => [
    Bind.lazySingleton((i) => LoginRepository())
  ];

  @override
  String get moduleRouteName => '/auth';

  @override
  Map<String, WidgetBuilder> get pages => {
        '/login': (context) => const LoginPageRoute(),
        '/register': (context) => const RegisterPage()
      };
}
