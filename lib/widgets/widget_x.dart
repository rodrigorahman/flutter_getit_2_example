import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:flutter_getit_2_example/widgets/widget_controller.dart';

class WidgetX extends StatelessWidget {
  const WidgetX({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.get<WidgetController>(key.toString());
    return Text(controller.nome());
  }
}
