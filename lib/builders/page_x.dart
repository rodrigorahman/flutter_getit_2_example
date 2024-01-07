import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:flutter_getit_2_example/builders/page_x_controller.dart';

class PageX extends StatelessWidget {
  const PageX({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.get<PageXController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageX'),
      ),
      body: Column(
        children: [
          Text(controller.nome()),
          TextButton(
              onPressed: () {
                context.get<DebugMode>().printRegister();
              },
              child: const Text('Debug'))
        ],
      ),
    );
  }
}
