
import 'package:flutter_getit_2_example/services/service_for_application.dart';

class LoginController {
  final ServiceForApplication serviceForApplication;

  LoginController({required this.serviceForApplication});

  String getUserName() => 'Rodrigo Rahman logged';
  String getNameService() => serviceForApplication.nomeProduto();
}