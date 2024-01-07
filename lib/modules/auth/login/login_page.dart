import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:flutter_getit_2_example/modules/auth/login/login_controller.dart';
import 'package:flutter_getit_2_example/repository/login_repository.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        children: [
          Container(),
          Text(context.get<LoginController>().login()),
          TextButton(
              onPressed: () {
                context.get<DebugMode>().printRegister();
                setState(() {});
              },
              child: const Text('DEBUG')),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/auth/register');
              },
              child: const Text('Go to Register')),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/auth/register');
              },
              child: const Text('Go to Register replace')),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
              child: const Text('Replace')),
          TextButton(
              onPressed: () {
                Navigator.of(context).popAndPushNamed('/products/');
              },
              child: const Text('Go to Products Module')),
              TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/products/');
              },
              child: const Text('Go to Products Module push'))
        ],
      ),
    );
  }
}
