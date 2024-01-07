
import 'package:flutter_getit_2_example/repository/login_repository.dart';

class LoginController {
  final LoginRepository repository;

  LoginController({required this.repository});

  String login()=> repository.login();
}