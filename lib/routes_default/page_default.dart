import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:flutter_getit_2_example/widgets/widget_container.dart';

class PageDefault extends StatelessWidget {
  const PageDefault({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Default'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const WidgetContainer(ValueKey('Widget1')),
          const WidgetContainer(ValueKey('Widget2')),
          const WidgetContainer(ValueKey('Widget3')),
          TextButton(onPressed: (){
                context.get<DebugMode>().printRegister();
               }, child: const Text('Debug'))
        ],
      ),
    );
  }
}
