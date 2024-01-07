import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:flutter_getit_2_example/widgets/widget_controller.dart';
import 'package:flutter_getit_2_example/widgets/widget_x.dart';

class WidgetContainer extends FlutterGetItWidget {
  const WidgetContainer(super.key);

  @override
  List<Bind<Object>> get bindings => [
    Bind.lazySingleton((i) => WidgetController(key: key.toString())),
  ];

  @override
  WidgetBuilder get widget => (_) => WidgetX(key: key);
}