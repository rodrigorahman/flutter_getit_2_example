import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:flutter_getit_2_example/routes/login/login_controller.dart';

class LoginPage extends StatelessWidget {

  const LoginPage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Login Page'),),
           body: Column(
             children: [
               Text(context.get<LoginController>().getUserName()),
               Text(context.get<LoginController>().getNameService()),
               TextButton(onPressed: (){
                context.get<DebugMode>().printRegister();
               }, child: const Text('Debug'))
             ],
           ),
       );
  }
}