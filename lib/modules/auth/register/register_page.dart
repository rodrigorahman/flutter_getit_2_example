import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:flutter_getit_2_example/repository/login_repository.dart';

class RegisterPage extends StatefulWidget {

  const RegisterPage({ super.key });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Register'),),
           body: Column(
             children: [
               Container(),
               Text(context.get<LoginRepository>().register()),
               TextButton(onPressed: (){
                context.get<DebugMode>().printRegister();
               }, child: const Text('DEBUG')),

               TextButton(onPressed: (){
                setState(() {
                  
                });
               }, child: const Text('Rebuild')),
             ],
           ),
       );
  }
}